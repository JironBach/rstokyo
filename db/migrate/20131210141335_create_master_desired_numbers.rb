class CreateMasterDesiredNumbers < ActiveRecord::Migration
  def change
    create_table(:master_desired_numbers, :options => "", :force => (false)) do |t|
      t.timestamps
      t.string(:value, :limit => 16, :default => "", :null => (false))
    end
  end
end