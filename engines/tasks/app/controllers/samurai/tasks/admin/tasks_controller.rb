module Samurai
  module Tasks
    module Admin
      class TasksController < Samurai::Admin::AdminController
        def index
          @tasks = Samurai::Tasks::Task.ordered
        end
      end
    end
  end
end
