class BooksController < ApplicationController
	before_action :find_book, only: [:show ,:edit , :update , :destroy, :library]
	before_action :authenticate_user!, only: [:new, :edit, :show]
	def index
        @books=Book.all
	end

	def show
	end

	def new
		@book = current_user.books.build
	end

	def create
		@book = current_user.books.build(book_params)

		if @book.save
			redirect_to root_path, notice: 'Product was successfully created.'
		else
			render 'new' 
		end
	end

	def edit
		
	end

	def update
		if @book.update(book_params)
			redirect_to book_path(@book)
		else
			render 'edit'
		end
	end

	def destroy
		@book.destroy
		redirect_to root_path, notice: 'Product was successfully deleted.'
	end


	def library
		type = params[:type]
	
		if type == "add"
		  current_user.library_additions << @book
			
		elsif type == "remove"
		  current_user.library_additions.delete(@book)
		   
		end
	
	  end
	private

		def book_params
			params.require(:book).permit(:title, :description, :author, :price, :image)
		end

		def find_book
			@book = Book.find(params[:id])
		end

end
