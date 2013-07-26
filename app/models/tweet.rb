class Tweet < ActiveRecord::Base
  attr_accessible :content, :created, :id_str, :profile_image_url

  def self.get_latest
    tweets = Twitter.user_timeline

    tweets.each do |tweet|
      created = tweet.created_at.to_datetime

      unless Tweet.exists?(id_str: tweet.id.to_s)
        Tweet.create({content: tweet.text, created: created, id_str: tweet.id.to_s, profile_image_url: tweet.profile_image_url })
      end

    end

  end

end
