class Message < ApplicationRecord
  belongs_to :chat
  belongs_to :user
  
  validates :body, presence: true

  before_validation :strip_whitespace

  private

  def strip_whitespace
    self.body = body.strip if body.present?
  end
end
