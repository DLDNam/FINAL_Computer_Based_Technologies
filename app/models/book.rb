class Book < ApplicationRecord
  belongs_to :subject

  validates_presence_of :title, :author, :publisher
  validates_uniqueness_of :title
end
class Book < ApplicationRecord
  belongs_to :subject
  validates_presence_of :title, :author, :publisher
 validates_uniqueness_of :title
 validates_numericality_of :year
 def self.search(term)
  if term
    where('title LIKE ?', "%#{term}%")
  else
    all
  end
  end
  
end