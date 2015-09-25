class GuysController < ApplicationController
  before_action :set_guy, only: [:show, :edit, :update, :destroy]

  # GET /guys
  # GET /guys.json
  def index
    @guys = Guy.all
    respond_to do |format|
      format.json { render json: @guys }
    end
  end

  # GET /guys/1
  # GET /guys/1.json
  def show
  end

  # GET /guys/new
  def new
    @guy = Guy.new
  end

  # GET /guys/1/edit
  def edit
  end

  # POST /guys
  # POST /guys.json
  def create
    @guy = Guy.new(guy_params)

    respond_to do |format|
      if @guy.save
        format.html { redirect_to @guy, notice: 'Guy was successfully created.' }
        format.json { render :show, status: :created, location: @guy }
      else
        format.html { render :new }
        format.json { render json: @guy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /guys/1
  # PATCH/PUT /guys/1.json
  def update
    respond_to do |format|
      if @guy.update(guy_params)
        format.html { redirect_to @guy, notice: 'Guy was successfully updated.' }
        format.json { render :show, status: :ok, location: @guy }
      else
        format.html { render :edit }
        format.json { render json: @guy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /guys/1
  # DELETE /guys/1.json
  def destroy
    @guy.destroy
    respond_to do |format|
      format.html { redirect_to guys_url, notice: 'Guy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guy
      @guy = Guy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def guy_params
      params.require(:guy).permit(:name, :person)
    end
end
