class CreateEnrollments < ActiveRecord::Migration[5.2]


    create_table :courses do |t|
      t.string :name
    end

  end

end
