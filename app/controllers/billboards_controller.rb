class BillboardsController < ApplicationController
  before_action :set_billboard, only: [:show, :update, :edit, :destroy]
  
 def index
    @billboards = Billboard.all
  end

 def show
  @billboard = Billboard.name
  @songs = @billboard.song

 end

 def new
    @billboard = Billboard.new
  
  end

 def edit
    
  end

 def create
    @billboard = Billboard.new(billboard_params)
    if @billboard.save
      redirect_to billboards_path(@billboard)
    else
      
   end
  end

 def update
    if @billboard.update(billboard_params)
      redirect_to billboard_path(@billboard)
    else
      render partial: "form"
    end
  end

 def destroy
    @billboard.destroy
    redirect_to billboards_path
  end

 private

   def set_billboard
      @billboard = Billboard.find(params[:id])
    end

   def billboard_params
      params.require(:billboard).permit(:name)

   end
end