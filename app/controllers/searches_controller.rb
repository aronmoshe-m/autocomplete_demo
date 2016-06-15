class SearchesController < ApplicationController
  def new
  end

  def create
    render plain: params.to_yaml
  end
end