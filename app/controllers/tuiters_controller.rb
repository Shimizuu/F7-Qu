class TuitersController < ApplicationController
  before_action :authenticate_user!
  # GET /tuiters
  # GET /tuiters.json
  def index
    @tuiters = Tuiter.all
  end

  # GET /tuiters/1
  # GET /tuiters/1.json
  def show
    @tuiter = Tuiter.find(params[:id])
  end

  # GET /tuiters/new
  def new
    @tuiter = current_user.tuiters.new
  end

  # GET /tuiters/1/edit
  def edit
    @tuiter = current_user.tuiters.find(params[:id])
  end

  # POST /tuiters
  # POST /tuiters.json
  def create
    @tuiter = current_user.tuiters.new(tuiter_params)

    respond_to do |format|
      if @tuiter.save
        format.html { redirect_to @tuiter, notice: 'Tuiter was successfully created.' }
        format.json { render :show, status: :created, location: @tuiter }
      else
        format.html { render :new }
        format.json { render json: @tuiter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tuiters/1
  # PATCH/PUT /tuiters/1.json
  def update
    @tuiter = current_user.tuiters.find(params[:id])
    respond_to do |format|
      if @tuiter.update(tuiter_params)
        format.html { redirect_to @tuiter, notice: 'Tuiter was successfully updated.' }
        format.json { render :show, status: :ok, location: @tuiter }
      else
        format.html { render :edit }
        format.json { render json: @tuiter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tuiters/1
  # DELETE /tuiters/1.json
  def destroy
    @tuiter = current_user.tuiters.find(params[:id])
    @tuiter.destroy
    respond_to do |format|
      format.html { redirect_to tuiters_url, notice: 'Tuiter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tuiter
      @tuiter = Tuiter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tuiter_params
      params.require(:tuiter).permit(:user_id, :content, :photo)
    end
end
