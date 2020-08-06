class CouponsController < ApplicationController

    def index
        @coupons = Coupon.all
    end

    def show
        id = params[:id]
        @coupon = Coupon.find(id)
    end

    def new
        @coupon = Coupon.new
    end

    def create
        code = params[:coupon][:coupon_code]
        store1 = params[:coupon][:store]
        coupon = Coupon.create(coupon_code: code, store: store1)
        redirect_to coupon_path(coupon)
    end
end