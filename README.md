# 起動まで参考

https://www.youtube.com/watch?v=ltDdZAJli8c&t=0s
https://zenn.dev/mochiblock/articles/aaa4724c6267e6
https://qiita.com/piggydev/items/c61f830f94c86b937fb2
https://mseeeen.msen.jp/rails-docker/


### 新規アプリを作成

```
docker-compose run --rm web rails new . --api --force --database=postgresql --skip-turbolinks --skip-test --skip-webpack-install
```

■ オプション:  
https://railsdoc.com/page/rails_new


### imageをbuildしなおす

Gemfileが変更したり、Dockerfileが変更されたら、ビルドしなおす

```
docker compose build
```

をしなおす

### 
