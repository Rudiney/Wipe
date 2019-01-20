#! /Users/rudiney/.rbenv/shims/ruby

path = "guias/dazaralor/muralha.html"
file_path = File.expand_path("../#{path}", __FILE__)

raise "File '#{file_path}' not found" unless File.exists?(file_path)

HABILITIES = {
  1 => "https://pt.wowhead.com/npc=146253/irmão-josé",
  2 => "https://pt.wowhead.com/npc=146251/irmã-katherine",
  3 => "https://pt.wowhead.com/spell=284316/salva-das-marés",
  4 => "https://pt.wowhead.com/spell=284360/procela",
  5 => "https://pt.wowhead.com/spell=284383/tentação-do-mar",
  6 => "https://pt.wowhead.com/npc=146436/sirena-tentadora",
  7 => "https://pt.wowhead.com/spell=284405/canção-mesmerizante",
  8 => "https://pt.wowhead.com/spell=286558/mortalha-marítima",
  9 => "https://pt.wowhead.com/spell=287887/potencialização-da-tempestade",
  10 => "https://pt.wowhead.com/spell=284760/maré-catastrófica",
  11 => "https://pt.wowhead.com/spell=287169/salva-elétrica",
  12 => "https://pt.wowhead.com/spell=284106/raio-estalante",
  13 => "https://pt.wowhead.com/spell=284120/ribombo-troante",
  14 => "https://pt.wowhead.com/spell=284262/fulgor-voltaico",
  15 => "https://pt.wowhead.com/spell=287995/mortalha-elétrica",
  16 => "https://pt.wowhead.com/spell=290437/aproximação-de-ataque",
  17 => "https://pt.wowhead.com/spell=284997/punhos-cobertos-de-algas",
  18 => "https://pt.wowhead.com/npc=146756/tempestade-energizada",
  19 => "https://pt.wowhead.com/spell=288258/ondulação-marítima",
  20 => "https://pt.wowhead.com/spell=285350/uivo-da-tempestade",
  21 => "https://pt.wowhead.com/spell=285342/rastro-energizante",
  22 => "https://pt.wowhead.com/spell=285017/ira-das-profundezas",
  23 => "https://pt.wowhead.com/spell=284393/deslocar",
  24 => "https://pt.wowhead.com/npc=146938/resto-energizado",
  25 => "https://pt.wowhead.com/spell=285420/energia-livre",
}

content = File.read(file_path)

HABILITIES.each do |id, url|
  link = "<a href=\"#{url}\"></a>"
  content = content.gsub(/\(#{id}\)/, link)
end

File.open(file_path, "w") { |file| file.puts content }

puts "DONE!"
