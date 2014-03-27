class WordingsController < ApplicationController
  before_action :set_wording, only: [:show, :edit, :update, :destroy]

  def index
    @wordings = Wording.includes(:category).all
  end

  def show
    @wording = Wording.find(params[:id])
  end

  def new
    @wording = Wording.new
  end

  def edit
  end

  def create
    @wording = Wording.new(wording_params)
    @wording.user_id = current_user.id

    respond_to do |format|
      if @wording.save
        format.html { redirect_to @wording, notice: 'Wording was successfully created.' }
        format.json { render action: 'show', status: :created, location: @wording }
      else
        format.html { render action: 'new' }
        format.json { render json: @wording.errors, status: :unprocessable_entity }
      end
    end
  end

  def vote
    value = params[:type] == "up" ? 1 : -1
    @wording = Wording.find(params[:id])
    @wording.add_or_update_evaluation(:votes, value, current_user)
    redirect_to :back, notice: "Vote confirmed"
  end

  def update
    @wording = current_user.wordings.find(params[:id])
    respond_to do |format|
      if @wording.update(wording_params)
        format.html { redirect_to @wording, notice: 'Wording was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @wording.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @wording.destroy
    respond_to do |format|
      format.html { redirect_to wordings_url }
      format.json { head :no_content }
    end
  end

  private
    def set_wording
      @wording = Wording.find(params[:id])
    end

    def wording_params
      params.require(:wording).permit(:title, :text, :category_id)
    end
end
