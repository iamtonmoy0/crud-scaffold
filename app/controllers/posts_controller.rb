class PostsController < ApplicationController
	def index
		@post= Post.all
	end
	def new
		@post = Post.new
	end
	def create
		@post = Post.new(post_params)
		if @post.save
			redirect_to @post,notice:"new post has created"
		else
			render:new,alert:"error while creating the post"
		end
	end
	private
	def post_params
		params.require(:post).permit(:title,:body)
		
	end
end
