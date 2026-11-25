class Deck < Formula
  desc "Terminal multiplexer with first-class support for coding agents"
  homepage "https://github.com/marcosmoura/deck"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/marcosmoura/deck/releases/download/v0.3.0/deck-0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "9e2ebd312b98347744106404787e9d46208593b4ff002119f62ef924e90535ea"
    end
    on_intel do
      url "https://github.com/marcosmoura/deck/releases/download/v0.3.0/deck-0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "3ea7c0a8aae5f623ddd288398ebc4de7540478908cb549f3cae5031f4b6350d6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/marcosmoura/deck/releases/download/v0.3.0/deck-0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "943cf32a960f0b56f810e54f062324cd2f04277b19e248021a8bf994801db7d4"
    end
    on_intel do
      url "https://github.com/marcosmoura/deck/releases/download/v0.3.0/deck-0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "29b15a100b1303ad3bef45fee00f4939e63515c139aaa9922f6a4e4f2c3e9f8f"
    end
  end

  def install
    bin.install "deck"
  end

  def caveats
    <<~EOS
      To see what Claude Code, Codex and OpenCode are doing in the sidebar, run once:
        deck hooks install claude codex opencode

      To teach them to drive deck (open terminals, read and wait for them), run once:
        deck skills install claude codex opencode

      After upgrading deck, hand a running daemon over to the new version, keeping what
      runs in it:
        deck upgrade
      and refresh the skill:
        deck skills install claude codex opencode
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/deck --version")
  end
end
