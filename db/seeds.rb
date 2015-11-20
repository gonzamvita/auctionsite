(1..10).each do |index|
  Product.create(
    title: "Product #{index}",
    description: "This is project number #{index}",
    deadline: (Date.current + 10.days)
  )
end

(1..3).each do |index2|
  User.create(
    name: "User #{index}",
    email: "email#{index}@provider#{index}.com"
  )
end
