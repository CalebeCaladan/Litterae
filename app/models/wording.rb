class Wording < ActiveRecord::Base
  belongs_to :user
  belongs_to :category

  has_reputation :votes, source: :user, aggregated_by: :sum

  default_scope order: "created_at DESC"
  include Bootsy::Container

  validates :title, presence: true
  validates :text, presence: true
  validates :user_id, presence: true
  validates :category, presence: true
  private

  def post_params
  params.require(:post).permit(:title, :content, :bootsy_image_gallery_id)
  end
end

