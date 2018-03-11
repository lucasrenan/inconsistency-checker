class CreateCampaigns < ActiveRecord::Migration[5.1]
  def change
    create_table :campaigns do |t|
      t.integer :job_id, null: false
      t.string :status, null: false
      t.string :external_reference, null: false
      t.string :ad_description, null: false

      t.timestamps
    end
  end
end
