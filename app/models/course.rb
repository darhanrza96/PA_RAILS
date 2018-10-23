class Course < ApplicationRecord
  has_many :subjects_courses
  has_many :subjects, :through => :subjects_courses

  def self.search(term)
    if term
      where('name LIKE ?', "%#{term}%")
    else
      all
    end
  end

end
