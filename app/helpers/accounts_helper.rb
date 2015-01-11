module AccountsHelper

  def search_value
    params[:search][:q] if params[:search]
  end

end
