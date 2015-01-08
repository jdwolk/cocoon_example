class CreateBars < ActiveRecord::Migration
  def change
    create_table :bars do |t|
      t.string :color
      t.belongs_to :foo
      t.timestamps
    end
  end
end
