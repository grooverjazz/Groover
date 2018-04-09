class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.text :bookingcontent
      t.text :content
    end
  end
end
