FROM ruby:2.6.0

RUN gem install bundler

RUN apt-get update && apt-get install -y nodejs

EXPOSE 3000

COPY . .

RUN bundle install

RUN rails db:migrate

CMD ["rails" ,"s" ]