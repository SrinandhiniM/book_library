class PaymentsController < ApplicationController
  
    def index
        @payments =current_user.library_additions
    end

    def show
        @payments =current_user.library_additions.order("created_at desc")
    end

end
