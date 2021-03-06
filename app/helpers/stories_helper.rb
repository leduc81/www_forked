module StoriesHelper
  def enriched_stories(stories)
    stories.each do |story|
      story["alumni"]["cloudinary_url"] = cloudinary_url(story["alumni"]["photo_path"], width: 45, height: 45, crop: :fill)
      story["alumni"]["cloudinary_url_2x"] = cloudinary_url(story["alumni"]["photo_path"], width: 90, height: 90, crop: :fill)
    end
  end
end
