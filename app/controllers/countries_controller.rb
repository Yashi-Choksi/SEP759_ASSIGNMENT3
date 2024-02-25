class CountriesController < ApplicationController
  def index
    @countries = Country.all
  end
  def detail
    @id = params[:id]
    @countries = Country.detail(@id)
  end
end
