class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.string :text
      t.bigint :parent_comment_id
      t.references :user
      t.references :post

      t.timestamps
    end
  end
end
