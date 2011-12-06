module ApplicationHelper
  def text_form (data, field)
        name =      field['input_name']
        label =     field['label']
        tooltip =   field['tooltip']
        html = ""

        html << "<div>#{label_tag name,label , {:class => 'label_title'} }#{text_field_tag name,data, {:size=>60, :placeholder=>tooltip} }</div>"
        html.html_safe
      end
   
   def text_insert(hash, field, value)
     
     
   end
  
  
end
