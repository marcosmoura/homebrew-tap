class Deck < Formula
  desc "Terminal multiplexer with first-class support for coding agents"
  homepage "https://github.com/marcosmoura/deck"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/marcosmoura/deck/releases/download/v0.1.0/deck-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "c4e172067701a6d7daac0747216a2467271ee3d530d1ab79fbbf685a6c2fa456"
    end
    on_intel do
      url "https://github.com/marcosmoura/deck/releases/download/v0.1.0/deck-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "8e2200a50f8a5d962897638a0a60e0826f3d06c8158434512bc13f86c41a46ec"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/marcosmoura/deck/releases/download/v0.1.0/deck-0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "695e172cd4410e2f9f7d8e7273de0d7f2a915d31b4638723f94405e8ffceaa0f"
    end
    on_intel do
      url "https://github.com/marcosmoura/deck/releases/download/v0.1.0/deck-0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4091933fcc80b786f21aaa6c93e86df95db72ad33d0e86fbbaa1dcf0a7f80793"
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
