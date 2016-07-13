class AmountOfIngredientsController < ApplicationController
  before_action :set_amount_of_ingredient, only: [:show, :edit, :update, :destroy]

  # GET /amount_of_ingredients
  # GET /amount_of_ingredients.json
  def index
    @amount_of_ingredients = AmountOfIngredient.all
  end

  # GET /amount_of_ingredients/1
  # GET /amount_of_ingredients/1.json
  def show
  end

  # GET /amount_of_ingredients/new
  def new
    @amount_of_ingredient = AmountOfIngredient.new
  end

  # GET /amount_of_ingredients/1/edit
  def edit
  end

  # POST /amount_of_ingredients
  # POST /amount_of_ingredients.json
  def create
    @amount_of_ingredient = AmountOfIngredient.new(amount_of_ingredient_params)

    respond_to do |format|
      if @amount_of_ingredient.save
        format.html { redirect_to @amount_of_ingredient, notice: 'Amount of ingredient was successfully created.' }
        format.json { render :show, status: :created, location: @amount_of_ingredient }
      else
        format.html { render :new }
        format.json { render json: @amount_of_ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /amount_of_ingredients/1
  # PATCH/PUT /amount_of_ingredients/1.json
  def update
    respond_to do |format|
      if @amount_of_ingredient.update(amount_of_ingredient_params)
        format.html { redirect_to @amount_of_ingredient, notice: 'Amount of ingredient was successfully updated.' }
        format.json { render :show, status: :ok, location: @amount_of_ingredient }
      else
        format.html { render :edit }
        format.json { render json: @amount_of_ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /amount_of_ingredients/1
  # DELETE /amount_of_ingredients/1.json
  def destroy
    @amount_of_ingredient.destroy
    respond_to do |format|
      format.html { redirect_to amount_of_ingredients_url, notice: 'Amount of ingredient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_amount_of_ingredient
      @amount_of_ingredient = AmountOfIngredient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def amount_of_ingredient_params
      params.require(:amount_of_ingredient).permit(:amount, :recipe_id, :ingredient_id, :measurement_id)
    end
end
