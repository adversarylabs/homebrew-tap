class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.15-beta.6"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.6/adversary_2026.9.15-beta.6_darwin_amd64.tar.gz"
      sha256 "17b7632945cc8301c21b86e1b6a03a1a6815ca1cf1c17ec96a70e11154b72018"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.6/adversary_2026.9.15-beta.6_darwin_arm64.tar.gz"
      sha256 "6d48fa9af3c4bc41622c192921ad67ae3b3f6ad01285134fede31b0009e41a92"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.6/adversary_2026.9.15-beta.6_linux_amd64.tar.gz"
      sha256 "ee5df1a28c3edac7fe34de4f75a99f947ce4ab31db0dc3e898c311cc8eae4874"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.6/adversary_2026.9.15-beta.6_linux_arm64.tar.gz"
      sha256 "15433c46eeccd586857afb8a24be5a87a0fde69b144f384f97fb41c5fe6dd69d"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
