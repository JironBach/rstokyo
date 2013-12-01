class CreateMasterOwnerKubuns < ActiveRecord::Migration
  def change
    create_table(:master_owner_kubuns, :options => "", :force => (false)) do |t|
      t.timestamps
      t.string(:value, :limit => 20, :default => "", :null => (false))
    end
  end
end