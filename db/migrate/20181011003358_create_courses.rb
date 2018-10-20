class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :id
      t.string :code
      t.string :name
      t.string :description
      t.string :subjects, array: true
      t.timestamps
    end
  end
end
