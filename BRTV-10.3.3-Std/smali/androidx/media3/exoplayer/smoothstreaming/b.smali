.class public final synthetic Landroidx/media3/exoplayer/smoothstreaming/b;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lb7/i;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;

    .line 2
    .line 3
    invoke-static {p1}, Landroidx/media3/exoplayer/smoothstreaming/SsMediaPeriod;->a(Landroidx/media3/exoplayer/source/chunk/ChunkSampleStream;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
