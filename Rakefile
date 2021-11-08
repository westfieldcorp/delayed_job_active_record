# frozen_string_literal: true

require "bundler/gem_helper"
Bundler::GemHelper.install_tasks

require "rspec/core/rake_task"

ADAPTERS = %w[postgresql].freeze

ADAPTERS.each do |adapter|
  desc "Run RSpec code examples for #{adapter} adapter"
  RSpec::Core::RakeTask.new(adapter => "#{adapter}:adapter")

  namespace adapter do
    task :adapter do
      ENV["ADAPTER"] = adapter
    end
  end
end

task :coverage do
  ENV["COVERAGE"] = "true"
end

task :adapter do
  ENV["ADAPTER"] = nil
end

require "rubocop/rake_task"
RuboCop::RakeTask.new

task default: ([:coverage] + ADAPTERS + [:adapter] + [:rubocop])
