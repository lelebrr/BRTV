.class public final Landroidx/media3/common/util/ConstantRateTimestampIterator;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroidx/media3/common/util/TimestampIterator;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# instance fields
.field private final endPositionUs:J

.field private final frameRate:F

.field private framesAdded:I

.field private final framesDurationUs:D

.field private final startPositionUs:J

.field private final totalNumberOfFramesToAdd:I


# direct methods
.method public constructor <init>(JF)V
    .locals 6

    const-wide/16 v1, 0x0

    move-object v0, p0

    move-wide v3, p1

    move v5, p3

    .line 1
    invoke-direct/range {v0 .. v5}, Landroidx/media3/common/util/ConstantRateTimestampIterator;-><init>(JJF)V

    return-void
.end method

.method public constructor <init>(JJF)V
    .locals 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    cmp-long v4, p3, v2

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 3
    :goto_0
    invoke-static {v4}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    const/4 v4, 0x0

    cmpl-float v4, p5, v4

    if-lez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 4
    :goto_1
    invoke-static {v4}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    cmp-long v4, v2, p1

    if-gtz v4, :cond_2

    cmp-long v2, p1, p3

    if-gez v2, :cond_2

    const/4 v0, 0x1

    .line 5
    :cond_2
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 6
    iput-wide p1, p0, Landroidx/media3/common/util/ConstantRateTimestampIterator;->startPositionUs:J

    .line 7
    iput-wide p3, p0, Landroidx/media3/common/util/ConstantRateTimestampIterator;->endPositionUs:J

    .line 8
    iput p5, p0, Landroidx/media3/common/util/ConstantRateTimestampIterator;->frameRate:F

    sub-long/2addr p3, p1

    long-to-float p1, p3

    const p2, 0x49742400    # 1000000.0f

    div-float/2addr p1, p2

    mul-float p1, p1, p5

    .line 9
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/media3/common/util/ConstantRateTimestampIterator;->totalNumberOfFramesToAdd:I

    div-float/2addr p2, p5

    float-to-double p1, p2

    .line 10
    iput-wide p1, p0, Landroidx/media3/common/util/ConstantRateTimestampIterator;->framesDurationUs:D

    return-void
.end method

.method private getTimestampUsAfter(I)J
    .locals 6

    .line 1
    iget-wide v0, p0, Landroidx/media3/common/util/ConstantRateTimestampIterator;->startPositionUs:J

    .line 2
    .line 3
    iget-wide v2, p0, Landroidx/media3/common/util/ConstantRateTimestampIterator;->framesDurationUs:D

    .line 4
    .line 5
    int-to-double v4, p1

    .line 6
    mul-double v2, v2, v4

    .line 7
    .line 8
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    add-long/2addr v2, v0

    .line 13
    const-wide/16 v0, 0x0

    .line 14
    .line 15
    cmp-long p1, v2, v0

    .line 16
    .line 17
    if-ltz p1, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 23
    .line 24
    .line 25
    return-wide v2
.end method


# virtual methods
.method public copyOf()Landroidx/media3/common/util/ConstantRateTimestampIterator;
    .locals 7

    .line 2
    new-instance v6, Landroidx/media3/common/util/ConstantRateTimestampIterator;

    iget-wide v1, p0, Landroidx/media3/common/util/ConstantRateTimestampIterator;->startPositionUs:J

    iget-wide v3, p0, Landroidx/media3/common/util/ConstantRateTimestampIterator;->endPositionUs:J

    iget v5, p0, Landroidx/media3/common/util/ConstantRateTimestampIterator;->frameRate:F

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroidx/media3/common/util/ConstantRateTimestampIterator;-><init>(JJF)V

    return-object v6
.end method

.method public bridge synthetic copyOf()Landroidx/media3/common/util/TimestampIterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/media3/common/util/ConstantRateTimestampIterator;->copyOf()Landroidx/media3/common/util/ConstantRateTimestampIterator;

    move-result-object v0

    return-object v0
.end method

.method public getLastTimestampUs()J
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/common/util/ConstantRateTimestampIterator;->totalNumberOfFramesToAdd:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    return-wide v0

    .line 11
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 12
    .line 13
    invoke-direct {p0, v0}, Landroidx/media3/common/util/ConstantRateTimestampIterator;->getTimestampUsAfter(I)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    return-wide v0
.end method

.method public hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/common/util/ConstantRateTimestampIterator;->framesAdded:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/media3/common/util/ConstantRateTimestampIterator;->totalNumberOfFramesToAdd:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public next()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/media3/common/util/ConstantRateTimestampIterator;->hasNext()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 6
    .line 7
    .line 8
    iget v0, p0, Landroidx/media3/common/util/ConstantRateTimestampIterator;->framesAdded:I

    .line 9
    .line 10
    add-int/lit8 v1, v0, 0x1

    .line 11
    .line 12
    iput v1, p0, Landroidx/media3/common/util/ConstantRateTimestampIterator;->framesAdded:I

    .line 13
    .line 14
    invoke-direct {p0, v0}, Landroidx/media3/common/util/ConstantRateTimestampIterator;->getTimestampUsAfter(I)J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    return-wide v0
.end method
