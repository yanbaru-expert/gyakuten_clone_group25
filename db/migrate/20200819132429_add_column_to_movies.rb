class AddColumnToMovies < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :category, :string, null: false
  end
end
