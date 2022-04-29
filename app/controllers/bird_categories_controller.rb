class BirdCategoriesController < ApplicationController
  before_action :set_bird_category, only: %i[ show edit update destroy ]

  # GET /bird_categories or /bird_categories.json
  def index
    @bird_categories = BirdCategory.all
  end

  # GET /bird_categories/1 or /bird_categories/1.json
  def show
  end

  # GET /bird_categories/new
  def new
    @bird_category = BirdCategory.new
  end

  # GET /bird_categories/1/edit
  def edit
  end

  # POST /bird_categories or /bird_categories.json
  def create
    @bird_category = BirdCategory.new(bird_category_params)

    respond_to do |format|
      if @bird_category.save
        format.html { redirect_to bird_category_url(@bird_category), notice: "Bird category was successfully created." }
        format.json { render :show, status: :created, location: @bird_category }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bird_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bird_categories/1 or /bird_categories/1.json
  def update
    respond_to do |format|
      if @bird_category.update(bird_category_params)
        format.html { redirect_to bird_category_url(@bird_category), notice: "Bird category was successfully updated." }
        format.json { render :show, status: :ok, location: @bird_category }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bird_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bird_categories/1 or /bird_categories/1.json
  def destroy
    @bird_category.destroy

    respond_to do |format|
      format.html { redirect_to bird_categories_url, notice: "Bird category was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bird_category
      @bird_category = BirdCategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bird_category_params
      params.require(:bird_category).permit(:name, :purpose, :breed)
    end
end
