# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#create a survey admin
User.create(first_name: "Vikas", last_name: "Kumar", email: "vikas@gmail.com", password: "L@mb0rg1n1", user_role: 1, token: "pX27zsMN2ViQKta1bGfLmVJE")

#create some survey takers
User.create(first_name: "Pavan", last_name: "Kumar", email: "pavan@gmail.com", password: "$C3nt@ur$", user_role: 0, token: "07906c47276da7c016c8b8g3")
User.create(first_name: "Ganga", last_name: "Prasad", email: "ganga.prasad@gmail.com", password: "$P@$$w0rd$", user_role: 0, token: "056ac229458bb367e739eb7f")

#create some surveys
Survey.create(title: "Survey on the recent fuel prices", status: 0)
Survey.create(title: "Survey on SC declaring section 377 unconstitutional", status: 0)
Survey.create(title: "Survey on Bangalore Traffic", status: 0)

#create a question for each surveys
Question.create(title: "What is your take on recent fuel prices?", survey_id: 1)
Question.create(title: "What is your take on SC declaring section 377 unconstitutional?", survey_id: 2)
Question.create(title: "What is your take on Bangalore Traffic?", survey_id: 3)

#create survey responses
SurveyResponse.create(feedback: "Good Survey", rating: 0, survey_id: 1, feedback_given_by: "Pavan")
SurveyResponse.create(feedback: "Great Survey", rating: 0, survey_id: 2, feedback_given_by: "Vasu")
SurveyResponse.create(feedback: "Excellent Survey", rating: 0, survey_id: 3, feedback_given_by: "Ganga")