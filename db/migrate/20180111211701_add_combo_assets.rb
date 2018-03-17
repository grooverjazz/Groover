class AddComboAssets < ActiveRecord::Migration[5.1]
  def change
    add_column :combos, :music_uid, :string
    add_column :combos, :facebook_uid, :string
    add_column :combos, :twitter_uid, :string
    add_column :combos, :short_text, :string
  end
end
