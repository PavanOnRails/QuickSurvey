class CreateSurveyResponses < ActiveRecord::Migration[5.1]
  def change
    create_table :survey_responses do |t|
      t.text :feedback
      t.integer :survey_id
      t.string :feedback_given_by
      t.integer :rating

      t.timestamps
    end
  end
end
