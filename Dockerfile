# syntax=docker/dockerfile:1.4
FROM --platform=$BUILDPLATFORM node:22-alpine AS development

RUN mkdir /vue
WORKDIR /vue

COPY . .

#RUN #yarn global add @vue/cli
#RUN yarn
#EXPOSE 3000
#EXPOSE 8080
#ENV HOST=0.0.0.0
CMD ["yarn", "dev"]

#FROM development as dev-envs
#RUN <<EOF
#apk update
#apk add git
#EOF

#RUN <<EOF
#addgroup -S docker
#adduser -S --shell /bin/bash --ingroup docker vscode
#EOF
# install Docker tools (cli, buildx, compose)
#COPY --from=gloursdocker/docker / /
#CMD ["yarn", "run", "dev"]