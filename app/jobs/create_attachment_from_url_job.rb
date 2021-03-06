class CreateAttachmentFromUrlJob < ApplicationJob
  queue_as :default

  def perform(image:,attachment_url:)
    image.set_attachment_by_url(attachment_url)
    image.save!
  end

  def max_attempts
    0
  end
end
