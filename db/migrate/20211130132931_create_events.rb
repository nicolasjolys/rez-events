class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.text :public_description
      t.string :district
      t.string :address
      t.string :category
      t.datetime :start_at
      t.datetime :end_at
      t.string :organization_name
      t.string :contact_first_name
      t.string :contact_last_name
      t.string :contact_email
      t.string :contact_phone_number
      t.string :required_safety_level
      t.boolean :equipment_requested
      t.text :requested_equipment_description
      t.text :general_comment
      t.text :pricing_description
      t.string :status
      t.datetime :declined_at
      t.text :declined_explanation
      t.datetime :accepted_at
      t.text :accepted_comment

      t.timestamps
    end
  end
end
