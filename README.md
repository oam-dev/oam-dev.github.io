A simple static site: [openappmodel.io](https://openappmodel.io/)
Built with [Hugo](https://gohugo.io) and Github Pages.

## Important Note: Master Branch 

The `master` branch is the public-facing production build of the Github Pages website [oam-dev.github.io](https://oam-dev.github.io/).

Hence, the `master` branch is off limits for any development work.
PRs should be opened against the `dev` branch.


## Development

The site uses a custom theme, based off of the Fresh theme for Hugo by Luc Perkins. The underlying CSS framework is bulma, [docs](https://bulma.io/documentation/) are here. Any changes to the CSS/SCSS need to be rebuilt and commited to update the site appearance.

```
// run hugo to have the pipes rebuild and recompile
# hugo

// make sure to commit the generated results to git
# git add resources/*
```


## Deployment 

Deploying a Hugo site to Github Pages is a little tricky, there are some common options.

* [Using a two repository method](https://github.com/whipperstacker/blog/blob/master/content/post/deploying-a-hugo-site-to-github-pages.md) where one is the source and one is the dist.
* [Using a deploy script](https://github.com/sglyon/hugo_gh_blog/blob/master/deploy.sh) to push the /public folder to the prod branch

This site currently uses the latter method. To deploy the site:

1. Switch to the dev branch
2. Run the script `bash ./deploy.sh` 

This will recompile the  hugo site, and then push the content to github (origin > master), overwriting the previous build. 


# Contributing

This project welcomes contributions and suggestions.  Most contributions require you to agree to a
Contributor License Agreement (CLA) declaring that you have the right to, and actually do, grant us
the rights to use your contribution. For details, visit https://cla.opensource.microsoft.com.

When you submit a pull request, a CLA bot will automatically determine whether you need to provide
a CLA and decorate the PR appropriately (e.g., status check, comment). Simply follow the instructions
provided by the bot. You will only need to do this once across all repos using our CLA.

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/).
For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or
contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.

