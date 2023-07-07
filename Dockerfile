FROM ruby:3.1

ENV APP=/app

RUN apt update -qq && apt install -y postgresql-client vim
RUN mkdir ${APP}
WORKDIR ${APP}
COPY Gemfile ${APP}/Gemfile
COPY Gemfile.lock ${APP}/Gemfile.lock
RUN bundle install
COPY . ${APP}

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]