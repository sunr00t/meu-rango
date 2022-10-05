# syntax=docker/dockerfile:1
FROM ruby:2.7.6
RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

RUN mkdir /meu-rango
WORKDIR /meu-rango
COPY . /meu-rango

RUN bundle install
RUN npm i -g yarn && yarn install --check-files && yarn


# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000
RUN bundle exec rake assets:precompile
# Configure the main process to run when running the image
CMD ["rails", "server", "-b", "0.0.0.0"]