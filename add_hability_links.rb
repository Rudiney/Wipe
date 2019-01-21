#! /Users/rudiney/.rbenv/shims/ruby

path = "guias/dazaralor/opulencia.html"
file_path = File.expand_path("../#{path}", __FILE__)

raise "File '#{file_path}' not found" unless File.exists?(file_path)

HABILITIES = {
  1 => "https://pt.wowhead.com/spell=285479/jato-flamejante",
  2 => "https://pt.wowhead.com/spell=284081/feixe-de-rubi",
  3 => "https://pt.wowhead.com/spell=284493/toxina-do-pulso-rápido",
  4 => "https://pt.wowhead.com/spell=284470/maldição-da-letargia",
  5 => "https://pt.wowhead.com/npc=145274/baluarte-de-yalat",
  6 => "https://pt.wowhead.com/npc=145273/a-mão-de-inzashi",
  7 => "https://pt.wowhead.com/spell=283604/esmagar",
  8 => "https://pt.wowhead.com/spell=282939/chamas-da-punição",
  9 => "https://pt.wowhead.com/spell=283507/carga-volátil",
  10 => "https://pt.wowhead.com/spell=284527/diamante-do-protetor-inabalável",
  11 => "https://pt.wowhead.com/spell=284558/ametista-do-rei-das-sombras",
  12 => "https://pt.wowhead.com/spell=284567/safira-do-vento-favorável",
  13 => "https://pt.wowhead.com/spell=284611/rubi-do-animus-concentrado",
  14 => "https://pt.wowhead.com/spell=284645/topázio-do-sol-resplandecente",
  15 => "https://pt.wowhead.com/spell=284814/esmeralda-das-raízes-terranas",
  16 => "https://pt.wowhead.com/spell=284881/opala-da-raiva-incontida",
  17 => "https://pt.wowhead.com/spell=287072/ouro-líquido",
  18 => "https://pt.wowhead.com/spell=284941/lamúria-da-ganância",
  19 => "https://pt.wowhead.com/spell=285995/espíritos-do-ouro",
  20 => "https://pt.wowhead.com/spell=286026/canalizar-ouro",
  21 => "https://pt.wowhead.com/spell=287652/sobrecarga",
  22 => "https://pt.wowhead.com/spell=287037/choque-de-moedas",
}

content = File.read(file_path)

HABILITIES.each do |id, url|
  link = "<a href=\"#{url}\"></a>"
  content = content.gsub(/\(#{id}\)/, link)
end

File.open(file_path, "w") { |file| file.puts content }

puts "DONE!"
