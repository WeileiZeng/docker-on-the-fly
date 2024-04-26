docker run \
--rm \
--init \
--name nextcloud-aio-mastercontainer \
--publish 80:80 \
--publish 8000:8080 \
--publish 8443:8443 \
--volume nextcloud_aio_mastercontainer:/mnt/docker-aio-config \
--volume /var/run/docker.sock:/var/run/docker.sock:ro \
nextcloud/all-in-one:latest


#--sig-proxy=false \

#--restart always \
