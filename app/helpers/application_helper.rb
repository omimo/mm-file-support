module ApplicationHelper
  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "Moving Stories Movement Database"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
  
  def authorized?(object)
    current_user and object.is_accessible_by? current_user
    #current_user_authorized_to_access? object
  end
  
  # def current_user_authorized_to_access?(object)
  #   object.owner == current_user
  # end
  
  # relies on sending type with a string that matches to a glyphicon class
  def link_html(type, text = '')
    base_link = raw("<span class='glyphicon glyphicon-#{type}'></span>")
    #base_link = raw("")
    if text.empty?
      base_link
    else
      raw("#{base_link} #{text}")
    end
  end
  
  def download_link_html(text = '')
    link_html("download", text)    
  end  
    
  def login_link_html(text = '')
    link_html("log-in", text)
  end  

  def logout_link_html(text = '')
    link_html("log-out", text)
  end
    
  def remove_link_html(text = '')
    link_html("trash", text)
  end
  
  def add_link_html text = ''
    link_html("plus-sign", text) 
  end
  
  def back_link_html text = ''
    link_html("arrow-left", text)
  end
  
  def edit_link_html text = ''
    link_html("edit", text)
  end

  def watch_link_html text = ''
    link_html("play", text)
  end

  def flash_class(level)
    case level.to_sym
      when :notice then "alert alert-info"
      when :success then "alert alert-success"
      when :error then "alert alert-error"
      when :alert then "alert alert-error"
    end
  end
  def is_active_controller(controller_name)
    params[:controller] == controller_name ? "active" : nil
  end

  def is_active_action(action_name)
    params[:action] == action_name ? "active" : nil
  end

end
