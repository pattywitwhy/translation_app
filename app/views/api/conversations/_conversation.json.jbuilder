
json.id conversation.id
# json.starter_id conversation.starter_id
json.name conversation.name


json.messages do
  json.array! conversation.messages.each do |message|
    json.id message.id
    json.body message.body
    json.conversation_id message.conversation_id
  end
end
