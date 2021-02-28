FROM node

# set working directory , creating the new directory for triggiring the pipelines
RUN mkdir /usr/src/app
#copy all files from current directory to docker
COPY . /usr/src/app

WORKDIR /usr/src/app

# add '/usr/src/app/node_modules/.bin" to $PATH
ENV PATH /usr/src/app/node_modules/.bin:$PATH

EXPOSE 3000
# install and cache app dependencies
RUN yarn

# start app
CMD ["npm", "start"]	
