[![GitHub Actions status | mhyfritz/vuepress-gh-actions-gh-pages-example](https://github.com/mhyfritz/vuepress-gh-actions-gh-pages-example/workflows/Deploy%20to%20GitHub%20Pages/badge.svg)](https://github.com/mhyfritz/vuepress-gh-actions-gh-pages-example/actions?query=workflow%3A%22Deploy+to+GitHub+Pages%22)

First, generate a SSH key pair (`gh-pages` and `gh-pages.pub`):

```sh
ssh-keygen -t rsa -b 4096 -C "$(git config user.email)" -f gh-pages -N ""
```

Then,

- in the repository under `Settings > Deploy keys` add generated `gh-pages.pub` key
  - choose any title you want, e.g. `Public key of ACTIONS_DEPLOY_KEY`
  - check `Allow write access`
- under `Settings > Secrets` add generated `gh-pages` key
  - name this `ACTIONS_DEPLOY_KEY`
