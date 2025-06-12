class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user.present?

    if user.admin?
      can :manage, :all
    else
      # USERS
      can [:index, :show], User
      can [:edit, :update], User, id: user.id

      # CHATS
      can [:read, :update, :destroy], Chat do |chat|
        chat.sender_id == user.id || chat.receiver_id == user.id
      end
      can :create, Chat

      # MESSAGES
      can [:read, :update, :destroy], Message, user_id: user.id
      can :create, Message
    end
  end
end
