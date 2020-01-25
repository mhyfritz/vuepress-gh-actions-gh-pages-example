#! /usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd docs/.vuepress/dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

if [ -n "${ACTIONS_DEPLOY_KEY}" ]; then
    SSH_DIR="${HOME}/.ssh"
    mkdir "${SSH_DIR}"
    ssh-keyscan -t rsa github.com > "${SSH_DIR}/known_hosts"
    echo "${ACTIONS_DEPLOY_KEY}" > "${SSH_DIR}/id_rsa"
    chmod 400 "${SSH_DIR}/id_rsa"

    echo "actor ${GITHUB_ACTOR}"

    git config user.name "${GITHUB_ACTOR}"
    git config user.email "${GITHUB_ACTOR}@users.noreply.github.com"
fi

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:mhyfritz/vuepress-gh-actions-gh-pages-example.git master:gh-pages