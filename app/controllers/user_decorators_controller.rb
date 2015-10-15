class UserDecoratorsController < ApplicationController
  before_action :set_user_decorator, only: [:show, :edit, :update, :destroy]

  # GET /user_decorators
  # GET /user_decorators.json
  def index
    @user_decorators = UserDecorator.all
  end

  # GET /user_decorators/1
  # GET /user_decorators/1.json
  def show
  end

  # GET /user_decorators/new
  def new
    @user_decorator = UserDecorator.new
  end

  # GET /user_decorators/1/edit
  def edit
  end

  # POST /user_decorators
  # POST /user_decorators.json
  def create
    @user_decorator = UserDecorator.new(user_decorator_params)

    respond_to do |format|
      if @user_decorator.save
        format.html { redirect_to @user_decorator, notice: 'User decorator was successfully created.' }
        format.json { render :show, status: :created, location: @user_decorator }
      else
        format.html { render :new }
        format.json { render json: @user_decorator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_decorators/1
  # PATCH/PUT /user_decorators/1.json
  def update
    respond_to do |format|
      if @user_decorator.update(user_decorator_params)
        format.html { redirect_to @user_decorator, notice: 'User decorator was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_decorator }
      else
        format.html { render :edit }
        format.json { render json: @user_decorator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_decorators/1
  # DELETE /user_decorators/1.json
  def destroy
    @user_decorator.destroy
    respond_to do |format|
      format.html { redirect_to user_decorators_url, notice: 'User decorator was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_decorator
      @user_decorator = UserDecorator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_decorator_params
      params.require(:user_decorator).permit(:first_name, :family_name, :email)
    end
end
