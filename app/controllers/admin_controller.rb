class AdminController < ApplicationController
	layout 'admin'

	def index
		@posts = Post.all.order('created_at DESC')
		@post = Post.find_by(params[:id])
	end

end
