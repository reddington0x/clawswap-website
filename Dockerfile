FROM pierrezemb/gostatic

# Create non-root user
RUN addgroup -g 1001 webgroup && \
    adduser -D -u 1001 -G webgroup webuser

# Copy files
COPY public/index.html /srv/http/
COPY public/docs.html /srv/http/docs.html
COPY public/examples.html /srv/http/examples.html
COPY public/faq.html /srv/http/faq.html
COPY public/skill.md /srv/http/
COPY public/wallet-setup.md /srv/http/wallet-setup.md
COPY public/generate-agent-wallet.js /srv/http/generate-agent-wallet.js
COPY public/robots.txt /srv/http/
COPY public/sitemap.xml /srv/http/

# Set ownership
RUN chown -R webuser:webgroup /srv/http

# Switch to non-root user
USER webuser

CMD ["-port","8080","-https-promote", "-enable-logging"]
