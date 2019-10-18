class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :content
      t.string :owner
      t.integer :photo_id

      t.timestamps
    end
  end
end
