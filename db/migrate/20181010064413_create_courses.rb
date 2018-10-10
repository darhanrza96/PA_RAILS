class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses, :id => false do |t|
      t.string :type
      t.string :id
      t.string :term
      t.string :code
      t.string :continuity_id
      t.string :name
      t.string :description
      t.string :credits
      t.boolean :independent_study

      t.timestamps
    end
  end
end
