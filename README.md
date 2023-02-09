# README

## Start the server and console
    - rails server -p 5000  ( defualt port is 3000 )
    - rails c 

## handling cors
  - configs > initializers > cors.rb
  - https://rootstack.com/en/blog/ruby-on-rails-api
  - add gem 'rack-cors' in gemfile
  - cmd > gem install rack-cors

##   code .  setup  
  - command + p in vscode 
  - type > 
  - type Shell command: Install 'code' command in the PATH and click on it
  - if it does not work Shell command: Unnstall 'code' command in the PATH
  - again type and click on it  Shell command: Install 'code' command in the PATH

## to see hidden .git file  && GIT
  - go in find folder > type cmd + shift + .
  - 3 level config > https://gist.github.com/lifuzu/9490352
  
## https and http working 
  - http and https are ports 80 and 443
  - when user request https://www.google.com it gets break in 3 parts 
    > https which goes on 443
    > ://
    > www.google.com called domain corresponding to which there is IP address 172.217.4.196
   - All the create an Remote Address 172.217.4.196:443
   - Local Host - 127.0.0.1 and https :443 , all makes either https://localhost:5000 or https://127.0.0.1:5000
    
## ROR
  ### setup ( ruby + rails + sqlite3 + Github setup ) 
  - execute all the commands one by one 
  - https://gorails.com/setup/macos/13-ventura#database
  
  rbenv - command line tools for intalling ruby on rails 
  gem - gem is just a library 
  Gemfile - contains info of all the gem using in our app 
  Bundle - to install ruby gem

  ## request reqponse flow for https://localhost:5000/about/show

  - server start > routes get '/about/show' to: 'about#show' > controller about_controller.rb >
    action def show > views about/show.erb 
# ------------------------------------------------------------------------ #
  @var - can we used by all the methods in a class for a particular instance
  :var - using symbol
  var - can be used locally only means can't be used outside a method

# ------------------------------------------------------------------------ #

  > reload! - whenever we do some changes in any file that changes will get reflect in console only if we reload the console.
  > 

# ------------------------------------------------------------------------ #


This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
