FROM docker:18.05-dind as dind

FROM google/cloud-sdk:198.0.0
COPY --from=dind / /
ENTRYPOINT ["dockerd-entrypoint.sh"]
CMD []