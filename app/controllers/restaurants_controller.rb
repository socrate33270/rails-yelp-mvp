class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end
  def new
  # la méthode fonctionne avec notre formulaire et la vue new.html.erb
  # On crée une variable d'instance qui nous permet de créer un nouveau restaurant
  @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(form_params)
    # on enreistre
    if @restaurant.save
      # on redirige vers la page du restaurant
      redirect_to restaurant_path(@restaurant)
    else
      # on recharge la page avec notre fomulaire en cas d'erreur
      render :new
    end
  end
  def show
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new
    @restaurant_reviews = @restaurant.reviews
  end

private
def form_params
  params.expect(restaurant: [ :name, :address, :category ])
end
end
