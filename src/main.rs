extern crate iron;
extern crate persistent;
extern crate router;
extern crate uuid;
extern crate rustorm;
extern crate rustc_serialize;
extern crate chrono;


use std::env;
use std::net::SocketAddrV4;
use std::net::Ipv4Addr;

use iron::prelude::*;

use iron::status;

use router::Router;
use persistent::{Write,Read};

use rustorm::query::Query;
use rustc_serialize::json;
use globals::AppDb;

use std::sync::Arc;

use rustorm::pool::ManagedPool;
use rustorm::database::Database;


mod gen;
mod globals;
mod services;

fn index(_: &mut Request) -> IronResult<Response> {
    let powered_by:String = match env::var("POWERED_BY") {
        Ok(val) => val,
        Err(_) => "Iron".to_string()
    };
    let message = format!("Powered by: {}", powered_by);
    Ok(Response::with((status::Ok, message)))
}



fn get_db_url()->String{
    match env::var("DATABASE_URL") {
        Ok(val) => val,
        Err(_) => "postgres://postgres:p0stgr3s@localhost:5432/bazaar_v7".to_string()
    }
}

///
/// TODO: cache the window/tab/fields
/// Make the db pool, cache accessible via session key
/// the session key will be passed each time
/// 
///
fn main() {
    
    let url = get_db_url();
    let pool = ManagedPool::init(&url, 10).unwrap();

    let mut router = Router::new();
    router.get("/", index);
    router.get("/product/:product_id", services::product_service::product_detail);
    router.get("/products/:page_size/:page", services::product_service::list_product);
    router.post("/product/", services::product_service::add_product);
    router.put("/product/:product_id", services::product_service::update_product);
    router.patch("/product/:product_id", services::product_service::update_product);
    router.delete("/product/:product_id", services::product_service::delete_product);

    let mut middleware = Chain::new(router);
    middleware.link(Read::<AppDb>::both(pool));    

    let host = SocketAddrV4::new(Ipv4Addr::new(0, 0, 0, 0), 8282);
    println!("listening on http://{}", host);
    Iron::new(middleware).http(host).unwrap();
}

