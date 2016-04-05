source 'https://rubygems.org'

gemspec

group :test do
  gem 'sqlite3'
  gem 'pry'
  if ENV['TRAVIS']
    gem "codeclimate-test-reporter", require: false
  else
    gem 'simplecov', require: false
  end
end

gem 'alchemy_cms', github: 'AlchemyCMS/alchemy_cms', branch: 'master'
gem 'alchemy-devise', github: 'AlchemyCMS/alchemy-devise', branch: 'master'
