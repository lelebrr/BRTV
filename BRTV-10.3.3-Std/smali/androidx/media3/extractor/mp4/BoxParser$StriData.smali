.class final Landroidx/media3/extractor/mp4/BoxParser$StriData;
.super Ljava/lang/Object;
.source "MyApplication"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/mp4/BoxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StriData"
.end annotation


# instance fields
.field private final eyeViewsReversed:Z

.field private final hasLeftEyeView:Z

.field private final hasRightEyeView:Z


# direct methods
.method public constructor <init>(ZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Landroidx/media3/extractor/mp4/BoxParser$StriData;->hasLeftEyeView:Z

    .line 5
    .line 6
    iput-boolean p2, p0, Landroidx/media3/extractor/mp4/BoxParser$StriData;->hasRightEyeView:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Landroidx/media3/extractor/mp4/BoxParser$StriData;->eyeViewsReversed:Z

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic access$1600(Landroidx/media3/extractor/mp4/BoxParser$StriData;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/media3/extractor/mp4/BoxParser$StriData;->hasLeftEyeView:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$1700(Landroidx/media3/extractor/mp4/BoxParser$StriData;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/media3/extractor/mp4/BoxParser$StriData;->hasRightEyeView:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic access$900(Landroidx/media3/extractor/mp4/BoxParser$StriData;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/media3/extractor/mp4/BoxParser$StriData;->eyeViewsReversed:Z

    .line 2
    .line 3
    return p0
.end method
