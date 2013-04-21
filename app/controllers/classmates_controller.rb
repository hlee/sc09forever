class ClassmatesController < ApplicationController
  before_action :set_classmate, only: [:show, :edit, :update, :destroy]
  http_basic_authenticate_with :name => "songjiayang", :password => "liushan1314", :except => [:new,:create]
 

  # GET /classmates.json
  def index
    @classmates = Classmate.all
  end

  # GET /classmates/1
  # GET /classmates/1.json
  def show
  end

  # GET /classmates/new
  def new
    @classmate = Classmate.new
  end

  # GET /classmates/1/edit
  def edit
  end

  # POST /classmates
  # POST /classmates.json
  def create
    @classmate = Classmate.new(classmate_params)

    respond_to do |format|
      if @classmate.save
        format.html { redirect_to root_path, notice: 'Classmate was successfully created.' }
        format.json { render action: 'show', status: :created, location: @classmate }
      else
        format.html { render action: 'new' }
        format.json { render json: @classmate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /classmates/1
  # PATCH/PUT /classmates/1.json
  def update
    respond_to do |format|
      if @classmate.update(classmate_params)
        format.html { redirect_to @classmate, notice: 'Classmate was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @classmate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /classmates/1
  # DELETE /classmates/1.json
  def destroy
    @classmate.destroy
    respond_to do |format|
      format.html { redirect_to classmates_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_classmate
      @classmate = Classmate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def classmate_params
      params.require(:classmate).permit(:name, :email, :qq, :description, :img_url)
    end
end
