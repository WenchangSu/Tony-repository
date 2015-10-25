class PostsController < ApplicationController

	def index
		@posts = Post.all
	end

	def show 
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
	end

	def create
		#@post = Post.new(params[:post])<-this ia a old veirson
		@post = Post.new(params.require(:post).permit(:titie,:content))
		if @post.save
			redirect_to posts_path, :noice=>"Successfully created!"
		else 
			render "new"
		end
	end

	

	def edit
	end

	def update
	end

	def destroy
	end


end


