class CreateMailMailmagazines < ActiveRecord::Migration
  def change
    create_table(:mail_mailmagazines, :options => "", :force => (false)) do |t|
      t.timestamps
      t.string(:email, :limit => 80, :default => "", :null => (false))
    end
  end
end