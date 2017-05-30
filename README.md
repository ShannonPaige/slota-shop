# Slota's Chips

[Live Version](http://slota-chips.herokuapp.com/)

It's time for a natural and healthy alternative to potato chips. Slota's chips is an e-commerce site that only sells chips cooked in lard, avocado oil or coconut oil. 

![](https://dl.dropboxusercontent.com/u/4260734/slotas-chips.png)

### Features
* **Multi tenancy:** Admin can manage store and orders while users can shop for all the delicious chips they want
* **Twilio text notification:** When your order is filled, you'll recieve a text letting you know it's on its way. (But because of the free trial version we used they all go to us right now, so don't use it!)
* **Basic cart functionality** 

### Tools

* Rails
* JavaScript
* MiniTest
* Mocha
* Capybara
* PostgreSQL
* Materialize

---
### To Run Locally

* clone the project
* run `bundle install` to install the required gems
* set up and seed the database with`rake db:create db:migrate db:seed`
* start the server with `rails s` and visit `http://localhost:3000`

---
Turing School Project
