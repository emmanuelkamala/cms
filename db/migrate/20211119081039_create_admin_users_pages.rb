class CreateAdminUsersPages < ActiveRecord::Migration[6.1]
  def change
    create_table :admin_users_pages do |t|
      t.references :page, null: false, foreign_key: true
      t.references :admin_user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
