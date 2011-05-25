require 'httparty'
require 'json'

namespace :senators do
  task :import => :environment do
    senators = HTTParty.get('https://gist.github.com/raw/990451/64eb3761e01c95b058e702dc30ab37a9c59839a1/gistfile1.json').parsed_response
    JSON.parse(senators).each do |s|
      Senator.create(:party => s[0], :state => s[1], :name => s[2], :twitter => s[3])
    end
  end
end