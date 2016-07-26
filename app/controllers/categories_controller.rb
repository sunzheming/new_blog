class CategoriesController < ApplicationController
	def index
		@categories = Category.all.order('created_at DESC')
	end

	def new
		@category = Category.new
	end

	def create
		@category = Category.new(category_params)

		if @category.save
			redirect_to root_path
		else
			render 'new'
		end
	end

	def edit
		@category = Category.find_by(params[:id])
	end

	def update
		@category = Category.find_by(params[:id])

		if @category.update(category_params)
			redirect_to categories_path
		else
			render 'edit'
		end
	end

	def destroy
		@category = Category.find_by(params[:id])
		@category.destroy
		redirect_to categories_path
	end






	private
		def category_params
			params.require(:category).permit(:name)
		end
		
end
