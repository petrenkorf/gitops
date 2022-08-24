FROM ruby:3.1 as build
WORKDIR /app
COPY . .
WORKDIR /app/api
RUN bundle install

ENTRYPOINT ["ruby", "/app/api/api.rb", "-o", "0.0.0.0"]
