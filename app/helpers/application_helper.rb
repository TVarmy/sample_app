module ApplicationHelper
  
  #Returns a title on a per-page basis
  def title
    base_title = "Ruby on Rails Tutorial Sample App"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
  
  #Loads the logo
  def logo
    image_tag("logo.png", :alt => "Sample App", :class => "round")
    #original code:
    #<% logo = image_tag("logo.png", :alt => "Sample App", :class => "round") %>
  end
  
end
