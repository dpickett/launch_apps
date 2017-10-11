class CreateLaunchApplications < ActiveRecord::Migration[5.0]
  def change
    create_table :launch_applications do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.integer :creator_id, null: false
    end

    add_index :launch_applications, :creator_id
  end
end
