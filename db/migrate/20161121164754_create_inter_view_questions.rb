class CreateInterViewQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :inter_view_questions do |t|
      t.string :question
      t.text :answer

      t.timestamps
    end
  end
end
