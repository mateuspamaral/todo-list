class CreateGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :groups do |t|
      t.text :name

      t.timestamps
    end
  end
end
