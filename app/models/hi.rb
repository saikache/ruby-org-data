class Hi < ApplicationRecord

def r
    
end

def self.h
byebug

url = "https://rubygems.org/search?"
a_to_z = ('a'..'z').to_a


croller = Mechanize.new
a = croller.get('https://rubygems.org/search?page=1&query=a')
parse_url = "https://rubygems.org/search?page=1&query=a"

# a = a.get('https://rubygems.org/search?page=1&query=a')

gem_list = croller.get(parse_url).search("a.gems__gem")
gem_count = croller.get('https://rubygems.org/search?page=1&query=a').search("a.gems__gem").length

if gem_count

    gem_list.each do |gem|
        puts name_with_version = ActionView::Base.full_sanitizer.sanitize(gem.search("h2.gems__gem__name").to_s)
        desc = ActionView::Base.full_sanitizer.sanitize(gem.search(("p.gems__gem__desc")).to_s)
        count = ActionView::Base.full_sanitizer.sanitize(gem.search(("p.gems__gem__downloads__count")).to_s)
    end

else



end




cc[0].search("h2.gems__gem__name").to_s  # name with version

cc[0].search("p.gems__gem__desc").to_s   # description


cc[0].search("p.gems__gem__downloads__count").to_s.split(',').length > 1

cc[0].search("p.gems__gem__downloads__count").to_s  # Downloads count




end

def self.page(n)
    "page="+n.to_s
end

def self.term(t)
    "query="+ t
end

end
