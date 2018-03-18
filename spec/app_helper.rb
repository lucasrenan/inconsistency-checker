ENV['RAILS_ENV'] = ENV['RACK_ENV'] = 'test'

require 'spec_helper'
require_relative '../lib/main'

require 'active_record'

Dir[File.dirname(__FILE__) + '/support/**/*.rb'].each { |f| require f }

RSpec.configure do |config|
  config.include(Shoulda::Matchers::ActiveModel, type: :model)
  config.include(Shoulda::Matchers::ActiveRecord, type: :model)
end
