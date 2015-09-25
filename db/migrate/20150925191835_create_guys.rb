class CreateGuys < ActiveRecord::Migration
  def change
    create_table :guys do |t|
      t.string :name
      t.boolean :person

      t.timestamps null: false
    end
  end
end
