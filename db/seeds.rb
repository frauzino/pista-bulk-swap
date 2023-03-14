Subscription.destroy_all

emails = [
  "a@a.a",
  "b@b.b",
  "c@c.c",
  "d@d.d",
  "e@e.e",
  "f@f.f"
]

products = [
  "banana",
  "wood",
  "cat",
  "tv",
  "coffee",
  "plant",
  "book"
]

User.create(
  email: "bonjour@cafepista.com",
  password: "Pistadev"
)

10.times do
  Subscription.create(
    customer_email: emails.sample,
    product_title: products.sample,
    variant_title: rand(1..9)
  )
end
