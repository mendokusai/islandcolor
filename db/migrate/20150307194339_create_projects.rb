class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :author
      t.text :text
      t.integer :number
      t.string :date

      t.timestamps null: false
    end
  end
end
