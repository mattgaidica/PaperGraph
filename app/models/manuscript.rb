class Manuscript < ApplicationRecord
	has_many :authors
	has_many :sentences
	has_many :keywords, through: :keywords_sentences
end
