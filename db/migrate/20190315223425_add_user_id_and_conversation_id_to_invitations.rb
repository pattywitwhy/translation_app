class AddUserIdAndConversationIdToInvitations < ActiveRecord::Migration[5.2]
  def change
    add_column :invitations, :user_id, :string
    add_column :invitations, :conversation_id, :string
  end
end
