class StsCli < Formula
  desc "Rust-native OAuth token-exchange STS CLI"
  homepage "https://github.com/paul007ex/sts-delegate-rs"
  version "0.1.0-alpha.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/paul007ex/sts-delegate-rs/releases/download/v0.1.0-alpha.6/sts-cli-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "ef8f886b7e74685eba47b6e22432d015dccf0782e9d61d5d56ba68e15490f2d5"
    end

    on_intel do
      depends_on arch: :arm64
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/paul007ex/sts-delegate-rs/releases/download/v0.1.0-alpha.6/sts-cli-0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f65e667dc43ace824e571f8d8ebd2b74b15ce355955d5f98df9aab38a14e34cf"
    end

    on_arm do
      depends_on arch: :x86_64
    end
  end

  def install
    bin.install "sts-cli"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/sts-cli --help")
  end
end
