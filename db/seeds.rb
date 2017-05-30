# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




agent.get 'https://rubygems.org/search?page=1&query=a'

'search?query=a&page=2'

# page  = agent.get 'https://rubygems.org/search?utf8=%E2%9C%93&query=concurrent'
<a class="gems__gem" href="/gems/is_a">
  <span class="gems__gem__info">
    <h2 class="gems__gem__name">
      is_a
      <span class="gems__gem__version">0.1.5</span>
    </h2>
    <p class="gems__gem__desc t-text">Fear weak references to BasicObject no more</p>
  </span>
  <p class="gems__gem__downloads__count">
    13,492
    <span class="gems__gem__downloads__heading">
      Downloads
    </span>
  </p>
</a>

agent = Mechanize.new
a = agent.get('https://rubygems.org/search?page=1&query=a')

cc = a.search("a.gems__gem")

cc[0].search("h2.gems__gem__name").to_s  # name

cc[0].search("p.gems__gem__desc").to_s   # description


cc[0].search("p.gems__gem__downloads__count").to_s.split(',').length > 1

cc[0].search("p.gems__gem__downloads__count").to_s  # Downloads count