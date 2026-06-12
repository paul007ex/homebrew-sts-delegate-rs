class StsCli < Formula
  desc "Rust-native OAuth token-exchange STS CLI"
  homepage "https://github.com/paul007ex/sts-delegate-rs"
  version "0.1.0-alpha.6"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/paul007ex/sts-delegate-rs/releases/download/v0.1.0-alpha.6/sts-cli-0.1.0-aarch64-apple-darwin.tar.gz"
    sha256 "ef8f886b7e74685eba47b6e22432d015dccf0782e9d61d5d56ba68e15490f2d5"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/paul007ex/sts-delegate-rs/releases/download/v0.1.0-alpha.6/sts-cli-0.1.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f65e667dc43ace824e571f8d8ebd2b74b15ce355955d5f98df9aab38a14e34cf"
  else
    odie "sts-cli v0.1.0-alpha.6 publishes arm64 macOS and x86_64 Linux archives only"
  end

  def install
    bin.install "sts-cli"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/sts-cli --help")
  end
end
