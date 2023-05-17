# Menggunakan image node sebagai base image
FROM node

# Menentukan direktori kerja di dalam container
WORKDIR /app

# Menyalin file index.html ke direktori kerja
COPY index.html /app

# Install package http-server
RUN npm install -g http-server

# Menjalankan server HTTP pada port 80
CMD ["http-server", "-p", "80"]
