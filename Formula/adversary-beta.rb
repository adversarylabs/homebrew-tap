class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.12-beta.5"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.12-beta.5/adversary_2026.9.12-beta.5_darwin_amd64.tar.gz"
      sha256 "1e2f49e78f421e32057ef9971e5fa6052b7b8406fe9cda9e6e2ec4e87ba35a7c"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.12-beta.5/adversary_2026.9.12-beta.5_darwin_arm64.tar.gz"
      sha256 "4deb1b9cc7617346c9a8df3ee8cb5e7f909869a4534bd982814967276af2d7b9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.12-beta.5/adversary_2026.9.12-beta.5_linux_amd64.tar.gz"
      sha256 "8618303b8ba0c559235a461bf210b918d119e3c2550d1b17404d476a0cb3b5ec"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.12-beta.5/adversary_2026.9.12-beta.5_linux_arm64.tar.gz"
      sha256 "373f87ea25b93a3d9a972aadeea690bcf9aac87f375d91ca718419982518528f"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
