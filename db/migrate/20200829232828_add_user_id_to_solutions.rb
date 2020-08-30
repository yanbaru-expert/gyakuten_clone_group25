class AddUserIdToSolutions < ActiveRecord::Migration[6.0]
  def change
    add_reference :solutions, :user, null: false, foreign_key: true, default: 1
    # change_column_null :solutions, :user_id, false
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
