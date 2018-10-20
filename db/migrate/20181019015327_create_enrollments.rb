class CreateEnrollments < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
    end

    create_table :courses do |t|
      t.string :name
    end

  end

end
