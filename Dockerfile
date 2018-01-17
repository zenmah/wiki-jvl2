FROM requarks/wiki:latest

# Replace with your email address:
ENV WIKI_ADMIN_EMAIL jvl.monkey@gmail.com

WORKDIR /var/wiki

# Replace your-config.yml with the path to your config file:
ADD config.yml config.yml
ADD github-wiki-jvl-private github-private
RUN chmod 700 github-private

EXPOSE 3000
ENTRYPOINT [ "node", "server" ]