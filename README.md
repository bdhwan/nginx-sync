version: "3.7"
services:
  nginx-sync:
    image: bdhwan/nginx-sync:1.02
    environment:
     GIT_URL: "https://username:password@git_url"
     HOSTS: "192.168.0.1 192.168.0.2 192.168.0.3"
     PASSWORD: "ssh_ID"
     USERNAME: "ssh_PASSWORD"
    deploy:
      restart_policy:
        condition: none
      placement:
        constraints:
        - node.labels.docker-manager == true
