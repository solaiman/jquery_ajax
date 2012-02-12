# JqueryAjax
module JqueryAjax
  def onclick_ajax(opts={})
    html = []
    html << "#{link_to opts[:name],'#',:id => opts[:id]}"
    html << "<script>"
    html << "$('##{opts[:id]}').click(function(){"
    
    case opts[:target][:event]
    when "show"
      html << "#{show(opts[:target])}"
    when "hide"
      html << "#{hide(opts[:target])}"
    when "toggle"
      html << "#{toggle(opts[:target])}"
    end
    
    html << " return false;});"
    html << "</script>"
    html
  end


  def onchange_ajax(args={})
    
  end

  def onselect_ajax(args={})

  end

  def on_ajax(args={})
    
  end

  def show(args={})
    html = []
    html = "$('##{args[:id]}').show();"
    html
  end

  def hide(args={})
    html = []
    html = "$('##{args[:id]}').hide();"
    html
  end

  def toggle(args={})
    html = []
    html = "$('##{args[:id]}').toggle();"
    html
  end
end

