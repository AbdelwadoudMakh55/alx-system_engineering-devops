#!/usr/bin/env ruby
infos = ARGV[0].scan(/(?<=\[from:)(.*?)(?=\])/).join + ","
infos += ARGV[0].scan(/(?<=\[to:)(.*?)(?=\])/).join + ","
infos += ARGV[0].scan(/(?<=\[flags:)(.*?)(?=\])/).join
puts infos
