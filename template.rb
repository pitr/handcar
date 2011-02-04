git :init

append_file '.gitignore', <<-CODE
/vendor/bundler_gems
/config/database.yml
*.rbc
*.sassc
.sass-cache
.rspec
/.bundle
/vendor/bundle
/log/*
/tmp/*
/db/*.sqlite3
/public/system/*
/coverage/
/spec/tmp/*
**.orig
CODE

run 'cp config/database.yml config/database.yml.sample'

%W[Gemfile README config/routes.rb public/index.html public/404.html
  public/422.html public/500.html public/images/rails.png].each do |file|
  run "rm #{file}"
end

run 'rm -rf test doc'

# remove default JavaScript file
run 'rm public/javascripts/*.js'

file 'public/stylesheets/application.css', <<-CODE
/* RESET */
html,body,div,span,applet,object,iframe,h1,h2,h3,h4,h5,h6,p,blockquote,pre,a,abbr,acronym,address,big,cite,code,del,dfn,em,font,img,ins,kbd,q,s,samp,small,strike,strong,sub,sup,tt,var,b,u,i,center,dl,dt,dd,ol,ul,li,fieldset,form,label,legend,table,caption,tbody,tfoot,thead,tr,th,td{margin:0;padding:0;border:0;outline:0;font-size:100%;vertical-align:baseline;background:transparent}body{line-height:1}ol,ul{list-style:none}blockquote,q{quotes:none}blockquote:before,blockquote:after,q:before,q:after{content:'';content:none}:focus{outline:0}ins{text-decoration:none}del{text-decoration:line-through}table{border-collapse:collapse;border-spacing:0}
/* TEXT */
body{font:13px/1.5 'Helvetica Neue',Arial,'Liberation Sans',FreeSans,sans-serif}a:focus{outline:1px dotted}hr{border:0 #ccc solid;border-top-width:1px;clear:both;height:0}h1{font-size:25px}h2{font-size:23px}h3{font-size:21px}h4{font-size:19px}h5{font-size:17px}h6{font-size:15px}ol{list-style:decimal}ul{list-style:disc}li{margin-left:30px}p,dl,hr,h1,h2,h3,h4,h5,h6,ol,ul,pre,table,address,fieldset{margin-bottom:20px}
/* 960 */
body{min-width:960px}.container_12,.container_16{margin-left:auto;margin-right:auto;width:960px}.grid_1,.grid_2,.grid_3,.grid_4,.grid_5,.grid_6,.grid_7,.grid_8,.grid_9,.grid_10,.grid_11,.grid_12,.grid_13,.grid_14,.grid_15,.grid_16{display:inline;float:left;margin-left:10px;margin-right:10px}.push_1,.pull_1,.push_2,.pull_2,.push_3,.pull_3,.push_4,.pull_4,.push_5,.pull_5,.push_6,.pull_6,.push_7,.pull_7,.push_8,.pull_8,.push_9,.pull_9,.push_10,.pull_10,.push_11,.pull_11,.push_12,.pull_12,.push_13,.pull_13,.push_14,.pull_14,.push_15,.pull_15{position:relative}.container_12 .grid_3,.container_16 .grid_4{width:220px}
.container_12 .grid_6,.container_16 .grid_8{width:460px}.container_12 .grid_9,.container_16 .grid_12{width:700px}.container_12 .grid_12,.container_16 .grid_16{width:940px}.alpha{margin-left:0}.omega{margin-right:0}.container_12 .grid_1{width:60px}.container_12 .grid_2{width:140px}.container_12 .grid_4{width:300px}.container_12 .grid_5{width:380px}.container_12 .grid_7{width:540px}.container_12 .grid_8{width:620px}.container_12 .grid_10{width:780px}.container_12 .grid_11{width:860px}.container_16 .grid_1{width:40px}.container_16 .grid_2{width:100px}.container_16 .grid_3{width:160px}.container_16 .grid_5{width:280px}
.container_16 .grid_6{width:340px}.container_16 .grid_7{width:400px}.container_16 .grid_9{width:520px}.container_16 .grid_10{width:580px}.container_16 .grid_11{width:640px}.container_16 .grid_13{width:760px}.container_16 .grid_14{width:820px}.container_16 .grid_15{width:880px}.container_12 .prefix_3,.container_16 .prefix_4{padding-left:240px}.container_12 .prefix_6,.container_16 .prefix_8{padding-left:480px}.container_12 .prefix_9,.container_16 .prefix_12{padding-left:720px}.container_12 .prefix_1{padding-left:80px}.container_12 .prefix_2{padding-left:160px}.container_12 .prefix_4{padding-left:320px}
.container_12 .prefix_5{padding-left:400px}.container_12 .prefix_7{padding-left:560px}.container_12 .prefix_8{padding-left:640px}.container_12 .prefix_10{padding-left:800px}.container_12 .prefix_11{padding-left:880px}.container_16 .prefix_1{padding-left:60px}.container_16 .prefix_2{padding-left:120px}.container_16 .prefix_3{padding-left:180px}.container_16 .prefix_5{padding-left:300px}.container_16 .prefix_6{padding-left:360px}.container_16 .prefix_7{padding-left:420px}.container_16 .prefix_9{padding-left:540px}.container_16 .prefix_10{padding-left:600px}.container_16 .prefix_11{padding-left:660px}
.container_16 .prefix_13{padding-left:780px}.container_16 .prefix_14{padding-left:840px}.container_16 .prefix_15{padding-left:900px}.container_12 .suffix_3,.container_16 .suffix_4{padding-right:240px}.container_12 .suffix_6,.container_16 .suffix_8{padding-right:480px}.container_12 .suffix_9,.container_16 .suffix_12{padding-right:720px}.container_12 .suffix_1{padding-right:80px}.container_12 .suffix_2{padding-right:160px}.container_12 .suffix_4{padding-right:320px}.container_12 .suffix_5{padding-right:400px}.container_12 .suffix_7{padding-right:560px}.container_12 .suffix_8{padding-right:640px}
.container_12 .suffix_10{padding-right:800px}.container_12 .suffix_11{padding-right:880px}.container_16 .suffix_1{padding-right:60px}.container_16 .suffix_2{padding-right:120px}.container_16 .suffix_3{padding-right:180px}.container_16 .suffix_5{padding-right:300px}.container_16 .suffix_6{padding-right:360px}.container_16 .suffix_7{padding-right:420px}.container_16 .suffix_9{padding-right:540px}.container_16 .suffix_10{padding-right:600px}.container_16 .suffix_11{padding-right:660px}.container_16 .suffix_13{padding-right:780px}.container_16 .suffix_14{padding-right:840px}
.container_16 .suffix_15{padding-right:900px}.container_12 .push_3,.container_16 .push_4{left:240px}.container_12 .push_6,.container_16 .push_8{left:480px}.container_12 .push_9,.container_16 .push_12{left:720px}.container_12 .push_1{left:80px}.container_12 .push_2{left:160px}.container_12 .push_4{left:320px}.container_12 .push_5{left:400px}.container_12 .push_7{left:560px}.container_12 .push_8{left:640px}.container_12 .push_10{left:800px}.container_12 .push_11{left:880px}.container_16 .push_1{left:60px}.container_16 .push_2{left:120px}.container_16 .push_3{left:180px}.container_16 .push_5{left:300px}
.container_16 .push_6{left:360px}.container_16 .push_7{left:420px}.container_16 .push_9{left:540px}.container_16 .push_10{left:600px}.container_16 .push_11{left:660px}.container_16 .push_13{left:780px}.container_16 .push_14{left:840px}.container_16 .push_15{left:900px}.container_12 .pull_3,.container_16 .pull_4{left:-240px}.container_12 .pull_6,.container_16 .pull_8{left:-480px}.container_12 .pull_9,.container_16 .pull_12{left:-720px}.container_12 .pull_1{left:-80px}.container_12 .pull_2{left:-160px}.container_12 .pull_4{left:-320px}.container_12 .pull_5{left:-400px}.container_12 .pull_7{left:-560px}
.container_12 .pull_8{left:-640px}.container_12 .pull_10{left:-800px}.container_12 .pull_11{left:-880px}.container_16 .pull_1{left:-60px}.container_16 .pull_2{left:-120px}.container_16 .pull_3{left:-180px}.container_16 .pull_5{left:-300px}.container_16 .pull_6{left:-360px}.container_16 .pull_7{left:-420px}.container_16 .pull_9{left:-540px}.container_16 .pull_10{left:-600px}.container_16 .pull_11{left:-660px}.container_16 .pull_13{left:-780px}.container_16 .pull_14{left:-840px}.container_16 .pull_15{left:-900px}
.clear{clear:both;display:block;overflow:hidden;visibility:hidden;width:0;height:0}.clearfix:before,.clearfix:after{content:'\0020';display:block;overflow:hidden;visibility:hidden;width:0;height:0}.clearfix:after{clear:both}.clearfix{zoom:1}
/* APP */


CODE

open('http://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js') do |source|
  File.open('public/javascripts/jquery-1.4.4.min.js', 'w') {|f| f.write(source.read) }
end

open('https://github.com/rails/jquery-ujs/raw/master/src/rails.js') do |source|
  File.open('public/javascripts/rails.js', 'w') {|f| f.write(source.read) }
end

file 'public/404.html', <<-HTML
<!doctype html>
<title>not found</title>
<style>
body { text-align: center;}h1 { font-size: 50px; }
body { font: 20px Constantia, 'Hoefler Text',  "Adobe Caslon Pro", Baskerville, Georgia, Times, serif; color: #999; text-shadow: 2px 2px 2px rgba(200, 200, 200, 0.5); }
::-moz-selection{ background:#FF5E99; color:#fff; }
::selection { background:#FF5E99; color:#fff; }
details { display:block; }
a { color: rgb(36, 109, 56); text-decoration:none; }
a:hover { color: rgb(96, 73, 141) ; text-shadow: 2px 2px 2px rgba(36, 109, 56, 0.5); }
span[frown] { transform: rotate(90deg); display:inline-block; color: #bbb; }
</style>
<details>
  <summary><h1>Not found</h1></summary>
  <p><span frown>:(</span></p>
</details>
HTML

file 'public/500.html', <<-HTML
<!doctype html>
<title>server error</title>
<style>
body { text-align: center;}h1 { font-size: 50px; }
body { font: 20px Constantia, 'Hoefler Text',  "Adobe Caslon Pro", Baskerville, Georgia, Times, serif; color: #999; text-shadow: 2px 2px 2px rgba(200, 200, 200, 0.5); }
::-moz-selection{ background:#FF5E99; color:#fff; }
::selection { background:#FF5E99; color:#fff; }
details { display:block; }
a { color: rgb(36, 109, 56); text-decoration:none; }
a:hover { color: rgb(96, 73, 141) ; text-shadow: 2px 2px 2px rgba(36, 109, 56, 0.5); }
span[frown] { transform: rotate(90deg); display:inline-block; color: #bbb; }
</style>
<details>
  <summary><h1>Internal Error</h1></summary>
  <p><span frown>;(</span></p>
</details>
HTML

# Generate base controller
file 'app/controllers/base_controller.rb', <<-CODE
class BaseController < InheritedResources::Base
end
CODE

# gitkeep all folders in tmp (for unicorn)
[:cache, :pids, :sessions, :sockets].each do |tmp_dir|
  empty_directory_with_gitkeep("tmp/#{tmp_dir}")
end

file 'Gemfile', <<-CODE
source 'http://rubygems.org'

gem 'rails', '3.0.3'

# Model
CODE

file 'config/routes.rb', <<-ROUTES
#{app_const}.routes.draw do
  # root :to => "welcome#index"
end
ROUTES

unless options[:skip_activerecord]
  if require_for_database
    gem gem_for_database, :require => require_for_database
  else
    gem gem_for_database
  end
end

append_file 'Gemfile', <<-CODE

# Views
gem 'haml'

# Controllers
gem 'inherited_resources'

group 'development', 'test' do
  gem 'unicorn'

  gem 'silent-postgres'

  gem 'rspec', '~> 2.0'
  gem 'rspec-rails', '~> 2.0'
  gem 'steak', '~> 1.1'

  gem 'factory_girl_rails'
end

group 'test' do
  gem 'database_cleaner'
  gem 'capybara'
end
CODE

run 'bundle install'

generate 'rspec:install'
generate 'steak:install'

git :add => '.'

say "I'm 12 years old and what is this?"
