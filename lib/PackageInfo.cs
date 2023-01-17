public class PackageInfo
{
    public string PackageVersion { get; set; }
    public string Package32Url { get; set; }
    public string Package64Url { get; set; }

    #region BuildFolders

    public string BinDir { get => "bin"; }
    public string TempDir { get => "temp"; }

    #endregion

    #region PackageSettings

    public ChocolateyPackSettings PackageSettings
    {
        get => new ChocolateyPackSettings {
        //PACKAGE SPECIFIC SECTION
        Id                       = "marp-cli",
        Version                  = PackageVersion,
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
        Files = new[] {
                new ChocolateyNuSpecContent {
                    Source = new DirectoryPath(BinDir).Combine("**").ToString(),
                    Target = "tools"
                    }
                },
        Tags = new [] {
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
    }

    #endregion
}