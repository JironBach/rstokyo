class CreateMailReviews < ActiveRecord::Migration
  def change
    create_table(:mail_reviews) do |t|
      t.timestamps
      t.string(:title, :limit => 255)
      t.string(:name, :limit => 128)
      t.integer(:age_id, :limit => 11)
      t.integer(:job_id, :limit => 11)
      t.string(:email, :limit => 255)
      t.integer(:theme_id, :limit => 11)
      t.text(:detail)
    end
  end
end
