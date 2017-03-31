# About

My approach on the backend was much more ambitious than project two or three
but unfortunately I wasn't able to accomplish everything I wanted to.

I have 3 CRUDable resources; users, blogs, and comments. I also altered the
altered the blogs controller so users who are logged in can view blogs and
comments but not create either. I also have two other resources, records and
shopping cart that aren't connectyed to anything but can be configured at a
later date.

I wanted to add the third party API, Stripe, to create an e-commerce site but I
was not able to figure that out in time. I also attempted to implement cookies
on the backend but was not able to configure the backend properly in order to
do so.

If I were to attempt this project again I would probably either pick doing blogs
and comments or just focusing on the Stripe API, since I've never implemented
a third party API before. I would also plan better because I spend much too much
time reading documentation for things I didn't have the opportunity to implement.

## Installation & Dependencies

1.  Fork and clone this repository.
1.  Install dependencies with `npm install`.
1.  Set a SECRET_KEY in the environment.
1.  Run the API server with `nodemon`.

For development and testing, set the SECRET_KEY from the root of your
 repository using

```sh
echo SECRET_KEY=$(/usr/local/opt/openssl/bin/openssl rand -base64 66 | tr -d '\n') >>.env
```

In order to make requests from your deployed client application, you will need
to set `CLIENT_ORIGIN` in the environment (e.g. `heroku config:set
CLIENT_ORIGIN=https://<github-username>.github.io`).

- bundle install

## API End-Points

| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| POST   | `/sign-up`             | `users#signup`    |
| POST   | `/sign-in`             | `users#signin`    |
| PATCH  | `/change-password/:id` | `users#changepw`  |
| DELETE | `/sign-out/:id`        | `users#signout`   |
| GET    | `/blogs`               | `blogs#index`     |
| POST   | `/blogs`               | `blogs#create`    |
| PATCH  | `/blogs`               | `blogs#update`    |
| DELETE | `/blogs/:id`           | `blogs#destroy`   |
| GET    | `/comments`            | `comments#index`  |
| POST   | `/comments`            | `comments#create` |
| DELETE | `/comments/:id`        | `comments#destroy`|
| GET    | `/blogs/:blog_id/comments` | `comments#destroy` |


# Technologies Used

- AJAX, JavaScript, jQuery, Ruby, Ruby on Rails, Handlebars, Bootstrap, HTML, CSS

# Entity Relationship Diagram

- [ERD](http://imgur.com/a/hBUcj)

# Links

- [Frontend GitHub Repository](https://github.com/SquirtleSquad1988/moody-lords-front-end)
- [Backend Deployed URL](https://gentle-woodland-20573.herokuapp.com/)
- [Frontend Deployed URL](https://squirtlesquad1988.github.io//moody-lords-front-end/)
