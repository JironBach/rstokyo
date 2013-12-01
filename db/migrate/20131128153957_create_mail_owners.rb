class CreateMailOwners < ActiveRecord::Migration
  def change
    create_table(:mail_owners, :options => "", :force => (false)) do |t|
      t.timestamps
      t.string(:corp_name, :limit => 40, :default => "", :null => (false))
      t.string(:name, :limit => 50, :default => "", :null => (false))
      t.string(:furigana, :limit => 50, :default => "", :null => (false))
      t.string(:email, :limit => 50, :default => "", :null => (false))
      t.text(:detail, :null => (false))
      t.string(:master_owner_kubun_id, :limit => 11, :default => "", :null => (false))
    end
  end
end