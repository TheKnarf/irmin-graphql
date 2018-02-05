# irmin-graphql

This package provides a GraphQL API on top of a [Irmin](https://github.com/mirage/irmin) store. It's still very early and experimental.

Dependencies:

- `irmin`
- `graphql` pinned to `https://github.com/andreas/ocaml-graphql-server.git#abstract-types`
- `graphql-lwt`


## Git Example

To expose a git repo over GraphQL, clone the repo, then run the following:

```
jbuilder exec git-graphql /path/to/git-repo
```

Now open [http://localhost:8080/graphql](http://localhost:8080/graphql) and enjoy!
