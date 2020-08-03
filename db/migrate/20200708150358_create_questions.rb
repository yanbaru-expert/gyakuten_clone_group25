class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :title
      t.text :detail

      t.timestamps
    end
    change_column_null(:questions, :title, false)
    change_column_null(:questions, :detail, false)
  end
end
