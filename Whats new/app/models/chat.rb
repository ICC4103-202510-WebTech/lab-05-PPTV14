class Chat < ApplicationRecord
  belongs_to :sender, class_name: "User"
  belongs_to :receiver, class_name: "User"

  has_many :messages, dependent: :destroy

  validates :sender_id, :receiver_id, presence: true
  validate :different_users

  # Scope para obtener todos los chats en los que participa un usuario
  scope :involving, ->(user) {
    where("sender_id = :id OR receiver_id = :id", id: user.id)
  }

  # Método para obtener al otro participante
  def other_participant(user)
    user.id == sender_id ? receiver : sender
  end

  private

  def different_users
    errors.add(:receiver_id, "must be different from sender") if sender_id == receiver_id
  end
end
