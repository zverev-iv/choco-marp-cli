var target = Argument("target", "Publish");

var packageInfo = new ChocolateyPackSettings {
    //PACKAGE SPECIFIC SECTION
    Id                       = "marp-cli",
    Version                  = "1.4.2",
    PackageSourceUrl         = new Uri("https://github.com/zverev-iv/choco-marp-cli"),
    Owners                   = new[] {"zverev-iv"},
    //SOFTWARE SPECIFIC SECTION
    Title                    = "marp-cli",
    Authors                  = new[] {
        "Marp Team",
        "Yuki Hattori"
        },
    Copyright                = "2021 Marp Team",
    ProjectUrl               = new Uri("https://marp.app/"),
    ProjectSourceUrl         = new Uri("https://github.com/marp-team/marp-cli"),
    DocsUrl                  = new Uri("https://cdn.statically.io/gh/marp-team/marp-cli/master/README.md"),
    BugTrackerUrl            = new Uri("https://github.com/marp-team/marp-cli/issues"),
    IconUrl                  = new Uri("https://cdn.statically.io/gh/marp-team/marp/d4a02dfb/marp.png"),
    LicenseUrl               = new Uri("https://cdn.statically.io/gh/marp-team/marp/d4a02dfb/LICENSE"),
    RequireLicenseAcceptance = false,
    Summary                  = "A CLI interface, for Marp (using @marp-team/marp-core) and any slide deck converter based on Marpit framework.",
    Description              = "It can convert Marp / Marpit Markdown files into static HTML / CSS, PDF, PowerPoint document, and image(s) easily.",
    ReleaseNotes             = new [] {"https://github.com/marp-team/marp-cli/releases"},
    Files                    = new [] {
        new ChocolateyNuSpecContent {Source = System.IO.Path.Combine("src", "**"), Target = "tools"}
        },
    Tags                     = new [] {
        "marp-cli",
        "marp",
        "markup",
        "markdown",
        "presentation",
        "html",
        "pdf",
        "pptx",
        "powerpoint",
        "png",
        "images"
        }
    };

Task("Clean")
    .Does(() =>
{
    DeleteFiles("./**/*.nupkg");
	DeleteFiles("./**/*.nuspec");
});

Task("Pack")
    .IsDependentOn("Clean")
    .Does(() =>
{
    ChocolateyPack(packageInfo);
});

Task("Publish")
    .IsDependentOn("Pack")
    .Does(() =>
{
	var publishKey = EnvironmentVariable<string>("CHOCOAPIKEY", null);
    var package = $"{packageInfo.Id}.{packageInfo.Version}.nupkg";

    ChocolateyPush(package, new ChocolateyPushSettings {
        ApiKey = publishKey
    });
});

RunTarget(target);
