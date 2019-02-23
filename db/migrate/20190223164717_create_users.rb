class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.date :born_date
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
