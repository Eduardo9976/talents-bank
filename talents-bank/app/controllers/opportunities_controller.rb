class OpportunitiesController < ApplicationController
  before_action :set_opportunity, only: %i[show edit update destroy]
  def index
    @opportunities = Opportunity.all   
  end 
  
  def new
    @opportunity = Opportunity.new
  end
  def create
    @opportunity = Opportunity.new(params_opportunity)
    if @opportunity.save
      flash[:notice] = 'Cadastrado com sucesso'
      redirect_to @opportunity
    else
      render :new
    end    
  end  

  def show
  end


  def edit
    #recebe o set find(params[:id])
  end
  def update 
    if @opportunity.update(params_opportunity)
      flash[:notice] = 'Salvo com sucesso'
      redirect_to @opportunity
    else
      render :edit
    end
  end

  def destroy
    @opportunity.destroy
    flash[:notice] = 'Apagado com sucesso'
    redirect_to opportunities_path
  end  


  private

  def set_opportunity
    @opportunity = Opportunity.find(params[:id])
  end
  
  def params_opportunity
    params.require(:opportunity).permit(:title, :description, :skills, :salary,
                                        :level, :region, :end_date)
  end  
end