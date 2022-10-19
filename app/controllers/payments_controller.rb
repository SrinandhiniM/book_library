class PaymentsController < ApplicationController
  
    def index
        @payments =current_user.library_additions
    end

    def show
        @payments =current_user.library_additions
    end

end
