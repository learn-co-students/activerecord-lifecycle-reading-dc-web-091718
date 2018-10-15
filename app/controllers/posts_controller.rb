class PostsController < ApplicationController

	before_action :set_post, only: [:show, :update, :edit]

	def index
		@posts = Post.all
	end

	def show
	end

	def new
		@post = Post.new
	end

	def create
	  @post = Post.new(params)
	  @post.save
	  redirect_to post_path(@post)
	end

	def update
	  @post.update(params.require(:post))
	  redirect_to post_path(@post)
	end

	def edit
	end

	private 


	def set_post
		@post = Post.find(params[:id])
	end

	

end