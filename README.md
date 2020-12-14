
[![Build Status](https://travis-ci.com/Oxalisviolacea/viewing_party.svg?branch=main)](https://travis-ci.com/Oxalisviolacea/viewing_party)
# Viewing Party

### About this Project
Viewing party is an application in which users can explore movie options and create a viewing party event for the user and friend's. You can check out our site [here](https://friends-viewing-party.herokuapp.com)!  
<img src="https://github.com/Oxalisviolacea/viewing_party/blob/main/images/Viewing%20Party%20Gif.gif" width="550" height="450">
## Contributors
- Hanna Davis  
   [Github](https://github.com/Oxalisviolacea) | [LinkedIn](https://www.linkedin.com/in/hanna-davis/)
- Philip DeFraties  
    [Github](https://github.com/philipdefraties) | [LinkedIn](https://www.linkedin.com/in/philip-defraties-4232681b6/)
- Greg Mitchell  
   [Github](https://github.com/GregJMitchell) | [LinkedIn](https://www.linkedin.com/in/gregory-j-mitchell/)

## Schema
<img src="https://github.com/Oxalisviolacea/viewing_party/blob/main/images/Viewing%20Party%20Schema.jpg" width="450" height="350">  

## Built With
- Ruby on Rails
- JQuery  

## Important Gems(Libraries):
* [rspec-rails](https://github.com/rspec/rspec-rails)
* [capybara](https://github.com/teamcapybara/capybara)
* [shoulda-matchers](https://github.com/thoughtbot/shoulda-matchers)
* [faraday](https://github.com/lostisland/faraday)
* [webmock](https://github.com/bblimke/webmock)
* [vcr](https://github.com/vcr/vcr)
* [figaro](https://github.com/laserlemon/figaro)
* [travis](https://docs.travis-ci.com/user/languages/ruby/)
* [rubocop-rails](https://github.com/rubocop-hq/rubocop-rails)
* [bcrypt](https://github.com/codahale/bcrypt-ruby)
* [factory_bot_rails](https://github.com/thoughtbot/factory_bot_rails)
* [faker](https://github.com/faker-ruby/faker)
* [simplecov](https://github.com/simplecov-ruby/simplecov)

## Getting Started
1. Get an api key from [The Movie Database API](https://developers.themoviedb.org/3/getting-started/authentication)
1. Fork and clone the repo
2. Install any missing gems from gem file
3. Install gem packages with `$ rails db:{create,migrate,seed}`
5. In config/application.ymal paste:
`MOVIEDB_API_KEY: "<YOUR API KEY>"`
Replace <YOUR API KEY> with the key you obtained from The Movie Database API.
6. From your terminal run `$ rails s` and navigate to http://localhost:3000/ in your browser to navigate the app

## Testing
* RSpec and Capybara were used for unit and integration testing and project development adhered to TDD principles.
* Travis-CI was used for continuous integration ensuring any changes pushed to the main branch did not break any previously implemented tests.
* Simplecov was used to track total test coverage and as of 12/10/2020 shows 100% coverage.
* Webmock and VCR gems were used to stub out API calls in the test suite. When running RSpec for the first time real responses from the Movie Database API will be recorded as 'cassettes' and kept as .yml files in the 'spec/fixtures' directory. The cassettes are set to expire 7 days from creation and will re-record when RSpec is run again after that 7 day period.
* To run our test suite, RSpec, enter `$ bundle exec rspec` in the terminal. (All 98 tests should be passing).
* To see a coverage report enter `$ open coverage/index.html`

## Future Changes
1. Full CRUD functionality for users, parties, friendships, party_guests.
2. Add friends to existing parties, organize parties on dashboard by upcoming/past.
3. Friend request system: friendships only created once request accepted
4. Utilize Actionmailer to send viewing party event details to users.
5. Implement Chat functionality with ActionCable
6. Deploy to a different service other than Heroku

## Additonal References
- [Base Respository](https://backend.turing.io/module3/projects/viewing_party) used for Turing's Backend Module 3.
- [Wire Frames](https://backend.turing.io/module3/projects/viewing_party/wireframes)
- [API Documentation](https://developers.themoviedb.org/3/getting-started/authentication)
