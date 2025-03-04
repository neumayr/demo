# Set the base image
FROM ruby:3.4.2-alpine

# Set the working directory to /app
WORKDIR /app

# Copy the Gemfile and Gemfile.lock to /app
COPY Gemfile Gemfile.lock ./

# Install dependencies
RUN bundle config set --local without 'development test';
RUN bundle install

# Copy the source code to /app/lib
COPY lib/* /app/

# Set the command to run when the container starts
CMD ["ruby", "/app/demo.rb"]
