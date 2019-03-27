# User.create!([
#   {name: "Rosa Hwang", phone_number: "281 - 482 - 3938", email: "rosa@gmail.com", preferred_language: "Korean", password_digest: "$2a$10$TkIWbQZ2zmKFQGC7/ZRjXe6hx8xsHiJb7tBcCr5DNM8pSOUjf8gzC", image: "/profile_pics/rosa.png"},
#   {name: "Mom", phone_number: "592 - 283 - 1849", email: "mom@gmail.com", preferred_language: "Korean", password_digest: "$2a$10$efF.KWOQrZzSdSEJXdp7eeXn9JD4886XYVtmY1Drn5W7Mgm25STFG", image: "/profile_pics/mom.png"},
#   {name: "Leo", phone_number: nil, email: "leo@gmail.com", preferred_language: nil, password_digest: "$2a$10$tbzvYl6ykaExVDvQg7PcRO3vEvXpY/pumr4cEpj1aaCda.bj43OYy", image: nil},
#   {name: "Phuoc", phone_number: nil, email: "phuoc@gmail.com", preferred_language: nil, password_digest: "$2a$10$FTO4W7QmgoI.PJ64mUpy9O0b5S.XdFu6qmT3C5trY.KV4.X992efW", image: nil},
#   {name: "Patty Hwang", phone_number: "6108642346", email: "patty@gmail.com", preferred_language: "English", password_digest: "$2a$10$J1ER0RrkTQMFL3fjgotVS.DL9LK1VsSDqFWxuo8kqlpCzljsCBWou", image: "/profile_pics/patty.png"},
#   {name: "Dad", phone_number: nil, email: "dad@gmail.com", preferred_language: nil, password_digest: "$2a$10$.xUqN80OOvmNybRCffzGruMHOeSWrkWuxj8juDghYWJdAzzJABNym", image: "/profile_pics/dad.png"},
#   {name: "Annie", phone_number: nil, email: "annie@gmail.com", preferred_language: nil, password_digest: "$2a$10$fxBKjewWPI9id4tYYB8KnOtIaaTWyOyVGVevo8qBLqwU9CSoPa0yW", image: "/profile_pics/annie.png"}
# ])
Conversation.create!([
  {starter_id: 5, name: "Cat Talks"}
])
Invitation.create!([
  {conversation_id: 1, user_id: 5}
])
Message.create!([
  {user_id: 5, body: "옹", translated: nil, read: nil, conversation_id: 1},
  {user_id: 4, body: "woof woof", translated: nil, read: nil, conversation_id: 1}
])
