class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, :all
    can :create, :all
    can :update, Board do |board|
      user == board.creator
    end
    can :update, Sticky do |sticky|
      user == sticky.creator
    end
    can :destroy, Board do |board|
      user == board.creator
    end
    can :destroy, Sticky do |sticky|
      user == sticky.creator
    end
    # here are :read, :create, :update and :destroy.

  end
end
