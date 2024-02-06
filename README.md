# About this project
This repo demonstrates how you can build your first CI pipeline with GitHub Actions for a simple dbt project. By the end of this project, you will see a CI pipeline that will, upon a new PR being opened in your dbt project:
* Ensure your dbt models compile and build properly
* Test your dbt models with the test you’ve established for them
* Run a SQL linter against your code changes

## What's in this repo?
It uses [seeds](https://docs.getdbt.com/docs/build/seeds) that includes fake raw data from a fictional app, via dbt lab's [jaffle shop test project](https://github.com/dbt-labs/jaffle_shop). You can also download the data directly [from here](https://github.com/dbt-labs/jaffle_shop/tree/main/seeds).

The best way to learn how to create your first GitHub Actions workflow is to fork this repository and follow our tutorial (link to be added upon publication). 

You can take a look at what's in our [super simple workflow here](https://github.com/elliotgunn/datafold-dbt-ci/blob/main/.github/workflows/dbt-pr-ci-job.yml) called ```Our first dbt PR job```

By the end of the tutorial, you will have run your first workflow!

![](/img/static/github-actions-workflow.png)

## Resources
Learn more about:
* SQLFluff's [resource for GitHub Actions](https://github.com/sqlfluff/sqlfluff-github-actions)
* [data-diff](https://github.com/datafold/data-diff) and [Datafold Cloud](https://www.datafold.com/)
* [dbt](https://docs.getdbt.com/docs/introduction)
