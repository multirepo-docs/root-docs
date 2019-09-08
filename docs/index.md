# An Example of Multi-Repo Documents

In a microservice architecture, each subsystem is in its own repository. Furthermore, Each individual repository would also have documentation under `/docs` that  makes it easier to keep documentation updated as code changes within each repo. 
Multi-Repo Docs is a new process that collects docs from multiple repos and publishes all them on a single website.

This example explains  how we can achieve the goal using  `git submodules` and `Trigger Travis CI builds`. Suppose we have three repos named `repo-docs-1`, `repo-docs-2`, and `repo-docs-3`. In addition, suppose we have one root repo named `root-docs` that keeps the website related files. The idea is to trigger a job in `root-docs` repo to build and push the website files whenever there is a change (i.e. a merge commit) in any of doc repos (i.e. repo-docs-1, repo-docs-2, repo-docs-3). The job in `root-docs` is responsible to add a submodule of each doc repo and build the website using [MkDocs](https://www.mkdocs.org/) static site generator.   

  
