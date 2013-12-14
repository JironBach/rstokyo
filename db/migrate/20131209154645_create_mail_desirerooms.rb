class CreateMailDesirerooms < ActiveRecord::Migration
  def change
    create_table(:mail_desirerooms, :options => "", :force => (false)) do |t|
      t.timestamps
      t.string(:name, :limit => 255, :default => "", :null => (false))
      t.string(:furigana, :limit => 255, :default => "", :null => (false))
      t.integer(:age, :limit => 11, :null => (false))
      t.integer(:master_gender_id, :limit => 11, :null => (false))
      t.integer(:master_job_id, :limit => 11, :null => (false))
      t.string(:tel, :limit => 255, :default => "", :null => (false))
      t.string(:email, :limit => 255, :default => "", :null => (false))
      t.string(:station, :limit => 255, :default => "", :null => (false))
      t.integer(:master_commuting_time_id, :limit => 11, :null => (false))
      t.string(:line, :limit => 255, :default => "", :null => (false))
      t.string(:area, :limit => 255, :default => "", :null => (false))
      t.integer(:master_hope_renrt_id, :limit => 11, :null => (false))
      t.integer(:master_live_term_id, :limit => 11, :null => (false))
      t.integer(:master_desired_number_id, :limit => 11, :null => (false))
      t.string(:conditions01, :limit => 255, :default => "", :null => (false))
      t.string(:conditions02, :limit => 255, :default => "", :null => (false))
      t.string(:conditions03, :limit => 255, :default => "", :null => (false))
      t.string(:conditions04, :limit => 255, :default => "", :null => (false))
      t.string(:conditions05, :limit => 255, :default => "", :null => (false))
      t.text(:detail, :null => (false))
    end
  end
end