class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    # Anyone can see the index of news and individual articles
    can %i[ index show ], Article

    # Anyone can see the index of bands and individual band profiles
    can %i[ index show ], Combo
    can %i[ show ], Contact

    # Anyone can see the association information
    can %i[ show commissions ], Association

    if user.has_role? :admin
      # An administrator must be able to do anything in the system
      can :manage, :all
    end
  end
end
