json.id user.id

json.image_url rails_blob_url(user.image) if user.image.attachment

json.name user.name
json.email user.email
json.password user.password
json.password_confirmation user.password_confirmation
json.phone_number user.phone_number
json.preferred_language user.preferred_language