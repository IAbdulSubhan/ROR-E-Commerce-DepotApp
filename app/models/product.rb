class Product < ApplicationRecord
  # apply validation process if cart get deleted then its repective line items should destroy
  has_many :line_items
  has_one_attached :image
  validate :check_for_duplicate_image


  before_destroy :ensure_not_referenced_by_any_line_item

  




  # Model contains logic of form data entered validation befor submition 
  validates :title, :description, presence: true
  validates :price, numericality:{greater_than_or_equal_to: 0.01}
  validates :title, uniqueness: true
  validates :image_url, allow_blank: true, format: {
  with:
  %r{\.(gif|jpg|png|jpeg)\z}i,
  message: 'must be a URL for GIF,JPEG ,JPG or PNG image.'
  }


  private

  def check_for_duplicate_image
    return unless image.attached?

    # Check if any other product already has the same image
    if Product.joins(:image_attachment, :image_blob).where(active_storage_blobs: { checksum: image.blob.checksum }).exists?
      errors.add(:image, "has already been uploaded")
    end
  end
end
