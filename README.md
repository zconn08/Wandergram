# Wandergram

[heroku]: http://wandergram.herokuapp.com

## Minimum Viable Product
Wandergram is a photo sharing app for travelers that allows users to display beautiful photos of their journeys around the world. It is a clone of Instagram built on Rails and Backbone. Users can:

<!-- This is a Markdown checklist. Use it to keep track of your progress! -->

- [X] Create accounts
- [X] Create sessions (log in)
- [ ] Follow other users
- [X] View a feed of subscribed posts
- [X] View a profile
- [ ] Clicking on a post on profile zooms in
- [ ] Like posts
- [X] Comment on posts
- [ ] Comment on posts from user modal
- [ ] Create posts / Upload images
- [ ] Read notifications
- [ ] Add filters to images
- [ ] Edit their profile
- [ ] Tag locations of their pictures
- [ ] Have a map with all pictures with tagged locations
- [ ] Have profile pictures
- [ ] Be introduced to features on site
- [ ] Do infinite scroll

## Design Docs
* [View Wireframes][views]
* [DB schema][schema]

[views]: ./docs/views.md
[schema]: ./docs/schema.md

## Implementation Timeline

### Phase 1: User Authentication, Feed Creation (~2 days)
I will allow users to sign up and sign in. Additionally I will create the home page (feed) that has a nav bar, and posts. I'll start by adding a `feed` route that uses the `current_user`'s `followed_users` association to serve a list of posts ordered chronologically. On the Backbone side, I'll make a `FeedShow` view whose `posts` collection fetches from the new route.


### Phase 2: Viewing Profiles (~2 days)
I will add API routes to serve post data as JSON, then add Backbone models and collections that fetch data from those routes. By the end of this phase, users will be able to view profiles with posts, all inside a single Backbone app. Additionally, I will add the ability to follow from here.


### Phase 3: Liking and Commenting on Posts (~1 days)
I will add liking and commenting ability at this stage. Users will be able to like/comment from both the feed and the profile page.


### Phase 4: Create Posts (~1-2 days)
I also plan to integrate Filepicker for file upload so
users can upload images. Users should be able to add filters to images.


### Phase 5: Mapping Capability (~2 days)
Users should be able to tag locations of their posts. Additionally users should be able to see a map of all posts with pins at locations.


### Phase 6: Additional Details (~2 days)
Add the ability for users to edit their profiles and upload profile pictures. Additionally, add notifications. Finally, add the functionality of a site walkthrough and infinite scroll.


### Bonus Features (TBD)
- [ ] Create hashtags / tag posts
- [ ] Be able to tag users you are with
- [ ] Search for users by username
- [ ] Search for posts by tag
- [ ] Additional Post types (video posts etc...)
- [ ] Typeahead search bar
- [ ] Multiple sessions/session management
