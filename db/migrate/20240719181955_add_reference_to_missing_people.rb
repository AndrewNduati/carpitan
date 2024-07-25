class AddReferenceToMissingPeople < ActiveRecord::Migration[7.1]
  def change
    add_reference(:missing_people, :user, foreign_key: true)
  end
end
