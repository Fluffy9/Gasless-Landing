FROM node

# install simple http server for serving static content
RUN npm install -g http-server
# RUN npm install -g @vue/cli

# make the 'app' folder the current working directory
WORKDIR /app

# copy both 'package.json' and 'package-lock.json' (if available)
COPY package*.json ./

# install project dependencies
RUN npm install

# copy project files and folders to the current working directory (i.e. 'app' folder)
COPY . .

ARG VUE_APP_PLANS
ARG VUE_APP_PLAN_0_NAME
ARG VUE_APP_PLAN_0_PRICE
ARG VUE_APP_PLAN_0_TRANSACTIONS
ARG VUE_APP_PLAN_0_DESCRIPTION
ARG VUE_APP_PLAN_1_NAME
ARG VUE_APP_PLAN_1_PRICE
ARG VUE_APP_PLAN_1_TRANSACTIONS
ARG VUE_APP_PLAN_1_DESCRIPTION
ARG VUE_APP_FEATURED_PLAN
ARG VUE_APP_APP_URL

ENV VUE_APP_PLANS=${VUE_APP_PLANS} \
    VUE_APP_PLAN_0_NAME=${VUE_APP_PLAN_0_NAME} \
    VUE_APP_PLAN_0_PRICE=${VUE_APP_PLAN_0_PRICE} \
    VUE_APP_PLAN_0_TRANSACTIONS=${VUE_APP_PLAN_0_TRANSACTIONS} \
    VUE_APP_PLAN_0_DESCRIPTION=${VUE_APP_PLAN_0_DESCRIPTION} \
    VUE_APP_PLAN_1_NAME=${VUE_APP_PLAN_1_NAME} \
    VUE_APP_PLAN_1_PRICE=${VUE_APP_PLAN_1_PRICE} \
    VUE_APP_PLAN_1_TRANSACTIONS=${VUE_APP_PLAN_1_TRANSACTIONS} \
    VUE_APP_PLAN_1_DESCRIPTION=${VUE_APP_PLAN_1_DESCRIPTION} \
    VUE_APP_FEATURED_PLAN=${VUE_APP_FEATURED_PLAN} \ 
    VUE_APP_APP_URL=${VUE_APP_APP_URL} 

# build app for production with minification
# RUN npm run build

EXPOSE 8080

ENTRYPOINT ["/bin/sh", "-c" , "npm run build && http-server dist"]