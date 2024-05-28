# PedrOC20/bounce-bck

This is a Rails app. To start you need to run a database setup and do some imports.

### Dependencies Required

```
postgresql
rails v7.0.8.1
```


### First Time Setup Instructions

```
bundle install
rails db:create
rails db:migrate
```

### Starting Server
1. Run the development server with:

```bash
$ rails s -p 3001
```

API will be available at `http://localhost:3001/api/...` 
Example: `GET http://localhost:3001/api/stores` to get the stores available
