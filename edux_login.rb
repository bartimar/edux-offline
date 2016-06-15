#!/usr/bin/env ruby
# encoding: utf-8

#Let's you log in into your edux account and places the resulting cookies into $HOME/.edux_cookie.txt
#Requires highline and mechanize: $gem install highline mechanize


cookiestxt=File.expand_path('~/.edux_cookie.txt')

if File.exists? cookiestxt
  $stderr.puts "The \"#{cookiestxt}\" file already exists.\nQuitting."
  exit 0
end


cookies=File.open(cookiestxt,'w+')
#preview=File.open('/tmp/edux_login.html','w+')
#File.truncate(preview.path,0)

require 'mechanize'
require 'highline/import'

edux_url='https://edux.fit.cvut.cz/en/'

agent=Mechanize.new
page=agent.get(edux_url)
form = page.forms.find {|f| f.button.value=="Login"}
page=agent.submit(form, form.button)
form=page.forms.find{|f| f.button.value=="Select"}
form.field_with(:name => 'authnProvider').options[1].click
page=agent.submit(form, form.button)
form=page.forms.find{|f| f.button.value=="Login"&& f.field_with(name: 'u') && f.field_with(name: 'p')}

username=ask("Edux Username:  ")
password = ask("Edux Faculty Password:  ")


form.field_with(:name => "u").value=username
form.field_with(:name => "p").value=password
form.checkbox.value=1
form.checkbox.checked=true
page1=agent.submit(form, form.button)

unless( page1.forms.find {|f| f.button_with(value: 'Logout') } != nil )
  $stderr.puts "Login failed."
  cookies.close
  File.delete(cookiestxt)
  exit 1
else
  $stderr.puts "Login succeeded.\nThe \"#{cookiestxt}\" file now contains your cookies."
end
  
agent.cookie_jar.dump_cookiestxt cookies
cookies.close
exit 0


