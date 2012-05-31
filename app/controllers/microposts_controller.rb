class MicropostsController < ApplicationController
  def new
  	@micropost = Micropost.new

  end


  def create
  	@micropost = Micropost.new(params[:micropost])
  	if @micropost.save
  		flash[:success] = "Post saved"
  		redirect_to index_path
  	else
  		render 'new'
  	end
  end


  			

  def index
  	@microposts = Micropost.all
  end

  def show
  	@micropost = Micropost.find(params[:id])
  end

  def edit
  	@micropost = Micropost.find(params[:id])
  end

  def update
  	@micropost = Micropost.find(params[:id])
  	if @micropost.update_attributes(params[:micropost])
  		flash[:success] = "Post Updated"
  		redirect_to index_path
  	else
  		render 'edit'
  	end
  end


  def destroy
  	Micropost.find(params[:id]).destroy
  	flash[:success] = "Post deleted"
  	redirect_to index_path

  end

end
