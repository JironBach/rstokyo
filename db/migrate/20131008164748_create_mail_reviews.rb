class CreateMailReviews < ActiveRecord::Migration
  def change
    create_table(:mail_reviews) do |t|
      t.timestamps
      t.string(:title, :limit => 255)
      t.string(:name, :limit => 128)
      t.integer(:master_age_gender_id, :limit => 4)
      t.integer(:master_job_id, :limit => 4)
      t.string(:email, :limit => 255)
      t.integer(:master_theme_id, :limit => 4)
      t.text(:detail)
    end
  end
end
