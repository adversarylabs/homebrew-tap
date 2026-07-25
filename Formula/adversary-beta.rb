class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.7.25-beta.1"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.25-beta.1/adversary_2026.7.25-beta.1_darwin_amd64.tar.gz"
      sha256 "8d7324890c8a6a0581938032b19a9e351052a320c8a6f49f5e396d17be0074dd"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.25-beta.1/adversary_2026.7.25-beta.1_darwin_arm64.tar.gz"
      sha256 "578e41536e569d1aca56d262bcafaa80ac9c894aa55c8a8db4e92cdb0aea532c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.25-beta.1/adversary_2026.7.25-beta.1_linux_amd64.tar.gz"
      sha256 "67b1ec73e7485be4bfff95512df493f06b938d112952f4abb25e1037fb5d4bc1"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.25-beta.1/adversary_2026.7.25-beta.1_linux_arm64.tar.gz"
      sha256 "c55ffbc4c69b37fc2c948482c369ee07a8cda3020f35f131a74aef56b082c82d"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
