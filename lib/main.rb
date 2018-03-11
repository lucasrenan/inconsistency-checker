require 'faraday'
require 'faraday_middleware'

url = 'https://mockbin.org/'
connection = Faraday.new(url: url) do |faraday|
  faraday.response :json

  faraday.adapter Faraday.default_adapter
end

response = connection.get('bin/fcb30500-7b98-476f-810d-463a0b8fc3df')

puts response.body

