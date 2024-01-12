# Minimal example for teloxide issue [#978](https://github.com/teloxide/teloxide/issues/978)
![License MIT](https://img.shields.io/gitlab/license/MichaelSchmitz/portainer_update_bot?style=flat)

This is a minimal example to reproduce the mentioned issue.

Steps:
1. Load docker image with `docker load -i <file>`. A built result of the contained Dockerfile is provided with img.tar
2. Execute with `docker run -it -e TELOXIDE_TOKEN=xxx teloxide_mvp_docker`

Issue: Sometimes directly after starting, sometimes after up to 30min the bot will only respond to direct chat message commands, but not in group chats.
