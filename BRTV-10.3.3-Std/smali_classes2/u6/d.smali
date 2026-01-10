.class public final Lu6/d;
.super Ln5/d;
.source "MyApplication"


# virtual methods
.method public final u(Lu6/w;FF)V
    .locals 6

    .line 1
    mul-float v0, p3, p2

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/high16 v2, 0x43340000    # 180.0f

    .line 5
    .line 6
    const/high16 v3, 0x42b40000    # 90.0f

    .line 7
    .line 8
    invoke-virtual {p1, v1, v0, v2, v3}, Lu6/w;->e(FFFF)V

    .line 9
    .line 10
    .line 11
    float-to-double v2, v3

    .line 12
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    float-to-double v4, p3

    .line 21
    mul-double v2, v2, v4

    .line 22
    .line 23
    float-to-double p2, p2

    .line 24
    mul-double v2, v2, p2

    .line 25
    .line 26
    double-to-float v0, v2

    .line 27
    float-to-double v1, v1

    .line 28
    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    .line 29
    .line 30
    .line 31
    move-result-wide v1

    .line 32
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    .line 33
    .line 34
    .line 35
    move-result-wide v1

    .line 36
    mul-double v1, v1, v4

    .line 37
    .line 38
    mul-double v1, v1, p2

    .line 39
    .line 40
    double-to-float p2, v1

    .line 41
    invoke-virtual {p1, v0, p2}, Lu6/w;->d(FF)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
