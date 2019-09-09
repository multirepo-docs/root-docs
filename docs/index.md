# Home
<div style="text-align: justify"> 
In a microservice architecture, each subsystem can be in its own repository. Furthermore, each individual repository would also have documentation under `/docs` that  makes it easier to keep documentation updated as code changes within each repo. 
Multi-Repo Docs is a new process that collects docs from multiple repos and publishes all them on a single website. This example explains  how we can achieve the goal using  [git submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules) and [Trigger Travis CI builds](https://docs.travis-ci.com/user/triggering-builds/). 

Suppose there are three repos named [repo-docs-1](https://github.com/multirepo-docs/repo-docs-1), [repo-docs-2](https://github.com/multirepo-docs/repo-docs-2), and [repo-docs-3](https://github.com/multirepo-docs/repo-docs-3). In addition, suppose there is one root repo named [root-docs](https://github.com/multirepo-docs/root-docs) that has the website related files and common documents such as contribution guidelines, developer workflow, contacts and meetings information, etc. The idea is to trigger a job in `root-docs` repo to build and push the website files whenever there is a change (i.e. a merge commit) in any of doc repos (i.e. repo-docs-1, repo-docs-2, repo-docs-3). The job in `root-docs` is responsible to add a submodule of each doc repo and build the website using [MkDocs](https://www.mkdocs.org/) static site generator.   

</div> 
