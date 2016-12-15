class CreateAuthors < ActiveRecord::Migration[5.0]
  def change
    create_table :authors do |t|
      t.references :people, foreign_key: true
      t.references :manuscripts, foreign_key: true
      t.integer :order, :default => 1

      t.timestamps
    end
  end
end
