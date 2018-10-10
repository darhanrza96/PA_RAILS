class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :id
      t.string :name
      t.string :prerequisites
      t.string :about

      t.timestamps
    end
  end
end
