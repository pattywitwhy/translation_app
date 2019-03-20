class ChangeForeignKeysOnInvitations < ActiveRecord::Migration[5.2]
  def change
    remove_column :invitations, :conversation_id, :string 

    remove_column :invitations, :user_id, :string 

    add_column :invitations, :conversation_id, :integer 
    add_column :invitations, :user_id, :integer 
  end
end
