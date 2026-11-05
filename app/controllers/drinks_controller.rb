class DrinksController < ApplicationController
  before_action :set_drink, only: [:show, :edit, :update, :destroy]

  # GET /drinks
  def index
    @drinks = Drink.all
  end

  # GET /drinks/1
  def show
  end

  # GET /drinks/new
  def new
    @drink = Drink.new
  end

  # GET /drinks/1/edit
  def edit
  end

  # POST /drinks
  def create
    @drink = Drink.new(drink_params)

    if @drink.save
      redirect_to @drink, notice: "Drink was successfully created."
    else
      render :new, status: :unprocessable_content
    end
  end

  # PATCH/PUT /drinks/1
  def update
    if @drink.update(drink_params)
      redirect_to @drink, notice: "Drink was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_content
    end
  end

  # DELETE /drinks/1
  def destroy
    @drink.destroy!
    redirect_to drinks_path, notice: "Drink was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_drink
      @drink = Drink.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def drink_params
      params.expect(drink: [ :name, :barcode, :price, :volume ])
    end
end
