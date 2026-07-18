class Adversary < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.7.18"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.18/adversary_2026.7.18_darwin_amd64.tar.gz"
      sha256 "2a9e0be0740ce4e298c205c98555013b5a1fe2d6642213caad0467b4cb397c9c"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.18/adversary_2026.7.18_darwin_arm64.tar.gz"
      sha256 "e6c245d755b76913f2e6cfb08c65b3a36d576cded16c9ab6980cf6ede27b9db1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.18/adversary_2026.7.18_linux_amd64.tar.gz"
      sha256 "d1951a937991a4e309526e91e30ad3dd13b79d2f74df71eb888b7f54e226fb9c"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.18/adversary_2026.7.18_linux_arm64.tar.gz"
      sha256 "984df2fc888b080a55132e813a8db2ead4bdb65cc31ed5daf487a27777c96572"
    end
  end

  def install
    bin.install "adversary" => "adversary"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary version")
  end
end
