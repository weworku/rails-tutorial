# Use the official Ruby image as the base image
FROM ruby:2.7.4

# Set the working directory inside the container
WORKDIR /usr/src/app

# Install dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    nodejs \
    yarn

# Copy the Gemfile and Gemfile.lock to the working directory
COPY my-blog/Gemfile my-blog/Gemfile.lock ./

# Install gems
RUN bundle install

# Copy the rest of the application code to the working directory
COPY my-blog ./

# Set the Rails environment to production
ENV RAILS_ENV=production

# Precompile assets
RUN bundle exec rake assets:precompile

# Expose port 3000 for the Rails server
EXPOSE 3000

# Start the Rails server
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
