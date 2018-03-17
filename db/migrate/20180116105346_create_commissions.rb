class CreateCommissions < ActiveRecord::Migration[5.1]
  def change
    create_table :commissions do |t|
    	t.string 	:name
    	t.text		:description
    	t.string	:members
    end
  end
end
