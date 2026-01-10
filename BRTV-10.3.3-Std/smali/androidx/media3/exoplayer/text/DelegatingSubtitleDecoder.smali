.class final Landroidx/media3/exoplayer/text/DelegatingSubtitleDecoder;
.super Landroidx/media3/extractor/text/SimpleSubtitleDecoder;
.source "MyApplication"


# instance fields
.field private final subtitleParser:Landroidx/media3/extractor/text/SubtitleParser;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/media3/extractor/text/SubtitleParser;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Landroidx/media3/exoplayer/text/DelegatingSubtitleDecoder;->subtitleParser:Landroidx/media3/extractor/text/SubtitleParser;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public decode([BIZ)Landroidx/media3/extractor/text/Subtitle;
    .locals 1

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    iget-object p3, p0, Landroidx/media3/exoplayer/text/DelegatingSubtitleDecoder;->subtitleParser:Landroidx/media3/extractor/text/SubtitleParser;

    .line 4
    .line 5
    invoke-interface {p3}, Landroidx/media3/extractor/text/SubtitleParser;->reset()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object p3, p0, Landroidx/media3/exoplayer/text/DelegatingSubtitleDecoder;->subtitleParser:Landroidx/media3/extractor/text/SubtitleParser;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-interface {p3, p1, v0, p2}, Landroidx/media3/extractor/text/SubtitleParser;->parseToLegacySubtitle([BII)Landroidx/media3/extractor/text/Subtitle;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
