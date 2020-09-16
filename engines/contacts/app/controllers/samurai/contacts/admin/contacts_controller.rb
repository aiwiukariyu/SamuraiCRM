module Samurai
  module Contacts
    module Admin
      class ContactsController < Samurai::Admin::AdminController
        def index
          @contacts = Samurai::Contacts::Contact.ordered
        end
      end
    end
  end
end
