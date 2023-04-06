FROM ruby:3.0.0

RUN apt-get update -qq && apt-get install -y curl postgresql-client cmake
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get update && apt-get install -y nodejs
RUN apt-get update && apt-get install -y ffmpeg
RUN apt-get update && apt-get -y install cron

RUN apt-get install -y vim nano
RUN npm i -g yarn@1.19.1

WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]