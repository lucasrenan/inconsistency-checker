require 'app_helper'

RSpec.describe RemoteCampaignsRequester do
  describe '#call' do
    let(:id) { '1234-5678' }
    let(:api_response) do
      {
        "ads" => [
          { "reference" => "1", "status" => "enabled", "description" => "Description for campaign 11" }
        ]
      }
    end

    subject { described_class.new(id: id).call }

    before do
      stub_request(:get, "#{described_class::BASE_URL}#{id}").
        to_return(status: 200, body: api_response.to_json, headers: {})
    end

    it 'requests remote campaigns' do
      expect(subject.body).to eq(api_response)
    end
  end
end
