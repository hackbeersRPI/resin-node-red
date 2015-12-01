FROM nieleyde/rpi-nodered
COPY settings.js /root/
COPY flows.json /root/.node-red/
# run application
EXPOSE 80
#CMD ["/bin/bash"]
#ENTRYPOINT ["node-red-pi","-v","--max-old-space-size=128", "--flowFile /root/flow.json", "--uiPort 80"]
CMD ["node-red-pi","-v","--max-old-space-size=128", "-s", "/root/settings.js"]
