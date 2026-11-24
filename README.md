# marcosmoura/tap

The Homebrew tap for [deck](https://github.com/marcosmoura/deck), a terminal multiplexer with first-class support for coding agents.

## Install

```sh
brew install marcosmoura/tap/deck
```

The full name trusts the formula for you. To install by its short name instead, tap and trust the tap once:

```sh
brew tap marcosmoura/tap
brew trust --tap marcosmoura/tap
brew install deck
```

The formula installs the prebuilt `deck` binary for macOS and Linux, on Apple silicon, ARM and Intel. Upgrade with `brew upgrade deck`.

## How the formula is updated

`Formula/deck.rb` is written by deck's release workflow on every release, from the template in deck's repository (`packaging/homebrew/deck.rb.in`). Do not edit it here: change the template in deck instead.

Every push to `main` and every pull request runs `brew style`, `brew audit --strict`, and installs and tests each formula on macOS and Linux.

## License

[MIT](LICENSE)
