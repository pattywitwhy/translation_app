json.id conversation.id
json.name conversation.name

json.messages do
  json.array! conversation.messages, partial: 'api/messages/message', as: :message
end
