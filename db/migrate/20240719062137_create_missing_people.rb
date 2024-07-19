class CreateMissingPeople < ActiveRecord::Migration[7.1]
  def change
    create_table :missing_people do |t|
      t.string :name
      t.integer :age
      t.string :last_seen_at
      t.string :last_seen_on
      t.string :datetime
      t.text :description
      t.string :found_at
      t.string :string
      t.text :found_description
      t.integer :contact_person
      t.integer :status, default: 0
      t.timestamps
    end
  end
end
