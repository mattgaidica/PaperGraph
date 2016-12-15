class CreateSentences < ActiveRecord::Migration[5.0]
  def change
    create_table :sentences do |t|
      t.references :manuscript, foreign_key: true
      t.string :content

      t.timestamps
    end
  end
end
