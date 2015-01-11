class AccountsController < ApplicationController
  before_action :set_account, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @accounts = Account.full_text_search(params[:search], allow_empty_search: true).paginate(:page => params[:page])
  end

  def show

  end

  def new
    @account = Account.new
  end

  def create
    @account = Account.new(account_params)
    @account.user = current_user

    if @account.save
      redirect_to @account
    else
      render 'new'
    end
  end

  def edit

  end

  def update
    @account = Account.find(params[:id])
    if @account.update_attributes(account_params)
      redirect_to @account
    else
      render 'edit'
    end
  end

  def destroy
    @account.destroy
    respond_with(@account)
  end

  private

  def account_params
    params.require(:account).permit(:name, :acronym, :description,:assigned_to,
                                    contact_attributes_attributes: [:attribute_type, :value, :id, :_destroy, :_id],
                                    addresses_attributes: [:address_type, :street, :zipcode, :city, :country, :_destroy])
  end

  def set_account
    @account = Account.find(params[:id])
  end

end
