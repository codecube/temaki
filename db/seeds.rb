# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#







title = DataTemplateField.new(
   label: 'Title',
   tooltip: 'Insert the Page Title',
   required: true,
   input_name: 'title',
   input_type: 'text',
   input_properties: {"size"=>30}
   #input_colection:
)

description = DataTemplateField.new(
label: 'Description',
   tooltip: 'Insert the Page Description',
   required: false,
   input_name: 'description',
   input_type: 'textarea',
   input_properties: {"cols"=>30, "rows"=>5}
   #input_colection:
)

text = DataTemplateField.new(
   label: 'Text',
   tooltip: 'Insert the Page Text',
   required: false,
   input_name: 'text',
   input_type: 'markup',
   input_properties: {"cols"=>30, "rows"=>10}
   #input_colection:
)

active = DataTemplateField.new(
   label: 'Active',
   tooltip: 'Define if this page is active',
   required: false,
   input_name: 'active',
   input_type: 'checkbox',
   input_properties: {}
   #input_colection:
)

alignment = DataTemplateField.new(
   label: 'Align',
   tooltip: 'Define the page alignment',
   required: false,
   input_name: 'align',
   input_type: 'select',
   input_properties:{}, 
   input_colection:[{'key'=>'left', 'value'=>'align left'},{'key'=>'right', 'value'=>'align right'}, {'key'=>'center', 'value'=>'align center'}]
)

page_template = DataTemplate.create(
title: 'Page Template 3',
description: 'Use this template to create a simple page',

data_template_fields: [title, description, text, active, alignment]
)

#page = DataCollection.create(name: 'pages', title: 'Pages', description: 'Pages Collection', data_templates: [ page_template ], count: 0,)






#{ "_id" : ObjectId("4e5ee35b7405a574b31c134c"), "data_template" : "dictionary", "title" : "Title", "caption" : "Dictionary template title (lists)", "input-name" : "title", "input-type-class" : "text", "input-collection" : "", "input-properties" : "size=30", "position" : 1 }
#{ "_id" : ObjectId("4e5ee3ae7405a574b31c134d"), "data_template" : "dictionary", "title" : "Description", "caption" : "Dictionary template description (lists)", "input-name" : "description", "input-type-class" : "textarea", "input-collection" : "", "input-properties" : "size=30", "position" : 2 }