# rails-online-shop README

This README file will document everything implemented in my Rails Online Shop application.

### Mockups
<img src='./mockup.jpg' alt="mock ups" width="700" height="600">

### Schema
<img src='./schema.png' alt="schema" width="700" height="600">

### User Stories
* A user can register, sign in, and sign out. :heavy_check_mark:
  * User profile will contain Name, Age, and an array containing shopping cart items.
* A user will receive email confirmation upon signing up. :heavy_check_mark:
* A user can see a list of available items. :heavy_check_mark:
* A user can click on individual items to see more information. :heavy_check_mark:
* A user can add items to shopping cart from show page.
* A user can only be given Admin status from another Admin.
* Admin users can modify inventory through a special page available only to Admin users. :heavy_check_mark:
  * Admin users have the ability to Create new items, Read items, Update items, and Delete items. :heavy_check_mark:
* A user can checkout items in shopping cart.
  * A successful checkout will update item quantity in stock.

### MVP Iteration 1 :heavy_check_mark:
* A user can manage products on site. :heavy_check_mark:
  * Ability to create, view, edit, and delete. :heavy_check_mark:
* A user can see a basic styled site. :heavy_check_mark:
* A user can see product placeholders. :heavy_check_mark:

### MVP Iteration 2
* Each stock item has a stock quantity and a price. :heavy_check_mark:
* Prices should be displayed in legit format $99.95 :heavy_check_mark:
* Have an admin view for inventory management located at /admin. :heavy_check_mark:
  * Username should be 'admin', and password should be 'secret'. :heavy_check_mark:
  * Have this protection so that only the admin user can modify inventory, and no one else. :heavy_check_mark:
* UX for inventory should be tabular, very functional, and designed to help the merchant move through lots of data quickly.
* UX for the shopper's view should be visual, maybe a grid of product images, should encourage spending time and slow browsing.
  *  Edit/Delete/etc. links should not be visible to a regular user. :heavy_check_mark:
* Have a responsive layout and make it mobile friendly.
* Include flash error messages :heavy_check_mark:
* Include flash success messages

### MVP Iteration 3
* User registration / login. :heavy_check_mark:
  * At least one admin user. :heavy_check_mark:
* Products should have categories. :heavy_check_mark:
  * A product can have many categories. :heavy_check_mark:
  * A category can have many products. :heavy_check_mark:
  * On homepage include link that shows all categories. :heavy_check_mark:
    * When a specific category is clicked, show all items that fall under that category. :heavy_check_mark:
  * Product show page should show what categories it belongs to.
* Have tests for all features up to this point
* Have a session based authentication / authorization. :heavy_check_mark:
* Build an ActionMailer adapter that will send a welcome email when the user signs up. :heavy_check_mark:

### MVP Integration 4
* Each product will have an 'Add to Cart' button
  * This will load a view through AJAX that shows the shopping cart for that user
* Users can remove items from the cart.
* Users can change the quantity of items they want, as long as it doesn't exceed the current stock quantity.
* Calculate total price of all items in shopping cart the moment cart is updated in any way.
* A successful checkout will:
  * Reduce existing item stock quantity accordingly.
  * Send user email detailing purchase.
  * Redirect user to thank you page that indicates purchase details.
* Items out of stock will be indicated as such on item page and have their 'Add to cart' button greyed out.
* Maintain an "order history" page for each user, where you can see previous order (date of purchase & total spent)
* Tests
