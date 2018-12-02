# SPARTA_RUBY_YOUTUBE

This is a YouTube page created through Ruby Sinatra. In order to use this webpage, you will need to go into Git bash and enter rackup, this will then provide you with a port number by a HTTP request. You then go into google and type in localhost/'portnumber'. This will show the YouTube page that I have created. Sometimes you will need to run your ruby gems so run gem bundle install on your bash before running rackup to ensure all the gems have been accessed to on your local host.

Sinatra is desired to be lightweight and flexible, it enabled me to understand the major concepts of the MVC model. In this YouTube page, the routes are manually set up and connected to other pieces of the application. The restful routes included into this webpage is the post route. The post route is used when something is created, for example the show pages when a video is clicked from the navigation bar.

The navigation bar and footer of the page have been linked in through partials. The have been created in the view folder and then another folder called partials. Partials are another form of the rendering process by breaking it into more manageable chunks, it moves the rendered part of a particular feature like the footer into another file. These files have been created with a erb file extension (footer.erb), this is an embedded ruby file. This means that its a HTML file with embedded ruby code in it. These partials are then included in the layout.erb file, where the files are rendered in. Also in the layout.erb file there is a ruby function called yield which has been embedded into it. Yield renders the template of the current controller. In this case the index and show pages in the controller file have been yielded into the page, without the yield function the body of the current YouTube page (the video and description) would not be on display.

This YouTube page consists of a index and show page. The index page is the first page you are lead too after rackup and then the show page is the pages with more information about each video and where the video is portrayed. As there is images in this file, to include CSS or images, a public folder needs to be created. This is where all the CSS and images are put into and where they can be accessed from onto the page needed. In this YouTube page the YouTube logo has been added onto the navigation bar so therefore in the navigation.erb file.

### Gems

This YouTube project consists of three ruby gems. A gem is a package that can install and manage libraries. The gems are installed by writing gem 'gem name' in the Gemfile and then by running gem install bundle, they become installed onto your machine. For example in this particular project I have used the Sinatra and sinatra-contrib gem. These gems are Sinatra extension gems and are used in the config file for example by requiring sinatra/reloader so there is no need to reload Sinatra. Sinatra is rack based which
means it is booted by rackup. The config.ru file is used for configuring the rack application.

### MVC (Model View Controller)

The MVC model is used for developing interfaces, dividing an application into three parts. The model deals with the database and whatever data storage is included (for example SQL). This page has no data storage therefore there is no model. The view is the user interface, this includes the templates so what the user will see in the browser. This is the pages and partials included in this page. The controller is where the url is looked at and it is decided what is going to be loaded (the method), the model is also responsible for connecting with the model and view.

### Restful Routes

Restful (representational state transfer) routes provide a way for mapping the HTTP verbs (put, post, get, patch and delete) and CRUD actions (create, replace, update and delete). Put is when data is put in so for a update action. Post is when data is created so the create action. Get is when you fetch data so for the index and show pages. Patch is when data is updated so for the update. Delete is for destroying data so for the delete actions. 
