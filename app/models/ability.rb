class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.role == "admin"
      can :manage, :all
    elsif user.role == "member"
      can [:create, :update, :destroy], Event, :user_id => user.id
      can :read, :all
    end
  end
end
