class CreateHis < ActiveRecord::Migration[5.0]
  def change
    create_table :his do |t|
      t.string :name
      t.string :count
      t.string :desc

      t.timestamps
    end
  end
end
