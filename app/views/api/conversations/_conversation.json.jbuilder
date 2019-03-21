json.id conversation.id
json.name conversation.name


json.users do
  json.array! conversation.users, partial: 'api/users/user', as: :user
end

json.messages do
  json.array! conversation.messages, partial: 'api/messages/message', as: :message
end
