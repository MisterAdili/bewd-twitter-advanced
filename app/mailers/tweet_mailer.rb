class TweetMailer < ApplicationMailer
    def notify(tweet)
        @tweet = tweet
        @user = tweet.user
        mail(to:@user.email, subject: 'Your Tweet has been successfully posted')
    end
end
