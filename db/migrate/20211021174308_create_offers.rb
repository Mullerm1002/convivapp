class CreateOffers < ActiveRecord::Migration[6.1]
  def change
    create_table :offers do |t|
      t.string :address
      t.string :title
      t.date :date
      t.string :description
      t.string :photo
      t.string :meal

      t.timestamps
    end
  end
end
