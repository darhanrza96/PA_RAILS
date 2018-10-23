class CreateSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects do |t|
      t.string :name
      t.string :abbreviation
      t.string :subject_id
      t.timestamps
    end
  end
end
