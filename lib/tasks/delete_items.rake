#!/usr/bin/env rake

namespace :cleanup do 
  task delete_items: :environment do
    if Item.where("created_at <= ?", Time.now - 7.days).destroy_all
      puts "Destroyed all items."
    end
  end
end