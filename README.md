[![GitHub Actions status | mhyfritz/vuepress-gh-actions-gh-pages-example](https://github.com/mhyfritz/vuepress-gh-actions-gh-pages-example/workflows/Deploy%20to%20GitHub%20Pages/badge.svg)](https://github.com/mhyfritz/vuepress-gh-actions-gh-pages-example/actions?query=workflow%3A%22Deploy+to+GitHub+Pages%22)

First, generate SSH key pair.

```sh
ssh-keygen -t rsa -b 4096 -C "$(git config user.email)" -f gh-pages -N ""
```

Then, in the repository under `Settings > Deploy keys` add generated
`gh-pages.pub` (any title) and under `Settings > Secrets` add `gh-pages`
with name `ACTIONS_DEPLOY_KEY`.
