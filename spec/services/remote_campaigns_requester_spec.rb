require 'app_helper'

RSpec.describe RemoteCampaignsRequester do
  describe '#call' do
    let(:id) { '1234-5678' }
    let(:remote_campaign_attrs) do
      { "reference" => "1", "status" => "enabled", "description" => "Description for campaign 11" }
    end
    let(:api_response) do
      {
        "ads" => [
          remote_campaign_attrs
        ]
      }
    end
    let(:remote_campaign_response) do
      RemoteCampaign.new(remote_campaign_attrs)
    end

    subject { described_class.new(id: id).call }

    before do
      stub_request(:get, "#{described_class::BASE_URL}#{id}").
        to_return(status: 200, body: api_response.to_json, headers: {})

      allow(RemoteCampaign).to receive(:new).with(remote_campaign_attrs)
        .and_return(remote_campaign_response)
    end

    it 'requests remote campaigns' do
      expect(subject).to eq([remote_campaign_response])
    end
  end
end
