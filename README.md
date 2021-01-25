# Joyful Bites Bakery 

<img width="639" alt="JBlogo" src="https://user-images.githubusercontent.com/61069416/105638769-a7bd8500-5e42-11eb-9736-cb12b9273724.jpg">

Welcome to the Joyful Bites Bakery App! This is my final project for the Flatiron School. It allows clients to create and save bakery orders, as well as delete any order that was previously made. This repository contains the backend API of the project.

## Frontend

The frontend for the Joyful Bites Bakery App can be found [here](https://github.com/sandienunez/joyful-bites-bakery-backend).

## Inspiration 

My objective was to create an incredibly healthy, sustainable and whole bakery with treats that make people feel good. As a person who has suffered  from dairy and gluten allergies, I know first hand the difficulty of finding delicious desserts that do not make you feel sick, sluggish, bad about yourself, tired and leave you with an awful sugar crash. When my father was diagnosed with pre-diabetes and extra high cholesterol, I set out on a mission to create the most delicious baked goods that are not only nutritious, dairy-free, gluten-free, anti-inflammatory and low-glycemic but give you the energy you need to do the work God has called you to do. 

You do not have to sacrifice "yummy-in-my-tummy" moments or give up your sweet tooth cravings. Everyone deserves the right to enjoy treats, cookies, cakes, fresh-made breads and deserts. Baked goods are meant to make you smile, meant to be shared with the special people in our lives and help make our family/friend celebrations sweeter. Joyful Bites encompasses what America's heart is a lot about, helping your neighbor and serving others. That's why for every one treat you buy, one is given to someone in need. 

## Demo & Blog Post

* [Click Here](https://www.youtube.com/watch?v=u2vA5oPlYN0&feature=youtu.be) to view a demo of the Joyful Bites Bakery App.
* [Click Here](https://sandienunez.github.io/joyful_bites_bakery_app) to read my blog post about the Joyful Bites Bakery app.

## Installation

Follow these steps to get the backend up and running:

1. Fork and clone this repository onto your own computer.
2. Run `bundle install` to install the Ruby gems for this app.
3. Run `rails db:migrate` to create the database.


## Usage

To start the Rails server for the Joyful Bites Bakery app, run `rails s`. Then, you can do any of the following:

* Navigate to `http://localhost:3000/lists` to view the serialized JSON for all of your saved orders.
  * If you do this, I recommend installing the [JSON Viewer Chrome extension](https://chrome.google.com/webstore/detail/json-viewer/gbmdgpbipfallnflgajpaliibnhdgobh?hl=en-US) to view your data in an easy-to-read format.
* Navigate to `http://localhost:3000/rails/info/routes` to see this project's available routes (or run `rails routes` in your terminal).
* Exit the server by hitting `Ctrl-C` or `Cmd-C` in your terminal.


The Joyful Bites Bakery app is a single-page application that serves two main purposes: Clients can both create and save bakery orders, as well as delete orders previously made and view all the client summaries or list order objects. Clients can also visit 8 different routes including clicking to read the bakery menu items for the day, about us, our story, contact information and see all of the orders made in the Joyful Bites Community Order Feed on each route rendered in the Parents app component. 

Once the app loads, you can do any of the following:

1. Click on the "Menu" tab to see which baked good selection you will make. Create a new bakery order by navigating to the "New Order" page and filling out the form. 
   * On that form, you can fill out the client name, fill in the date the order was created, the quantity of baked goods wanted and select which specific baked goods you want to add to your order.
   * You can also delete a client order with the "Delete" button. 
2. Once you submit the form, you can click on the "Client Orders" page to see your full client order data displayed. 
3. You also have the option of deleting any of your client orders; just click on its "Delete" button.


<img width="1384" alt="Screen Shot 2021-01-24 at 1 14 23 PM" src="https://user-images.githubusercontent.com/61069416/105639501-b443dc80-5e46-11eb-866e-bbe3471cb643.png"> 


<img width="1354" alt="Screen Shot 2021-01-24 at 1 14 57 PM" src="https://user-images.githubusercontent.com/61069416/105640100-24a02d00-5e4a-11eb-9c2d-b8e89ccb3d87.png">
<img width="1344" alt="Screen Shot 2021-01-24 at 1 15 13 PM" src="https://user-images.githubusercontent.com/61069416/105640101-25d15a00-5e4a-11eb-9ea6-2650cd0c0bd9.png">
<img width="1346" alt="Screen Shot 2021-01-24 at 1 15 29 PM" src="https://user-images.githubusercontent.com/61069416/105640104-2833b400-5e4a-11eb-9c32-6bc978db701b.png">
<img width="1245" alt="Screen Shot 2021-01-24 at 1 15 57 PM" src="https://user-images.githubusercontent.com/61069416/105640105-2964e100-5e4a-11eb-9662-42243be88a5c.png">
<img width="1342" alt="Screen Shot 2021-01-24 at 1 16 07 PM" src="https://user-images.githubusercontent.com/61069416/105640108-2d90fe80-5e4a-11eb-8f70-d5ec3cebf0d6.png">
<img width="1277" alt="Screen Shot 2021-01-24 at 1 16 15 PM" src="https://user-images.githubusercontent.com/61069416/105640110-2e299500-5e4a-11eb-9227-f95c071bb64e.png">
<img width="899" alt="Screen Shot 2021-01-24 at 1 16 19 PM" src="https://user-images.githubusercontent.com/61069416/105640111-308bef00-5e4a-11eb-8d86-d3b04b1d2f48.png">
<img width="1336" alt="Screen Shot 2021-01-24 at 1 16 30 PM" src="https://user-images.githubusercontent.com/61069416/105640115-32ee4900-5e4a-11eb-8d56-c34c817289dd.png">
<img width="1352" alt="Screen Shot 2021-01-24 at 1 16 42 PM" src="https://user-images.githubusercontent.com/61069416/105640117-341f7600-5e4a-11eb-8fde-fed4d435c51e.png">
<img width="1358" alt="Screen Shot 2021-01-24 at 1 16 50 PM" src="https://user-images.githubusercontent.com/61069416/105640118-35e93980-5e4a-11eb-9226-078c9fecd787.png">
<img width="1369" alt="Screen Shot 2021-01-24 at 1 16 58 PM" src="https://user-images.githubusercontent.com/61069416/105640120-384b9380-5e4a-11eb-82c9-8fbbd5ffa011.png">
<img width="1343" alt="Screen Shot 2021-01-24 at 1 17 16 PM" src="https://user-images.githubusercontent.com/61069416/105640123-3a155700-5e4a-11eb-908d-f90342328afc.png">
<img width="1344" alt="Screen Shot 2021-01-24 at 1 17 23 PM" src="https://user-images.githubusercontent.com/61069416/105640124-3b468400-5e4a-11eb-94a3-d46588defecf.png">

## Development Notes

* Ruby version: 2.6.1
* Rails version: 6.0.3.2
* Database: PostgreSQL

This API also makes use of the [Rack CORS Middleware](https://github.com/cyu/rack-cors) and [Active Model Serializer](https://github.com/rails-api/active_model_serializers) gems.

## Built With

* Ruby on Rails
* JavaScript
* React
* Redux
* Thunk 
* HTML, CSS


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/sandienunez/joyful-bites-bakery-backend. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
MIT © https://github.com/sandienunez 

## Code of Conduct

Everyone interacting in Joyful Bite’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the https://github.com/sandienunez/joyful-bites-bakery-backend/blob/master/app/CODE_OF_CONDUCT.md

