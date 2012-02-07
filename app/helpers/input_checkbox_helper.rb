module InputCheckboxHelper
  def checkbox_form (data, field)
        name =      field['input_name']
        label =     field['label']
        tooltip =   field['tooltip']
        html = ""

        html << "<div>#{label_tag name,label , {:class => 'label_title'} }#{check_box_tag name,true}</div>"
        html.html_safe
    end
      
    def checkbox_render(data, field)
      data
    end
   
    def checkbox_insert(hash, field, value)
     hash[field] = value
     hash
    end  
end
