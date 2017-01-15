# rails-online-shop README

This README file will document everything implemented in my Rails Online Shop application.

### Mockups
<img src='./mockup.jpg' alt="mock ups" width="700" height="600">

### Schema
<img src='./schema.png' alt="schema" width="700" height="600">

### User Stories
* A user can register, sign in, and sign out.
  * User profile will contain Name, Age, and an array containing shopping cart items.
* A user will receive email confirmation upon signing up.
* A user can see a list of available items.
* A user can click on individual items to see more information.
* A user can add items to shopping cart from show page.
* A user can only be given Admin status from another Admin.
* Admin users can modify inventory through a special page available only to Admin users. 
  * Admin users have the ability to Create new items, Read items, Update items, and Delete items.
* A user can checkout items in shopping cart.
  * A successful checkout will update item quantity in stock.

### MVP Iteration 1
* A user can manage products on site. :heavy_check_mark:
  * Ability to create, view, edit, and delete. :heavy_check_mark:
* A user can see a basic styled site.
* A user can see product placeholders. 

### MVP Iteration 2
* Each stock item has a stock quantity and a price. :heavy_check_mark:
* Prices should be displayed in legit format $99.95
* Have an admin view for inventory management located at /admin.
  * Use http_basic_authenticate_with_name.
  * Username should be 'admin', and password should be 'secret'.
  * Have this protection so that only the admin user can modify inventory, and no one else.
* UX for inventory should be tabular, very functional, and designed to help the merchant move through lots of data quickly.
* UX for the shopper's view should be visual, maybe a grid of product images, should encourage spending time and slow browsing.
  *  Edit/Delete/etc. links should not be visible to a regular user.
* Have a responsive layout and make it mobile friendly.
* Include flash error and success messages