json.id conversation.id
# json.starter_id conversation.starter_id
json.name conversation.name

json.messages do
  json.partial! conversation.messages, partial: 'api/messages/message', as: :message
end
