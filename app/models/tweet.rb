class Tweet < ActiveRecord::Base
  attr_accessible :content, :created

  def self.get_latest
    tweets = Twitter.user_timeline

    tweets.each do |tweet|
      created = tweet.created_at.to_datetime

      unless Tweet.exists?(created: created)
        Tweet.create({:content => tweet.text, :created => created })
      end

    end

  end

end
