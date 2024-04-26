docker run -d \
  --name=syncthing \
  --hostname=qlab01 `#optional` \
  -e PUID=1011 \
  -e PGID=1011 \
  -e TZ=Asia/Shanghai \
  -p 8384:8384 \
  -p 22000:22000/tcp \
  -p 22000:22000/udp \
  -p 21027:21027/udp \
  -v /sharedata01/weileizeng/gitrepo/docker-on-the-fly/syncthing/config:/config \
  -v /sharedata01/weileizeng/gitrepo/docker-on-the-fly/syncthing/data:/data1 \
  --restart unless-stopped \
  lscr.io/linuxserver/syncthing:latest

#  -v /path/to/data2:/data2 \
