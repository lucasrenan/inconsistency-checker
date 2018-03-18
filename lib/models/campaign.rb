class Campaign < ActiveRecord::Base
  validates_presence_of :job_id
  validates_presence_of :status
  validates_presence_of :external_reference
  validates_presence_of :ad_description
end
