.class public final Lu6/k;
.super Ln5/d;
.source "MyApplication"


# virtual methods
.method public final u(Lu6/w;FF)V
    .locals 7

    .line 1
    mul-float v0, p3, p2

    .line 2
    .line 3
    const/high16 v1, 0x42b40000    # 90.0f

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/high16 v3, 0x43340000    # 180.0f

    .line 7
    .line 8
    invoke-virtual {p1, v2, v0, v3, v1}, Lu6/w;->e(FFFF)V

    .line 9
    .line 10
    .line 11
    const/high16 v0, 0x40000000    # 2.0f

    .line 12
    .line 13
    mul-float p3, p3, v0

    .line 14
    .line 15
    mul-float v4, p3, p2

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    const/high16 v5, 0x43340000    # 180.0f

    .line 19
    .line 20
    const/high16 v6, 0x42b40000    # 90.0f

    .line 21
    .line 22
    move-object v0, p1

    .line 23
    move v3, v4

    .line 24
    invoke-virtual/range {v0 .. v6}, Lu6/w;->a(FFFFFF)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
