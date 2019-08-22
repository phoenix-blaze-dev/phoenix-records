class ArtistsController < ApplicationController

  def index
    @artists = Artist.order('created_at DESC').with_attached_avatar

    # render json: @artists.to_json(include: { avatar_attachment: { include: :blob } })
  end

  def new
  end

  def create
    # render plain: params[:artist].inspect
    @artist = Artist.new artist_params
    # @artist.avatar.attach(params[:avatar])
    @artist.save
  end

  def artist_params
    params.require(:artist).permit(:name, :discogsid, :avatar)
  end
end
