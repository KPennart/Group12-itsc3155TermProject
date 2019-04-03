class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :title_of_the_game
      t.string :game_username
      t.string :poster_id
      t.string :poster_name
      t.text :text

      t.timestamps
    end
  end
end
