class Ability
  include CanCan::Ability

  def initialize(user)

    user ||= User.new # Guest user

    if user.admin?
      can :manage, :all
    elsif user.employee?
      can :read, Service
      can :create, Service
      can :update, Service


    elsif user.customer?
      can :read, Service


    end

  end
end