class User < ApplicationRecord
  before_validation :strip_whitespace
  before_validation :capitalize_names

  has_many :messages, dependent: :destroy
  has_many :sent_chats, class_name: "Chat", foreign_key: "sender_id", dependent: :destroy
  has_many :received_chats, class_name: "Chat", foreign_key: "receiver_id", dependent: :destroy
  has_many :received_messages, through: :received_chats, source: :messages
  
  validates :email, presence: true, uniqueness: true
  def full_name
    "#{first_name} #{last_name}"
  end

  private

  def strip_whitespace
    self.email = email.strip if email.present?
    self.first_name = first_name.strip if first_name.present?
    self.last_name = last_name.strip if last_name.present?
  end

  def capitalize_names
    self.first_name = first_name.titleize if first_name.present?
    self.last_name = last_name.titleize if last_name.present?
  end
end
