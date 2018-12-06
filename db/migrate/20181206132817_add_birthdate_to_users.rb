class AddBirthdateToUsers < ActiveRecord::Migration
  def change
    
    add_column :users, :birthdate, :interger
  end
end
