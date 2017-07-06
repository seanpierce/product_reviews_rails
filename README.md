# Product Reviews

_Product Reviews_ is a Ruby on Rails application that demonstrates the core functionality for a product review site.


**Anonymous users can:**
* View products and reviews

**Signed Up, Logged In users can:**
* View products and reviews
* Add a product, add a review
* Visit their user page to see all their reviews
* Edit and delete a review they've created

**Admins can:**
* View products and reviews
* Add a product, add a review
* Visit their user page to see all their reviews
* Edit, or delete _any_ product or review
----
### Dependencies
* <a href="https://www.ruby-lang.org/en/downloads/">Ruby</a> 2.2 or greater
* <a href="http://rubyonrails.org/">Rails</a>
* <a href="https://www.postgresql.org/">postgresql</a>
* <a href="https://bundler.io/">bundler</a>

### Installation
* Run postgresql  
`$ postgres`
* Using a new terminal tab, clone this repo  
`$ git clone https://github.com/seanpierce/product_reviews_rails`
* Navigate into the cloned repo  
`$ cd product_reviews_rails/`
* Install dependent ruby gems  
`$ bundle install`
* Set up database  
`$ bundle exec rails db:setup`
* Start the rails server  
`$ rails s`
* visit the site at <a href="http://localhost:3000">localhost:3000</a>

### Usage
The database will be populated with information via the <a href="https://github.com/stympy/faker">Faker gem</a> once the installation is complete. You can login as one of the test users with the information below, or sign up using your own credentials.

| Type | email | password |
| ---- | ----- | -------- |
| Admin | test@email.com | 1234567|
| User | test2@email.com | 1234567|
| User | test3@email.com | 1234567|

### User Views
| Signing up, adding a product and a review | Logging in, editing and deleting reviews |
| ------ |------|
| ![](user_views/41UQnWWYE7.gif) | ![](user_views/c919H4QG4w.gif) |

-----

#### Bugs
Currently no known bugs. Please <a href="https://github.com/seanpierce/product_reviews_rails/issues/new">create an issue</a> if one is discovered.
#### Author
Sean Pierce
#### Contact
sumler.sean@gmail.com
#### License
MIT &copy; 2017
