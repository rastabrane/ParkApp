class CreateCheckIns < ActiveRecord::Migration
  def change
    create_table :check_ins do |t|
      t.integer :court_id
      t.integer :how_many

      t.timestamps
    end
  end
end
