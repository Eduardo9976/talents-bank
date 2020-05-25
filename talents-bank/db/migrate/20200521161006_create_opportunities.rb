class CreateOpportunities < ActiveRecord::Migration[6.0]
  def change
    create_table :opportunities do |t|
      t.string :title
      t.string :description
      t.string :skills
      t.string :salary
      t.string :level
      t.string :region
      t.date :end_date
      t.string :code

      t.timestamps
    end
  end
end
