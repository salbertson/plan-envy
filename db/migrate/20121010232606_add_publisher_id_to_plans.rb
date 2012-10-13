class AddPublisherIdToPlans < ActiveRecord::Migration
  def change
    add_column :plans, :publisher_id, :integer
  end
end
