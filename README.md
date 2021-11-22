# Chitter


## User Stories

```
As a Maker
So that I can let people know what I am doing  
I want to post a message (peep) to chitter

As a maker
So that I can see what others are saying  
I want to see all peeps in reverse chronological order

As a Maker
So that I can better appreciate the context of a peep
I want to see the time at which it was made

As a Maker
So that I can post messages on Chitter as me
I want to sign up for Chitter

As a Maker
So that only I can post messages on Chitter as me
I want to log in to Chitter
```

## Technologies Used
 
 - Ruby
 - Sinatra
 - Capybara
 - PostgreSQL
 - Rspec

## Test Setup

```
bundle init
```
List the gems in the Gemfile
```
source 'https://rubygems.org'

gem 'sinatra'
gem 'sinatra-contrib'
gem 'rspec'
gem 'capybara'
```
Install gems 

```
bundle install
```
Initialise rspec
```
rspec --init
```

## Reflections

- I spent a little bit too long perhaps on the functionality for getting the current date.
- The signup functionality was quite straightforward and I understood how both databases spoke to each other.
- The login functionality has some final tweeks needed but the overall functionality is also there. 
- With any spare time in the next few days I will implement the logout functionality and make it more presentable with some CSS. 





