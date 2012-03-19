class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.has_role? :admin
      can :manage , :all
    elsif user.has_role? :normal
      can [ :read, :create ] , Pojazdy
      can [ :read, :create ] , Wyjazdy
      can [ :read, :create ] , Przyjazdy
      can [ :read, :create ] , Search
    end
  else
    can :read , :all
       
  end
end
