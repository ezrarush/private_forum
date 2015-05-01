module ApplicationHelper
  
  def check_active(controller)
    params[:controller].include?(controller) ? "active" : ""
  end
end
