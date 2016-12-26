FROM ruby:2-slim

# Install basic packages
RUN apt-get update
RUN apt-get install -y build-essential

ENV app /app
RUN mkdir $app
WORKDIR $app

ENV BUNDLE_PATH /box

ADD . $app