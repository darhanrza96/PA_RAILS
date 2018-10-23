class SubjectsCourse < ApplicationRecord
  #attr_accessible :course_id, :subject_id
  belongs_to :subject
  belongs_to :course
end
