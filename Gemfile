# frozen_string_literal: true

source 'https://rubygems.org'

gem 'ansi-to-html'
gem 'descriptive_statistics', require: false
gem 'formatador'
gem 'gruff'
gem 'logging'
gem 'nose', :git => 'git@github.com:michaelmior/NoSE.git', branch: 'no-cli'
gem 'parallel'
gem 'representable'
gem 'table_print'
gem 'thor', require: false

group :test do
  gem 'aruba', require: false
  gem 'fakefs', require: 'fakefs/safe'
  gem 'json-schema'
  gem 'rspec'
  gem 'rspec-collection_matchers'
  gem 'scrutinizer-ocular', require: false
  gem 'simplecov', require: false
end

group :development do
  gem 'pry-rescue'
  gem 'binding_of_caller'
end

platform :ruby do
  gem 'rbtree' # for more efficient SortedSet implementation

  group :development do
    gem 'memory_profiler'
    gem 'pry-doc'
    gem 'pry-byebug'
    gem 'pry-stack_explorer'
    gem 'ruby-prof'
    gem 'yard'
    gem 'yard-thor'
  end
end

group :cassandra do
  gem 'cassandra-driver'
end

group :mongo do
  gem 'mongo'
end
