#! /Users/rudiney/.rbenv/shims/ruby

path = "guias/dazaralor/mekkatorque.html"
file_path = File.expand_path("../#{path}", __FILE__)

raise "File '#{file_path}' not found" unless File.exists?(file_path)

HABILITIES = {
  1 => "https://pt.wowhead.com/spell=289696/ataques-com-eletrochoque",
  2 => "https://pt.wowhead.com/spell=289699/amplificação-de-eletrochoque",
  3 => "https://pt.wowhead.com/spell=282182/canhão-devastador",
  4 => "https://pt.wowhead.com/spell=284145/propulsores-pesados",
  5 => "https://pt.wowhead.com/spell=282205/decolar",
  6 => "https://pt.wowhead.com/spell=282245/queda",
  7 => "https://pt.wowhead.com/spell=286646/descarga-de-gigavolt",
  8 => "https://pt.wowhead.com/spell=283411/impacto-de-gigavolt",
  9 => "https://pt.wowhead.com/spell=282408/pulso-centelhante",
  10 => "https://pt.wowhead.com/spell=282401/escudo-de-força-gnômico",
  11 => "https://pt.wowhead.com/spell=284219/aumentador-de-mundo",
  12 => "https://pt.wowhead.com/spell=284168/encolhido",
  13 => "https://pt.wowhead.com/spell=284214/atropelo",
  14 => "https://pt.wowhead.com/spell=286480/choque-anti-interferência",
  15 => "https://pt.wowhead.com/spell=287929/sinalização-da-ovelha-explosiva",
  16 => "https://pt.wowhead.com/spell=287877/explosão-de-bicho",
  17 => "https://pt.wowhead.com/spell=287891/estilhaços-ovinos",
  18 => "https://pt.wowhead.com/spell=286051/hiperaceleração",
  19 => "https://pt.wowhead.com/spell=287952/gerador-de-buraco-de-minhoca",
  20 => "https://pt.wowhead.com/spell=287293/dar-corda",
  21 => "https://pt.wowhead.com/spell=287297/corda-dada",
}

content = File.read(file_path)

HABILITIES.each do |id, url|
  link = "<a href=\"#{url}\"></a>"
  content = content.gsub(/\(#{id}\)/, link)
end

File.open(file_path, "w") { |file| file.puts content }

puts "DONE!"
