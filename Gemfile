# frozen_string_literal: true

source "https://rubygems.org"

gem "rake"

group :test do
  platforms :ruby, :mswin, :mingw do
    gem "mysql2"
    gem "pg"
    gem "sqlite3"
  end

  gem "coveralls", require: false
  gem "rspec"
  gem "rubocop"
  gem "rubocop-rails"
  gem "rubocop-rspec"
  gem "simplecov", require: false
end

gemspec
