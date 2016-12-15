class UpdateSentencesManuscriptId < ActiveRecord::Migration[5.0]
  def change
  	rename_column :sentences, :manuscript_id, :manuscripts_id
  end
end
