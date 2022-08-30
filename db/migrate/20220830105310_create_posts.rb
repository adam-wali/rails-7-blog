class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :text
      t.references :user
      t.references :group
      t.references :group_member

      t.timestamps
    end
  end
end
