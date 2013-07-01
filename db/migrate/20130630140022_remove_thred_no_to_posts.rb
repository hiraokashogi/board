class RemoveThredNoToPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :thred_no, :integer
  end
end
