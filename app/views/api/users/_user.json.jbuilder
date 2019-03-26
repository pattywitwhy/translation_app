json.id user.id

json.image_url rails_blob_url(user.image) if user.image.attachment

json.name user.name
json.email user.email
json.password user.password
json.password_confirmation user.password_confirmation
json.phone_number user.phone_number
json.preferred_language user.preferred_language


json.conversations do
  json.array! user.conversations.each do |conversation|
    json.id conversation.id
    json.name conversation.name
  end
end

json.invitations do
  json.array! user.invitations.each do |invitation|
    json.user_id invitation.user_id
    json.conversation_id invitation.conversation_id
  end
end