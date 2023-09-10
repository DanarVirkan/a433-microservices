# Menggunakan base image Node.js versi 14
FROM node:14.17.3-alpine3.14

# Menentukan working directory untuk container
WORKDIR /app

# Menyalin seluruh source code ke working directory
COPY . .

# Membuat Environment Variable
ENV NODE_ENV=production DB_HOST=item-db

# Menginstal dependencies untuk production dan build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# Ekspos port 8080
EXPOSE 8080

# Menjalankan server dengan perintah npm start
CMD [ "npm", "start" ]