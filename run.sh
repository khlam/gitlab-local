docker run -d \
  --hostname gitlab.example.com \
  --name gitlab \
  --restart always \
  --publish 443:443 \
  --publish 80:80 \
  --publish 22:22 \
  --volume ./gitlab/config:/etc/gitlab \
  --volume ./gitlab/logs:/var/log/gitlab \
  --volume ./gitlab/data:/var/opt/gitlab \
  gitlab/gitlab-ce:latest
