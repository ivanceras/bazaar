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
use rustorm::query::{Filter,Operand};

use std::sync::{Arc, Mutex};
use std::thread;
use iron::prelude::*;

use iron::status;

use router::Router;
use persistent::{Write,Read};
use globals::AppDb;
use services::product_api;

pub fn product_detail(req: &mut Request) -> IronResult<Response> {
    let device_id = req.extensions.get::<Router>().unwrap().find("device_id");
    match device_id{
        Some(ref device_id) => {
            Ok(Response::with((status::Ok, "device_id: {}", *device_id)))
        },
        None => {
           Ok(Response::with((status::BadRequest, "device_id: {}", "hello")))
        }
    }
}

pub fn update_product(req: &mut Request) -> IronResult<Response> {
    let device_id = req.extensions.get::<Router>().unwrap().find("device_id");
    match device_id{
        Some(ref device_id) => {
            Ok(Response::with((status::Ok, "device_id: {}", *device_id)))
        },
        None => {
           Ok(Response::with((status::Ok, "device_id: {}", "hello")))
        }
    }
}

pub fn delete_product(req: &mut Request) -> IronResult<Response> {
    let device_id = req.extensions.get::<Router>().unwrap().find("device_id");
    match device_id{
        Some(ref device_id) => {
            Ok(Response::with((status::Ok, "device_id: {}", *device_id)))
        },
        None => {
           Ok(Response::with((status::Ok, "device_id: {}", "hello")))
        }
    }
}

pub fn add_product(req: &mut Request) -> IronResult<Response> {
    let device_id = req.extensions.get::<Router>().unwrap().find("device_id");
    match device_id{
        Some(ref device_id) => {
            Ok(Response::with((status::Ok, "device_id: {}", *device_id)))
        },
        None => {
           Ok(Response::with((status::Ok, "device_id: {}", "hello")))
        }
    }
}

pub fn list_product(req: &mut Request) -> IronResult<Response> {
    let pool= req.get::<Read<AppDb>>().unwrap();
    let params = req.extensions.get::<Router>().unwrap();
    let page_size = params.find("page_size");
    let page = params.find("page");
    if page_size.is_some() && page.is_some(){
        let db = pool.connect().unwrap();
        let json = get_all_product_json(db.as_ref());
        Ok(Response::with((status::Ok, "{}", json)))
    }
    else{
         Ok(Response::with((status::BadRequest, "No paging specified")))
    }
}

pub fn get_all_product_json(db: &Database)->String{
    let products = product_api::get_all_product(db);
    let json_products = json::encode(&products);
    json_products.unwrap()
}
