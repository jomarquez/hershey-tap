class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :twitter_name
      t.integer :progress, default: 0
      t.string :url
      t.timestamps null: false
    end
  end
end
