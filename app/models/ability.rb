class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user
     if user.role? :admin
      can :manage, :all
	  else
      cannot :manage, :all
		  can :manage, :display
		  can :manage, :dashboard
      can :create, Contact
	  end
  end
end
