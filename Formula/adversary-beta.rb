class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.9-beta.2"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.9-beta.2/adversary_2026.9.9-beta.2_darwin_amd64.tar.gz"
      sha256 "3a7aeb6f56999db6a90ff4e55abc32c01653fc88309f6ba6dc06a593aaf8ed59"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.9-beta.2/adversary_2026.9.9-beta.2_darwin_arm64.tar.gz"
      sha256 "880565ce9f1acc9d3ba1f5ed1e83426a37cf7f22b5794c6cd4085a1087ad9a88"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.9-beta.2/adversary_2026.9.9-beta.2_linux_amd64.tar.gz"
      sha256 "ba66340b5dbd9224d88082c7c1f0312d6617bbfc5b6c2b4e552613cc881d3fa4"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.9-beta.2/adversary_2026.9.9-beta.2_linux_arm64.tar.gz"
      sha256 "61bd9e4261c1d0494074b2d0e3b717dc56f7c46ee63bb979a69da6d58a593e26"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
