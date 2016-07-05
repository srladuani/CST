class Ability
  include CanCan::Ability

  def initialize(user, request_model)

    if user.admin?
      can :manage, :all
    elsif user.agent?
      can :manage,:all
      cannot :manage,User
    else
      cannot :access, :rails_admin
    end
  end
end