import express from 'express'
import { PrismaClient } from '@prisma/client'
import cors from 'cors'

const prisma = new PrismaClient()
const app = express()

//Middleware

app.use(cors()) // Use this after the variable declaration

//Index route
app.get('/', function (req, res) {
  console.log("test");
  res.json({ "desc": "test" });

});
 
app.get('/shop', async (req, res) => {
  const posts = await prisma.products.findMany()
  res.json(posts)
})

app.get('/shop/:slug', async (req, res) => {

  //find productID by slug name
  const productid = await prisma.products.findMany({
    where: {
      slug: req.params.slug,
    },
    include: {
      productVariants: true,
    }

  });

  if(productid == ''){
    res.send('Product not found');
  } else{
    res.send(productid[0]); 
  }
 
})



  app.listen(5000, () => {
    console.log("server running on port 5000");
  });