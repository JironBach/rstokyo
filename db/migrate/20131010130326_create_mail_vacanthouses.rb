class CreateMailVacanthouses < ActiveRecord::Migration
  def change
    create_table(:mail_vacanthouses) do |t|
      t.timestamps
      t.string(:name, :limit => 128)
      t.integer(:master_age_id, :limit => 11)
      t.integer(:master_gender_id, :limit => 11)
      t.integer(:master_job_id, :limit => 11)
      t.string(:email, :limit => 255)
      t.string(:title, :limit => 255)
      t.attachment(:image)
      t.string(:address, :limit => 255)
      t.string(:price, :limit => 255)
      t.string(:etc_price, :limit => 255)
      t.string(:station, :limit => 255)
      t.string(:station_time, :limit => 255)
      t.integer(:master_tatemono_class_id, :limit => 11)
      t.boolean(:koshitsu)
      t.integer(:master_live_term_id, :limit => 11)
      t.integer(:master_recruit_gender_id, :limit => 11)
      t.text(:detail)
    end
  end
end