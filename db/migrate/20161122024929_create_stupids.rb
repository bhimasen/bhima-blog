class CreateStupids < ActiveRecord::Migration[5.0]
  def change
    create_table :stupids do |t|
      t.string :name

      t.timestamps
    end
  end
end
