class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.17-beta.3"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.17-beta.3/adversary_2026.9.17-beta.3_darwin_amd64.tar.gz"
      sha256 "cd320c0dd0dea79bf71c71631c88d8e7a238546aa42619e05f72c613a15d10f0"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.17-beta.3/adversary_2026.9.17-beta.3_darwin_arm64.tar.gz"
      sha256 "4e6f77625111db8936df3041962c4c3893cbd9703ecfbdb15279b555ceef5d5e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.17-beta.3/adversary_2026.9.17-beta.3_linux_amd64.tar.gz"
      sha256 "c5a3b7a0065672ebfa4a4b8e23e59fa2b536c93036831a4eb0a09de77d0bf530"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.17-beta.3/adversary_2026.9.17-beta.3_linux_arm64.tar.gz"
      sha256 "cbef79e8525f2ad0fe8ac530482e408d5d4ee4f88bc315bf7b4947686951dafa"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
