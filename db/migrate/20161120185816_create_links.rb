class CreateLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :links do |t|
      t.integer :stamp
      t.string :code
      t.string :url

      t.timestamps
    end
  end
end
