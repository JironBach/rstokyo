class CreateMasterJobs < ActiveRecord::Migration
  def change
    create_table(:master_jobs) do |t|
      t.timestamps
      t.string(:value, :limit => 32, :null => (false))
    end
  end
end