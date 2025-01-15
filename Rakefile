# frozen_string_literal: true
# D:/app/Ruby34-x64/bin/ruby.exe -I'C:/Users/stevezou/.local/share/gem/ruby/3.4.0/gems/rspec-core-3.13.2/lib';'C:/Users/stevezou/.local/share/gem/ruby/3.4.0/gems/rspec-support-3.13.2/lib' 'C:/Users/stevezou/.local/share/gem/ruby/3.4.0/gems/rspec-core-3.13.2/exe/rspec' --pattern 'spec/**{,/*/**}/*_spec.rb'
require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

require "standard/rake"

task default: %i[spec standard]
