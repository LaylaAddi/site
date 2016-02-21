class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.string :client
      t.string :pages
      t.string :images
      t.string :hosting
      t.string :domain_name
      t.text :design
      t.boolean :terms_conditions
      t.string :user_registration
      t.text :user_registration_details
      t.monetize :budget

      t.timestamps null: false
    end
  end
end
