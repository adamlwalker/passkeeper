class CreatePasswords < ActiveRecord::Migration
  def change
    create_table :passwords do |t|
      t.references :user, index: true
      t.string :url
      t.string :name
      t.string :password
      t.date :expire
      t.text :description

      t.timestamps
    end
  end
end
