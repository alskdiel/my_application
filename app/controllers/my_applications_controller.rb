class MyApplicationsController < ApplicationController
  before_action :set_my_application, only: [:show, :edit, :update, :destroy]

  # GET /my_applications
  # GET /my_applications.json
  def index
    @my_applications = MyApplication.all
  end

  # GET /my_applications/1
  # GET /my_applications/1.json
  def show
    # @cover_letters = @my_application.cover_letters
  end

  # GET /my_applications/new
  def new
    @my_application = MyApplication.new
    @isNew = true
  end

  # GET /my_applications/1/edit
  def edit
    @isNew = false
  end

  # POST /my_applications
  # POST /my_applications.json
  def create
    @my_application = MyApplication.new(my_application_params)

    respond_to do |format|
      if @my_application.save
        format.html { redirect_to @my_application, notice: 'My application was successfully created.' }
        format.json { render :show, status: :created, location: @my_application }
      else
        format.html { render :new }
        format.json { render json: @my_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_applications/1
  # PATCH/PUT /my_applications/1.json
  def update
    respond_to do |format|
      if @my_application.update(my_application_params)
        format.html { redirect_to @my_application, notice: 'My application was successfully updated.' }
        format.json { render :show, status: :ok, location: @my_application }
      else
        format.html { render :edit }
        format.json { render json: @my_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_applications/1
  # DELETE /my_applications/1.json
  def destroy
    @my_application.destroy
    respond_to do |format|
      format.html { redirect_to my_applications_url, notice: 'My application was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_application
      @my_application = MyApplication.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def my_application_params
      params.require(:my_application).permit(:apply_type, :company, :applied_date, :released_date, :result)
    end
end
