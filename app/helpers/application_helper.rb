module ApplicationHelper

  def bootstrap_class_for flash_type
    case flash_type
      when 'success'
        "alert-success"
      when 'error'
        "alert-error"
      when 'alert'
        "alert-danger"
      when 'notice'
        "alert-info"
      else
        flash_type.to_s
    end
  end

  def link_to_with_icon(*args)
    name = args.first
    icon = args.second
    url = args.third
    html_options = args.fourth || {}
    link_to(content_tag(:i, '', class: icon) + ' ' + name, url, html_options)
  end
end
