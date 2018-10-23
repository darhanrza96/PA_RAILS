class Subject < ApplicationRecord
  has_many :subjects_courses
  has_many :courses, :through => :subjects_courses
end
