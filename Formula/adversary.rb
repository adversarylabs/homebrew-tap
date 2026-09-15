class Adversary < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.15"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15/adversary_2026.9.15_darwin_amd64.tar.gz"
      sha256 "96e3ff5e4d6b8d9ce8a1e23d4b9cdb4a638a367e72472017e6224fa1a8d96311"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15/adversary_2026.9.15_darwin_arm64.tar.gz"
      sha256 "c1f3e35c4577dcfaac1e462258a63e79426324f9ec8d90d0feba913beaea8984"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15/adversary_2026.9.15_linux_amd64.tar.gz"
      sha256 "bd7a14161bd5c6905fb03f711f837eba0cf905c0f1bfb00ebde05f0c81a316b1"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15/adversary_2026.9.15_linux_arm64.tar.gz"
      sha256 "c67197f0e889b8d524094ebc5a6b5fa3e7949d55b8f5bf046e510bf0e0ee71a6"
    end
  end

  def install
    bin.install "adversary" => "adversary"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary version")
  end
end
