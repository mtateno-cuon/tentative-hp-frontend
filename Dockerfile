FROM public.ecr.aws/cuon-inc/node:18-rocky8

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

CMD ["npm", "run", "dev"]
