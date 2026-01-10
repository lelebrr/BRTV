.class public abstract synthetic Landroidx/media3/extractor/d;
.super Ljava/lang/Object;
.source "MyApplication"


# direct methods
.method public static a(Landroidx/media3/extractor/TrackOutput;J)V
    .locals 0

    .line 1
    return-void
.end method

.method public static b(Landroidx/media3/extractor/TrackOutput;Landroidx/media3/common/DataReader;IZ)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, p1, p2, p3, v0}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/DataReader;IZI)I

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public static c(Landroidx/media3/extractor/TrackOutput;Landroidx/media3/common/util/ParsableByteArray;I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, p1, p2, v0}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    .line 3
    .line 4
    .line 5
    return-void
.end method
