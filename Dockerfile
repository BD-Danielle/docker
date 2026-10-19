# 1. 指定基底鏡像 (使用輕量版 Node.js 16)
FROM node:16-alpine

# 2. 設定容器內的工作目錄
WORKDIR /app

# 3. 將宿主機目錄前的專案檔案複製到容器內的工作目錄
COPY package*.json ./

# 4. 安裝專案相依套件
RUN npm install

# 複製專案所有原始碼（包含 server.js）至容器的 /app 目錄中
COPY . .

# 5. 宣告容器會監聽的連接埠
EXPOSE 3000

# 6. 設定容器啟動時的預設指令

CMD ["node", "server.js"]