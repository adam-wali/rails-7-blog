class AddLastActivityToGroups < ActiveRecord::Migration[7.0]
  def change
    add_column :groups, :last_activity, :datetime
  end
end
