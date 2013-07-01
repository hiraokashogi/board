class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :thred_no
      t.string :name
      t.text :body

      t.timestamps
    end
  end
end
