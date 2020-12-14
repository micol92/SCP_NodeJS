using { sap.capire.bookshop as my } from '../db/schema';
service CatalogService @(path:'/browse') {

  @readonly entity Books as SELECT from my.Books {*,
    author.name as author
  } excluding { createdBy, modifiedBy };

  entity Orders as projection on my.Orders;
  entity OrderItems as projection on my.OrderItems;
}
