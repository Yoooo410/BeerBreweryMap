//
//  BeerStore.swift
//  BeerBreweryMap
//
//  Created by Yoshito Komiya on 2017/07/20.
//  Copyright © 2017 Yoshito Komiya. All rights reserved.
//

import Foundation
import UIKit

struct BeerStore {
    
    static func storeBeers() {
        let appDelegage = UIApplication.shared.delegate as! AppDelegate
        let viewContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        
        
        let brewery1 = Beer(context: viewContext)
        brewery1.id = 1
        brewery1.name = "33 Acres Brewing Co."
        brewery1.address = "15 W 8th Ave, Vancouver"
        brewery1.phoneNumber = "604-620-4589"
        brewery1.website = "33acresbrewing.com"
        brewery1.socialMedia = "facebook.com/33AcresBrewing"
        brewery1.logoImage = "33AcresBrewingCo"
        brewery1.detail = "Established in 2013, this is what the brewery has to say for itself: “Our vision was born out of enjoyment for the binding elements of life. The spirit of community sharing – drink, food, conversation, space and ideas. We carry a strong appreciation for the boundless limits created by hard work. We’re influenced by the natural elements of our surroundings, fueled by creative thinking, and driven to make the highest quality product.“Our space is located in Vancouver, near a synthesis of forest and the Pacific. It’s here we’ve carved out a space to foster collectivity and fine craft beer. We hold that quality product exists in solidarity with working among friends, family and community. This is an inclusive space; we value innovation in both our craft and design. Our common area was created to align these fundamentals with the simple aesthetics of our surrounding environment.”"

//        "https://www.instagram.com/33acresbrewing/"
        
        
        let brewery2 = Beer(context: viewContext)
        brewery2.id = 2
        brewery2.name = "Andina Brewing Company"
        brewery2.address = "1507 Powell St, Vancouver"
        brewery2.phoneNumber = "604-253-2400"
        brewery2.website = "andinabrewing.ca"
        brewery2.socialMedia = "facebook.com/andinabrewing"
        brewery2.logoImage = "AndinaBrewingCompany"
        brewery2.detail = "By infusing the vibrant flavours, scents, sights and sounds of South America and British Columbia, Andina Brewing Company offers Vancouver a brand new experience in the craft beer landscape.Colombian/Canadian brothers and founders, Andrés and Nicolás Amaya, are passionate about beer, music, culture, family and friends. After living in Vancouver for more than 18 years, they funnelled that passion into a brewery of their own.Andina Brewing Company will open the doors to their Powell St location this Fall with a brewery and full-service lounge, complete with South American snacks, music and atmosphere ¡Salud!"
        
        
//        https://www.instagram.com/andinabrewingco/

        
        
        let brewery3 = Beer(context: viewContext)
        brewery3.id = 3
        brewery3.name = "Big Ridge Brewing Co."
        brewery3.address = "5580 152 St, Surrey"
        brewery3.phoneNumber = "604-574-2739"
        brewery3.website = "mjg.ca/big-ridge"
        brewery3.socialMedia = "facebook.com/Big-Ridge-Brewing-Co"
        brewery3.logoImage = "BigRidgeBrewingCo"
        brewery3.detail = "Established in late 1999, Big Ridge Brewing Co. has been brewing beer solely for consumption on the premises. Each week, the finest lagers and ales are produced in a time-honored, hand-crafted tradition and served fresh. In addition to their flagship brews, the company takes pride in brewing a variety of seasonal and specialty beers. Beer is an excellent compliment to all food and their menu features a selection of comfort food and wok-prepared dishes, chosen to go with the selection of beers available."

//        https://www.instagram.com/BIGRIDGEBREWINGCO/
        
        
        //closed
//        let brewery4 = Beer(context: viewContext)
//        brewery4.id = 4
//        brewery4.name = "Be Right Back Brewing (BRB Brewing)"
//        brewery4.address = "180-14200 Entertainment Blvd, Richmond"
//        brewery4.phoneNumber = "604-271-2439"
//        brewery4.website = "brbco.ca"
//        brewery4.socialMedia = "facebook.com/brbco1997"
        
        
        let brewery5 = Beer(context: viewContext)
        brewery5.id = 5
        brewery5.name = "Big Rock Urban Brewery"
        brewery5.address = "310 West 4th Ave, Vancouver"
        brewery5.phoneNumber = "604-708-8311"
        brewery5.website = "bigrockurban.com/"
        brewery5.socialMedia = "facebook.com/BigRockUrbanYVR"
        brewery5.logoImage = "BigRockUrbanBrewery"
        brewery5.detail = "As Canada's largest independent craft brewer, Big Rock Urban Brewery has been making premium, all-natural craft beers and ciders since 1985. The company has a brewery in Alberta, as well as this one in BC and their BC brews are locally inspired and crafted using as many Lower Mainland ingredients as possible. "


        //        https://www.instagram.com/bigrockurbanyvr/
        
        
        let brewery6 = Beer(context: viewContext)
        brewery6.id = 6
        brewery6.name = "Black Kettle Brewing Company"
        brewery6.address = "720 Copping St, North Vancouver"
        brewery6.phoneNumber = "604-987-9989"
        brewery6.website = "blackkettlebrewing.com"
        brewery6.socialMedia = "facebook.com/BlackKettleBrewing"
        brewery6.logoImage = "BlackKettleBrewingCompany"
        brewery6.detail = "Black Kettle Brewing Company officially opened on Jan. 17, 2014, by us, Bryan Lockhart and Phil Vandenborre. We have settled locally into the upcoming brewing scene of North Vancouver, tucked in alongside the rail."
        
        
        let brewery8 = Beer(context: viewContext)
        brewery8.id = 8
        brewery8.name = "Bomber Brewing"
        brewery8.address = "1488 Adanac St., Vancouver "
        brewery8.phoneNumber = "604-428-7457"
        brewery8.website = "bomberbrewing.com"
        brewery8.socialMedia = "facebook.com/bomberbrewing"
        brewery8.logoImage = "BomberBrewing"
        brewery8.detail = "From the company’s site: “I suppose you could say it's a truly Canadian story – hockey, friendship and beer. From the ice rink to the brewery, Bomber Brewing is the shared dream of three friends with a passion for playing hockey and savouring good beer. We drafted a team, combined our skills and in February 2014 we launched one of the newest microbreweries to hit the Vancouver scene.”"

//        https://www.instagram.com/bomberbrewing/

        
        
        let brewery9 = Beer(context: viewContext)
        brewery9.id = 9
        brewery9.name = "Brassneck Brewery"
        brewery9.address = "1507 Powell St, Vancouver"
        brewery9.phoneNumber = "604-259-7686"
        brewery9.website = "brassneck.ca"
        brewery9.socialMedia = "facebook.com/Brassneck-Brewery"
        brewery9.logoImage = "BrassneckBrewery"
        brewery9.detail = "Brassneck opened on Oct. 2, 2013. We’re a little neighbourhood brewery with a Growler Shop and Tasting Room servicing the good people of Mount Pleasant and the surrounding area. We like to keep things simple. We just serve the beer we brew and the occasional sausage.There’s no kitchen here, but we have a roster of food trucks serving goodies just about every night. Order outside and bring it inside to eat.Our brewing philosophy is also very straightforward. We like to experiment, not take ourselves too seriously and constantly try new things. The result is a busy, ever-changing chalkboard, full of choices showcasing a mixture of tried and true “dangerously drinkable” beers, nano-sized experiments and lesser-known styles from all over Europe and North America."

//        https://www.instagram.com/brassneckbrew/

        
        
        let brewery10 = Beer(context: viewContext)
        brewery10.id = 10
        brewery10.name = "Bridge Brewing Company"
        brewery10.address = "1448 Charlotte Rd., North Vancouver "
        brewery10.phoneNumber = "604-770-2739"
        brewery10.website = "bridgebrewing.com"
        brewery10.socialMedia = "facebook.com/BridgeBrewingCompany"
        brewery10.logoImage = "BridgeBrewingCompany"
        brewery10.detail = "Since we opened in July 2012, beer lovers in BC have discovered Bridge Brewing’s great-tasting, high-quality craft beer. We began as Vancouver’s first nano-brewery – however, craft fans have voted with their mouths and we’ve been working hard to keep up while remaining focused on brewing our line of top beers. We’ve added to our brewhouse capacity, brought on some help and we’re expanding our brewery to keep up with the demand. We purchase our top quality, fresh grains and hops in small quantities to ensure a consistent product that meets our high standards. We are also good members of the community, striving to be a zero-waste brewery. We can proudly claim to be 99 per cent waste-free."

//        https://www.instagram.com/bridgebrewcrew/?hl=en

        
        // no instagram
        let brewery11 = Beer(context: viewContext)
        brewery11.id = 11
        brewery11.name = "Canuck Empire Brewing"
        brewery11.address = "Sorry for any inconvenience Aldergrove, British Columbia No tasting room or growler fills"
        brewery11.phoneNumber = "N/A"
        brewery11.website = "canuckempirebrewing.com"
        brewery11.socialMedia = "facebook.com/CanuckEmpire"
        brewery11.logoImage = "CanuckEmpireBrewing"
        brewery11.detail = "Canuck Empire Brewing currently contracts out their brewing to Dead Frog in Aldergrove, but the company has plans to open up its own brewery in 2017. Their handcrafted beers can be found in many stores in BC – check out their website and Facebook pages to see where you can pick some up today."

        
        
        
        let brewery13 = Beer(context: viewContext)
        brewery13.id = 13
        brewery13.name = "Chaos & Solace Craft Brewing Company"
        brewery13.address = "#1 – 9360 Mill Street, Chilliwack"
        brewery13.phoneNumber = "604-391-1000"
        brewery13.website = "chaosandsolacebrewing.com"
        brewery13.socialMedia = "facebook.com/ChaosAndSolaceBrewing"
        brewery13.logoImage = "Chaos&SolaceCraftBrewingCompany"
        brewery13.detail = "Honest beers for honest people, brewed with passion and creativity to create a unique beverage that reflects both the community and the company. Chaos & Solace uses locally grown and forage ingredients to brew out-of-the-box beers that are found no where else in the country. We are looking forward to the aged Russian Stout that will spend six months in a bourbon barrel, not to be opened until Christmas time."

//        https://www.instagram.com/chaossolacebeer/

        
        
        let brewery14 = Beer(context: viewContext)
        brewery14.id = 14
        brewery14.name = "Callister Brewing Co."
        brewery14.address = "1338 Franklin St, Vancouver"
        brewery14.phoneNumber = "604-716-2529"
        brewery14.website = "callisterbrewing.com"
        brewery14.socialMedia = "facebook.com/callisterbrewing"
        brewery14.logoImage = "CallisterBrewingCo"
        brewery14.detail = "Callister Brewing is the first of its kind in Canada and operates as a co-working brewery incubator, offering a unique opportunity to support independent, talented brewers. Callister aims to provide the foundation of an existing support and peer-learning network by creating accessibility to equipment and commercial facilities that allows professional brewers and homebrewers alike to grow their business and engage the craft beer community. Featuring the beer of four brewers, there is a constantly changing tap list featuring innovative, delicious brews.Additionally, we are also home to Goldmoss Satellite, a studio and show space for up and coming Vancouver and West Coast Artists, with four unique shows per year. This is a no-commission space, with 100% of sales going to the artists."

//        https://www.instagram.com/callisterbeer/

        
        
        let brewery15 = Beer(context: viewContext)
        brewery15.id = 15
        brewery15.name = "Central City Brewing Co."
        brewery15.address = "11411 Bridgeview Dr, Surrey"
        brewery15.phoneNumber = "604-588-2337"
        brewery15.website = "centralcitybrewing.com"
        brewery15.socialMedia = "facebook.com/CentralCitybrewing"
        brewery15.logoImage = "CentralCityBrewingCo"
        brewery15.detail = "In 2012 and 2010, we were Canada’s Brewery of the Year, and the 2012 World Cup of Beer’s gold and bronze medal winner. Our BC brewery is focused on being the best, not the biggest.In 2003, we started as Central City Craft Brewpub in Surrey. Our craft beer grew so popular that in 2005 we launched a canning line, enabling us to sell our beers at our own liquor store and beyond. Brewery sales quickly grew as our craft beers continued to win awards, and we achieved great success with the Red Racer beer brand. By 2009, we had reached full capacity at our current BC brewery – a 3,500-square foot space. Our new state-of-the-art 65,000-square foot craft brewery is now open and increases our craft beer brewing capacity to approximately 25,000 hectolitres per year immediately, with expansion to 100,000 hectolitres planned by year five.Our Red Racer brand has become a cult icon among craft beer enthusiasts. Our flagship Red Racer IPA is available at 156 BC government liquor stores, and all the finest private liquor stores in the province. It’s also available at 230 LCBO outlets in Ontario, and we have agents in Alberta, Manitoba and Saskatchewan.Our craft beers are rated some of the highest in BC and Canada, from experts on sites like BeerAdvocate and RateBeer."

//        https://www.instagram.com/centralcitybrew/
        

        
        let brewery16 = Beer(context: viewContext)
        brewery16.id = 16
        brewery16.name = "Coal Harbour Brewing Company"
        brewery16.address = "1967 Triumph St, Vancouver"
        brewery16.phoneNumber = "604-215-7471"
        brewery16.website = "coalharbourbrewing.com"
        brewery16.socialMedia = "facebook.com/CoalHarbourBrewing"
        brewery16.logoImage = "CoalHarbourBrewingCompany"
        brewery16.detail = "Coal Harbour Brewing Company is a production brewery crafting a tight line up of core and seasonal brews, available in government and private liquor stores and on tap all over the Lower Mainland. Whether you’re a lager lover, a yeast beast or a hop goblin, we’ve got you covered. When we’re not brewing beer, we’re talkin’ beer, sampling beer, reading beer, dreaming beer and collecting beer awards."

        
//        https://www.instagram.com/coalharbourbrewing/


        //no instagram
        let brewery17 = Beer(context: viewContext)
        brewery17.id = 17
        brewery17.name = "Dageraad Brewing"
        brewery17.address = "3191 Thunderbird Crescent #114, Burnaby"
        brewery17.phoneNumber = "604-420-2050"
        brewery17.website = "dageraadbrewing.com"
        brewery17.socialMedia = "facebook.com/DageraadBrewing"
        brewery17.logoImage = "DageraadBrewing"
        brewery17.detail = "As told by Ben Coli, brewer and owner of Dageraad Brewing: “Dageraad Brewing is named after the Dageraadplaats, a neighbourhood square on the east side of Antwerp, Belgium. The brewery is my effort to transport a small piece of the beer culture I found in that square home to British Columbia.“About 10 years ago, during a youth well-spent tramping about the world on a budget, I met three Belgians in Laos. We became fast friends. Over the years, I’ve visited them in Antwerp a number of times. Inevitably, at least once each visit we would find ourselves in the Dageraadplaats (“sunrise square” in Flemish) drinking the legendary beers of Belgium.“Those first encounters with Belgian beers led me to try to brew them myself at home. Gamblers talk about beginners’ luck, because people who are unlucky their first time don’t continue gambling. It’s the same with brewing. My first Belgian-style homebrew was incredible – fruity, spicy, complex, but light and drinkable. I was hooked.“Interest grew into obsession, and I began a period of intensive study. I went to brewing school. I took two beer sabbaticals to Belgium. I crisscrossed the country, visiting breweries in tiny Flemish villages and in abbeys in the Ardennes. I picked Belgian brewers’ brains to discover what made their beer so amazing. And I returned to the Dageraadplaats again and again.”Dageraad Brewery beer is sold in restaurants, bars and stores across BC. Visit their website for a list."

//        https://twitter.com/DageraadBeer/media

        
        
        let brewery18 = Beer(context: viewContext)
        brewery18.id = 18
        brewery18.name = "Dead Frog Brewery"
        brewery18.address = "1 – 27272 Gloucester Way, Aldergrove"
        brewery18.phoneNumber = "1-888-856-1055"
        brewery18.website = "deadfrog.ca"
        brewery18.socialMedia = "facebook.com/deadfrogbrewery"
        brewery18.logoImage = "DeadFrogBrewery"
        brewery18.detail = "An award winning craft brewery nestled in the heart of the Fraser Valley, Dead Frog’s focus is on creating innovative, premium-quality beers. With a lineup of session and specialty brews, some of our latest creations include the Big Stump Golden Spruce Ale, the Rocketman Pale Ale and the Tropic Vice Tropical Fruit Ale (a fan favourite!).Our tasting room is a great place to hang out and enjoy a flight, or grab some beer to go. We’ve got bombers, 6-packs, mixers and of course, growlers! We have four rotating taps, so we might be pouring a tart Green Tea Sour, or maybe a creamy Peanut Butter Stout... who knows?"

//        https://www.instagram.com/deadfrogbrewery/

        
        
        let brewery19 = Beer(context: viewContext)
        brewery19.id = 19
        brewery19.name = "Deep Cove Brewers And Distillers"
        brewery19.address = "Unit 170 – 2270 Dollarton Hwy, North Vancouver"
        brewery19.phoneNumber = "604-770-1136"
        brewery19.website = "deepcovecraft.com"
        brewery19.socialMedia = "facebook.com/deepcovebrewersanddistillers"
        brewery19.logoImage = "DeepCoveBrewersAndDistillers"
        brewery19.logoImage = "Here at Deep Cove Brewers and Distillers, we aim to provide uniquely distinctive flavour profiles using only sustainable Canadian ingredients. We provide an array of unconventional pairings that yield seamless, well-balanced beers. The creation of our Tea Saison incorporates Belgian-style yeast paired with a tropical fusion of Roobios teas. We also brew uncommon, traditional styles of beer that have long been forgotten. It is our goals to not only create the best well-balanced beers we can, but also pay homage to the creative history of the beer itself.Deep Cove Brewers and Distillers is a local place for the community to get together to have a good time.The brewery won first place at the British Columbia Beer Awards 2013 with their Wit Wheat Ale, and also took Best In Belgian Class at the Fest Of Ales Award 2014."

//        https://www.instagram.com/deepcovecraft/

        
        
        let brewery20 = Beer(context: viewContext)
        brewery20.id = 20
        brewery20.name = "Doan’s Craft Brewing Company"
        brewery20.address = "1830 Powell St., Vancouver"
        brewery20.phoneNumber = "604-559-0414"
        brewery20.website = "doanscraftbrewing.com"
        brewery20.socialMedia = "facebook.com/doanscraftbrewing"
        brewery20.logoImage = "Doan’sCraftBrewingCompany"
        brewery20.detail = "After opening up shop in May of 2015 in Yeast Van, Doan's Craft Brewing Company has been having tons of fun playing with traditional German-style and Pacific Northwest brews.It's a small neighbourhood brewery with a cozy lounge -nicknamed 'Growler Station' - that serves locally made snacks. Of course they're selected to pair perfectly with the selection of beer at hand. Doan's also provides vegetarian and vegan options for those interested.The young brewery has caught the attention of the industry, picking up a Rookie of the Year award, while their Rye Stout took 1st place at the 2015 BC Brewery awards. Drop by for a pint and to say Hi!"

//        https://www.instagram.com/doanscbc/

        
        
        // no instagram
        let brewery21 = Beer(context: viewContext)
        brewery21.id = 21
        brewery21.name = "Dockside Brewing Company"
        brewery21.address = "1253 Johnston St, Vancouver"
        brewery21.phoneNumber = "604-685-7079"
        brewery21.website = "docksidevancouver.com"
        brewery21.socialMedia = "facebook.com/eatDockside"
        brewery21.logoImage = "DocksideBrewingCompany"
        brewery21.detail = "Dockside Restaurant features incredible and classic food, paired with their handcrafted beers – all while taking in the sights from the waterfront, where Granville Island faces the city."


        

        let brewery22 = Beer(context: viewContext)
        brewery22.id = 22
        brewery22.name = "Dogwood Brewing"
        brewery22.address = "8284 Sherbrooke St, Vancouver"
        brewery22.phoneNumber = "604-325-3693"
        brewery22.website = "dogwoodbrew.com"
        brewery22.socialMedia = "facebook.com/dogwoodbrew"
        brewery22.logoImage = "DogwoodBrewing"
        brewery22.detail = "Opening in 2015, Dogwood Brewing will be Vancouver’s only organic brewery, with an emphasis on local BC ingredients and sustainable practices. Brewer owned and operated to bring you the best quality and flavours, with four varieties of beer in the works. Continue to check out the brewery’s website and Facebook page for updated information."

//        https://www.instagram.com/dogwoodbrew/

        
        
        
        let brewery23 = Beer(context: viewContext)
        brewery23.id = 23
        brewery23.name = "Faculty Brewing Company"
        brewery23.address = "1830 Ontario St, Vancouver"
        brewery23.phoneNumber = "778-818-6794"
        brewery23.website = "facultybrewing.com"
        brewery23.socialMedia = "facebook.com/facultybrewing"
        brewery23.logoImage = "FacultyBrewingCompany"
        brewery23.detail = "Set to open the first week of August, Faculty takes an academic approach to beer, giving more complex brews a higher “course”number and leaving the lower numbers to less sophisticated beers. The naming convention was decided upon by former professor Mauricio, one-half of the husband-wife duo that are opening the brewery. Broaden your own education by learning about and tasting Vancouver's new brewery."

        
//        https://www.instagram.com/facultybrewing/

        
        
        let brewery24 = Beer(context: viewContext)
        brewery24.id = 24
        brewery24.name = "Field House Brewing Company"
        brewery24.address = "2281 W Railway St, Abbotsford"
        brewery24.phoneNumber = "604-776-2739"
        brewery24.website = "fieldhousebrewing.com"
        brewery24.socialMedia = "facebook.com/fieldhousebrewing"
        brewery24.logoImage = "FieldHouseBrewingCompany"
        brewery24.detail = "Following a sensible philosophy, Field House brews beer they like to drink. Using modern European styles as inspiration, they add their own ideas and flavours to create a brew that is contemporary and classic at the same time.Beers are brewed in small batches that often sell out quickly. Start your visit with a flight and take home a growler of your favorite on the way out."

        
//        https://www.instagram.com/fieldhousebrewing/

        
        
        let brewery25 = Beer(context: viewContext)
        brewery25.id = 25
        brewery25.name = "Four Winds Brewing Company"
        brewery25.address = "4 – 7355 72nd St, Delta "
        brewery25.phoneNumber = "604-940-9949"
        brewery25.website = "fourwindsbrewing.ca"
        brewery25.socialMedia = "facebook.com/FourWindsBrewingCo"
        brewery25.logoImage = "FourWindsBrewingCompany"
        brewery25.detail = "Four Winds Brewing Company joined the burgeoning BC craft beer scene and opened their doors to a public thirsty for new local offerings on June 1, 2013. Owned, operated and built from the ground up by the Mills family and friends, we are inspired by the four winds in gathering flavours from around the world to create our unique west coast and European styles. We take great pleasure in the application of new-world innovations, while staying true to old-world techniques. Motivated by the limitless potential of beer, as well as the great brewers who came before us, we aim to craft bold beers with character, depth and balance.Situated just off the banks of the Fraser River in Delta, our brewery is geared towards bottle and draft production, while our tasting room provides a unique and welcoming atmosphere for craft beer enthusiasts and newcomers alike. In addition to our tasting room, our beers can be found in bars, restaurants and private liquor stores across greater Vancouver and Victoria."

//        https://www.instagram.com/fourwindsbrewco/

        
        
        
        let brewery26 = Beer(context: viewContext)
        brewery26.id = 26
        brewery26.name = "Fuggles & Warlock Craftworks"
        brewery26.address = "103-11220 Horseshoe Way, Richmond"
        brewery26.phoneNumber = "604-285-7745"
        brewery26.website = "fuggleswarlock.com"
        brewery26.socialMedia = "facebook.com/FugglesAndWarlockCraftworks"
        brewery26.logoImage = "Fuggles&WarlockCraftworks"
        brewery26.detail = "To support their motto of “Keeping Beer Weird”, the brewery puts out adventurous beers that push traditions to the limit. Although there are always a few more standard styles on the menu, most fans go in search of the unexpected. Look for summer flavours made with local Fraser Valley strawberries, fresh peaches and the unexpectedly amazing pineapple. Aaaannnd...the beer taps are light sabers. 'Nuf said."

//        https://www.instagram.com/fuggleswarlock/

        
        
        
        let brewery27 = Beer(context: viewContext)
        brewery27.id = 27
        brewery27.name = "Granville Island Brewing"
        brewery27.address = "1441 Cartwright St, Vancouver"
        brewery27.phoneNumber = "604-687-2739"
        brewery27.website = "gib.ca"
        brewery27.socialMedia = "facebook.com/granvilleislandbrewing"
        brewery27.logoImage = "GranvilleIslandBrewing"
        brewery27.detail = "In 1984, something happened that forever changed the local beer industry: Granville Island Brewing opened the doors to Canada’s first microbrewery. And in doing so, we opened hearts and minds to a whole new beer drinking experience.Driven by a firm belief that the west was ready for a premium, natural, unpasteurized beer, Granville Island Brewing introduced locals to our now famous Island Lager.And it wasn’t long before we were adding more new and unique west coast-inspired craft beers to our line up. In celebration of our heritage, we name each new GIB beer after iconic Vancouver locations that embody the west coast lifestyle.Over the years, we’ve become more than just the local brewery. We focus much of our sustainability efforts towards ongoing community investment, including sponsorship and charitable support, involvement with local sports teams, community organizations and more. We’re just as proud of that as we are about what we put in our bottles."

//        https://www.instagram.com/granvillebeer/

        
        
        let brewery28 = Beer(context: viewContext)
        brewery28.id = 28
        brewery28.name = "Green Leaf Brewing Co."
        brewery28.address = "123 Carrie Cates Ct, North Vancouver"
        brewery28.phoneNumber = "604-984-8409"
        brewery28.website = "greenleafbrew.com"
        brewery28.socialMedia = "facebook.com/GLbrewery"
        brewery28.logoImage = "GreenLeafBrewingCo"
        brewery28.detail = "Located in the bustling Lonsdale Quay Market, Green Leaf Brewing has been committed to great beer, community, and sustainability since 2013. Green Leaf is about top-quality, innovative beers, using our custom designed and built brewery system from Practical Fusion in Portland, Oregon. Brewhouse efficiency was and is our goal. From recovering, treating, and reusing water during the brewing process, to innovative lighting system, we look to create fantastic beer with minimal impact. Our friendly staff are committed to providing the best service to our customers, and the best beer to complement any meal or event.Our philosophy at Green Leaf Brewing is to place quality and sustainability before profit or growth for growth’s sake. All of our beers are brewed using carefully selected ingredients, patience and attention to detail, as well as genuine love and respect for the products. In the spirit of craft brewing, we want to brew solid, traditional styles, as well as to push the boundaries of beer as we seek to innovate, explore and discover. Our beers are served in freshly filled growlers, because we believe that freshness is of the utmost importance to your experience of our products. We look forward to seeing you soon."

//        https://www.instagram.com/greenleafbrew/

        
        
        let brewery29 = Beer(context: viewContext)
        brewery29.id = 29
        brewery29.name = "Hearthstone Brewery"
        brewery29.address = "1015 Marine Dr, North Vancouver"
        brewery29.phoneNumber = "604-984-1842"
        brewery29.website = "hearthstonebrewery.ca"
        brewery29.socialMedia = "facebook.com/hearthstonebrewery"
        brewery29.logoImage = "HearthstoneBrewery"
        brewery29.detail = "Set to open soon. Mission Springs Brewing owners Brock Rodgers and Ken Brookes acquired the old Red Truck brewing facility last fall, but Hearthstone will be completely independent from its sister brewery.Brewery operations managers Darren Hollett and George Woods run the brewery. Woods was an assistant brewer at BrewDog in Scotland, where he ran the small-batch experimental brewery for three years. Hollett has been homebrewing for 10 years and worked in sales for Whistler Brewing before becoming a brewer at Mission Springs.The beer: Opening line up will comprise of a Bohemian Pilsner, California Common, Red Rye Ale, Chocolate Milk Stout, Graham Cracker Ale and, shortly, an American Pale Ale and IPA. Seasonal releases are planned four times a year."

//        https://www.instagram.com/hearthstonebeer/

        
        
        
        let brewery30 = Beer(context: viewContext)
        brewery30.id = 30
        brewery30.name = "Luppolo Brewing Company"
        brewery30.address = "1123 Venables St, Vancouver"
        brewery30.phoneNumber = "604-255-4997"
        brewery30.website = "luppolobrewing.ca"
        brewery30.socialMedia = "facebook.com/luppolobrewingco"
        brewery30.logoImage = "LuppoloBrewingCompany"
        brewery30.detail = "The Italian heritage of two of the owners inspire both the name (luppolo means hops) and the values they want to project including quality, craftsmanship, community and family. Planning on an August opening, Luppolo hopes to create a 'home away from home' feel – assuming your home is stocked with craft beer on tap."

//        https://www.instagram.com/luppolo_brewing/

        
        
        
        let brewery31 = Beer(context: viewContext)
        brewery31.id = 31
        brewery31.name = "Main Street Brewing Company"
        brewery31.address = "261 East 7th Ave, Vancouver"
        brewery31.phoneNumber = "604-336-7711"
        brewery31.website = "mainstreetbeer.ca"
        brewery31.socialMedia = "facebook.com/MainStreetBeer"
        brewery31.logoImage = "MainStreetBrewingCompany"
        brewery31.detail = "Main Street Brewing resides in one of Vancouver’s few surviving industrial heritage buildings.The Vancouver Breweries Garage dates back to 1913 and sits in the historic Brewery Creek district, an area once dominated by tanneries and breweries and which we now proudly call home."

//        https://www.instagram.com/mainstreetbeer/

        
        
        // no instagram
        let brewery32 = Beer(context: viewContext)
        brewery32.id = 32
        brewery32.name = "Maple Meadows Brewing Company"
        brewery32.address = "22775 Dewdney Trunk Rd, Maple Ridge"
        brewery32.phoneNumber = "778-239-7946"
        brewery32.website = "maplemeadowsbrewingco.com"
        brewery32.socialMedia = "facebook.com/maplemeadowsbrewery"
        brewery32.logoImage = "MapleMeadowsBrewingCompany"
        brewery32.detail = "With plans to open in late February 2015, Maple Meadows Brewing Company will brew mostly North American styles of beer with the finest ingredients."

        
        
        let brewery33 = Beer(context: viewContext)
        brewery33.id = 33
        brewery33.name = "Mission Springs Brewing Company"
        brewery33.address = "7160 Oliver St, Mission"
        brewery33.phoneNumber = "604-820-1009"
        brewery33.website = "missionsprings.ca"
        brewery33.socialMedia = "facebook.com/MissionSpringsPub"
        brewery33.logoImage = "MissionSpringsBrewingCompany"
        brewery33.detail = "Here at the Mission Springs Pub and Restaurant, customers enjoy large-portioned, home-cooked culinary delights, as well as frosty cold ones and in-house brewed craft ales and lagers."

//        https://www.instagram.com/missionspringsbeer/

        
        
        
        let brewery34 = Beer(context: viewContext)
        brewery34.id = 34
        brewery34.name = "Moody Ales"
        brewery34.address = "2601 Murray St, Port Moody"
        brewery34.phoneNumber = "604-492-3911"
        brewery34.website = "moodyales.com"
        brewery34.socialMedia = "facebook.com/MoodyAles"
        brewery34.logoImage = "MoodyAles"
        brewery34.detail = "Moody Ales is a craft brewery featuring a tasting room and growler fills, as well as a retail and wholesale business. Moody Ales recently introduced a Guest Tap, where they feature offerings from other brewers for customers to taste.  They are always experimenting with small batch beers as well, and if you stop the brewery, often times you can sample some pretty fancy small batch beers."

//        https://www.instagram.com/moodyales/

        
        
        
        let brewery35 = Beer(context: viewContext)
        brewery35.id = 35
        brewery35.name = "Off The Rail Brewing Co."
        brewery35.address = "1351 Adanac St, Vancouver"
        brewery35.phoneNumber = "604-563-5767"
        brewery35.website = "offtherailbrewing.com"
        brewery35.socialMedia = "facebook.com/Off-The-Rail-Brewing-Co"
        brewery35.logoImage = "OffTheRailBrewingCo"
        brewery35.detail = "I have always been a craft beer enthusiast. Well before great microbrews were available in Vancouver, I was on the road-less-travelled to Seattle and Portland in search of fine ales, stouts and lagers that I could not find at home.Then, of course, there were the obligatory trips to London and Munich, where the beer steeped in tradition was truly a way of life, shared and enjoyed by all.Years ago, the legendary Railway Club was my springboard to dive into the world of craft beer by supporting the new local breweries that were in their developing stages. Through the years, the Railway became known for having one of the best tap beer selections in the city and proudly and enthusiastically touted real beer.After 25 years of being an advocate for other people’s beer, I woke up one day and realized I need to be brewing my own beer.Since selling the Railway Club, I’ve spent the past five years acquiring hands-on knowledge of hop farming and have gained over three years of brewing experience. Today, I am excited to announce that Off The Rail Brewing will soon be open to the public. We are a small brewery with high standards and a passion for beer. For me, it really is all about the commitment to great taste."

        
//        https://www.instagram.com/offtherailbeer/

        
        
        // no instagram
        let brewery36 = Beer(context: viewContext)
        brewery36.id = 36
        brewery36.name = "Old Abbey Ales"
        brewery36.address = "1A 30321 Fraser Hwy, Abbotsford"
        brewery36.phoneNumber = "604-607-5104"
        brewery36.website = "oldabbeyales.com"
        brewery36.socialMedia = "facebook.com/oldabbeyales"
        brewery36.logoImage = "OldAbbeyAles"
        brewery36.detail = "Craft: an activity involving skill in making things by hand. At Old Abbey Ales, our thing is beer, and our master brewer skillfully crafts every batch by hand, producing what we believe are some of the finest beers on the market. In staying true to our mission, all of our beers are bottle conditioned, thus creating natural carbonation and producing what we call real ale. Bottles available at select liquor stores. Up to 24 fresh beers on tap in the tasting room, come visit any day of the week, open 11am to 7pm."


        
        
        let brewery37 = Beer(context: viewContext)
        brewery37.id = 37
        brewery37.name = "Old Yale Brewing Co."
        brewery37.address = "#4 – 7965 Venture Place, Chilliwack"
        brewery37.phoneNumber = "604-392-2011"
        brewery37.website = "oldyalebrewing.com"
        brewery37.socialMedia = "facebook.com/oldyalebrewing"
        brewery37.logoImage = "OldYaleBrewingCo"
        brewery37.detail = "Our brewmaster Larry Caza – an ex-air force pilot – was stationed on the east coast of Canada in Goose Bay, NL, during the late 1980s. While there, pilots from all over would fly in, bringing with them beers from around the world. They were nothing like the light lagers that dominated North America at the time. The experience in Goose Bay inspired Larry to begin home brewing when he returned to his hometown of Chilliwack, BC.It was a road trip down the coast to California that cemented Larry’s passion for craft beer. On a stopover in Chico, Calif., Larry visited Sierra Nevada’s brewpub. The incredible variety and creativity was a stark contrast to what was available at the time in Canada. Larry got back to Chilliwack and opened Old Yale Brewing.Jump forward to present day, and Old Yale Brewing has become one of BC’s most respected breweries. To this day, we still hold on to what has always made us successful: handcrafted, great-tasting beer. Over the years, Old Yale brews have taken home numerous awards."

//        https://www.instagram.com/oldyalebrewing/

        
        
        let brewery38 = Beer(context: viewContext)
        brewery38.id = 38
        brewery38.name = "Parallel 49 Brewing Company"
        brewery38.address = "1950 Triumph St, Vancouver"
        brewery38.phoneNumber = "604-558-3774"
        brewery38.website = "parallel49brewing.com"
        brewery38.socialMedia = "facebook.com/Parallel49Brewing"
        brewery38.logoImage = "Parallel49BrewingCompany"
        brewery38.detail = "Three of Parallel 49’s founders grew up together in East Vancouver, less than 10 minutes from the spot where the brewery now stands. Mike, Nick and Anthony had been avid home brewers and craft beer enthusiasts for years before they finally decided to turn their shared passion into a full-time gig.In 2008, the three friends quit their day jobs and opened a restaurant that quickly became known as a Mecca for craft beer enthusiasts in Vancouver. As the restaurant business thrived, the guys turned their attentions back to the enduring dream of opening their own brewery.The guys decided that it was time to stop talking and start brewing. They teamed up with Graham With, a respected home brewer, and Michael Tod, a friend with a wealth of sales experience in the BC craft beer industry. The newly assembled Parallel 49 team set out to create the unique brand of Vancouver craft beer that they had been thirsting after for years."

//        https://www.instagram.com/parallel49beer/

        
        
        // no instagram
        let brewery39 = Beer(context: viewContext)
        brewery39.id = 39
        brewery39.name = "Pat’s Pub & Brewhouse"
        brewery39.address = "403 East Hastings St, Vancouver"
        brewery39.phoneNumber = "604-255-4301"
        brewery39.website = "patspub.ca"
        brewery39.socialMedia = "facebook.com/PatsPubandBrewHouse"
        brewery39.logoImage = "Pat’sPub&Brewhouse"
        brewery39.detail = "Proudly serving all natural, preservative-free beer brewed onsite, plus a selection of local microbrews. Join us for great food, sports and tons of live music."


        
        
        let brewery40 = Beer(context: viewContext)
        brewery40.id = 40
        brewery40.name = "The Parkside Brewery"
        brewery40.address = "2731 Murray St, Port Moody"
        brewery40.phoneNumber = "604-492-2731"
        brewery40.website = "theparksidebrewery.com"
        brewery40.socialMedia = "facebook.com/theparksidebrewery"
        brewery40.logoImage = "TheParksideBrewery"
        brewery40.detail = "From the mastermind who gave us Granville Island Brewery, Parkside is Vern Lambourne's creation from start to light, hoppy finish. The décor is an excellent retro feel with a touch of neon and a throwback beer car. The brewery opened mid June offering refreshing ales along with an original seasonal brew. Visitors can look forward to exclusive one-batch beers and a daily cask.Need dinner along with your beer? The brewery has a food truck that pulls up to the side door allowing patrons to grab a quick meal without letting their seat get cold. Check the website for the food truck menu."

//        https://www.instagram.com/parksidebrewery/

        
        
        let brewery41 = Beer(context: viewContext)
        brewery41.id = 41
        brewery41.name = "Postmark Brewing"
        brewery41.address = "55 Dunlevy Ave, Vancouver"
        brewery41.phoneNumber = "604-699-1988"
        brewery41.website = "postmarkbrewing.com"
        brewery41.socialMedia = "facebook.com/postmarkbrewing"
        brewery41.logoImage = "PostmarkBrewing"
        brewery41.detail = "In the spring of 2013, three long-time friends with a passion for great beer dove head first into crafting their own quality-driven recipes – while having too much fun throughout the process. Postmark Brewing was born. With a work hard/play hard mentality, Postmark Brewing boasts a line up of sessionable craft beers that cater to the BC leisure and activity lifestyle."

//        https://www.instagram.com/postmarkbrewing/

        
        
        let brewery42 = Beer(context: viewContext)
        brewery42.id = 42
        brewery42.name = "Powell Street Craft Brewery"
        brewery42.address = "1357 Powell St., Vancouver"
        brewery42.phoneNumber = "604-558-2537"
        brewery42.website = "powellbeer.com"
        brewery42.socialMedia = "facebook.com/PowellBeer"
        brewery42.logoImage = "PowellStreetCraftBrewery"
        brewery42.detail = "Powell Street Craft Brewery is a microbrewery focused on producing high-quality, full-flavoured, handcrafted beers, using all natural and preferably local ingredients. Winner of Beer of the Year in Canada, 2013, for their Old Jalopy Pale Ale."

//        https://www.instagram.com/powellbeer/

        
        
        let brewery43 = Beer(context: viewContext)
        brewery43.id = 43
        brewery43.name = "R&B Brewing Co."
        brewery43.address = "54 East 4th Ave, Vancouver"
        brewery43.phoneNumber = "604-874-2537"
        brewery43.website = "randbbrewing.com"
        brewery43.socialMedia = "facebook.com/RBBrewing"
        brewery43.logoImage = "R&BBrewingCo"
        brewery43.detail = "R&B Brewing Co is one of Vancouver’s original microbreweries, brewing high quality, hand crafted ales and lagers in the heart of East Vancouver’s historic Brewery Creek district since 1997. We’ve come a long way, but continue to keep things modest, unique, fun and local. R&B has continued to build on the founding values, authentically producing artisan ales for all to enjoy. We are part of Vancouver’s urban lifestyle.With a new Ale & Pizza House adjacent to the Brewery, we are a place to meet & socialize, share good food and feel a part of the East Van neighbourhood. The Ale & Pizza House utilizes re-intended local materials to provide a unique, warm and welcoming place. It features artisan pizzas, sandwiches, salads and more beer friendly food created by our in-house Chef. There’s an eclectic mix of music, locals events, and a terrace patio soon to open."

//        https://www.instagram.com/rbbrewing/
        
        
        let brewery44 = Beer(context: viewContext)
        brewery44.id = 44
        brewery44.name = "Ravens Brewing Company"
        brewery44.address = "2485 Townline Rd, Abbotsford"
        brewery44.phoneNumber = "604-746-7209"
        brewery44.website = "ravensbrewing.com"
        brewery44.socialMedia = "facebook.com/ravensbrewing"
        brewery44.logoImage = "RavensBrewingCompany"
        brewery44.detail = "Founded in 2015, Ravens Brewing is a family owned and operation, Ravens Brewing was inspired by a love of craft beer and and the surrounding agricultural community of the Fraser Valley. With a focus on utilizing traditional and, whenever possible, locally sourced ingredients to produce European inspired West Coast Beers.Seasonal releases are always rotating, along with small batch experimental brews, so there should always be something different in the works. As well in 2016 we have expanded and started producing our own apple cider, for those non-beer drinkers out there. We look forward to welcoming you to our tasting room to sample a flight, fill a growler or pick up some bottles or cans."

//        https://www.instagram.com/ravensbrewing/

        
        
        let brewery45 = Beer(context: viewContext)
        brewery45.id = 45
        brewery45.name = "Red Truck Beer Company"
        brewery45.address = "295 East 1st Ave, Vancouver"
        brewery45.phoneNumber = "604-682-4733"
        brewery45.website = "redtruckbeer.com"
        brewery45.socialMedia = "facebook.com/RedTruckBeer"
        brewery45.logoImage = "RedTruckBeerCompany"
        brewery45.detail = "Red Truck Beer is built on the values of a simpler time, when bars served only beer and whiskey. When trucks were working vehicles, not status symbols – and when the only people you needed to share a sunset with were sitting right next to you.That’s why we keep our beer simple: just four basic ingredients – no preservatives, no pasteurization, no compromises, no bull****."

//        https://www.instagram.com/redtruckbeer/

        
        let brewery46 = Beer(context: viewContext)
        brewery46.id = 46
        brewery46.name = "Ridge Brewing Co."
        brewery46.address = "2 – 22826 Dewdney Trunk Rd, Maple Ridge"
        brewery46.phoneNumber = "604-380-0888"
        brewery46.website = "ridgebrewing.com"
        brewery46.socialMedia = "facebook.com/ridgebrewery"
        brewery46.logoImage = "RidgeBrewingCo"
        brewery46.detail = "Ridge Brewing Company is a microbrewery located in Maple Ridge, BC. We brew exquisite craft beer and are creating new recipes year round. We are committed to providing exceptional service for our clients. Our location features a tasting room in which you may sample our beers and fill growlers. We also sell kegs for parties and weddings."

//        https://www.instagram.com/ridgebrewingco/

        
        
        let brewery47 = Beer(context: viewContext)
        brewery47.id = 47
        brewery47.name = "Russell Brewing Company"
        brewery47.address = "#202 13018 80th Ave, Surrey"
        brewery47.phoneNumber = "604-599-1190"
        brewery47.website = "russellbeer.com"
        brewery47.socialMedia = "facebook.com/Russell.Brewing"
        brewery47.logoImage = "RussellBrewingCompany"
        brewery47.detail = "Located in Strawberry Hill, Surrey, Russell Brewing Company has been brewing premium craft beer since 1995, using the finest ingredients available. Our beer is 100 per cent natural and has no preservatives. We don't pasteurize, which means we don’t kill the taste – you drink our beer just the way it is brewed. Fanatical about beer, we believe that the passion and quality that goes into creating Russell beer comes through in the taste."

//        https://www.instagram.com/russell_beer/

        
        // no instagram
        let brewery48 = Beer(context: viewContext)
        brewery48.id = 48
        brewery48.name = "Sailor Hagar’s Brew Pub"
        brewery48.address = "86 Semisch Ave, North Vancouver"
        brewery48.phoneNumber = "604-984-3087"
        brewery48.website = "sailorhagarspub.com"
        brewery48.socialMedia = "facebook.com/sailorhagarspub"
        brewery48.logoImage = "SailorHagar’sBrewPub"
        brewery48.detail = "With a spectacular view of Vancouver Harbour and city, Sailor Hagar's features great food in a brewpub atmosphere, with 18 beers on tap – including six beers craft-brewed from our own original recipes."

        

        
        // no instagram
        let brewery49 = Beer(context: viewContext)
        brewery49.id = 49
        brewery49.name = "Shaftebury Brewing Company"
        brewery49.address = "Delta, BC"
        brewery49.phoneNumber = "N/A"
        brewery49.website = "shaftebury.com"
        brewery49.socialMedia = "facebook.com/shaftebury"
        brewery49.logoImage = "ShafteburyBrewingCompany"
        brewery49.detail = "The Shaftebury Brewing Company is a BC craft brewery started in 1987 in Delta."

        
        
        // no instagram
        let brewery50 = Beer(context: viewContext)
        brewery50.id = 50
        brewery50.name = "Stanley Park Brewery"
        brewery50.address = "Vancouver"
        brewery50.phoneNumber = "N/A"
        brewery50.website = "stanleyparkbrewery.ca "
        brewery50.socialMedia = "facebook.com/stanleyparkbrewery"
        brewery50.logoImage = "StanleyParkBrewery"
        brewery50.detail = "Like the stone guardians of the Lions Gate Bridge, the proud lion on our label symbolizes a powerful link. We bring together a commitment to the future and a passion for the time-honoured traditions of Frank Foubert, Belgian brewmaster of the original Stanley Park Brewing, which he founded in 1897.As a sustainably focused brewery, we lead the way by optimizing both energy and water usage and by generating power with our own wind turbine, which stands next to our state-of-the-art, five-vessel brew house. Our ongoing passion is evident in the freshness and depth of flavour in each of our meticulously handcrafted beers. No effort has been spared to produce world-class beer styles for our customers."


        
        
        
        let brewery51 = Beer(context: viewContext)
        brewery51.id = 51
        brewery51.name = "Steamworks Brewing Company"
        brewery51.address = "3845 William St, Burnaby"
        brewery51.phoneNumber = "604-620-7250"
        brewery51.website = "steamworks.com"
        brewery51.socialMedia = "facebook.com/SteamworksBeer"
        brewery51.logoImage = "SteamworksBrewingCompany"
        brewery51.detail = "SteamworksBrewingComIn 1995, when we first took hold of our historic Gastown brewpub location, we discovered that the building had a rare steam heat system, a remnant from forward thinkers of a century past.Our brewmaster had only read of steam-powered brewing, but had never seen a functional steam brewery. These are very rare indeed. We ventured forth, experimented and created a one-of-a-kind, steam-generated brewery – the only one in Canada. To our pleasure, we found our test brews to be distinctively fresh and flavourful. For nearly 20 years, beer aficionados have been migrating to our Steamworks brewpub for a taste of these unconventional beers Since 2013, with the advent of our brewery in Burnaby Heights, you can now take the brewpub experience home with you. Bottling, kegging and canning tallboys, we're still brewing with the power of steam.Find us in your local BC liquor or private liquor store, and in your favourite local restaurants and pubs very soon!pany"

//        https://www.instagram.com/steamworksbeer/

        
        
        
        let brewery52 = Beer(context: viewContext)
        brewery52.id = 52
        brewery52.name = "Steel & Oak Brewing Co."
        brewery52.address = "1319 Third Ave, New Westminster"
        brewery52.phoneNumber = "604-540-6495"
        brewery52.website = "steelandoak.ca"
        brewery52.socialMedia = "facebook.com/steelandoak.ca"
        brewery52.logoImage = "Steel&OakBrewingCo"
        brewery52.detail = "Steel & Oak Brewing Co. embodies the modernness of today, while remaining dedicated to the craftsmanship of years long past. Materials of strength and durability, steel and oak; house, protect and nurture what we stand for most: exceptional tasting craft beer.Using a mixture of North American, English and German brewing styles, techniques and ingredients, Steel & Oak explores new beer styles while constantly refining and perfecting the classics.Always unfiltered, unpasteurized and made with the finest ingredients, Steel & Oak proudly returns the noble tradition of brewing quality beer to New Westminster."

//        https://www.instagram.com/steelandoak/
        
        
        
        
        let brewery53 = Beer(context: viewContext)
        brewery53.id = 53
        brewery53.name = "Strange Fellows Brewing"
        brewery53.address = "1345 Clark Dr, Vancouver"
        brewery53.phoneNumber = "604-767-2117"
        brewery53.website = "strangefellowsbrewing.com "
        brewery53.socialMedia = "facebook.com/strangefellowsbrewing"
        brewery53.logoImage = "StrangeFellowsBrewing"
        brewery53.detail = "We are an East Vancouver craft brewery inspired by tradition and creativity, and go beyond the ordinary to celebrate that which is strange* and extraordinary.The beer we make is influenced both by old world traditions and West coast ingenuity as well as by seasonal ingredients. Our barrel programme promises unique aged beers, and we have a bit of a thing for sour beer.Open daily for growler fills and gathering with friends, our Tasting Room offers an ever-changing selection of beer as well as tasty locally sourced grub to go with.Behind-the-scenes tours of the brewery are available by appointment only. Please email or call us and we’d be happy to arrange a tour and tasting for your group, big or small.You can find our beer on tap at many fine drinking establishments and restaurants, and our packaged product in private liquor stores around town.Tucked in alongside the Tasting Room, you will find the Charles Clark Gallery where artists share their unique visions with us on a monthly, rotating basis.We invite you to celebrate with us each month as we observe a different Strange Day, inspired by obscure superstitions and folklore from around the world."

//        https://www.instagram.com/strangefellowsbrewing/

        
        
        let brewery54 = Beer(context: viewContext)
        brewery54.id = 54
        brewery54.name = "Storm Brewing Ltd."
        brewery54.address = "310 Commercial Dr, Vancouver"
        brewery54.phoneNumber = "604-255-9119"
        brewery54.website = "stormbrewing.org"
        brewery54.socialMedia = "facebook.com/StormBrewing"
        brewery54.logoImage = "StormBrewingLtd"
        brewery54.detail = "For over 20 years, brewer James Walton and the Storm Brewing team have been bringing Vancouverites innovative and unpretentious craft beer James is hailed as a craft beer pioneer by both media and trade, and is proud to be one of the very first brewers in North America to brew sour beer. Storm Brewing sits at the corner of Commercial Drive and Franklin Street in gritty East Vancouver and is considered a must visit destination by craft beer fans worldwide."

//        https://www.instagram.com/stormbrewing/

        
        
        let brewery55 = Beer(context: viewContext)
        brewery55.id = 55
        brewery55.name = "Strathcona Beer Company"
        brewery55.address = "895 East Hastings St, Vancouver"
        brewery55.phoneNumber = "778-379-9050"
        brewery55.website = "strathconabeer.com"
        brewery55.socialMedia = "facebook.com/strathconabeer"
        brewery55.logoImage = "StrathconaBeerCompany"
        brewery55.detail = "The doors opened in July and Strathcona is working to fill all 12 taps with a different brew. Fill your glass with traditional international styles and a few seasonal brews that will rotate along with the weather. Pair your beverage with a gourmet pizza fresh from the oven or go for the ambiance. The owners hope to enhance the décor with works from local artists, creating a look and feel that is uniquely Strathcona."

//        https://www.instagram.com/strathconabeer/

        
        
        let brewery56 = Beer(context: viewContext)
        brewery56.id = 56
        brewery56.name = "Sunday Cider"
        brewery56.address = "1575 Vernon Dr, Vancouver"
        brewery56.phoneNumber = "N/A"
        brewery56.website = "sundaycider.com"
        brewery56.socialMedia = "facebook.com/sundaycider"
        brewery56.logoImage = "SundayCider"
        brewery56.detail = "Started by three friends, the name reflects the only day all three had available to work the apple presses and brew up some awesome cider from B.C. apples. After much experimentation and a few questionable ciders, they came up with recipes that suit the BC vibe and use apples form the Similkameen and Okanagan valleys. Currently only growlers are available from the production facility but several establishments around town have Sunday Cider on the menu including Bestie, owned by two of the founders."

//        https://www.instagram.com/sundaycider/
        

        
        
        let brewery57 = Beer(context: viewContext)
        brewery57.id = 57
        brewery57.name = "Trading Post Brewing"
        brewery57.address = "20120 64 Ave #107, Langley"
        brewery57.phoneNumber = "604-343-2337"
        brewery57.website = "tradingpostbrewing.com"
        brewery57.socialMedia = "facebook.com/TradingPostBrewing"
        brewery57.logoImage = "TradingPostBrewing"
        brewery57.detail = "The crew at the Trading Post is looking for more than excellence in their brew and business; the want to foster a sense of community, creating a space for people to gather. Trading Post’s craft brewery was born out of a passion for great beer and it’s over a glass of that very creation, a labor of our love, where they believe friendships deepen, family ties strengthen and a community unites. On tap is a mix of traditional English and American ales alongside a few adventurous brews. Their Taphouse & Eatery in Fort Langley serves all their beers, as well as a couple other local breweries they have on rotating taps, that pair perfectly with their constantly evolving full, sit down menu. The Brewery in Downtown Langley also has a couple snacks you can grab to go along with your pint or flight, and don’t forget to get your growler filled!"

//        https://www.instagram.com/tradingpostbrewing/
        

        
        
        let brewery58 = Beer(context: viewContext)
        brewery58.id = 58
        brewery58.name = "Twin Sails Brewing"
        brewery58.address = "2821 Murray St., Port Moody"
        brewery58.phoneNumber = "604-492-4234"
        brewery58.website = "twinsailsbrewing.com"
        brewery58.socialMedia = "facebook.com/TwinSailsBrewing"
        brewery58.logoImage = "TwinSailsBrewing"
        brewery58.detail = "Founded by twin brothers, the goal of Twin Sails is to focus on traditional German beer including Hefeweizen, Roggenbier, Pilsner and Marzen. Although the brews are traditional, they are hardly dull. Those with a seasoned palate will appreciate the citrus-y undertones of the Hefe and the hoppy finish of the Kolsch.Food trucks keep the hunger at bay for thirsty patrons, or take some home for a party in your own backyard."

//        https://www.instagram.com/twinsailsbeer/

        
        
        let brewery59 = Beer(context: viewContext)
        brewery59.id = 59
        brewery59.name = "White Rock Beach Beer Company"
        brewery59.address = "15181 Russell Ave, White Rock"
        brewery59.phoneNumber = "604-319-4378"
        brewery59.website = "whiterockbeachbeer.com "
        brewery59.socialMedia = "facebook.com/White-Rock-Beach-Beer-Company"
        brewery59.logoImage = "WhiteRockBeachBeerCompany"
        brewery59.detail = "White Rock Beach Beer Company opened its doors in May 2014.  Brewing in uptown White Rock on a 1/2bbl system, the plan was to make a small number of 'traditional' beers with ever so slight variations as to make them unique, and then, with these on the taps, slowly build the business and the brand.  Well received in the area to date, expansion plans are now in the works for a bigger brewing system and lounge area."

//        https://www.instagram.com/wrbeachbeer/
        

        
        // no instagram
        let brewery60 = Beer(context: viewContext)
        brewery60.id = 60
        brewery60.name = "White Rock Brewing"
        brewery60.address = "3033 King George Blvd, Surrey"
        brewery60.phoneNumber = "604-560-6430"
        brewery60.website = "whiterockbrewing.ca"
        brewery60.socialMedia = "facebook.com/whiterockbrewing"
        brewery60.logoImage = "WhiteRockBrewing"
        brewery60.detail = "Although the company has been in existence since '94, the brewery changed owners in 2012 and opened their tasting room in 2014. Despite the change in ownership the beer never lost its quality. The hand-crafted, small-batch brews served fresh on the premises are as popular as ever. The owners have taken an unusual approach to their beer – they brew what the customers want, not what they like. There are enough seasonal beers included to keep life interesting, but most of the beers on the menu are there because they are requested."


        
        
        // no intagram
        let brewery61 = Beer(context: viewContext)
        brewery61.id = 61
        brewery61.name = "Yaletown Brewing Company"
        brewery61.address = "1111 Mainland St, Vancouver"
        brewery61.phoneNumber = "604-681-2739"
        brewery61.website = "mjg.ca/yaletown "
        brewery61.socialMedia = "facebook.com/YBC-Yaletown-Brewing-Company-Official-Page"
        brewery61.logoImage = "YaletownBrewingCompany"
        brewery61.detail = "The Yaletown Brewing Company is Vancouver’s original brewpub. Founded in 1994, just as the former warehouse district of Yaletown was beginning to emerge as a destination for businesses and residents, the YBC was built with the vision of being a true neighbourhood pub – a welcoming gathering place whether you arrived dressed in a suit or flip-flops.During the intervening years, the neighbourhood has undergone tremendous change, but the brewing company has remained Yaletown’s premiere destination for superb beers, inspired menus and unpretentious good times.The hard work of the brewmaster, head chef and staff has resulted in a whole wall full of awards for the Yaletown Brewing Company. It has been voted best brewpub in Canada on several occasions and holds a virtual lock on annual Readers’ Choice awards for Best in Vancouver. Despite the success, everyone at YBC still works diligently to challenge and surprise customers with seasonal beers, evolving menus and entertaining event nights. That’s why it’s the true neighbourhood pub in Vancouver’s most vibrant neighbourhood."


        
        
        let brewery62 = Beer(context: viewContext)
        brewery62.id = 62
        brewery62.name = "Yellow Dog Brewing Co."
        brewery62.address = "1 – 2817 Murray St, Port Moody"
        brewery62.phoneNumber = "604-492-0191"
        brewery62.website = "yellowdogbeer.com"
        brewery62.socialMedia = "facebook.com/YellowDogBeer"
        brewery62.logoImage = "YellowDogBrewingCo"
        brewery62.detail = "Yellow Dog Brewing Co. is a family-run brewery focused on producing high-quality, locally crafted beer for everyone to enjoy."

//        https://www.instagram.com/YellowDogBeer/

        
        
        appDelegage.saveContext()
    }
}
