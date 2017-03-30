Supplier.create(name: "Amazon", email: "amazon@email.com", phone: "12322434")
Supplier.create(name: "ThinkGeek", email: "thinkgeek@email.com", phone: "12322434")
suppliers = Supplier.all

product = Product.create(
  name: "Sonic Screwdriver",
  description: "The Doctor's sciencey magic wand to get out of tight spots. Note: does not work on wood",
  price: 8.99,
  supplier_id: suppliers.sample.id
)
Image.create(
  url: "http://i120.photobucket.com/albums/o176/d_jedi1/Who/qmx-10thdoctorsonic-1.jpg",
  product_id: product.id
)

product = Product.create(
  name: "Lightsaber",
  description: "Part laser, part samuri sword, all awesome. The lightsaber is an elogant weapon for a more civilized age, not nearly as clumsy as a blaster",
  price: 270.10,
  supplier_id: suppliers.sample.id
)
Image.create(
  url: "http://25.media.tumblr.com/d2456964024018fd930338c099371104/tumblr_n2m73lTx2Q1svn82uo1_400.gif",
  product_id: product.id
)

product = Product.create(
  name: "WNYX Mug",
  description: "Get your morning news once you wake up with a cup of joe from... well Joe. He made it with his homemade duct tape",
  price: 1.50,
  supplier_id: suppliers.sample.id
)
Image.create(
  url: "http://s32.postimg.org/6mceui22t/wnyx_mug.png",
  product_id: product.id
)

product = Product.create(
  name: "Space Cowboy Laser Gun",
  description: "This weapon has no other description than, Shiney",
  price: 170.89,
  supplier_id: suppliers.sample.id
)
Image.create(
  url: "http://cdn.shopify.com/s/files/1/0289/1534/products/MalPistol_MP-1_1756x988_e53f9448-81ec-41de-9369-4cbad64f18f5_1024x1024.jpg?v=1401915776",
  product_id: product.id
)

product = Product.create(
  name: "Hitchhiker's Guide to the Galaxy",
  description: "In many of the more relaxed civilizations on the Outer Eastern Rim of the Galaxy, the Hitch-Hiker's Guide has already supplanted the great Encyclopaedia Galactica as the standard repository of all knowledge and wisdom, for though it has many omissions and contains much that is apocryphal, or at least wildly inaccurate, it scores over the older, more pedestrian work in two important respects. First, it is slightly cheaper; and secondly it has the words DON'T PANIC inscribed in large friendly letters on its cover.",
  price: 170.89,
  supplier_id: suppliers.sample.id
)
Image.create(
  url: "http://www.notcot.com/images/guide.gif",
  product_id: product.id
)

product = Product.create(
  name: "DnD Dice set",
  description: "Take down mighty dragons with this timeless set of 20 sided wonders",
  price: 57.50,
  supplier_id: suppliers.sample.id
)
Image.create(
  url: "https://s-media-cache-ak0.pinimg.com/736x/9c/15/7b/9c157bea5331463f9c539cbce739a4b8.jpg",
  product_id: product.id
)
