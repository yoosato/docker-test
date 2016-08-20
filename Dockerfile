FROM ruby
MAINTAINER yoosato

RUN yum update
RUN gem install infrataster
