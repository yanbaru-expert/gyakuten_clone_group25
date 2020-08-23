class CreateLines < ActiveRecord::Migration[6.0]
  def change
    create_table :lines do |t|
      t.string    :genre, null: false
      t.string    :title, null: false
      t.text      :contents, null: false
      t.timestamps
    end
  end
end
