
json.started_conversations do 
  json.array! @started_conversations, partial: "conversation", as: :conversation
end

json.invited_conversations do 
  json.array! @invited_conversations, partial: "conversation", as: :conversation
end