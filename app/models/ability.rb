class Ability
  include CanCan::Ability

  def initialize(user)
    if user
      can :read, Kindergarten, :user_id => user.id
      can :manage, Kindergarten, :user_id => user.id
    end
  end
end
