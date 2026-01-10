.class public final synthetic Landroidx/media3/extractor/text/b;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroidx/media3/common/util/Consumer;


# instance fields
.field public final synthetic a:Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;

.field public final synthetic b:J

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;JI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/extractor/text/b;->a:Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;

    .line 5
    .line 6
    iput-wide p2, p0, Landroidx/media3/extractor/text/b;->b:J

    .line 7
    .line 8
    iput p4, p0, Landroidx/media3/extractor/text/b;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Landroidx/media3/extractor/text/CuesWithTiming;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/media3/extractor/text/b;->a:Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;

    .line 4
    .line 5
    iget-wide v1, p0, Landroidx/media3/extractor/text/b;->b:J

    .line 6
    .line 7
    iget v3, p0, Landroidx/media3/extractor/text/b;->c:I

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3, p1}, Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;->a(Landroidx/media3/extractor/text/SubtitleTranscodingTrackOutput;JILandroidx/media3/extractor/text/CuesWithTiming;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
