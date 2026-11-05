cask "orb" do
  version "0.1.0,20261105.2232"
  sha256 "843faa84c0714795784f37daba026809a4dbf724f52a0241111cda448833bbea"

  url "https://services.orb.surf/updates/mac/stable/files/#{version.csv.second}/Orb-#{version.csv.second}-arm64.zip",
      verified: "services.orb.surf/updates/mac/"
  name "Orb"
  desc "Web browser with a sidebar, Spaces and split view"
  homepage "https://orb.surf/"

  livecheck do
    url "https://services.orb.surf/updates/mac/stable/appcast-arm64.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Orb.app"

  zap trash: [
    "~/Library/Application Support/Orb",
    "~/Library/Caches/Orb",
    "~/Library/Caches/surf.orb.Orb",
    "~/Library/HTTPStorages/surf.orb.Orb",
    "~/Library/Preferences/surf.orb.Orb.plist",
    "~/Library/Saved Application State/surf.orb.Orb.savedState",
  ]
end
