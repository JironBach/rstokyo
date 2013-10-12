class CreateMasterLiveTerms < ActiveRecord::Migration
  def change
    create_table :master_live_terms do |t|
      t.timestamps
      t.string(:value, :limit => 16, :null => (false))
    end
  end
end
