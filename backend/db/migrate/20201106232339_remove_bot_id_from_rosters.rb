class RemoveBotIdFromRosters < ActiveRecord::Migration[6.0]
  def change
    remove_column :rosters, :bot_id, :integer
  end
end
