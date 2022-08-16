# Landing Page
A simple landing page for Gasless Relayer Saas. It displays pricing info and links to the web app.

## [Demo](http://pupcakes.me:8082)

## Development setup
Modify the variables in the .env file as necessary

```
npm install
```

### Compiles and hot-reloads for development
```
npm run serve
```

### Compiles and minifies for production
```
npm run build
```

### Customize configuration
See [Configuration Reference](https://cli.vuejs.org/config/).

## Docker

**Do not push the docker image to a public location like dockerhub to avoid leaking enviornment variables**
### Build

```
docker build . -t gasless/landing
```
### Run
```
docker run -p 8080:8080 -d --name landing gasless/landing
```

