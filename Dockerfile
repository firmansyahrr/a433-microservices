FROM node:14-alpine

# Working directory berada pada /app dalam container
WORKDIR /app

# Melakukan proses copy seluruh source code yang ada pada current directory . ke dalam container working directory /app
COPY . .

# Setting environtment node mode dalam mode production dan setting database ke host item-db
ENV NODE_ENV=production
ENV DB_HOST=item-db

# Install dependency dalam mode production dan melakukan proses build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# Expose port 8080
EXPOSE 8080

# Menjalankan aplikasi
CMD ["npm", "start"]
