class Text
      def initialize
        @data = data
        @data_template = data_template
      end

      def text_form (data,data_template)
        name =      @data_template['input_name']
        label =     @data_template['title']
        caption =   @data_template['caption']

        html << "<div>#{label_tag(name,label)}#{text_field_tag(name,@data)}</div>"
      end

      def search

      end

      def show
      
      end
end