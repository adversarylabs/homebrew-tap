class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.15-beta.10"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.10/adversary_2026.9.15-beta.10_darwin_amd64.tar.gz"
      sha256 "290ca8b27d3452af153d4ebafc8662992d02f78ff18cfa111671f5e82d4f6b74"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.10/adversary_2026.9.15-beta.10_darwin_arm64.tar.gz"
      sha256 "e159f6f50645645fa619e5c3774f940b3917bb7ee4eb9e3cc096153ae080d72c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.10/adversary_2026.9.15-beta.10_linux_amd64.tar.gz"
      sha256 "8e0d4df3311eab3ee3126874ec1e982ee986eafb0bda29e369211c202f146127"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.10/adversary_2026.9.15-beta.10_linux_arm64.tar.gz"
      sha256 "a263ee514cdcbddb73eb59668b621987cd4258bd8042efd7d17a99fc5e4d8f26"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
