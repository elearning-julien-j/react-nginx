# Docker server 

## Installation 

### Prod case
# Docker server 

## Installation 

### Prod case

```
docker exec -it db mongosh
```

```
use test
```

```
db.count.insertOne({count: 0})
```

```
exit
```

### Prod case

```
docker compose -f docker-compose.prod.yml up --build db
```

```
docker exec -it db mongosh
```

```
use admin
```

```
db.auth({user: 'admin', pwd: 'password'})
```

```
db.createUser({user: 'jean', pwd: '123', roles:[{role: 'readWrite', db: 'test'}]})
```

```
use test
```

```
db.count.insertOne({count: 0});
```

## Start

```
docker compose -f docker-compose.dev.yml up
```

```
docker compose -f docker-compose.prod.yml up
```

