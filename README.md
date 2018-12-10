## Ionic 4 Apollo GraphQL Example

Sample application that integrates Ionic and Apollo GraphQL sever.

Implementation include:

- Ionic4 Angular frontend backed by Cordova/Capacitor for mobile deployment
- Apollo GraphQL Node.js server implementing sample `Tasks` API

## Approach

Server side implements classical CRUD model on `Task` objects. 
Updates are being delivered using GraphQL subscriptions.

## Running example

Requirements:

- Docker
- Node.js 6.x or above

### Running the server

1. Start the postgres docker image

   ```shell
   cd ./server
   docker-compose up -d
   ```

1. Start the server

   ```shell
   npm install
   npm run start
   ```

### Running the client


1. Install Ionic

   ```shell
   npm install -g ionic
   ```

1. Install this Ionic 4 starter app

   ```shell
   npm install
   ```

1. Browse Ionic 4 app
   
   ```shell
   npm run start
   ```

1. Run on Emulator

   ```shell
   npm run ionic:android
   ```

### Demo

![](./resources/screenshot.png)