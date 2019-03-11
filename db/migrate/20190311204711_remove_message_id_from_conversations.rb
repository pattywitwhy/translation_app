class RemoveMessageIdFromConversations < ActiveRecord::Migration[5.2]
  def change
    remove_column :conversations, :message_id, :integer
    rename_column :conversations, :user_id, :starter_id
  end
end
