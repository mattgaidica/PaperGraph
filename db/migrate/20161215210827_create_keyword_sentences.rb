class CreateKeywordSentences < ActiveRecord::Migration[5.0]
  def change
    create_table :keyword_sentences do |t|
      t.references :sentences, foreign_key: true
      t.references :keywords, foreign_key: true

      t.timestamps
    end
  end
end
