class RemoveRecoverbleFromUsers < ActiveRecord::Migration[6.1]
  def up
    remove_column :users, :reset_password_token, :string
    remove_column :users, :reset_password_sent_at, :datetime
  end
  def down
    add_column t.string   :reset_password_token
    add_column t.datetime :reset_password_sent_at
  end
end
