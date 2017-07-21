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
        
        
        let brewery2 = Beer(context: viewContext)
        brewery2.id = 2
        brewery2.name = "Andina Brewing Company"
        brewery2.address = "1507 Powell St, Vancouver"
        brewery2.phoneNumber = "604-253-2400"
        brewery2.website = "andinabrewing.ca"
        brewery2.socialMedia = "facebook.com/andinabrewing"
        
        
        let brewery3 = Beer(context: viewContext)
        brewery3.id = 3
        brewery3.name = "Big Ridge Brewing Co."
        brewery3.address = "5580 152 St, Surrey"
        brewery3.phoneNumber = "604-574-2739"
        brewery3.website = "mjg.ca/big-ridge"
        brewery3.socialMedia = "facebook.com/Big-Ridge-Brewing-Co "
        
        
        let brewery4 = Beer(context: viewContext)
        brewery4.id = 4
        brewery4.name = "Be Right Back Brewing (BRB Brewing)"
        brewery4.address = "180-14200 Entertainment Blvd, Richmond"
        brewery4.phoneNumber = "604-271-2439"
        brewery4.website = "brbco.ca"
        brewery4.socialMedia = "facebook.com/brbco1997"
        
        
        let brewery5 = Beer(context: viewContext)
        brewery5.id = 5
        brewery5.name = "Big Rock Urban Brewery"
        brewery5.address = "310 West 4th Ave, Vancouver"
        brewery5.phoneNumber = "604-708-8311"
        brewery5.website = "bigrockurban.com/"
        brewery5.socialMedia = "facebook.com/BigRockUrbanYVR"
        
        
        let brewery6 = Beer(context: viewContext)
        brewery6.id = 6
        brewery6.name = "Black Kettle Brewing Company"
        brewery6.address = "720 Copping St, North Vancouver"
        brewery6.phoneNumber = "604-987-9989"
        brewery6.website = "blackkettlebrewing.com"
        brewery6.socialMedia = "facebook.com/BlackKettleBrewing"
        
        
        let brewery7 = Beer(context: viewContext)
        brewery7.id = 7
        brewery7.name = "Andina Brewing Company"
        brewery7.address = "1507 Powell St, Vancouver"
        brewery7.phoneNumber = "604-253-2400"
        brewery7.website = "andinabrewing.ca"
        brewery7.socialMedia = "facebook.com/andinabrewing"
        
        
        let brewery8 = Beer(context: viewContext)
        brewery8.id = 8
        brewery8.name = "Bomber Brewing"
        brewery8.address = "1488 Adanac St., Vancouver "
        brewery8.phoneNumber = "604-428-7457"
        brewery8.website = "bomberbrewing.com"
        brewery8.socialMedia = "facebook.com/bomberbrewing"
        
        
        let brewery9 = Beer(context: viewContext)
        brewery9.id = 9
        brewery9.name = "Brassneck Brewery"
        brewery9.address = "1507 Powell St, Vancouver"
        brewery9.phoneNumber = "604-259-7686"
        brewery9.website = "brassneck.ca"
        brewery9.socialMedia = "facebook.com/Brassneck-Brewery"
        
        
        let brewery10 = Beer(context: viewContext)
        brewery10.id = 10
        brewery10.name = "Bridge Brewing Company"
        brewery10.address = "1448 Charlotte Rd., North Vancouver "
        brewery10.phoneNumber = "604-770-2739"
        brewery10.website = "bridgebrewing.com"
        brewery10.socialMedia = "facebook.com/BridgeBrewingCompany"
        
        
        let brewery11 = Beer(context: viewContext)
        brewery11.id = 11
        brewery11.name = "Canuck Empire Brewing"
        brewery11.address = "Sorry for any inconvenience Aldergrove, British Columbia No tasting room or growler fills"
        brewery11.phoneNumber = "N/A"
        brewery11.website = "canuckempirebrewing.com "
        brewery11.socialMedia = "facebook.com/CanuckEmpire"
        
        
        let brewery12 = Beer(context: viewContext)
        brewery12.id = 12
        brewery12.name = "Andina Brewing Company"
        brewery12.address = "1507 Powell St, Vancouver"
        brewery12.phoneNumber = "604-253-2400"
        brewery12.website = "andinabrewing.ca"
        brewery12.socialMedia = "facebook.com/andinabrewing"
        
        
        let brewery13 = Beer(context: viewContext)
        brewery13.id = 13
        brewery13.name = "Chaos & Solace Craft Brewing Company"
        brewery13.address = "#1 – 9360 Mill Street, Chilliwack"
        brewery13.phoneNumber = "604-391-1000"
        brewery13.website = "chaosandsolacebrewing.com"
        brewery13.socialMedia = "facebook.com/ChaosAndSolaceBrewing"
        
        
        let brewery14 = Beer(context: viewContext)
        brewery14.id = 14
        brewery14.name = "Callister Brewing Co."
        brewery14.address = "1338 Franklin St, Vancouver"
        brewery14.phoneNumber = "604-716-2529"
        brewery14.website = "callisterbrewing.com"
        brewery14.socialMedia = "facebook.com/callisterbrewing"
        
        
        let brewery15 = Beer(context: viewContext)
        brewery15.id = 15
        brewery15.name = "Central City Brewing Co."
        brewery15.address = "11411 Bridgeview Dr, Surrey"
        brewery15.phoneNumber = "604-588-2337"
        brewery15.website = "centralcitybrewing.com"
        brewery15.socialMedia = "facebook.com/CentralCitybrewing"
        
        
        let brewery16 = Beer(context: viewContext)
        brewery16.id = 16
        brewery16.name = "Coal Harbour Brewing Company"
        brewery16.address = "1967 Triumph St, Vancouver "
        brewery16.phoneNumber = "604-215-7471"
        brewery16.website = "coalharbourbrewing.com"
        brewery16.socialMedia = "facebook.com/CoalHarbourBrewing"
        
        
        let brewery17 = Beer(context: viewContext)
        brewery17.id = 17
        brewery17.name = "Dageraad Brewing"
        brewery17.address = "114 – 3191 Thunderbird Cr, Burnaby"
        brewery17.phoneNumber = "604-420-2050"
        brewery17.website = "dageraadbrewing.com"
        brewery17.socialMedia = "facebook.com/DageraadBrewing"
        
        
        let brewery18 = Beer(context: viewContext)
        brewery18.id = 18
        brewery18.name = "Dead Frog Brewery"
        brewery18.address = "1 – 27272 Gloucester Way, Aldergrove"
        brewery18.phoneNumber = "1-888-856-1055"
        brewery18.website = "deadfrog.ca"
        brewery18.socialMedia = "facebook.com/deadfrogbrewery"
        
        
        let brewery19 = Beer(context: viewContext)
        brewery19.id = 19
        brewery19.name = "Deep Cove Brewers And Distillers"
        brewery19.address = "Unit 170 – 2270 Dollarton Hwy, North Vancouver"
        brewery19.phoneNumber = "604-770-1136"
        brewery19.website = "deepcovecraft.com"
        brewery19.socialMedia = "facebook.com/deepcovebrewersanddistillers"
        
        
        let brewery20 = Beer(context: viewContext)
        brewery20.id = 20
        brewery20.name = "Doan’s Craft Brewing Company"
        brewery20.address = "1830 Powell St., Vancouver"
        brewery20.phoneNumber = "604-559-0414"
        brewery20.website = "doanscraftbrewing.com"
        brewery20.socialMedia = "facebook.com/doanscraftbrewing"
        
        
        let brewery21 = Beer(context: viewContext)
        brewery21.id = 21
        brewery21.name = "Dockside Brewing Company"
        brewery21.address = "1253 Johnston St, Vancouver"
        brewery21.phoneNumber = "604-685-7079"
        brewery21.website = "docksidevancouver.com"
        brewery21.socialMedia = "facebook.com/eatDockside"
        
        
        let brewery22 = Beer(context: viewContext)
        brewery22.id = 22
        brewery22.name = "Dogwood Brewing"
        brewery22.address = "8284 Sherbrooke St, Vancouver"
        brewery22.phoneNumber = "604-325-3693"
        brewery22.website = "dogwoodbrew.com"
        brewery22.socialMedia = "facebook.com/dogwoodbrew"
        
        
        
        let brewery23 = Beer(context: viewContext)
        brewery23.id = 23
        brewery23.name = "Faculty Brewing Company"
        brewery23.address = "1830 Ontario St, Vancouver"
        brewery23.phoneNumber = "778-818-6794"
        brewery23.website = "facultybrewing.com"
        brewery23.socialMedia = "facebook.com/facultybrewing"
        
        
        let brewery24 = Beer(context: viewContext)
        brewery24.id = 24
        brewery24.name = "Field House Brewing Company"
        brewery24.address = "2281 W Railway St, Abbotsford"
        brewery24.phoneNumber = "604-776-2739"
        brewery24.website = "fieldhousebrewing.com"
        brewery24.socialMedia = "facebook.com/fieldhousebrewing"
        
        
        let brewery25 = Beer(context: viewContext)
        brewery25.id = 25
        brewery25.name = "Four Winds Brewing Company"
        brewery25.address = "4 – 7355 72nd St, Delta "
        brewery25.phoneNumber = "604-940-9949"
        brewery25.website = "fourwindsbrewing.ca"
        brewery25.socialMedia = "facebook.com/FourWindsBrewingCo"
        
        
        
        let brewery26 = Beer(context: viewContext)
        brewery26.id = 26
        brewery26.name = "Fuggles & Warlock Craftworks"
        brewery26.address = "103-11220 Horseshoe Way, Richmond"
        brewery26.phoneNumber = "604-285-7745"
        brewery26.website = "fuggleswarlock.com"
        brewery26.socialMedia = "facebook.com/FugglesAndWarlockCraftworks"
        
        
        
        let brewery27 = Beer(context: viewContext)
        brewery27.id = 27
        brewery27.name = "Granville Island Brewing"
        brewery27.address = "1441 Cartwright St, Vancouver"
        brewery27.phoneNumber = "604-687-2739"
        brewery27.website = "gib.ca"
        brewery27.socialMedia = "facebook.com/granvilleislandbrewing"
        
        
        let brewery28 = Beer(context: viewContext)
        brewery28.id = 28
        brewery28.name = "Green Leaf Brewing Co."
        brewery28.address = "123 Carrie Cates Ct, North Vancouver"
        brewery28.phoneNumber = "604-984-8409"
        brewery28.website = "greenleafbrew.com"
        brewery28.socialMedia = "facebook.com/GLbrewery"
        
        
        let brewery29 = Beer(context: viewContext)
        brewery29.id = 29
        brewery29.name = "Hearthstone Brewery"
        brewery29.address = "1015 Marine Dr, North Vancouver"
        brewery29.phoneNumber = "604-984-1842"
        brewery29.website = "hearthstonebrewery.ca"
        brewery29.socialMedia = "facebook.com/hearthstonebrewery"
        
        
        
        let brewery30 = Beer(context: viewContext)
        brewery30.id = 30
        brewery30.name = "Luppolo Brewing Company"
        brewery30.address = "1123 Venables St, Vancouver"
        brewery30.phoneNumber = "604-255-4997"
        brewery30.website = "luppolobrewing.ca"
        brewery30.socialMedia = "facebook.com/luppolobrewingco"
        
        
        
        let brewery31 = Beer(context: viewContext)
        brewery31.id = 31
        brewery31.name = "Main Street Brewing Company"
        brewery31.address = "261 East 7th Ave, Vancouver"
        brewery31.phoneNumber = "604-336-7711"
        brewery31.website = "mainstreetbeer.ca"
        brewery31.socialMedia = "facebook.com/MainStreetBeer"
        
        
        let brewery32 = Beer(context: viewContext)
        brewery32.id = 32
        brewery32.name = "Maple Meadows Brewing Company"
        brewery32.address = "22775 Dewdney Trunk Rd, Maple Ridge"
        brewery32.phoneNumber = "778-239-7946"
        brewery32.website = "maplemeadowsbrewingco.com"
        brewery32.socialMedia = "facebook.com/maplemeadowsbrewery"
        
        
        
        let brewery33 = Beer(context: viewContext)
        brewery33.id = 33
        brewery33.name = "Mission Springs Brewing Company"
        brewery33.address = "7160 Oliver St, Mission"
        brewery33.phoneNumber = "604-820-1009"
        brewery33.website = "missionsprings.ca"
        brewery33.socialMedia = "facebook.com/MissionSpringsPub"
        
        
        
        let brewery34 = Beer(context: viewContext)
        brewery34.id = 34
        brewery34.name = "Moody Ales"
        brewery34.address = "2601 Murray St, Port Moody"
        brewery34.phoneNumber = "604-492-3911"
        brewery34.website = "moodyales.com"
        brewery34.socialMedia = "facebook.com/MoodyAles"
        
        
        
        let brewery35 = Beer(context: viewContext)
        brewery35.id = 35
        brewery35.name = "Off The Rail Brewing Co."
        brewery35.address = "1351 Adanac St, Vancouver"
        brewery35.phoneNumber = "604-563-5767"
        brewery35.website = "offtherailbrewing.com"
        brewery35.socialMedia = "facebook.com/Off-The-Rail-Brewing-Co"
        
        
        
        let brewery36 = Beer(context: viewContext)
        brewery36.id = 36
        brewery36.name = "Old Abbey Ales"
        brewery36.address = "1A 30321 Fraser Hwy, Abbotsford"
        brewery36.phoneNumber = "604-607-5104"
        brewery36.website = "oldabbeyales.com"
        brewery36.socialMedia = "facebook.com/oldabbeyales"
        
        
        let brewery37 = Beer(context: viewContext)
        brewery37.id = 37
        brewery37.name = "Old Yale Brewing Co."
        brewery37.address = "#4 – 7965 Venture Place, Chilliwack"
        brewery37.phoneNumber = "604-392-2011"
        brewery37.website = "oldyalebrewing.com"
        brewery37.socialMedia = "facebook.com/oldyalebrewing"
        
        
        let brewery38 = Beer(context: viewContext)
        brewery38.id = 38
        brewery38.name = "Parallel 49 Brewing Company"
        brewery38.address = "1950 Triumph St, Vancouver"
        brewery38.phoneNumber = "604-558-3774"
        brewery38.website = "parallel49brewing.com"
        brewery38.socialMedia = "facebook.com/Parallel49Brewing"
        
        
        let brewery39 = Beer(context: viewContext)
        brewery39.id = 39
        brewery39.name = "Pat’s Pub & Brewhouse"
        brewery39.address = "403 East Hastings St, Vancouver"
        brewery39.phoneNumber = "604-255-4301"
        brewery39.website = "patspub.ca"
        brewery39.socialMedia = "facebook.com/PatsPubandBrewHouse"
        
        
        let brewery40 = Beer(context: viewContext)
        brewery40.id = 40
        brewery40.name = "The Parkside Brewery"
        brewery40.address = "2731 Murray St, Port Moody"
        brewery40.phoneNumber = "604-492-2731"
        brewery40.website = "theparksidebrewery.com"
        brewery40.socialMedia = "facebook.com/theparksidebrewery"
        
        
        let brewery41 = Beer(context: viewContext)
        brewery41.id = 41
        brewery41.name = "Postmark Brewing"
        brewery41.address = "55 Dunlevy Ave, Vancouver"
        brewery41.phoneNumber = "604-699-1988"
        brewery41.website = "postmarkbrewing.com"
        brewery41.socialMedia = "facebook.com/postmarkbrewing"
        
        
        let brewery42 = Beer(context: viewContext)
        brewery42.id = 42
        brewery42.name = "Powell Street Craft Brewery"
        brewery42.address = "1357 Powell St., Vancouver"
        brewery42.phoneNumber = "604-558-2537"
        brewery42.website = "powellbeer.com"
        brewery42.socialMedia = "facebook.com/PowellBeer"
        
        
        let brewery43 = Beer(context: viewContext)
        brewery43.id = 43
        brewery43.name = "R&B Brewing Co."
        brewery43.address = "54 East 4th Ave, Vancouver"
        brewery43.phoneNumber = "604-874-2537"
        brewery43.website = "randbbrewing.com"
        brewery43.socialMedia = "facebook.com/RBBrewing"
        
        
        let brewery44 = Beer(context: viewContext)
        brewery44.id = 44
        brewery44.name = "Ravens Brewing Company"
        brewery44.address = "2485 Townline Rd, Abbotsford"
        brewery44.phoneNumber = "604-746-7209"
        brewery44.website = "ravensbrewing.com"
        brewery44.socialMedia = "facebook.com/ravensbrewing"
        
        
        let brewery45 = Beer(context: viewContext)
        brewery45.id = 45
        brewery45.name = "Red Truck Beer Company"
        brewery45.address = "295 East 1st Ave, Vancouver"
        brewery45.phoneNumber = "604-682-4733"
        brewery45.website = "redtruckbeer.com"
        brewery45.socialMedia = "facebook.com/RedTruckBeer"
        
        
        let brewery46 = Beer(context: viewContext)
        brewery46.id = 46
        brewery46.name = "Ridge Brewing Co."
        brewery46.address = "2 – 22826 Dewdney Trunk Rd, Maple Ridge"
        brewery46.phoneNumber = "604-380-0888"
        brewery46.website = "ridgebrewing.com"
        brewery46.socialMedia = "facebook.com/ridgebrewery"
        
        
        let brewery47 = Beer(context: viewContext)
        brewery47.id = 47
        brewery47.name = "Russell Brewing Company"
        brewery47.address = "#202 13018 80th Ave, Surrey"
        brewery47.phoneNumber = ": 604-599-1190"
        brewery47.website = "russellbeer.com"
        brewery47.socialMedia = "facebook.com/Russell.Brewing"
        
        
        let brewery48 = Beer(context: viewContext)
        brewery48.id = 48
        brewery48.name = "Sailor Hagar’s Brew Pub"
        brewery48.address = "86 Semisch Ave, North Vancouver"
        brewery48.phoneNumber = "604-984-3087"
        brewery48.website = "sailorhagarspub.com"
        brewery48.socialMedia = "facebook.com/sailorhagarspub"
        
        
        let brewery49 = Beer(context: viewContext)
        brewery49.id = 49
        brewery49.name = "Shaftebury Brewing Company"
        brewery49.address = "Delta, BC"
        brewery49.phoneNumber = "N/A"
        brewery49.website = "shaftebury.com"
        brewery49.socialMedia = "facebook.com/shaftebury"
        
        
        let brewery50 = Beer(context: viewContext)
        brewery50.id = 50
        brewery50.name = "Stanley Park Brewery"
        brewery50.address = "Vancouver"
        brewery50.phoneNumber = "N/A"
        brewery50.website = "stanleyparkbrewery.ca "
        brewery50.socialMedia = "facebook.com/stanleyparkbrewery"
        
        
        let brewery51 = Beer(context: viewContext)
        brewery51.id = 51
        brewery51.name = "Steamworks Brewing Company"
        brewery51.address = "3845 William St, Burnaby"
        brewery51.phoneNumber = "604-620-7250"
        brewery51.website = "steamworks.com"
        brewery51.socialMedia = "facebook.com/SteamworksBeer"
        
        
        let brewery52 = Beer(context: viewContext)
        brewery52.id = 52
        brewery52.name = "Steel & Oak Brewing Co."
        brewery52.address = "1319 Third Ave, New Westminster"
        brewery52.phoneNumber = "604-540-6495"
        brewery52.website = "steelandoak.ca"
        brewery52.socialMedia = "facebook.com/steelandoak.ca"
        
        
        let brewery53 = Beer(context: viewContext)
        brewery53.id = 53
        brewery53.name = "Strange Fellows Brewing"
        brewery53.address = "1345 Clark Dr, Vancouver"
        brewery53.phoneNumber = "604-767-2117"
        brewery53.website = "strangefellowsbrewing.com "
        brewery53.socialMedia = "facebook.com/strangefellowsbrewing"
        
        
        let brewery54 = Beer(context: viewContext)
        brewery54.id = 54
        brewery54.name = "Storm Brewing Ltd."
        brewery54.address = "310 Commercial Dr, Vancouver"
        brewery54.phoneNumber = "604-255-9119"
        brewery54.website = "stormbrewing.org"
        brewery54.socialMedia = "facebook.com/StormBrewing"
        
        
        let brewery55 = Beer(context: viewContext)
        brewery55.id = 55
        brewery55.name = "Strathcona Beer Company"
        brewery55.address = "895 East Hastings St, Vancouver"
        brewery55.phoneNumber = "778-379-9050"
        brewery55.website = "strathconabeer.com"
        brewery55.socialMedia = "facebook.com/strathconabeer"
        
        
        let brewery56 = Beer(context: viewContext)
        brewery56.id = 56
        brewery56.name = "Sunday Cider"
        brewery56.address = "1575 Vernon Dr, Vancouver"
        brewery56.phoneNumber = "N/A"
        brewery56.website = "sundaycider.com"
        brewery56.socialMedia = "facebook.com/sundaycider"
        
        
        let brewery57 = Beer(context: viewContext)
        brewery57.id = 57
        brewery57.name = "Trading Post Brewing"
        brewery57.address = "20120 64 Ave #107, Langley"
        brewery57.phoneNumber = "604-343-2337"
        brewery57.website = "tradingpostbrewing.com"
        brewery57.socialMedia = "facebook.com/TradingPostBrewing"
        
        
        let brewery58 = Beer(context: viewContext)
        brewery58.id = 58
        brewery58.name = "Twin Sails Brewing"
        brewery58.address = "2821 Murray St., Port Moody"
        brewery58.phoneNumber = "604-492-4234"
        brewery58.website = "twinsailsbrewing.com"
        brewery58.socialMedia = "facebook.com/TwinSailsBrewing"
        
        
        let brewery59 = Beer(context: viewContext)
        brewery59.id = 59
        brewery59.name = "White Rock Beach Beer Company"
        brewery59.address = "15181 Russell Ave, White Rock"
        brewery59.phoneNumber = "604-319-4378"
        brewery59.website = "whiterockbeachbeer.com "
        brewery59.socialMedia = "facebook.com/White-Rock-Beach-Beer-Company"
        
        
        let brewery60 = Beer(context: viewContext)
        brewery60.id = 60
        brewery60.name = "White Rock Brewing"
        brewery60.address = "3033 King George Blvd, Surrey"
        brewery60.phoneNumber = "604-560-6430"
        brewery60.website = "whiterockbrewing.ca"
        brewery60.socialMedia = "facebook.com/whiterockbrewing"
        
        
        let brewery61 = Beer(context: viewContext)
        brewery61.id = 61
        brewery61.name = "Yaletown Brewing Company"
        brewery61.address = "1111 Mainland St, Vancouver"
        brewery61.phoneNumber = "604-681-2739"
        brewery61.website = "mjg.ca/yaletown "
        brewery61.socialMedia = "facebook.com/YBC-Yaletown-Brewing-Company-Official-Page"
        
        
        let brewery62 = Beer(context: viewContext)
        brewery62.id = 62
        brewery62.name = "Yellow Dog Brewing Co."
        brewery62.address = "1 – 2817 Murray St, Port Moody"
        brewery62.phoneNumber = "604-492-0191"
        brewery62.website = "yellowdogbeer.com"
        brewery62.socialMedia = "facebook.com/YellowDogBeer"
        
        
        appDelegage.saveContext()
    }
}
