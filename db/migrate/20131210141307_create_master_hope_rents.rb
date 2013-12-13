class CreateMasterHopeRents < ActiveRecord::Migration
  def change
    create_table(:master_hope_rents, :options => "", :force => (false)) do |t|
      t.timestamps
      t.string(:value, :limit => 16, :default => "", :null => (false))
    end
  end
end