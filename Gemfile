source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

#--- гемы из генератора
gem 'rails', '~> 5.1.2'#новый проект, свежие рельсы
gem 'sqlite3'#нам не нужна полноценная база для тестов

gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'therubyracer', platforms: :ruby
gem 'turbolinks', '~> 5'
group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
end
#--- которые добавил я
gem 'haml-rails'
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'less-rails'
gem 'twitter-bootstrap-rails'
gem "font-awesome-rails"
