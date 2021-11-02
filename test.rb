require 'bundler'

contents = Bundler.read_file('./Gemfile.supermarket')
locked = Bundler::LockfileParser.new(contents)
specs ||= locked.specs.each_with_object({}) { |spec, hash| hash[spec.name] = spec }

puts specs['railties']
