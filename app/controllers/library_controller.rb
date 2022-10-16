class LibraryController < ApplicationController
    def index
        @library_books =current_user.library_additions
    end
end
