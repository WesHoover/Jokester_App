class JokesController < ApplicationController
  before_action :set_joke, only: [:show, :edit, :update, :destroy]
	def index
		@jokes = Joke.all
	end

	#Show data for one joke
	def show
		@joke = Joke.find(params[:id])
	end

	# Displays form for creating a new joke
	def new
		@joke = Joke.new
	end

	# Processes data from the new joke form and creates a joke
	def create
	    @joke = Joke.new(joke_params)

	    respond_to do |format|
	      if @joke.save
	        format.html { redirect_to @joke, notice: 'Joke was successfully created. LOL!' }
	        format.json { render :show, status: :created, location: @joke }
	      else
	        format.html { render :new }
	        format.json { render json: @joke.errors, status: :unprocessable_entity }
	      end
	    end
	end

	# Displays form for editing an existing joke
	def edit

	end

	# Processes data from the edit joke from and updates the joke
	def update
	    respond_to do |format|
	      if @joke.update(joke_params)
	        format.html { redirect_to @joke, notice: 'joke was successfully updated.' }
	        format.json { render :show, status: :ok, location: @joke }
	      else
	        format.html { render :edit }
	        format.json { render json: @joke.errors, status: :unprocessable_entity }
	      end
	    end
	end

	# Deletes the joke
	def destroy
		# Joke.find(params[:id]).destroy		
	    @joke.destroy
	    respond_to do |format|
	      format.html { redirect_to jokes_url, notice: 'Joke was successfully destroyed.' }
	      format.json { head :no_content }
	    end
	end

 private
    # Use callbacks to share common setup or constraints between actions.
    def set_joke
      @joke = Joke.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def joke_params
      params.require(:joke).permit(:joke_post, :user_id)
    end
end