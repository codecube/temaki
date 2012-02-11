module InputTextareaHelper
  def textarea_form (data, field)
        name =      field['input_name']
        label =     field['label']
        tooltip =   field['tooltip']
        html = ""

        html << "<div>#{label_tag name,label , {:class => 'label_title'} }#{text_area_tag name,data, {:class=>'textarea', :size=>'50x5', :placeholder=>tooltip} }</div>"
        html.html_safe
      end
      
      def textarea_render(data, field)
        data
      end
   
   def textarea_insert(hash, field, value)
     hash[field] = value;
     return hash;
   end
  
  
end
