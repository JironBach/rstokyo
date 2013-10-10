class CreateVacanthouses < ActiveRecord::Migration
  def change
    create_table :vacanthouses do |t|
      t.timestamps
      t.string(:name, :limit => 128)
      t.integer(:age_id, :limit => 11)
      t.integer(:gender_id, :limit => 11)
      t.integer(:job_id, :limit => 11)
      t.string(:email, :limit => 255)
      t.string(:title, :limit => 255)
      t.text(:detail)
    end
  end
end
