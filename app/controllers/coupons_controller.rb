class CouponsController < ApplicationController
    before_action :find_coupon, only: [:show, :edit, :update]
    
    def index
        @coupons = Coupon.all
    end

    def show
    end

    def new
        @coupon = Coupon.new
    end

    def create 
        @coupon = Coupon.create(coupon_params)
        redirect_to coupon_path(@coupon)
    end

    def edit
    end

    def update
        @coupon.update(coupon_params)
        redirect_to coupon_path(@coupon)
    end

    private

    def coupon_params
        params.require(:coupon).permit(:coupon_code, :store)
    end

    def find_coupon
        @coupon = Coupon.find(params[:id])
    end
end
