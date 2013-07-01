class AddDetailsToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :thread_no, :integer
    add_column :posts, :thread_index, :integer
  end
end
