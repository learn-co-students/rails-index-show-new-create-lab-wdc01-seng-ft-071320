require 'faker'
Coupon.destroy_all

10.times do 
    Coupon.create(coupon_code: Faker::Code.nric, store: Faker::Company.name)
end