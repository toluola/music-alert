# README

# Music Alert

## Description

The Music Alert app makes use of spotify public API to send email notification to subscribed artist when they made a new album release.
User will be able to do the following:
- Search for their favourite artist
- subscribe to the Artist
- email will be sent to them when the artist releases a new album

## Technologies used
- Rails version 6.1.7.3
- Ruby version 3.0.0
- Docker
- Spotify API
- Whenever Gem for cron jobs
- rspotify Gem to interact with spotify API

## Development setup

Git clone `https://gitlab.com/doublegdp/app.git` then change directory to the project directory.

We made use of spotify public API, so you need to create an account on spotify to get you ID and SECRET
follow this [Spotify setup](https://developer.spotify.com/documentation/web-api/tutorials/getting-started#request-an-access-token) to set up an account

Create and a `.env` at the root of the app. Follow the guildlines in `.sample.env`

Requires Docker and docker-compose to be installed

- `docker-compose build`
- `docker-compose run web rails db:create db:schema:load`
- `docker-compose run --rm webpacker yarn install --check-files`
- `docker-compose up`











