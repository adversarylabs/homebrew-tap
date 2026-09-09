class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.9-beta.5"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.9-beta.5/adversary_2026.9.9-beta.5_darwin_amd64.tar.gz"
      sha256 "b0ab1176f9bdd93742789daaf50166c4300ca75dfd7535c3ccaaba386cc95548"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.9-beta.5/adversary_2026.9.9-beta.5_darwin_arm64.tar.gz"
      sha256 "b5f01e007ed6389322be7acb5df9aa28751d2cabdfc98d88a0cc0af2fbe79451"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.9-beta.5/adversary_2026.9.9-beta.5_linux_amd64.tar.gz"
      sha256 "d84f254998f32872202258c450e815fa1ffd10a4dba01cdbb4549bf472dbeba5"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.9-beta.5/adversary_2026.9.9-beta.5_linux_arm64.tar.gz"
      sha256 "c4840cbfa8b9c9a98c303294965b477e7f4bbd62ec93ea89d09c9663b3600e6f"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
