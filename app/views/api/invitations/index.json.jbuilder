# json.id invitation.id

# json.user_id invitation.user_id
# json.conversation_id invitation.conversation_id

json.array! @invitations, partial: "invitation", as: :invitation
