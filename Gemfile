source "http://rubygems.org"

# Declare your gem's dependencies in adminify.gemspec.
# Bundler will treat runtime dependencies like base dependencies, and
# development dependencies will be added by default to the :development group.
gemspec

# Declare any dependencies that are still in development here instead of in
# your gemspec. These might include edge Rails or gems from your path or
# Git. Remember to move these dependencies to your gemspec before releasing
# your gem to rubygems.org.


group :assets do
  gem 'sass-rails',   '~> 3.2.3'
end

# For user management
gem 'devise'
gem 'cancan'
gem 'rolify'

# For Facebook
gem 'omniauth'
gem "omniauth-facebook", '1.4.0'

# For some UX
gem 'jquery-rails'
gem 'simple_form'

# Deploy with Capistrano
gem 'capistrano'

# To use debugger
gem 'debugger', group: [:development, :test]

# Cool errors
group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
end