class Course < ApplicationRecord
  has_many :enrollments
  has_many :users, :through => :enrollments
  has_many :subjects_courses
  has_many :subjects, :through => :subjects_courses
  belongs_to :subject


  def self.search(term)
    if term
      where('name LIKE ?', "%#{term}%")
    else
      all
    end
  end

end
