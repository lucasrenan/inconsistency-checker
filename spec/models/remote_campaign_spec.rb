require 'app_helper'

RSpec.describe RemoteCampaign, type: :model do
  describe '.initialize' do
    let(:attrs) do
      { reference: "1", status: "enabled", description: "Description for campaign 11" }
    end

    it 'initializes the object with attributes' do
      remote = described_class.new(attrs)

      expect(remote.reference).to eq(attrs[:reference])
      expect(remote.status).to eq(attrs[:status])
      expect(remote.description).to eq(attrs[:description])
    end
  end
end
