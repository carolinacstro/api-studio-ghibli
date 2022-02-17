class GhiblisController < ApplicationController
  before_action :set_ghibli, only: [:show, :update, :destroy]

  # GET /ghiblis
  def index
    @ghiblis = Ghibli.all

    render json: @ghiblis
  end

  # GET /ghiblis/1
  def show
    render json: @ghibli
  end

  # POST /ghiblis
  def create
    @ghibli = Ghibli.new(ghibli_params)

    if @ghibli.save
      render json: @ghibli, status: :created, location: @ghibli
    else
      render json: @ghibli.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ghiblis/1
  def update
    if @ghibli.update(ghibli_params)
      render json: @ghibli
    else
      render json: @ghibli.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ghiblis/1
  def destroy
    @ghibli.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ghibli
      @ghibli = Ghibli.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ghibli_params
      params.require(:ghibli).permit(:phrase)
    end
end
