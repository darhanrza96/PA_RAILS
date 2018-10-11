class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      #t.string :id
      t.string :comment
      t.string :term
      t.string :code
      t.string :name
      t.string :description
      t.integer :credits
      t.boolean :independent_study
      t.string :requirements

      t.timestamps
    end
  end
end
