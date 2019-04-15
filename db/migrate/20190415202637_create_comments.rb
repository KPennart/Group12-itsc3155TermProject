class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :commenter
      t.string :game_username
      t.string :date
      t.string :poster_id
      t.text :body
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end
