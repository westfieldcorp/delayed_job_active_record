# frozen_string_literal: true

source "https://rubygems.org"

gem "rake"

group :test do
  platforms :ruby, :mswin, :mingw do
    gem "pg"
  end

  gem "rspec"
  gem "rubocop"
  gem "rubocop-rails"
  gem "rubocop-rspec"
  gem "simplecov", require: false
end

gemspec
