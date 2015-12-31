use rustorm::em::EntityManager;
use rustorm::table::IsTable;
use rustc_serialize::json;
use rustorm::dao::IsDao;
use rustorm::query::Query;
use rustorm::database::Database;

use gen::bazaar::Product;
use gen::bazaar::ProductPhoto;
use gen::bazaar::product_photo;
use gen::bazaar::Photo;
use gen::bazaar::photo;
use rustorm::query::Equality;
use uuid::Uuid;
use rustorm::dao::ToValue;
use rustorm::query::ColumnName;
use rustorm::query::{Filter,Operand};

use std::sync::{Arc, Mutex};
use std::thread;
use iron::prelude::*;

use iron::status;

use router::Router;
use persistent::{Write,Read};
use globals::AppDb;


pub fn get_all_product(db: &Database)->Vec<Product>{
    let mut products:Vec<Product> = Query::select_all()
            .from(&Product::table())
            .collect(db).unwrap();
    
    let mut product_ids = vec![];
    for prod in &mut products{
        prod.photo = get_all_product_photo(db, prod.product_id);
        product_ids.push(prod.product_id);
        
    }
    products
}


fn get_all_product_photo(db: &Database, product_id: Uuid)->Vec<Photo>{
    Query::select_all()
        .from(&Photo::table())
        .left_join(&ProductPhoto::table(),
            product_photo::photo_id, photo::photo_id)
        .filter(product_photo::product_id, Equality::EQ, &product_id)
        .collect(db).unwrap()
}

/// inpractical usage due to the tree nature of data structuring
fn bulk_get_all_product_photo(db: &Database, product_ids: &Vec<Uuid>)->Vec<Photo>{
    let mut photo_q = Query::select_all();
    photo_q.from(&Photo::table())
        .left_join(&ProductPhoto::table(),
            product_photo::photo_id, photo::photo_id);
        
    let mut operands = vec![];
    for pid in product_ids{
        operands.push(Operand::Value(pid.to_db_type()));
    }
    let column = Operand::ColumnName(ColumnName::from_str(product_photo::product_id));
    let filter = Filter::bare_new(column, Equality::IN, Operand::Vec(operands));
    
    photo_q.add_filter(filter);
    let photo:Vec<Photo> = photo_q.collect(db).unwrap();
    photo
}
