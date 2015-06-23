class JuansController < ApplicationController
  before_action :set_juan, only: [:show, :edit, :update, :destroy]

  # GET /juans
  # GET /juans.json
  def index
    @juans = Juan.all
  end

  # GET /juans/1
  # GET /juans/1.json
  def show
  end

  # GET /juans/new
  def new
    @juan = Juan.new
  end

  # GET /juans/1/edit
  def edit
  end

  # POST /juans
  # POST /juans.json
  def create
    @juan = Juan.new(juan_params)

    respond_to do |format|
      if @juan.save
        format.html { redirect_to @juan, notice: 'Juan was successfully created.' }
        format.json { render :show, status: :created, location: @juan }
      else
        format.html { render :new }
        format.json { render json: @juan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /juans/1
  # PATCH/PUT /juans/1.json
  def update
    respond_to do |format|
      if @juan.update(juan_params)
        format.html { redirect_to @juan, notice: 'Juan was successfully updated.' }
        format.json { render :show, status: :ok, location: @juan }
      else
        format.html { render :edit }
        format.json { render json: @juan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /juans/1
  # DELETE /juans/1.json
  def destroy
    @juan.destroy
    respond_to do |format|
      format.html { redirect_to juans_url, notice: 'Juan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_juan
      @juan = Juan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def juan_params
      params.require(:juan).permit(:nombre, :dirrecion, :pedido)
    end
end
