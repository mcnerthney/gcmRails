Google Cloud Message - Android push notifications test server 

A development server is currently running at http://54.245.14.198:3000

To initialize and run the server:
    $ git clone https://github.com/mcnerthney/gcmRails.git
    $ cd gcmRails
    $ bundle install
    $ bundle exec rake db:migrate
    $ rails s

Use the Android companiion project https://github.com/mcnerthney/gcmAndroid to phones and receive notifications.


