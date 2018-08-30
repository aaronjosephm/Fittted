require "date"

OrderOutfit.destroy_all if Rails.env.development?
OutfitItem.destroy_all if Rails.env.development?
Outfit.destroy_all if Rails.env.development?
Order.destroy_all if Rails.env.development?
User.destroy_all if Rails.env.development?
Item.destroy_all if Rails.env.development?

aaron = User.create(
  email: "aaron@gmail.com",
  password: "wagon_2018",
  address: "5333 Casgrain Ave, Montreal, QC H2T 1X3"
  )

caroline = User.create(
  email: "caroline@gmail.com",
  password: "wagon_2018",
  address: "5333 Casgrain Ave, Montreal, QC H2T 1X3"
  )

martin = User.create(
  email: "martine@gmail.com",
  password: "wagon_2018",
  address: "5334 Casgrain Ave, Montreal, QC H2T 1X3"
  )

####################################### Out fit 1 ##############################################

black_denim_jeans = Item.new(
  name: "black denim jeans",
  price: 75,
  description: "Black Levis denim jeans - Fall design iteration 1.",
  photo: "https://images.esellerpro.com/2674/I/166/799/34.jpg"
  )

black_denim_jeans.save!

denim_jacket = Item.new(
  name: "Light blue denim jacket",
  price: 100,
  description: "Our company is one of the leading companies in offering Men's Denim Jacket to the client. This product is manufactured from top grade material and with the help of sophisticated technology as per the set industry standards and norms. Men's Denim Jacket is highly appreciated by the clients for good quality and attractive designs.",
  photo: "https://3.imimg.com/data3/SE/EX/MY-1895223/men-s-denim-jacket-500x500.jpg"
  )

denim_jacket.save!

grey_sweater = Item.new(
  name: "pull over Grey sweater",
  price: 50,
  description: "A soft, lightweight hoodie in jersey fabric, featuring an icon at left chest, pouch pocket and curved hem, Slim Fit, Imported.",
  photo: "http://ernestonunezclothin.weebly.com/uploads/6/1/0/7/61076955/1665709.jpg"
  )

grey_sweater.save!

white_shoes = Item.new(
  name: "Addidas tennis shoes",
  price: 100,
  description: "With a technical look from the revolutionary '90s Equipment series, these shoes mix modern materials with retro runner style. They feature a sock-like knit upper and supportive TPU wings that wrap the heel. Detailed with textile 3-Stripes that merge with the moulded 3-Stripes on the midsole.",
  photo: "https://www.adidas.ca/dis/dw/image/v2/aaqx_prd/on/demandware.static/-/Sites-adidas-products/default/dw0e516a99/zoom/CP9558_04_standard.jpg?sh=840&strip=false&sw=840.jpg"
  )

white_shoes.save!

stone_island_beanie = Item.new(
  name: "grey beanie",
  price: 20,
  description: "Beanie from Stone Island",
  photo: "https://cdn.shopify.com/s/files/1/0068/2162/products/tuque_e97d3d55-2b2d-4e69-ac97-c11ef251ff51.jpg?v=1532891212.jpg"
  )

stone_island_beanie.save!

double_denim = Outfit.new(
  name: "double denim",
  price: 345,
  theme: "weekend chill",
  description: "Cool outfit for going out in relatively cold weather. Each clothing item for this outfit was made for comfort, and style. Wear it in the snow, rain, or just on a cloudy day. Feel warm with this one.",
  photo: "alexcosta.jpg",
  body_type: "slim",
  color: "blue"
  )

double_denim.save!

shoes = OutfitItem.new(
  item: white_shoes,
  outfit: double_denim
  )

shoes.save!

jeans = OutfitItem.new(
  item: black_denim_jeans,
  outfit: double_denim
  )

jeans.save!

jacket = OutfitItem.new(
  item: denim_jacket,
  outfit: double_denim
  )

jacket.save!

sweater = OutfitItem.new(
  item: grey_sweater,
  outfit: double_denim
  )

sweater.save!

beanie = OutfitItem.new(
  item: stone_island_beanie,
  outfit: double_denim
  )

beanie.save!

####################################### Out fit 2 ##############################################

blue_denim_jeans = Item.new(
  name: "blue denim jeans",
  price: 75,
  description: "Blue denim jeans - Fall design iteration 1.",
  photo: "http://www.eurobistrori.com/images/Replayuk/RE322G04S-K11.jpg"
  )

blue_denim_jeans.save!

trench_jacket = Item.new(
  name: "trench jacket",
  price: 100,
  description: "Our company is one of the leading companies in offering Men's Denim Jacket to the client. This product is manufactured from top grade material and with the help of sophisticated technology as per the set industry standards and norms. Men's Denim Jacket is highly appreciated by the clients for good quality and attractive designs",
  photo: "https://cdn.shopify.com/s/files/1/1230/9376/products/CGO-2407M_7EBlack_1268x1276.jpg"
  )

trench_jacket.save!

