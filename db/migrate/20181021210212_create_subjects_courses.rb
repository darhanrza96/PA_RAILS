class CreateSubjectsCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects_courses do |t|
      t.integer :course_id
      t.integer :subject_id

      t.timestamps
    end
  end
end
