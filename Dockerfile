FROM node:20-alpine

WORKDIR /app

# install dependencies first (better caching)
COPY package*.json ./
RUN npm install

# copy project
COPY . .

EXPOSE 5173

# Vite dev server must bind to 0.0.0.0 inside container
CMD ["npm","start","--","--host","0.0.0.0"]
