class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    can :read, :all
    can :manage, Book do |book|
      book.try(:user) == user
    end
  end
  
end
