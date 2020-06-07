class ToDosController < ApplicationController
  before_action :set_to_do, only: [:edit, :update, :destroy]

  def index
    @to_dos = ToDo.all
  end

  def new
    @to_do = ToDo.new
  end

  def create
    @to_do = ToDo.new(to_do_params)
    if @to_do.save
      redirect_to root_path
    else
      rende :new
    end
  end

  def edit
  end

  def update
    if @to_do.update(to_do_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @to_do.destroy
    redirect_to root_path
  end

  private

  def to_do_params
    params.require(:to_do).permit(:title, :expired_at)
  end

  def set_to_do
    @to_do = ToDo.find(params[:id])
  end
end
