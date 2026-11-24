# marcosmoura/tap

Marcos Moura's Homebrew tap: formulae in `Formula/` and casks in `Casks/`, one per project.

## Install

```sh
brew install marcosmoura/tap/<name>
```

The full name trusts that formula or cask for you. To install by short names instead, tap and trust the tap once:

```sh
brew tap marcosmoura/tap
brew trust --tap marcosmoura/tap
brew install <name>
```

## Publishing a project here

Files in `Formula/` and `Casks/` are written by each project's release workflow, never by hand: change the template in the project instead. The project renders its formula or cask (version, URLs, checksums) and hands it to this tap's publish action, which creates or updates the file in one commit:

```yaml
- uses: marcosmoura/homebrew-tap/.github/actions/publish@main
  with:
    file: <name>.rb # the rendered file, in the job's workspace
    path: Formula/<name>.rb # or Casks/<name>.rb
    message: <name> <version> # free text; deck uses "deck 0.1.0"
    token: ${{ secrets.HOMEBREW_TAP_TOKEN }}
```

The token is a fine-grained token with Contents read and write on `marcosmoura/homebrew-tap` only, stored as an Actions secret of the project. Fine-grained tokens expire: renew it before then. Two projects publishing at the same moment can make the second write fail with a 409; rerun that job.

## Checks

Every push to `main` and every pull request runs `brew style` and `brew audit --strict` on the whole tap, installs and tests every formula on macOS and Linux, and installs every cask on macOS. A publish is a push, so every file is checked as it lands.

## License

[MIT](LICENSE)
