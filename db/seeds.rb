User.create!([
  {name: "Leo", phone_number: nil, email: "leo@gmail.com", preferred_language: nil, password_digest: "$2a$10$tbzvYl6ykaExVDvQg7PcRO3vEvXpY/pumr4cEpj1aaCda.bj43OYy", image: nil},
  {name: "Patty Hwang", phone_number: "6108642346", email: "patty@gmail.com", preferred_language: "English", password_digest: "$2a$10$J1ER0RrkTQMFL3fjgotVS.DL9LK1VsSDqFWxuo8kqlpCzljsCBWou", image: "#<ActionDispatch::Http::UploadedFile:0x00007fdcdf3900f8>"},
  {name: "Mom", phone_number: "null", email: "mom@gmail.com", preferred_language: "null", password_digest: "$2a$10$efF.KWOQrZzSdSEJXdp7eeXn9JD4886XYVtmY1Drn5W7Mgm25STFG", image: "null"},
  {name: "Dad", phone_number: nil, email: "dad@gmail.com", preferred_language: nil, password_digest: "$2a$10$.xUqN80OOvmNybRCffzGruMHOeSWrkWuxj8juDghYWJdAzzJABNym", image: nil},
  {name: "Phuoc", phone_number: nil, email: "phuoc@gmail.com", preferred_language: nil, password_digest: "$2a$10$FTO4W7QmgoI.PJ64mUpy9O0b5S.XdFu6qmT3C5trY.KV4.X992efW", image: nil},
  {name: "Annie", phone_number: nil, email: "annie@gmail.com", preferred_language: nil, password_digest: "$2a$10$fxBKjewWPI9id4tYYB8KnOtIaaTWyOyVGVevo8qBLqwU9CSoPa0yW", image: nil},
  {name: "Rosa", phone_number: nil, email: "rosa@gmail.com", preferred_language: nil, password_digest: "$2a$10$TkIWbQZ2zmKFQGC7/ZRjXe6hx8xsHiJb7tBcCr5DNM8pSOUjf8gzC", image: nil}
])
Conversation.create!([
  {starter_id: 3, name: "yellow"},
  {starter_id: 1, name: "Mother"},
  {starter_id: 2, name: "ok"},
  {starter_id: 4, name: "patty"},
  {starter_id: 6, name: "tara"}
])
Invitation.create!([
  {conversation_id: 272, user_id: 1},
  {conversation_id: 368, user_id: 7},
  {conversation_id: 369, user_id: 5},
  {conversation_id: 370, user_id: 6},
  {conversation_id: 371, user_id: 2},
  {conversation_id: 372, user_id: 2},
  {conversation_id: 373, user_id: 2},
  {conversation_id: 374, user_id: 2},
  {conversation_id: 375, user_id: 2},
  {conversation_id: 376, user_id: 1},
  {conversation_id: 377, user_id: 2},
  {conversation_id: 378, user_id: 2},
  {conversation_id: 379, user_id: 2},
  {conversation_id: 380, user_id: 2},
  {conversation_id: 381, user_id: 2},
  {conversation_id: 382, user_id: 2},
  {conversation_id: 383, user_id: 2},
  {conversation_id: 384, user_id: 2},
  {conversation_id: 385, user_id: 2},
  {conversation_id: 386, user_id: 2},
  {conversation_id: 387, user_id: 2},
  {conversation_id: 388, user_id: 2},
  {conversation_id: 389, user_id: 2},
  {conversation_id: 390, user_id: 2},
  {conversation_id: 391, user_id: 2},
  {conversation_id: 392, user_id: 2},
  {conversation_id: 393, user_id: 2},
  {conversation_id: 394, user_id: 1},
  {conversation_id: 395, user_id: 1},
  {conversation_id: 396, user_id: 4},
  {conversation_id: 397, user_id: 1}
])
