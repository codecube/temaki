module MarkupHelper
  def markup_form (data, field)
        name =      field['input_name']
        label =     field['label']
        tooltip =   field['tooltip']
        html = ""

        html << "<div>#{label_tag name,label , {:class => 'label_title'} }#{text_area_tag name,data, {:class=>'markitup_form', :size=>'50x5', :placeholder=>tooltip} }</div>"
        html.html_safe
      end
      
      def markup_render(data, field)
         BlueCloth.new(data).to_html
      end
   
   def markup_insert(hash, field, value)
     hash[field] = value;
     return hash;
   end
  
  
end
