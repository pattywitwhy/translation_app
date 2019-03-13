# json.conversations do 
  json.array! @conversations, partial: "conversation", as: :conversation
# end

# json.started_conversations do 
  json.array! @started_conversations, partial: "conversation", as: :conversation
# end