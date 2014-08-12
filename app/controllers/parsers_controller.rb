class ParsersController < ApplicationController

#  load_resource :parser, only: [:edit, :show, :update, :destroy]
  load_and_authorize_resource param_method: :parser_params


  def index
    if params[:search]
      @parsers = Parser.search(params[:search]).order("created_at DESC").paginate(:page => params[:page], :per_page => 5)
    else
      @parsers = Parser.order("created_at DESC").paginate(:page => params[:page], :per_page => 5)
    end

  end

  def show
  end

  def new
    @parser = Parser.new
  end

  def create
    @parser = Parser.new(parser_params)
    if @parser.save
      redirect_to parsers_path
    else
      render :new
    end

  end

  def edit
  end

  def update
    if @parser.update(parser_params)
      redirect_to parsers_path
    else
      render :edit
    end
  end

  def destroy
    @parser.destroy
    redirect_to parsers_path
  end

  private
  def find_parser
    @parser = Parser.find(params[:id])
  end

  private
  def parser_params
    params.require(:parser).permit(:title, :url)
  end
end
