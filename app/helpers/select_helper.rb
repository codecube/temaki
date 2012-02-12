module SelectHelper
  def select_form (data, field)
        name =      field['input_name']
        label =     field['label']
        tooltip =   field['tooltip']
        options =   field['input_collection']
        
        html = ""

        html << "<div>#{label_tag name,label , {:class => 'label_title'} } #{select_tag name, options_for_select(options, data)}</div>"
        html.html_safe
      end
      
      def select_render(data, field)
        data
      end
   
   def select_insert(hash, field, value)
     hash[field] = value;
     return hash;
   end
  
end
