const http = require('http');

const hostname = '0.0.0.0'; // 讓容器外（宿主機）可以順利存取
const port = 3000;

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/plain; charset=utf-8');
  res.end('Hello, Docker! 伺服器已成功運行！\n');
});

server.listen(port, hostname, () => {
  console.log(`Server running at http://${hostname}:${port}/`);
});