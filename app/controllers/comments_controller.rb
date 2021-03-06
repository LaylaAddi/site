class CommentsController < ApplicationController
	before_action :authenticate_user!
	load_and_authorize_resource :through => :current_user
  
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment].permit(:comment))
    @comment.user_id = current_user.id if current_user
    
    if @comment.save
      redirect_to post_path(@post), notice: "Your comment has been added"
    else
      redirect_to 'new'
    end
  end
  
	def edit

		@post = Post.find(params[:post_id])
		@comment = @post.comments.find(params[:id])
	end

	def update

		@post = Post.find(params[:post_id])
		@comment = @post.comments.find(params[:id])

		if @comment.update(params[:comment].permit(:comment))
			redirect_to post_path(@post)
		else
			render 'edit'
		end
	end

	def destroy

		@post = Post.find(params[:post_id])
		@comment = @post.comments.find(params[:id])
		@comment.destroy
		redirect_to post_path(@post)
	end
end
