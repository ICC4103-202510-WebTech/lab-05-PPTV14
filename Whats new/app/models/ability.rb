class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user.present?

    # USERS
    can [:index, :show], User
    can [:edit, :update, :destroy], User, id: user.id

    # CHATS
    can :read, Chat do |chat|
      chat.sender_id == user.id || chat.receiver_id == user.id
    end
    can :create, Chat
    can [:update, :destroy], Chat, sender_id: user.id

    # MESSAGES
    can :read, Message, user_id: user.id
    can :create, Message
    can [:update, :destroy], Message, user_id: user.id
  end
end
