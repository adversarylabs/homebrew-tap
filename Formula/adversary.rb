class Adversary < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.5"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.5/adversary_2026.9.5_darwin_amd64.tar.gz"
      sha256 "cdd3bca3989877d239d91835880e3b4a36df86bfe773734f5d9b5b9f230ea52b"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.5/adversary_2026.9.5_darwin_arm64.tar.gz"
      sha256 "a01ca273245fa25858056b6332edb1c2d421000a17998ed64cccddb006800d62"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.5/adversary_2026.9.5_linux_amd64.tar.gz"
      sha256 "fb81132563bce4c3be7e1cb2b4d935f3c346185661ca93c803206d42f65fc7f1"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.5/adversary_2026.9.5_linux_arm64.tar.gz"
      sha256 "12bfef8270a5e59ec0d1bc11f7099680b33da2536e30c094da2ee1372ca93820"
    end
  end

  def install
    bin.install "adversary" => "adversary"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary version")
  end
end
