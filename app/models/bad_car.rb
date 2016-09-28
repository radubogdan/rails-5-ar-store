class BadCar < ApplicationRecord
  store :financing_offer, accessors: [ :down_payment ], coder: JSON

  # Same scope as in Car.
  scope :financing_offer_eq, ->(field, value) do
    where(
      "bad_cars.financing_offer->>:field = :value",
      field: field,
      value: value
    )
  end
end
