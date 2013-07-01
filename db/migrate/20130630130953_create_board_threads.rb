class CreateBoardThreads < ActiveRecord::Migration
  def change
    create_table :board_threads do |t|
      t.string :name
      t.boolean :view_flag

      t.timestamps
    end
  end
end
