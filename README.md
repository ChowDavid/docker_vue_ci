# hello_vue_test

## Project setup
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

### Run your unit tests
```
npm run test:unit
```

### Lints and fixes files
```
npm run lint
```

### Customize configuration
See [Configuration Reference](https://cli.vuejs.org/config/).

### commit the code the build in Travis
- Github should be public
- Travis follow the .tracis.yml to build and run the local test

### work flow
1. Code commit and push to gitHub
2. Travis has a web hook to github
3. Travis read the .travis.yml file 
4. start the npm unit test for vue and exit 0
5. if all good travis will deploy the code to AWS EBS
6. EBS got the code and run the Dockerfile for master
7. all good then URL from AWS can read the content

