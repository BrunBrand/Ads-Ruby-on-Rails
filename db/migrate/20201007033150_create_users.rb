class CreateUsers < ActiveRecord::Migration[6.0]
  enable_extension "citext" #extension to make a row no case sensitive
  
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.citext :email, null: false
      t.string :password_digest, null: false
     

      t.timestamps
    end
    add_index :users, :email, unique: true
    #add_index :users, "lower(email)", name: "idx_email_uniq", unique: true
    # The code above serves to denie uppercase emails if the user enter an uppercased email 
  end
end
