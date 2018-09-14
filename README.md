# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

  2.3.7

* Rails version
  
  5.16

* Steps
  
  1. Clone the project

  2. Run bundle install

  3. Run rails db:create and rails db:migrate

  4. Run rails db:seed

  5. Run rails s

* CURL commands

  1. POST: curl -v http://localhost:3000/api/v1/surveys -X "POST" -H "X-USER-TOKEN: pX27zsMN2ViQKta1bGfLmVJE" -d "title=Sample Survey&status=active"

  2. PATCH: curl -v -X PATCH -H "X-USER-TOKEN: pX27zsMN2ViQKta1bGfLmVJE" http://localhost:3000/api/v1/surveys/11 -d "title=Sample"

  3. DELETE: curl -v -X DELETE -H "X-USER-TOKEN: pX27zsMN2ViQKta1bGfLmVJE" http://localhost:3000/api/v1/surveys/10