jumper_sweater = Item.new(
  name: "Sleek Grey Jumper",
  price: 75,
  description: "A soft, lightweight hoodie in jersey fabric, featuring an icon at left chest, pouch pocket and curved hem, Slim Fit, Imported",
  photo: "https://www.repertoirefashion.co.uk/images/armani-jeans-mens-jumper-logo-crew-neck-grey-sweatshirt-p27621-75943_medium.jpg"
  )

jumper_sweater.save!

brown_boots = Item.new(
  name: "Brown boots",
  price: 100,
  description: "With a technical look from the revolutionary '90s Equipment series, these shoes mix modern materials with retro runner style. They feature a sock-like knit upper and supportive TPU wings that wrap the heel. Detailed with textile 3-Stripes that merge with the moulded 3-Stripes on the midsole.",
  photo: "https://www.julesb.co.uk/images/products/1504688424-52154400.jpg"
  )

brown_boots.save!

urban_classic = Outfit.new(
  name: "urban classic",
  price: 345,
  theme: "weekend chill",
  description: "Cool outfit for going out in relatively cold weather. Each clothing item for this outfit was made for comfort, and style. Wear it in the snow, rain, or just on a cloudy day. Feel warm with this one.",
  photo: "casual.jpg",
  body_type: "large",
  color: "red"
  )

urban_classic.save!

shoes = OutfitItem.new(
  item: brown_boots,
  outfit: urban_classic
  )

shoes.save!

jeans = OutfitItem.new(
  item: blue_denim_jeans,
  outfit: urban_classic
  )

jeans.save!

  jacket = OutfitItem.new(
  item: trench_jacket,
  outfit: urban_classic
  )

jacket.save!

sweater = OutfitItem.new(
  item: jumper_sweater,
  outfit: urban_classic
  )

sweater.save!


#### Outfit 3 #####

brown_jacket = Item.new(
  name: "brown leather jacket",
  price: 50,
  description: "A versatile jacket to take you from day to night. Pair with jeans and sneakers. Material: 100% PU, Polyester Lining.",
  photo: "https://connor.imgix.net/Connor/Products/C15CJ113_BRN_1.png?w=480&h=680&bg=f1f1f1&cs=tinysrgb&fm=jpg&rect=440,0,2120,3000"
  )

brown_jacket.save!

ripped_jeans = Item.new(
  name: "ripped jeans",
  price: 100,
  description: "Salt & Pepper's 'Kate' skinny jeans are ripped, faded and whiskered to perfection for an authentic worn-in effect. This high-rise pair is made from soft stretch-denim with a skinny fit all the way down to your ankle. We think they look especially cool with ankle boots or lace flats.",
  photo: "https://www.fashionnoiz.com/userfiles/galleries/kate-ripped-blue-jeans-11500.jpg"
  )

ripped_jeans.save!

suade_boots = Item.new(
  name: "suade boots",
  price: 100,
  description: "SIZING -- Athletic shoes tend to run 1/2 to 1 size larger than our boots. Order the same size that you wear in other leather boots or leather dress shoes. If you are between sizes, we recommend ordering the smaller size.",
  photo: "https://images-na.ssl-images-amazon.com/images/I/81s778M37WL._UX395_.jpg"
  )

suade_boots.save!

black_shirt = Item.new(
  name: "black shirt",
  price: 20,
  description: "Bella + Canvas 3001 Unisex Jersey Short Sleeve Crew Neck: This Bella 3001 unisex essential fits like a well-loved favorite, featuring a crew neck, short sleeves and designed with superior combed and ring-spun cotton that acts as the best blank canvas for printing. Offered in a variety of solid and heather colors. Made from US raw materials and printed in the US.",
  photo: "https://appassets.azureedge.net/product-tshirts/Background/Front/AA2001_Black_Front_BackgroundV1.png"
  )

black_shirt.save!

midnight_classic = Outfit.new(
  name: "midnight classic",
  price: 300,
  theme: "weekend chill",
  description: "Bella + Canvas 3001 Unisex Jersey Short Sleeve Crew Neck: This Bella 3001 unisex essential fits like a well-loved favorite, featuring a crew neck, short sleeves and designed with superior combed and ring-spun cotton that acts as the best blank canvas for printing. Offered in a variety of solid and heather colors. Made from US raw materials and printed in the US.",
  photo: "Casual-main.jpg",
  body_type: "large",
  color: "red"
  )

midnight_classic.save!

brown_jacket_outfit = OutfitItem.new(
  item: brown_jacket,
  outfit: midnight_classic
  )

brown_jacket_outfit.save!

ripped_jeans_outfit = OutfitItem.new(
  item: ripped_jeans,
  outfit: midnight_classic
  )

ripped_jeans_outfit.save!

suade_boots_outfit = OutfitItem.new(
  item: suade_boots,
  outfit: midnight_classic
  )

suade_boots_outfit.save!

black_shirt_outfit = OutfitItem.new(
  item: black_shirt,
  outfit: midnight_classic
  )

black_shirt_outfit.save!

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?