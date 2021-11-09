# frozen_string_literal: true

source "https://rubygems.org"

gem "rake"

group :test do
  platforms :ruby, :mswin, :mingw do
    gem "pg"
  end

  gem "rspec"

  gem "simplecov", require: false
  gem "simplecov-lcov", require: false
end

group :rubocop do
  gem "rubocop"
  gem "rubocop-packaging"
  gem "rubocop-performance"
  gem "rubocop-rails"
  gem "rubocop-rspec"
end

gemspec
