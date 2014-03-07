environments {
    development {

        grails {
            mongo {
                host = "localhost"
                port = 27017
                username = ""
                password=""
                databaseName = "nest5Knowledge"
            }
        }

    }
    test {
        dataSource {
            dbCreate = "update"
            url = "jdbc:h2:mem:testDb;MVCC=TRUE;LOCK_TIMEOUT=10000;DB_CLOSE_ON_EXIT=FALSE"
        }
    }
    production {
        grails {
            mongo {
                host = System.env.OPENSHIFT_MONGODB_DB_HOST
                port = System.env.OPENSHIFT_MONGODB_DB_PORT
                username = "admin"
                password="krzSFm5GYiPt"
                databaseName = "nest5support"
            }
        }

    }
}
