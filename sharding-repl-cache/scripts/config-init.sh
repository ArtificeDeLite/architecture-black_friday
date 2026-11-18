# Инициализация конфиг сервиса
docker compose exec -T configSrv-1 mongosh --port 27019 --quiet <<EOF
rs.initiate(
  {
    _id : "config_server",
       configsvr: true,
    members: [
      { _id : 0, host : "configSrv-1:27019" },
      { _id : 1, host : "configSrv-2:27019" },
      { _id : 2, host : "configSrv-3:27019" }
    ]
  }
);
EOF

