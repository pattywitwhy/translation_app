# json.partial! @conversation, partial: "conversation", as: :conversation

# json.started_conversations do 
#   json.partial! @started_conversations, partial: "conversation", as: :conversation
# end

# json.conversation do 
  json.partial! @conversation, partial: "conversation", as: :conversation
# end