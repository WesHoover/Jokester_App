class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]
	def index
		@comments = Comment.all
	end

	#Show data for one comment
	def show
		@comment = Comment.find(params[:id])
	end

	# Displays form for creating a new comment
	def new
		@comment = Comment.new
	end

	# Processes data from the new comment form and creates a comment
	def create
	    @comment = Comment.new(comment_params)

	    respond_to do |format|
	      if @comment.save
	        format.html { redirect_to @comment, notice: 'Comment was successfully created.' }
	        format.json { render :show, status: :created, location: @comment }
	      else
	        format.html { render :new }
	        format.json { render json: @comment.errors, status: :unprocessable_entity }
	      end
	    end
	end

	# Displays form for editing an existing comment
	def edit

	end

	# Processes data from the edit comment from and updates the comment
	def update
	    respond_to do |format|
	      if @comment.update(comment_params)
	        format.html { redirect_to @comment, notice: 'Comment was successfully updated.' }
	        format.json { render :show, status: :ok, location: @comment }
	      else
	        format.html { render :edit }
	        format.json { render json: @comment.errors, status: :unprocessable_entity }
	      end
	    end
	end

	# Deletes the comment
	def destroy
		# Comment.find(params[:id]).destroy		
	    @comment.destroy
	    respond_to do |format|
	      format.html { redirect_to comments_url, notice: 'Comment was successfully destroyed.' }
	      format.json { head :no_content }
	    end
	end

 private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:post).permit(:user_id)
    end
end