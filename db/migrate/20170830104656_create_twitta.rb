class CreateTwitta < ActiveRecord::Migration
  def change
    create_table :twittum do |t|
      t.string :tweeter
      t.text :tweet


      t.timestamps null: false
    end
  end
end
