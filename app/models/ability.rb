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

      can :read, Business
      can :create, Business
      can :update, Business

      can :read, Crew

      can :read, Customer
      can :create, Customer
      can :update, Customer

      can :read, Equipment

      can :read, EquipmentCheckout
      can :create, EquipmentCheckout
      can :update, EquipmentCheckout

      can :read, Estimate
      can :create, Estimate
      can :update, Estimate

      can :read, Invoice
      can :create, Invoice
      can :update, Invoice

      can :read, Job
      can :create, Job
      can :update, Job

      can :read, LineItem
      can :create, LineItem
      can :update, LineItem

      can :read, Project
      can :create, Project
      can :update, Project

      can :read, Vehicle

      can :read, VehicleCheckout
      can :create, VehicleCheckout
      can :update, VehicleCheckout


    elsif user.customer?
      can :read, Service
      can :read, Invoice
      can :read, Estimate


    end

  end
end