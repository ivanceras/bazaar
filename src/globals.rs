use iron::typemap::Key;

use rustorm::pool::ManagedPool;

pub struct AppDb;
impl Key for AppDb { type Value = ManagedPool; }
