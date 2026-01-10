.class final Landroidx/media3/exoplayer/video/spherical/FrameRotationQueue;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field private final recenterMatrix:[F

.field private recenterMatrixComputed:Z

.field private final rotationMatrix:[F

.field private final rotations:Landroidx/media3/common/util/TimedValueQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/util/TimedValueQueue<",
            "[F>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x10

    .line 5
    .line 6
    new-array v1, v0, [F

    .line 7
    .line 8
    iput-object v1, p0, Landroidx/media3/exoplayer/video/spherical/FrameRotationQueue;->recenterMatrix:[F

    .line 9
    .line 10
    new-array v0, v0, [F

    .line 11
    .line 12
    iput-object v0, p0, Landroidx/media3/exoplayer/video/spherical/FrameRotationQueue;->rotationMatrix:[F

    .line 13
    .line 14
    new-instance v0, Landroidx/media3/common/util/TimedValueQueue;

    .line 15
    .line 16
    invoke-direct {v0}, Landroidx/media3/common/util/TimedValueQueue;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Landroidx/media3/exoplayer/video/spherical/FrameRotationQueue;->rotations:Landroidx/media3/common/util/TimedValueQueue;

    .line 20
    .line 21
    return-void
.end method

.method public static computeRecenterMatrix([F[F)V
    .locals 6

    .line 1
    invoke-static {p0}, Landroidx/media3/common/util/GlUtil;->setToIdentity([F)V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xa

    .line 5
    .line 6
    aget v1, p1, v0

    .line 7
    .line 8
    mul-float v1, v1, v1

    .line 9
    .line 10
    const/16 v2, 0x8

    .line 11
    .line 12
    aget v3, p1, v2

    .line 13
    .line 14
    mul-float v3, v3, v3

    .line 15
    .line 16
    add-float/2addr v3, v1

    .line 17
    float-to-double v3, v3

    .line 18
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    double-to-float v1, v3

    .line 23
    aget v3, p1, v0

    .line 24
    .line 25
    div-float v4, v3, v1

    .line 26
    .line 27
    const/4 v5, 0x0

    .line 28
    aput v4, p0, v5

    .line 29
    .line 30
    aget p1, p1, v2

    .line 31
    .line 32
    div-float v4, p1, v1

    .line 33
    .line 34
    const/4 v5, 0x2

    .line 35
    aput v4, p0, v5

    .line 36
    .line 37
    neg-float p1, p1

    .line 38
    div-float/2addr p1, v1

    .line 39
    aput p1, p0, v2

    .line 40
    .line 41
    div-float/2addr v3, v1

    .line 42
    aput v3, p0, v0

    .line 43
    .line 44
    return-void
.end method

.method private static getRotationMatrixFromAngleAxis([F[F)V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    aget v0, p1, v0

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    aget v1, p1, v1

    .line 6
    .line 7
    neg-float v1, v1

    .line 8
    const/4 v2, 0x2

    .line 9
    aget p1, p1, v2

    .line 10
    .line 11
    neg-float p1, p1

    .line 12
    invoke-static {v0, v1, p1}, Landroid/opengl/Matrix;->length(FFF)F

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x0

    .line 17
    cmpl-float v3, v2, v3

    .line 18
    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    float-to-double v3, v2

    .line 22
    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    .line 23
    .line 24
    .line 25
    move-result-wide v3

    .line 26
    double-to-float v7, v3

    .line 27
    div-float v8, v0, v2

    .line 28
    .line 29
    div-float v9, v1, v2

    .line 30
    .line 31
    div-float v10, p1, v2

    .line 32
    .line 33
    const/4 v6, 0x0

    .line 34
    move-object v5, p0

    .line 35
    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-static {p0}, Landroidx/media3/common/util/GlUtil;->setToIdentity([F)V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void
.end method


# virtual methods
.method public pollRotationMatrix([FJ)Z
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/FrameRotationQueue;->rotations:Landroidx/media3/common/util/TimedValueQueue;

    .line 2
    .line 3
    invoke-virtual {v0, p2, p3}, Landroidx/media3/common/util/TimedValueQueue;->pollFloor(J)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    check-cast p2, [F

    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return p1

    .line 13
    :cond_0
    iget-object p3, p0, Landroidx/media3/exoplayer/video/spherical/FrameRotationQueue;->rotationMatrix:[F

    .line 14
    .line 15
    invoke-static {p3, p2}, Landroidx/media3/exoplayer/video/spherical/FrameRotationQueue;->getRotationMatrixFromAngleAxis([F[F)V

    .line 16
    .line 17
    .line 18
    iget-boolean p2, p0, Landroidx/media3/exoplayer/video/spherical/FrameRotationQueue;->recenterMatrixComputed:Z

    .line 19
    .line 20
    const/4 p3, 0x1

    .line 21
    if-nez p2, :cond_1

    .line 22
    .line 23
    iget-object p2, p0, Landroidx/media3/exoplayer/video/spherical/FrameRotationQueue;->recenterMatrix:[F

    .line 24
    .line 25
    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/FrameRotationQueue;->rotationMatrix:[F

    .line 26
    .line 27
    invoke-static {p2, v0}, Landroidx/media3/exoplayer/video/spherical/FrameRotationQueue;->computeRecenterMatrix([F[F)V

    .line 28
    .line 29
    .line 30
    iput-boolean p3, p0, Landroidx/media3/exoplayer/video/spherical/FrameRotationQueue;->recenterMatrixComputed:Z

    .line 31
    .line 32
    :cond_1
    iget-object v3, p0, Landroidx/media3/exoplayer/video/spherical/FrameRotationQueue;->recenterMatrix:[F

    .line 33
    .line 34
    iget-object v5, p0, Landroidx/media3/exoplayer/video/spherical/FrameRotationQueue;->rotationMatrix:[F

    .line 35
    .line 36
    const/4 v6, 0x0

    .line 37
    const/4 v2, 0x0

    .line 38
    const/4 v4, 0x0

    .line 39
    move-object v1, p1

    .line 40
    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 41
    .line 42
    .line 43
    return p3
.end method

.method public reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/FrameRotationQueue;->rotations:Landroidx/media3/common/util/TimedValueQueue;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/common/util/TimedValueQueue;->clear()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Landroidx/media3/exoplayer/video/spherical/FrameRotationQueue;->recenterMatrixComputed:Z

    .line 8
    .line 9
    return-void
.end method

.method public setRotation(J[F)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/FrameRotationQueue;->rotations:Landroidx/media3/common/util/TimedValueQueue;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Landroidx/media3/common/util/TimedValueQueue;->add(JLjava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
