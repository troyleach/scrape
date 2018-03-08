class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.string :url
      t.string :src
      t.text :alt

      t.timestamps
    end
  end
end
