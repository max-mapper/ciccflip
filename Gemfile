source 'http://rubygems.org'

gem 'rails', '3.1.0.rc1'
gem 'haml'
gem 'oa-oauth'
gem 'twitter'
gem 'httparty'
gem 'json'
gem 'sqlite3-ruby'

platforms :jruby do
  gem 'jruby-openssl', '~> 0.7'
end

group :production do
  gem 'pg'

  platforms :ruby do
    gem 'therubyracer-heroku', '0.8.1.pre3'
  end

  platforms :jruby do
    gem 'therubyrhino', '~> 1.72'
  end
end

group :test do
  gem 'ZenTest'
  gem 'mocha'
  gem 'simplecov'
  gem 'turn', :require => false
  gem 'webmock'
end
