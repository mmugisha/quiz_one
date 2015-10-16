class CreateFeels < ActiveRecord::Migration
  def change
    create_table :feels do |t|
      t.text :feeling
      t.string  :name
      t.timestamps
    end
  end
end
