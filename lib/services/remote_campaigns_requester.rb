class RemoteCampaignsRequester
  BASE_URL = 'https://mockbin.org/bin/'

  def initialize(id:)
    @id = id
  end

  def call
    connection.get(id)
  end

private
  attr_reader :id

  def connection
    Faraday.new(url: BASE_URL) do |faraday|
      faraday.response :json

      faraday.adapter Faraday.default_adapter
    end
  end
end
