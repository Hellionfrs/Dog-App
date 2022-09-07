source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"

gem 'image_processing', '>= 1.2'
gem "importmap-rails"
gem "puma", "~> 5.0"
gem "rails", "~> 7.0.3", ">= 7.0.3.1"
gem "sprockets-rails"


gem "turbo-rails"

gem "jbuilder"
gem "stimulus-rails"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem 'devise', '~> 4.8', '>= 4.8.1'
gem 'pry', '~> 0.13.1'

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "sqlite3", "~> 1.4"
  gem "web-console"
end
group  :production do
  gem 'pg'
  gem 'rails_12factor', group: :production
end
group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end

gem "noticed", "~> 1.5"

gem "ransack", "~> 3.2"
