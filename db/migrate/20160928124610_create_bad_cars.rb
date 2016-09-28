class CreateBadCars < ActiveRecord::Migration[5.0]
  def change
    create_table :bad_cars do |t|
      t.jsonb :financing_offer, default: '{}'
    end
  end
end
