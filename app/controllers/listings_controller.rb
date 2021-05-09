class ListingsController < ApplicationController

    # user_listings GET    /users/:user_id/listings(.:format)     listings#index
    def index
        # @listings = Listing.where(creator_id:params[:user_id])          # this query also works
        @user = User.find(params[:user_id])
        @listings = @user.listings
        render :index
    end
    
    # new_user_listing GET    /users/:user_id/listings/new(.:format) listings#new
    def new
        # show an HTML form to create a new listing
        @listing = Listing.new
        render :new
    end

    # POST   /listings
    def create
        @listing = Listing.new(listing_params)
        if @listing.save                            # if successfully saves
            redirect_to listing_url(@listing)           # redirect to newly created listing page
        else                                        # else
            render :new                                 # render template for creating a new listing (cannot redirect to new action because of instance variable)
        end
    end

    # listing GET    /listings/:id(.:format)                listings#show
    def show
        @listing = Listing.find(params[:id])
        render :show
    end

    # edit_listing GET    /listings/:id/edit(.:format)           listings#edit
    def edit
        @listing = Listing.find(params[:id])
        render :edit
    end

    # PATCH  /listings/:id(.:format)                listings#update
    def update
        @listing = Listing.find(params[:id])
        if @listing.update(listing_params)                              # if successfully updates
            redirect_to listing_url(@listing)                               # redirect to newly updated listing page
        else                                                            # else
            render :edit                                                    # render template for editing an existing listing
            # render json: @listing.errors.full_messages, status: 422         # render error message
        end
    end

    # DELETE /listings/:id
    def destroy
        @listing = Listing.find(params[:id])
        @listing.destroy
        redirect_to user_listings_url(@listing.creator)
    end




    # GET    /listings/main_page
    def main_page
        @listings = Listing.all
        render :main_page
    end


    private

    def listing_params
        params.require(:listing).permit(:title, :description, :product, :location, :length, :creator_id, :available_from, :available_until)
        # permit :creator_id ??????????????????
    end

end