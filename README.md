# Nicks Blog
## Getting Started

#### Installation
https://github.com/napicciuto


### Set up the db
    $ bundle install
    $ bundle exec rake db:setup
    $ bundle exec rake db:migrate
    $ bundle exec rake blog:loader
    


#### Instruction 

Welcome to my open source blog site, an easy way to create your own blog. After installing the code and seeding the database with the instructions above, the first thing we can do is log in to the admin area and look around. 

##### CMS:
Add ‘/admin’ to the end of your URL to access the admin area, and use ‘nick@dmgx.com’ as your username and ‘password’ as your password to log in. I used the Active Admin gem for my backend. You will first come to a dashboard that will display the last 5 authors that signed up and the last 5 posts that were created. At the top you will have a navigation with two items ‘Admin Users’ where you can manage admin users with CRUD, also a “Blog Tool” pull down where you can manage the Categories, Authors, Posts, and Comments pretty much in that order. A post will require an existing Category and Author, and a Comment will require a post. This area’s purpose is the edit and delete, but you do have completed access to create post and assign them to authors.

##### Blog:
An author can sign in or register at the top. I used the gem Devise to help me with authentication.  Authors can also be created in the CMS as well. Once an author is signed in they can add a post at the bottom of the different category pages. If there is no post in a category it will ask you to be the first to post. If the user is not an author or is not signed in, they can leave still leave comments on the post pages. 

On the front page there are 3 large images with a category name under them that will be displayed at random. This is controlled in the categories tab in the CMS. By checking the box favorite when creating or updating a category.

##### Feed:
There are APIs what will generate xml feeds for the following.
Authors - http://localhost:3000/api/authors
Posts - http://localhost:3000/api/posts
Categories -  http://localhost:3000/api/categories
Whole blog - http://localhost:3000/api/blog_feed


##### Slide on front page:
I am not sure where I am going with that yet.



