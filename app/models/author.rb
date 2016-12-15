class Author < ApplicationRecord
  belongs_to :person
  belongs_to :manuscript
end