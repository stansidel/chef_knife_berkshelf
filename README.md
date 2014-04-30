# Chef solo, knife solo and Berkshelf startup configuration

This repo contains a configuration for Chef solo + Knife solo + Berkshelf tools for setting up and provisioning servers.

## Running for a node

```bash
$ knife solo prepare -p 22 username@host
$ vim nodes/host.json
# Fill in like nodes/localhost.json
$ knife solo cook -p 22 username@host
```

## (Possible) steps to reproduce

```bash
$ gem install berkshelf
$ gem install knife-solo
$ knife solo init
# Some knife solo output. It should be using Berkshelf
$ mkdir site-cookbooks
$ knife cookbook create my_app -o site-cookbooks
```

Then edit the following files inside the `site-cookbooks/my_app` folder:

1. `metadata.rb` - add dependencies.
2. `recipes/default.rb` - create recipes for the cookbook. May use custom attributes.
3. `attributes/default.rb` - default attributes overrides.

When the cookbook is ready, add the cookbooks to the `Berkshelf` file.

