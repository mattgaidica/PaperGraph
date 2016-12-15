class CreateManuscripts < ActiveRecord::Migration[5.0]
  def change
    create_table :manuscripts do |t|
      t.string :title

      t.timestamps
    end
  end
end
