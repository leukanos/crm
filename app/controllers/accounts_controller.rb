class AccountsController < ApplicationController

  def index
    @accounts = Account.paginate(:page => params[:page])
  end

  def show
    @account = Account.find(params[:id])
  end

  def new
    @account = Account.new
  end

  def create
    @account = Account.new(account_params)

    if @account.save
      redirect_to @account
    else
      render 'new'
    end
  end

  def edit
    @account = Account.find(params[:id])
  end

  def update
    @account = Account.find(params[:id])
    if @account.update_attributes(account_params)
      redirect_to @account
    else
      render 'edit'
    end
  end

  private

  def account_params
    params.require(:account).permit(:name, :acronym, :description, contact_attributes_attributes: [:attribute_type, :value, :id, :_destroy, :_id] )
  end

end
