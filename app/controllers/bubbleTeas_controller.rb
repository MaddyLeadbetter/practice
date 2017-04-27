class BubbleteasController < ApplicationController
  def index
    @bubbleteas = Bubbletea.all
  end

  def new
    @bubbletea = Bubbletea.new
  end

  def create
    @bubbletea = Bubbletea.new(params.require(:bubbletea)
          .permit(:name, :flavour, :bubbles, :sugar, :ice, :extras))
    if @bubbletea.save
      #redirect_to "/bubbleteas"
      #redirect_to "/articles/#{@article.id}"
      redirect_to bubbleteas_path #<---using "Prefix"
    else
      render 'new'
    end
  end

  def show
    @bubbletea = Bubbletea.find(params[:id])
  end

  def destroy
    @bubbletea = Bubbletea.find(params[:id]).destroy
    redirect_to bubbleteas_path
  end
end
