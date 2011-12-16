# Twitter Bootstrap Helper for Rails 3

Bootstrap is a toolkit from Twitter designed to kickstart development of webapps and sites. It includes base CSS and HTML for typography, forms, buttons, tables, grids, navigation, and more.

bootstrap_helper auto generates Bootstrap HTML codes.

## Rails 3.1

include Bootstrap Helper in Gemfile;

``` ruby
gem 'bootstrap_helper'
```
or you can install from latest build;

``` ruby
gem 'bootstrap_helper', :git => "git://github.com/xdite/bootstrap_helper.git"
```

## USAGE


### render_page_title

#### SETUP

edit your `config/application.rb `

	SITENAME = "YOUR SITE NAME"

in  `application.html.erb`, replace `<title>` with 

	<%= render_page_title %> 

define page title in your action 

	def index
  	  page_title("Posts Index")
	end

will render 
	
	<title>Posts Index &raquo; YOUR SITE NAME</title>

### render_list

render_list generates ul & li, auto append: "first", "last" class . If link matches current controller and acttion, it will auto add "active" class. Perfact for "menu"

	<%= render_list :class => "nav" do |li|
         li << link_to(t("menu.topics"), topics_path)
         li << link_to(t("menu.wiki"), wikis_path )
         li << link_to(t("menu.sites"), sites_path )
         li << link_to(t("menu.users"), users_path)
    end %>

### render_body_tag

in  `application.html.erb`, replace `<body>` with 

	<%= render_body_tag %> 

render_body_tag auto inserts "controller name" & "action name" in to body class, and generates IE conditional comment.

	<!--[if lt IE 7 ]>
	<body class="topics-controller index-action ie6"><![endif]-->
	<!--[if gte IE 7 ]>
	<body class="topics-controller index-action ie"><![endif]-->
	<!--[if !IE]>-->
	<body class="topics-controller index-action">
	<!--<![endif]-->

### breadcrumb

in  `application.html.erb`, place this helper

	<%= render_breadcrumb %>

drop breadcrumb in your action 

	def show
	  @post = Posts.find(params[:id])
	  drop_breadcrumb("Posts", posts_path)
	  drop_breadcrumb(@post.title)
    end

it will generate breadcrumb with link for you

	Home / Post / YourPostTitle

### notice_message

in  `application.html.erb`, place this helper

    <%= notice_message %>

write notice message in your action, will generate bootstrap style notice message

    def create
      # ….
      redirect_to posts_path, :notice => "Create Success!"
    end

### Pagination

Support `will_paginate`, `3.0.pre4`

in `config/application.rb`

    WillPaginate::ViewHelpers.pagination_options[:renderer] = 'BootstrapHelper::PaginateRenderer'
      
## Example 

see [example](bootstrap_helper/tree/master/example/application.html.erb)

## Other

### Form

You can use simple_form 2.0 with bootstrap form template

* Gemfile

```
gem "simple_form", :git => "git://github.com/plataformatec/simple_form.git"
```

place <https://github.com/rafaelfranca/simple_form-bootstrap/blob/master/config/initializers/simple_form.rb> to `config/initailizers/simple_form.rb`

```
<%= simple_form_for @article, :wrapper => :inline do |f| %>
   <%= f.input :title, :input_html => {:class => "xxlarge"} , :hint => "this is post title" %>
<% end >
```

## Thanks

Thanks Twitter for Bootstrap <http://twitter.github.com/bootstrap>

Thanks Handlino for HandicraftHelper  <https://github.com/handlino/handicraft_helper>

## License

Copyright (C) 2011 by xdite

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.