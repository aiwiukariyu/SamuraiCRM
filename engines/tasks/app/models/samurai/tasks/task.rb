module Samurai::Tasks
  class Task < ApplicationRecord
    belongs_to :user, class_name: 'Samurai::User', foreign_key: :samurai_user_id
    alias_attribute :user_id, :samurai_user_id

    if Samurai::Core.available?(:contacts)
      belongs_to :contact, class_name: 'Samurai::Tasks::Task', foreign_key: :samurai_contacts_contact_id
      alias_attribute :contact_id, :samurai_contacts_contact_id
    end

    scope :ordered, -> { order('created_at desc') }

  end
end
