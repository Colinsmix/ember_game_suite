class Api::V1::GuessTheSquaresController < ApplicationController
  before_action :set_guess_the_square, only: [:show, :update, :destroy]
  respond_to :json

  # GET /guess_the_squares
  def index
    respond_with GuessTheSquare.all
  end

  # GET /guess_the_squares/1
  def show
    respond_with @guess_the_square
  end

  # POST /guess_the_squares
  def create
    @guess_the_square = GuessTheSquare.new(guess_the_square_params)

    if @guess_the_square.save
      respond_with @guess_the_square, status: :created, location: [:api, :v1, @guess_the_square]
    else
      render json: @guess_the_square.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /guess_the_squares/1
  def update
    if @guess_the_square.update(guess_the_square_params)
      respond_with @guess_the_square, status: :ok, location: [:api, :v1, @guess_the_square]
    else
      render json: @guess_the_square.errors, status: :unprocessable_entity
    end
  end

  # DELETE /guess_the_squares/1
  def destroy
    @guess_the_square.destroy
    head :no_content
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_guess_the_square
    @guess_the_square = GuessTheSquare.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def guess_the_square_params
    params.require(:guess_the_square).permit(:score, :difficulty)
  end
end
