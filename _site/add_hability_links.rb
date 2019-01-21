#! /Users/rudiney/.rbenv/shims/ruby

path = "guias/dazaralor/jayna.html"
file_path = File.expand_path("../#{path}", __FILE__)

raise "File '#{file_path}' not found" unless File.exists?(file_path)

HABILITIES = {
  1 => "https://pt.wowhead.com/spell=285212/toque-congelante",
  2 => "https://pt.wowhead.com/spell=287490/totalmente-congelado",
  3 => "https://pt.wowhead.com/spell=285253/estilhaço-de-gelo",
  4 => "https://pt.wowhead.com/spell=287565/avalanche",
  5 => "https://pt.wowhead.com/spell=287626/garras-gélidas",
  6 => "https://pt.wowhead.com/spell=285177/impacto-congelante",
  7 => "https://pt.wowhead.com/spell=285177/impacto-congelante",
  8 => "https://pt.wowhead.com/spell=285459/anel-de-gelo",
  9 => "https://pt.wowhead.com/spell=287365/piche-calcinante",
  10 => "https://pt.wowhead.com/spell=285828/bombardeio",
  11 => "https://pt.wowhead.com/npc=148965/fuzileiro-kultireno",
  12 => "https://pt.wowhead.com/spell=285725/fixar-carga",
  13 => "https://pt.wowhead.com/spell=289861/ventos-uivantes",
  14 => "https://pt.wowhead.com/spell=288325/estilhaços-glaciais",
  15 => "https://pt.wowhead.com/spell=288534/tornado-pustulento",
  16 => "https://pt.wowhead.com/spell=288671/lança-estilhaçante",
  17 => "https://pt.wowhead.com/spell=289940/poeira-cristalina",
  18 => "https://pt.wowhead.com/spell=288747/imagem-prismática",
  19 => "https://pt.wowhead.com/spell=287925/distorção-temporal",
  20 => "https://pt.wowhead.com/spell=290084/salva-de-setas-dágua",
  50 => "https://pt.wowhead.com/spell=288380/impacto-quebra-cerco",
  51 => "https://pt.wowhead.com/spell=288221/explos%C3%A3o-ardente",
  52 => "https://pt.wowhead.com/spell=288219/gelo-refrativo",
  53 => "https://pt.wowhead.com/spell=288218/fogo-de-bordo",
  54 => "https://pt.wowhead.com/spell=288412/m%C3%A3o-g%C3%A9lida",
  55 => "https://pt.wowhead.com/spell=288345/raio-glacial ",
  56 => "https://pt.wowhead.com/spell=288475/precipita%C3%A7%C3%A3o-de-gelo ",
  57 => "https://pt.wowhead.com/spell=288719/congelamento-instant%C3%A2neo",
  58 => "https://pt.wowhead.com/npc=149558/elemental-da-mar%C3%A9-de-jaina",
  59 => "https://pt.wowhead.com/spell=289220/cora%C3%A7%C3%A3o-de-gelo",
  60 => "https://www.wowhead.com/spell=289219/frost-nova",
  61 => "https://pt.wowhead.com/spell=289985/salva-arcana",
}

content = File.read(file_path)

HABILITIES.each do |id, url|
  link = "<a href=\"#{url}\"></a>"
  content = content.gsub(/\(#{id}\)/, link)
end

File.open(file_path, "w") { |file| file.puts content }

puts "DONE!"
