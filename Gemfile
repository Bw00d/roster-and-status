source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end
ruby '2.4.4'

gem 'pg', '~> 0.21.0'
gem 'rails', '5.2.4.3'
# Use Puma as the app server
gem "puma", ">= 3.12.4"
gem 'sass-rails', '~> 5.0', '>= 5.0.6'
gem 'uglifier', '~> 3.2'
gem 'turbolinks', '~> 5.0', '>= 5.0.1'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1', '>= 3.1.11'

gem "bootstrap-sass", ">= 3.4.1"
# List of countries and their respective states and cities
gem 'city-state'
gem "devise", ">= 4.7.1"
# Generate fake user names, e-mails, adresses, IPs, lorem text, etc. Include
# in all environments as we might use it to seed the DB in test deploys.
gem 'faker'
# Use slugs instead of IDs in URLs. Makes prettier URLs, improves SEO and avoids
# leaking DB IDs (for security reasons).
gem 'friendly_id'
# jQuery is no longer installed by default on Rails 5.1
gem 'jquery-rails'
# Pagination
gem 'kaminari'
# Authorization
gem 'pundit'
# Contact form
gem 'mail_form'
# HTTP caching
gem 'rack-cache'
# Locale data for Rails. Rails already comes with i18n capabilities (e.g.,
# translate model attributes, possibility to place all of the app's strings in
# YML dictionaries). Only use this gem if you need to translate Rails to one or
# more non-english languages.
# gem 'rails-i18n', '~> 5.0.0'
# Searching, filtering and sorting
gem 'ransack'
# Advanced select boxes https://select2.github.io/
gem 'select2-rails'
# Get e-mail notifications when exceptions happen in the production environment
gem 'exception_notification'
gem 'font_awesome5_rails'
gem 'acts-as-taggable-on', '~> 6.0'
gem "paperclip", "~> 6.0.0"
gem 'aws-sdk-s3'
gem 'jquery-validation-rails'
gem 'bootstrap-datepicker-rails'
gem 'american_date'
gem 'sendgrid-ruby'
gem 'best_in_place', '~> 3.0.1'


group :test do
  gem 'database_cleaner'
  gem 'rails-controller-testing'
end

group :development, :test do
  # Detects N+1 queries and unused eager loading
  gem 'bullet'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger
  # console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 2.15', '>= 2.15.1'
  gem 'capybara-email'
  gem 'capybara-screenshot'
  gem 'factory_girl_rails'
  gem 'rspec-rails'
  gem 'selenium-webdriver'
  gem 'spring-commands-rspec'
  # code coverage analysis tool
  gem 'simplecov', require: false
  gem 'rb-readline'
end

group :development do
  gem 'awesome_print'
  gem 'better_errors'
  # Necessary to use Better Errors' advanced features (REPL, local/instance
  # variable inspection, pretty stack frame names).
  gem 'binding_of_caller'
  # A static analysis security vulnerability scanner for Ruby on Rails apps
  gem 'brakeman', require: false
  # Checks for vulnerable versions of gems
  gem 'bundler-audit'
  # Required by rack-mini-profiler' for call-stack profiling flamegraphs
  gem 'flamegraph'
  # Open "sent" e-mails in your browser instead of actually sending them
  gem 'letter_opener'
  gem 'listen', '~> 3.1', '>= 3.1.5'
  gem 'pry-rails'
  gem 'pry-doc'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0', '>= 2.0.1'
  # Database, call-stack and memory profiling
  gem 'rack-mini-profiler'
  # Required by rack-mini-profiler for memory profiling
  gem 'memory_profiler'
  gem 'rubocop'
  # Required by rack-mini-profiler for call-stack profiling for Ruby MRI 2.1+
  gem 'stackprof'
  # Access an IRB console on exception pages or by using <%= console %> anywhere
  # in the code.
  gem 'web-console', '~> 3.5', '>= 3.5.1'

end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
