# paul007ex/sts-delegate-rs Homebrew Tap

Homebrew tap for the `sts-cli` binary from
[`sts-delegate-rs`](https://github.com/paul007ex/sts-delegate-rs).

## Install

```bash
brew tap paul007ex/sts-delegate-rs
brew install sts-cli
sts-cli --help
```

Or install without a separate tap step:

```bash
brew install paul007ex/sts-delegate-rs/sts-cli
```

`sts-cli serve` still requires runtime STS configuration, IdP/actor/client JWKS,
target policy, replay policy, and signing-key files. The Homebrew formula
installs only the CLI binary from the published GitHub Release archive.
