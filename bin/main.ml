open Lwt.Infix

module Store = Irmin_unix.Git.FS.Make
  (Irmin.Contents.String)
  (Irmin.Path.String_list)
  (Irmin_git.Branch(Irmin.Branch.String))

module Store_graphql = Irmin_graphql.Make(Store)

let config =
  let head = Git.Reference.of_raw "refs/heads/master" in
  Irmin_git.config ~head (Sys.getcwd ())

let () =
  let p = 
    Store.Repo.v config >>= fun repo ->
    Store.master repo >>= fun store ->
    Store_graphql.start_server store
  in Lwt_main.run p

