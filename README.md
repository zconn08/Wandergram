# Wandergram

[heroku]: http://www.wandergram.io/

## Minimum Viable Product
Wandergram is a photo sharing app for travelers that allows users to display beautiful photos of their journeys around the world. It is a map-focused version of Instagram built on Rails and Backbone.

Home Screen:

Take a Tour:

![hovering]


Users can:

<!-- This is a Markdown checklist. Use it to keep track of your progress! -->

- [X] Create accounts
- [X] Create sessions (log in)
- [X] Follow other users
- [X] View a feed of subscribed posts
- [X] View a profile
- [X] Like posts
- [X] Comment on posts
- [X] View posts in detail from user page
- [X] Like posts from user page
- [X] Comment on posts from user page
- [X] Create posts / Upload images
- [X] Read notifications
- [X] Add filters to images
- [X] Edit their profile
- [X] Tag locations of their pictures
- [X] Have a map with all pictures with tagged locations
- [X] Have profile pictures
- [X] Be introduced to features on site

## Design Docs
* [DB schema][schema]
* [Wireframes][views]

[schema]: ./docs/schema.md
[views]: ./docs/wireframes

## Implementation Timeline

### Phase 1: User Authentication, Feed Creation (~2 days)
I will allow users to sign up and sign in. Additionally I will create the home page (feed) that has a nav bar, and posts. I'll start by adding a `feed` route to serve a list of posts ordered chronologically. On the Backbone side, I'll make a `Post Index` view whose `posts` collection fetches from the new route.


### Phase 2: Viewing Profiles (~2 days)
I will add API routes to serve post data as JSON, then add Backbone models and collections that fetch data from those routes. By the end of this phase, users will be able to view profiles with posts, all inside a single Backbone app. Additionally, I will add the ability to follow from here.


### Phase 3: Liking and Commenting on Posts (~1 days)
I will add liking and commenting ability at this stage. Users will be able to like/comment from both the feed and the profile page.


### Phase 4: Create Posts (~1-2 days)
I also plan to integrate Cloudinary for file upload so
users can upload images. Users should be able to add filters and captions to images. Users will be forced to select a location to integrate with the map.


### Phase 5: Mapping Capability (~2 days)
Users should be able to tag locations of their posts. Additionally users should be able to see a map of all posts with pins at locations. I will take advantage of the Google Maps and Google Places API. I will implement interaction between posts (e.g., hovering) and the map. This will be implemented as view in both the feed and user profile page.


### Phase 6: Additional Details (~3 days)
Add the ability for users to edit their profiles and upload profile pictures. Additionally, add notifications. Add a disable panning button. Finally, add the functionality of a site walkthrough.


### Bonus Features (TBD)
- [ ] Add image cropping
- [ ] Add user index page
- [ ] Create hashtags / tag posts
- [ ] Be able to tag users you are with
- [ ] Search for users by username
- [ ] Search for posts by tag
- [ ] Additional Post types (video posts etc...)
- [ ] Typeahead search bar
- [ ] Multiple sessions/session management

[hovering]: ./app/assets/images/hovering.gif
