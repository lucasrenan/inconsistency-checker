require 'app_helper'

RSpec.describe Campaign, type: :model do
  it { is_expected.to validate_presence_of(:job_id) }
  it { is_expected.to validate_presence_of(:status) }
  it { is_expected.to validate_presence_of(:external_reference) }
  it { is_expected.to validate_presence_of(:ad_description) }
end
