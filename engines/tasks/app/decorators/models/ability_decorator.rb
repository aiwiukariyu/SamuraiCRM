require 'cancan'

module Samurai
 module Tasks
    class AbilityDecorator
      include CanCan::Ability
      def initialize(user)
        unless user.admin?
          can :manage, Samurai::Tasks::Task, samurai_user_id: user.id
        end
      end
    end
  end
end

# Registers the defined abilities.
Samurai::Ability.register_ability(Samurai::Tasks::AbilityDecorator)
