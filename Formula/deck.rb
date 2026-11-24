class Deck < Formula
  desc "Terminal multiplexer with first-class support for coding agents"
  homepage "https://github.com/marcosmoura/deck"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/marcosmoura/deck/releases/download/v0.2.0/deck-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "6ddf254a1f3fd6c6c4f257949eb1ed460709375978e3c8ad8908a2c39297b85c"
    end
    on_intel do
      url "https://github.com/marcosmoura/deck/releases/download/v0.2.0/deck-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "a979bfa93bd4edfca2671c80759dacb8919837e4778069fc92d445db561a65d9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/marcosmoura/deck/releases/download/v0.2.0/deck-0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fe654fc83fef059164c2d5fd4514a3db14a04e12b5c404c505ba6002635eac37"
    end
    on_intel do
      url "https://github.com/marcosmoura/deck/releases/download/v0.2.0/deck-0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0daffbdc2ae11726a5b0f3b1ce2e13c00e84ad1a772fb9549a0d79887c098b9a"
    end
  end

  def install
    bin.install "deck"
  end

  def caveats
    <<~EOS
      To see what Claude Code, Codex and OpenCode are doing in the sidebar, run once:
        deck hooks install claude codex opencode
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/deck --version")
  end
end
