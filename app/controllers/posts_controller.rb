class PostsController < ApplicationController



	def show 
		@post = Post.find(params[:id])
	end

	def new
	end

	def index
		@posts = Post.all
	end

	def creat
	end

	def edit
	end

	def update
	end

	def destroy
	end


end


