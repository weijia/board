class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :ticket_id
      t.text :content
      t.integer :creator_id

      t.timestamps
    end
  end
end
