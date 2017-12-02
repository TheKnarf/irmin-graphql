# irmin-graphql

This package provides a GraphQL API on top of a [Irmin](https://github.com/mirage/irmin) store. It's still very early and experimental.

Requirements:

- `irmin-unix` pinned to `master`
- `git-http` pinned to `master`
- `graphql` pinned to `master`

This is necessary to depend on `cohttp.1.0.0`.

Then run the following:

```
jbuilder exec git-graphql
```

Now open [http://localhost:8080/graphql](http://localhost:8080/graphql) and enjoy!
