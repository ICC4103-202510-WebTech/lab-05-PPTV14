# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# Crear 10 usuarios con los nombres y correos 
User.create!(email: "pedro.tagle@gmail.com", first_name: "Pedro", last_name: "Tagle", created_at: Time.now, updated_at: Time.now)
User.create!(email: "felix.martinez@gmail.com", first_name: "Felix", last_name: "Martinez", created_at: Time.now, updated_at: Time.now)
User.create!(email: "sebastian.diaz@gmail.com", first_name: "Sebastian", last_name: "Diaz", created_at: Time.now, updated_at: Time.now)
User.create!(email: "vicente.arancibia@gmail.com", first_name: "Vicente", last_name: "Arancibia", created_at: Time.now, updated_at: Time.now)
User.create!(email: "cristobal.gazitua@gmail.com", first_name: "Cristobal", last_name: "Gazitua", created_at: Time.now, updated_at: Time.now)
User.create!(email: "daniel.waquez@gmail.com", first_name: "Daniel", last_name: "Waquez", created_at: Time.now, updated_at: Time.now)
User.create!(email: "luis.beiza@gmail.com", first_name: "Luis", last_name: "Beiza", created_at: Time.now, updated_at: Time.now)
User.create!(email: "sofia.gallego@gmail.com", first_name: "Sofia", last_name: "Gallego", created_at: Time.now, updated_at: Time.now)
User.create!(email: "yissbell.escalante@gmail.com", first_name: "Yissbell", last_name: "Escalante", created_at: Time.now, updated_at: Time.now)
User.create!(email: "sebastian.sepulveda@gmail.com", first_name: "Sebastian", last_name: "Sepulveda", created_at: Time.now, updated_at: Time.now)

# Crear 10 chats 
Chat.create!(sender_id: 1, receiver_id: 2, created_at: Time.now, updated_at: Time.now)
Chat.create!(sender_id: 2, receiver_id: 3, created_at: Time.now, updated_at: Time.now)
Chat.create!(sender_id: 3, receiver_id: 4, created_at: Time.now, updated_at: Time.now)
Chat.create!(sender_id: 4, receiver_id: 5, created_at: Time.now, updated_at: Time.now)
Chat.create!(sender_id: 5, receiver_id: 6, created_at: Time.now, updated_at: Time.now)
Chat.create!(sender_id: 6, receiver_id: 7, created_at: Time.now, updated_at: Time.now)
Chat.create!(sender_id: 7, receiver_id: 8, created_at: Time.now, updated_at: Time.now)
Chat.create!(sender_id: 8, receiver_id: 9, created_at: Time.now, updated_at: Time.now)
Chat.create!(sender_id: 9, receiver_id: 10, created_at: Time.now, updated_at: Time.now)
Chat.create!(sender_id: 10, receiver_id: 1, created_at: Time.now, updated_at: Time.now)

# Crear 10 mensajes 
Message.create!(chat_id: 1, user_id: 1, body: "Hola, ¿cómo estás?", created_at: Time.now, updated_at: Time.now)
Message.create!(chat_id: 1, user_id: 2, body: "Bien, gracias. ¿Y tú?", created_at: Time.now, updated_at: Time.now)
Message.create!(chat_id: 2, user_id: 3, body: "¿Qué tal el trabajo?", created_at: Time.now, updated_at: Time.now)
Message.create!(chat_id: 2, user_id: 4, body: "Todo bien, gracias por preguntar.", created_at: Time.now, updated_at: Time.now)
Message.create!(chat_id: 3, user_id: 5, body: "Hola, te llamo más tarde.", created_at: Time.now, updated_at: Time.now)
Message.create!(chat_id: 3, user_id: 6, body: "Perfecto, hablamos luego.", created_at: Time.now, updated_at: Time.now)
Message.create!(chat_id: 4, user_id: 7, body: "¿Nos vemos este fin de semana?", created_at: Time.now, updated_at: Time.now)
Message.create!(chat_id: 4, user_id: 8, body: "Sí, claro. Nos vemos el sábado.", created_at: Time.now, updated_at: Time.now)
Message.create!(chat_id: 5, user_id: 9, body: "Me alegra saber eso.", created_at: Time.now, updated_at: Time.now)
Message.create!(chat_id: 5, user_id: 10, body: "A mí también, nos vemos pronto.", created_at: Time.now, updated_at: Time.now)
