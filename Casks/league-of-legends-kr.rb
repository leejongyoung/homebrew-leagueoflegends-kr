cask "league-of-legends-kr" do
  version :latest
  sha256 "f2626782da1031d5baca48f38f602096c5af227e58dbb91ed9d3257af0018a64"

  url "https://lol.secure.dyn.riotcdn.net/channels/public/x/installer/current/live.kr.zip"
  name "League of Legends"
  homepage "https://na.leagueoflegends.com/ko-kr/"

  auto_updates false

  app "Install League of Legends kr.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.riotgames.maccontainer.sfl*",
    "~/Library/Saved Application State/com.riotgames.LeagueofLegends.GameClient.savedState",
    "~/Library/Saved Application State/com.riotgames.LeagueofLegends.LeagueClientUx.savedState",
    "~/Library/Preferences/com.riotgames.LeagueofLegends.LeagueClientUxHelper.plist",
    "~/Library/Caches/com.riotgames.LeagueofLegends.LeagueClient",
    "/Users/Shared/Riot Games",
    "/Applications/League of Legends.app",
  ],
      rmdir: [
        "~/Documents/League of Legends",
        "/Users/Shared/Riot Games/Riot Client.app",
        "/Users/Shared/Riot Games/Metadata",
        "~/Library/Application Support/Riot Games/League of Legends",
        "~/Library/Application Support/Riot Games/Install League of Legends",
      ]
end
