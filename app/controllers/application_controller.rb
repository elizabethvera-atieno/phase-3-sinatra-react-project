class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get '/cocktails' do
    cocktails = Cocktail.all
    cocktails.to_json(include: :ingredients)
  end

  get '/ingredients' do
    ingredients = Ingredient.all
    ingredients.to_json
  end

  post '/cocktails' do
    cocktails = Cocktail.create(
      name: params[:name],
      glass: params[:glass],
      image: params[:image],
      alcohol: params[:alcohol]
    )
    cocktails.to_json
  end

  post '/ingredients' do
    ingredients = Ingredient.create(
      ing1: params[:ing1],
      ing2: params[:ing2],
      ing3: params[:ing3],
      ing4: params[:ing4],
      cocktail_id: params[:cocktail_id]
    )
    ingredients.to_json
  end

  delete '/cocktails/:id' do
    cocktails = Cocktail.find(params[:id])
    ingredients = Ingredient.find_by(cocktail_id: params[:id])
    ingredients.destroy
    cocktails.destroy
    cocktails.to_json
  end

  delete '/ingredients/:id' do
    ingredients = Ingredient.find(params[:id])
    ingredients.destroy
    ingredients.to_json
  end

  patch '/cocktails/:id' do
    cocktails = Cocktail.find(params[:id])
    cocktails.update(
      name: params[:name],
      glass: params[:glass],
      image: params[:image],
      alcohol: params[:alcohol]
    )
    cocktails.to_json
  end

  patch '/ingredients/:id' do
    ingredients = Ingredient.find(params[:id])
    ingredients.update(
      ing1: params[:ing1],
      ing2: params[:ing2],
      ing3: params[:ing3],
      ing4: params[:ing4],
      cocktail_id: params[:cocktail_id]
    )
    ingredients.to_json
  end

end
