class StupidsController < ApplicationController
  before_action :set_stupid, only: [:show, :edit, :update, :destroy]

  # GET /stupids
  # GET /stupids.json
  def index
    @stupids = Stupid.all
  end

  # GET /stupids/1
  # GET /stupids/1.json
  def show
  end

  # GET /stupids/new
  def new
    @stupid = Stupid.new
  end

  # GET /stupids/1/edit
  def edit
  end

  # POST /stupids
  # POST /stupids.json
  def create
    @stupid = Stupid.new(stupid_params)

    respond_to do |format|
      if @stupid.save
        format.html { redirect_to @stupid, notice: 'Stupid was successfully created.' }
        format.json { render :show, status: :created, location: @stupid }
      else
        format.html { render :new }
        format.json { render json: @stupid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stupids/1
  # PATCH/PUT /stupids/1.json
  def update
    respond_to do |format|
      if @stupid.update(stupid_params)
        format.html { redirect_to @stupid, notice: 'Stupid was successfully updated.' }
        format.json { render :show, status: :ok, location: @stupid }
      else
        format.html { render :edit }
        format.json { render json: @stupid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stupids/1
  # DELETE /stupids/1.json
  def destroy
    @stupid.destroy
    respond_to do |format|
      format.html { redirect_to stupids_url, notice: 'Stupid was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stupid
      @stupid = Stupid.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stupid_params
      params.require(:stupid).permit(:name)
    end
end
