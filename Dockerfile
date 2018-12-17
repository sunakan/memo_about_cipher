FROM ruby:2.5

# 必要になったら使う
#RUN apt update -qq

##Cache bundle install#################
WORKDIR /tmp
COPY ./Gemfile Gemfile
COPY ./Gemfile.lock Gemfile.lock
RUN bundle install
#######################################

ENV app /memo_about_cipher
WORKDIR $app
COPY . $app
