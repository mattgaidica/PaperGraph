class RenameKeywordSentencesToKeywordsSentences < ActiveRecord::Migration[5.0]
  def change
  	rename_table :keyword_sentences, :keywords_sentences
  end
end
