class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.9-beta.6"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.9-beta.6/adversary_2026.9.9-beta.6_darwin_amd64.tar.gz"
      sha256 "86e6aa1eb8107aee93c34d344b442daaf14af5ba3cf38d4e55ff07e27f6abd43"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.9-beta.6/adversary_2026.9.9-beta.6_darwin_arm64.tar.gz"
      sha256 "7d4e7062331be3f5fd3e6c8cfb0d3b082a7476ca566c1196d5bd8b40c425901a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.9-beta.6/adversary_2026.9.9-beta.6_linux_amd64.tar.gz"
      sha256 "ae541b8233fb4555b6ac719bae83aa2a45cdb3bdfc9177594de367138326a186"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.9-beta.6/adversary_2026.9.9-beta.6_linux_arm64.tar.gz"
      sha256 "9a22a338dc8f810bdececf5e827a01b5deab6a7151ac78b695a3f7b309a10bb6"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
