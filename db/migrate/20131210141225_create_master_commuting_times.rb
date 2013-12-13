class CreateMasterCommutingTimes < ActiveRecord::Migration
  def change
    create_table(:master_commuting_times, :options => "", :force => (false)) do |t|
      t.timestamps
      t.string(:value, :limit => 16, :default => "", :null => (false))
    end
  end
end