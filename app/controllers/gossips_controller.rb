class GossipsController < ApplicationController
  def new
   @gossip = Gossip.new
  end

  def create
   @gossip = Gossip.new(gossip_params)
    if @gossip.save
      flash[:success] = "Potin posté avec succès!"
      redirect_to root_path
    else
      flash[:error] = "Une erreur s'est produite."
      render :new
    end
  end

  def edit
   @gossip = Gossip.find(params[:id])
  end 

  def update
  @gossip = Gossip.find(params[:id])
   if @gossip.update(gossip_params)
    flash[:success] = "Potin bien mis à jour !"
    redirect_to @gossip
   else
    render :edit
   end
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    flash[:success] = "Potin supprimé avec succès."
    redirect_to root_path
  end

  def gossip_params
   params.require(:gossip).permit(:title, :content)
  end

end
