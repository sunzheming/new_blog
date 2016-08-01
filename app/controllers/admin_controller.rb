class AdminController < ApplicationController
	layout 'admin'

	def index
		@posts = Post.all.order('created_at DESC')
	end

end
