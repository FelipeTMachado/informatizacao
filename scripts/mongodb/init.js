db = db.getSiblingDB('meubanco');

db.createUser({
  user: "Felipe",
  pwd: "1234",
  roles: [{ role: "readWrite", db: "meubanco" }]
});

db.produtos.insertMany([
  { nome: "Produto 1", preco: 10.99 },
  { nome: "Produto 2", preco: 20.99 }
]);

