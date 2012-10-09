class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :name
      t.text :description
      t.attachment :preview_image
      t.attachment :plan_file

      t.timestamps
    end
  end
end
