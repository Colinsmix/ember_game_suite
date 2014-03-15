class Api::V1::GuessTheSquaresController < ApplicationController
  respond_to :json

  # GET /guess_the_squares
  def index
    respond_with GuessTheSquare.all
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

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def guess_the_square_params
    params.require(:guess_the_square).permit(:score, :difficulty)
  end
end
