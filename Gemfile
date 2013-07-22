source 'https://rubygems.org'
ruby '1.9.3'

gem 'rails', '3.2.11'
group :development, :test do
  gem 'sqlite3'
  gem 'progress_bar'
  gem 'annotate'
  gem 'rack-mini-profiler'
  gem 'sextant'
  gem "rails-erd" #para generar diagramas. Uso: rake erd
end
group :production do
  gem 'pg'
end


group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'rack-cachely'
gem 'newrelic_rpm'
gem 'jquery-rails'
gem "thin"
gem "bcrypt-ruby", :require => "bcrypt"	
gem "kaminari"
gem "font-awesome-rails"

#subir archivos
gem 'cocaine', "~> 0.3.2"
gem "paperclip", "~> 2.4.2"
gem 'aws-s3', :require => 'aws/s3'

#heroku
#gem 'newrelic_rpm'
#gem 'delayed_job_active_record'

gem "unicorn", ">= 4.3.1"
gem "haml-rails", ">= 0.4"
gem "html2haml", ">= 1.0.1", :group => :development
gem "rspec-rails", ">= 2.12.2", :group => [:development, :test]
gem "capybara", ">= 2.0.3", :group => :test
gem "database_cleaner", ">= 1.0.0.RC1", :group => :test
gem "email_spec", ">= 1.4.0", :group => :test
gem "factory_girl_rails", ">= 4.2.0", :group => [:development, :test]
gem "bootstrap-sass", ">= 2.3.0.0"
gem "sendgrid", ">= 1.0.1"
gem "cancan", ">= 1.6.9"
gem "rolify", ">= 3.2.0"
gem "quiet_assets", ">= 1.0.2", :group => :development
gem "figaro", ">= 0.6.3"
gem "better_errors", ">= 0.7.2", :group => :development
gem "binding_of_caller", ">= 0.7.1", :group => :development, :platforms => [:mri_19, :rbx]
gem "hub", ">= 1.10.2", :require => nil, :group => [:development]