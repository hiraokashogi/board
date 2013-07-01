class CreateThreds < ActiveRecord::Migration
  def change
    create_table :threds do |t|

      t.timestamps
    end
  end
end
