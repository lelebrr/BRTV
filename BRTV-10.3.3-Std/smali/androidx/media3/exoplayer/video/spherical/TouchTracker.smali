.class final Landroidx/media3/exoplayer/video/spherical/TouchTracker;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MyApplication"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroidx/media3/exoplayer/video/spherical/OrientationListener$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/video/spherical/TouchTracker$Listener;
    }
.end annotation


# static fields
.field static final MAX_PITCH_DEGREES:F = 45.0f


# instance fields
.field private final accumulatedTouchOffsetDegrees:Landroid/graphics/PointF;

.field private final gestureDetector:Landroid/view/GestureDetector;

.field private final listener:Landroidx/media3/exoplayer/video/spherical/TouchTracker$Listener;

.field private final previousTouchPointPx:Landroid/graphics/PointF;

.field private final pxPerDegrees:F

.field private volatile roll:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/video/spherical/TouchTracker$Listener;F)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/PointF;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/media3/exoplayer/video/spherical/TouchTracker;->previousTouchPointPx:Landroid/graphics/PointF;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/PointF;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/media3/exoplayer/video/spherical/TouchTracker;->accumulatedTouchOffsetDegrees:Landroid/graphics/PointF;

    .line 17
    .line 18
    iput-object p2, p0, Landroidx/media3/exoplayer/video/spherical/TouchTracker;->listener:Landroidx/media3/exoplayer/video/spherical/TouchTracker$Listener;

    .line 19
    .line 20
    iput p3, p0, Landroidx/media3/exoplayer/video/spherical/TouchTracker;->pxPerDegrees:F

    .line 21
    .line 22
    new-instance p2, Landroid/view/GestureDetector;

    .line 23
    .line 24
    invoke-direct {p2, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 25
    .line 26
    .line 27
    iput-object p2, p0, Landroidx/media3/exoplayer/video/spherical/TouchTracker;->gestureDetector:Landroid/view/GestureDetector;

    .line 28
    .line 29
    const p1, 0x40490fdb    # (float)Math.PI

    .line 30
    .line 31
    .line 32
    iput p1, p0, Landroidx/media3/exoplayer/video/spherical/TouchTracker;->roll:F

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/TouchTracker;->previousTouchPointPx:Landroid/graphics/PointF;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-virtual {v0, v1, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    return p1
.end method

.method public onOrientationChange([FF)V
    .locals 0

    .line 1
    neg-float p1, p2

    .line 2
    iput p1, p0, Landroidx/media3/exoplayer/video/spherical/TouchTracker;->roll:F

    .line 3
    .line 4
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object p3, p0, Landroidx/media3/exoplayer/video/spherical/TouchTracker;->previousTouchPointPx:Landroid/graphics/PointF;

    .line 6
    .line 7
    iget p3, p3, Landroid/graphics/PointF;->x:F

    .line 8
    .line 9
    sub-float/2addr p1, p3

    .line 10
    iget p3, p0, Landroidx/media3/exoplayer/video/spherical/TouchTracker;->pxPerDegrees:F

    .line 11
    .line 12
    div-float/2addr p1, p3

    .line 13
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    iget-object p4, p0, Landroidx/media3/exoplayer/video/spherical/TouchTracker;->previousTouchPointPx:Landroid/graphics/PointF;

    .line 18
    .line 19
    iget v0, p4, Landroid/graphics/PointF;->y:F

    .line 20
    .line 21
    sub-float/2addr p3, v0

    .line 22
    iget v0, p0, Landroidx/media3/exoplayer/video/spherical/TouchTracker;->pxPerDegrees:F

    .line 23
    .line 24
    div-float/2addr p3, v0

    .line 25
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    invoke-virtual {p4, v0, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 34
    .line 35
    .line 36
    iget p2, p0, Landroidx/media3/exoplayer/video/spherical/TouchTracker;->roll:F

    .line 37
    .line 38
    float-to-double v0, p2

    .line 39
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    .line 40
    .line 41
    .line 42
    move-result-wide v2

    .line 43
    double-to-float p2, v2

    .line 44
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 45
    .line 46
    .line 47
    move-result-wide v0

    .line 48
    double-to-float p4, v0

    .line 49
    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/TouchTracker;->accumulatedTouchOffsetDegrees:Landroid/graphics/PointF;

    .line 50
    .line 51
    iget v1, v0, Landroid/graphics/PointF;->x:F

    .line 52
    .line 53
    mul-float v2, p2, p1

    .line 54
    .line 55
    mul-float v3, p4, p3

    .line 56
    .line 57
    sub-float/2addr v2, v3

    .line 58
    sub-float/2addr v1, v2

    .line 59
    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 60
    .line 61
    iget v1, v0, Landroid/graphics/PointF;->y:F

    .line 62
    .line 63
    mul-float p4, p4, p1

    .line 64
    .line 65
    mul-float p2, p2, p3

    .line 66
    .line 67
    add-float/2addr p2, p4

    .line 68
    add-float/2addr p2, v1

    .line 69
    iput p2, v0, Landroid/graphics/PointF;->y:F

    .line 70
    .line 71
    const/high16 p1, 0x42340000    # 45.0f

    .line 72
    .line 73
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    const/high16 p2, -0x3dcc0000    # -45.0f

    .line 78
    .line 79
    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    iput p1, v0, Landroid/graphics/PointF;->y:F

    .line 84
    .line 85
    iget-object p1, p0, Landroidx/media3/exoplayer/video/spherical/TouchTracker;->listener:Landroidx/media3/exoplayer/video/spherical/TouchTracker$Listener;

    .line 86
    .line 87
    iget-object p2, p0, Landroidx/media3/exoplayer/video/spherical/TouchTracker;->accumulatedTouchOffsetDegrees:Landroid/graphics/PointF;

    .line 88
    .line 89
    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/video/spherical/TouchTracker$Listener;->onScrollChange(Landroid/graphics/PointF;)V

    .line 90
    .line 91
    .line 92
    const/4 p1, 0x1

    .line 93
    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/video/spherical/TouchTracker;->listener:Landroidx/media3/exoplayer/video/spherical/TouchTracker$Listener;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/video/spherical/TouchTracker$Listener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/media3/exoplayer/video/spherical/TouchTracker;->gestureDetector:Landroid/view/GestureDetector;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
