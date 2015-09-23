`import ApplicationAdapter from './application'`

RepoAdapter = ApplicationAdapter.extend
  host: "https://api.github.com"
  namespace: "users/foxnewsnetwork"

`export default RepoAdapter`
