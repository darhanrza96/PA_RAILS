class CreateSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects,:id => false do |t|
      t.string :type
      t.string :id
      t.string :comment
      t.string :term
      t.string :name
      t.string :abbreveation

      t.timestamps
    end
  end
end
