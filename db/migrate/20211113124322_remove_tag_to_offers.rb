class RemoveTagToOffers < ActiveRecord::Migration[6.1]
  def change
    remove_column :offers, :tag, :string
  end
end
