source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.1.1'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'


group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry' #debugging tool
  gem 'rspec-rails' #testing framework
  gem 'factory_girl_rails' #'sample data' that populates your testing database before your tests run.
  gem 'guard-rspec' #works together with guard in order to run specs automatically
  gem 'guard'
  gem 'faker' #generates 'fake' data which can be used for testing or development (seeds)
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'better_errors' #a cleaner error page for your browser in development
  gem 'binding_of_caller' #can check your local variables in the browser
end

group :test do
  #Launchy opens your default web browser on demand to show you what your application is rendering and
  #is very useful for feature tests!
  gem 'launchy'
  gem 'database_cleaner' #cleans data from database when you run your specs
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver' #can test JavaScript-based browser interactions with Capybara.
  gem 'shoulda-matchers', '~> 3.1' #one-liners that test common Rails functionality.
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
