require 'erb'
require 'yaml'
require 'active_record'

app_env = ENV['RAILS_ENV'] || ENV['RACK_ENV'] || 'development'
config_file = File.read(File.dirname(__FILE__) + '/config.yml')
con_file = YAML.load(ERB.new(config_file).result)

ActiveRecord::Base.establish_connection(con_file[app_env])
