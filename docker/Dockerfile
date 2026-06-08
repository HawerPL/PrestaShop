ARG PS_IMAGE=prestashop/prestashop:9
FROM ${PS_IMAGE}

COPY docker/secrets-prestashop.sh /usr/local/bin/secrets-prestashop.sh
RUN chmod +x /usr/local/bin/secrets-prestashop.sh

ENTRYPOINT ["/usr/local/bin/secrets-prestashop.sh"]