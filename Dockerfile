# 의존성 설치
FROM node:16-buster
WORKDIR /app
COPY package*.json ./ 
RUN npm ci --only=production

ENV NODE_ENV production

COPY . .

# node 이미지에 이미 "node"라는 사용자가 uid/gid 1000번으로 생성되어 있음
USER node

EXPOSE 4873
CMD ["npm", "start"]
