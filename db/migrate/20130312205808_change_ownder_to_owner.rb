class ChangeOwnderToOwner < ActiveRecord::Migration
  def up
    rename_column :events, :ownder, :owner_id
  end

  def down
    rename_column :events, :owner_id, :ownder
  end
end
