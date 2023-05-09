FROM node:14
RUN npm install -g @microsoft/microsoft-graph-client
RUN chown -R node /root
RUN chmod +x /root/entrypoint.sh
COPY entrypoint.sh /root/entrypoint.sh
ENTRYPOINT ["/root/entrypoint.sh"]
