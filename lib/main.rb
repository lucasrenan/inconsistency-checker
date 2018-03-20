require 'erb'
require 'yaml'
require 'active_model'
require 'active_record'

require_relative '../db/connection'
require_relative 'models/campaign'
require_relative 'models/remote_campaign'

require 'faraday'
require 'faraday_middleware'

require_relative 'services/remote_campaigns_requester'
