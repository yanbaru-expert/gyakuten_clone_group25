class CreateAllMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :all_movies do |t|
      t.string :category, null: false
      t.string :title, null: false
      t.string :url, null: false

      t.timestamps
    end
  end
end
