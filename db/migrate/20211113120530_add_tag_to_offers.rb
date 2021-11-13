class AddTagToOffers < ActiveRecord::Migration[6.1]
  def change
    add_column :offers, :tag, :string
  end
end
