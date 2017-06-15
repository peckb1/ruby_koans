#!/usr/bin/env ruby
# -*- ruby -*-

require 'rake/clean'

SRC_DIR = 'src'

task :default => :test

task :test do
  Dir.chdir(SRC_DIR.to_s) do
    ruby 'path_to_enlightenment.rb'
  end
end

