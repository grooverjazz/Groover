class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :boeking_info
      t.string :adres_info
      t.string :kvk_info
      t.string :socialmedia_info
      t.string :bestuur_info
      t.string :banner_uid
    end
  end
end
