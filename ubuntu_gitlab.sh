sudo apt-get install python-dev python-pip
sudo pip install pygments
sudo gem install bundler
git clone -b stable git://github.com/MrMaksimize/gitlabhq.git
cd gitlabhq
bundle install --without development test
bundle exec rake db:setup RAILS_ENV=production
bundle exec rake db:seed_fu RAILS_ENV=production
