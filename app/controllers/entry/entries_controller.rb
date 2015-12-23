class EntriesController < ApplicationController
  def index
    @entries = Entry.all
  end

  def show
    @entry = Entry.friendly.find(params[:id])
  end

  def new
    @entry = Entry.new
  end
  
  def edit
    @entry = Entry.find(params[:slug])
  end

  def create
    @entry = Entry.new(entry_params)
    if @entry.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def destroy

  end

private
  def entry_params
    params.require(:entry).permit(:name, :content, :status, :is_top)
  end


end
