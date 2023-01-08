

# Clothing web commerce site

Site: https://samikuikka.github.io/project2/#/ [or from this link](https://samikuikka.github.io/project2/#/)
This is an web e-commerce site for selling clothes. I'll briefly describe all the views of the website:


Homescreen '/':

In homescreen user sees categories of the clothes and can click them to go to category page.
Below that user can also see products of the site and by clicking product get to the product page.
Products shown in row changes when screen width changes and category navigation has three breakpoints.


Category screen '/category/:categoryname':

Simple screen for showing all the products of the category.


Product screen '/product/:productId':

Show the product information to the user.


Settings screen '/settings':

Can be navigated from the appbar by pressing user icon.
User can save name, address and credit card information to the local storage from this screen.


Shopping cart screen '/cart':

User can navigate to this screen from pressing shopping cart icon in appbar.
This screen show user's products added to cart (done in product screen).


Checkout screen '/checkout':

Can be navigated from the shopping cart screen by pressing "go to checkout" button. This screen let's user choose payment method


Complete screen:

Show user bought items after user completes order in the checkout screen.

## other

User can also navigate by using search icon which open textfield that gives suggestions of different routes, e.g. typing blue gives "Blue shoes" suggestion which routes to that products product page.



