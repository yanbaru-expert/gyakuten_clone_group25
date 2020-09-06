class CreateReads < ActiveRecord::Migration[6.0]
  def change
    create_table :reads do |t|
      t.references :user
      t.references :readable, polymorphic: true
      t.timestamps
    end
  end
end
