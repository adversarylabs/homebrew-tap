class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.4-beta.2"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.4-beta.2/adversary_2026.9.4-beta.2_darwin_amd64.tar.gz"
      sha256 "6e0c0a9ed9b60198a32ed7ac20f7c243679236b3343b1695a5d8ba85b96a6e7f"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.4-beta.2/adversary_2026.9.4-beta.2_darwin_arm64.tar.gz"
      sha256 "d353450e41ce2130a3fdbe5ac114d98f3aea48a500b80be775bf116c0470ee8a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.4-beta.2/adversary_2026.9.4-beta.2_linux_amd64.tar.gz"
      sha256 "6fea3a31dcefeaf066cbb5a69313c3ed04059970ab6ea8f9f48795840f4115a8"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.4-beta.2/adversary_2026.9.4-beta.2_linux_arm64.tar.gz"
      sha256 "78f65232e5747023e9ebcb1373d66d8456058a02ee7ad886ced6bcb3f93a3bb8"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
