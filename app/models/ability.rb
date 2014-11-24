class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, :all

    can :manage, :account

    if user && user.admin?
      can :access, :rails_admin
      can :manage, :all
    end
  end
end
