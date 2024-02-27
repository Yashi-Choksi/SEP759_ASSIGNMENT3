class CountriesController < ApplicationController
  def index
    @name = params[:search] || 'all'
    @beers = Country.fetchData(@name)
  end
  def detail
    @id = params[:id]
    @countries = Country.detail(@id)
  end
end
