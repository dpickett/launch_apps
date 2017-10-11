class CreateRatings < ActiveRecord::Migration[5.0]
  def change
    create_table :ratings do |t|
      t.integer :score, null: false
      t.belongs_to :user, null: false
      t.belongs_to :launch_application, null: false
    end
  end
end
