class CreateUserToMicroposts < ActiveRecord::Migration[5.0]
  def change
    create_table :user_to_microposts do |t|
      t.references :user, foreign_key: true
      t.references :micropost, foreign_key: true

      t.timestamps
    end
  end
end
