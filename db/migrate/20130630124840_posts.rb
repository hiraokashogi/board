class Posts < ActiveRecord::Migration
  def change
    add_column :posts, :thred_no, :integer
  end
end
