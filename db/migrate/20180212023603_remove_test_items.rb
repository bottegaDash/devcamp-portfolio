class RemoveTestItems < ActiveRecord::Migration[5.1]
  def change
    remove_column :blogs, :status, :integer
    remove_column :blogs, :test_status, :integer
  end
end
