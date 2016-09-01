FROM ruby
MAINTAINER yoosato

RUN gem install bundler

EXPOSE 4567

COPY Gemfile* /tmp/
WORKDIR /tmp
RUN bundle install -j 5

ENV app /app
RUN mkdir $app
WORKDIR $app
ADD . $app

CMD ["bundle","exec","ruby","testapp.rb"]
