FROM python:3-alpine
MAINTAINER William Stewart <zoidbergwill+docker@gmail.com>
ADD index.html /
ADD version.json /
EXPOSE 8000
CMD ["python", "-m", "http.server"]
