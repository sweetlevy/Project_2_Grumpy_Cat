class Ability
  include CanCan::Ability

  def initialize(user)

      user ||= User.new # guest user (not logged in)
      if user.admin?
        can :manage, :all
      else
        can :read, :all
      end

    # here are :read, :create, :update and :destroy.
    
  end
end
