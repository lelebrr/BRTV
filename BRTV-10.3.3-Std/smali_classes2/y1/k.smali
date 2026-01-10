.class public final Ly1/k;
.super Ly1/v;
.source "MyApplication"


# virtual methods
.method public final e(Landroid/view/ViewGroup;Landroidx/transition/Transition;Ly1/e0;Ly1/e0;)J
    .locals 8

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    if-nez p4, :cond_0

    .line 6
    .line 7
    return-wide v0

    .line 8
    :cond_0
    const/4 v2, 0x1

    .line 9
    if-eqz p4, :cond_4

    .line 10
    .line 11
    const/16 v3, 0x8

    .line 12
    .line 13
    if-nez p3, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    iget-object v4, p3, Ly1/e0;->a:Ljava/util/HashMap;

    .line 17
    .line 18
    const-string v5, "android:visibilityPropagation:visibility"

    .line 19
    .line 20
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    check-cast v4, Ljava/lang/Integer;

    .line 25
    .line 26
    if-nez v4, :cond_2

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    :goto_0
    if-nez v3, :cond_3

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_3
    move-object p3, p4

    .line 37
    const/4 p4, 0x1

    .line 38
    goto :goto_2

    .line 39
    :cond_4
    :goto_1
    const/4 p4, -0x1

    .line 40
    :goto_2
    const/4 v3, 0x0

    .line 41
    invoke-static {p3, v3}, Ly1/v;->f(Ly1/e0;I)I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    invoke-static {p3, v2}, Ly1/v;->f(Ly1/e0;I)I

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    const/4 v5, 0x2

    .line 53
    new-array v6, v5, [I

    .line 54
    .line 55
    invoke-virtual {p1, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 56
    .line 57
    .line 58
    aget v3, v6, v3

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    div-int/2addr v7, v5

    .line 65
    add-int/2addr v7, v3

    .line 66
    int-to-float v3, v7

    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    add-float/2addr v7, v3

    .line 72
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    aget v2, v6, v2

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    div-int/2addr v6, v5

    .line 83
    add-int/2addr v6, v2

    .line 84
    int-to-float v2, v6

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    add-float/2addr v5, v2

    .line 90
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    int-to-float v4, v4

    .line 95
    int-to-float p3, p3

    .line 96
    int-to-float v3, v3

    .line 97
    int-to-float v2, v2

    .line 98
    sub-float/2addr v3, v4

    .line 99
    sub-float/2addr v2, p3

    .line 100
    mul-float v3, v3, v3

    .line 101
    .line 102
    mul-float v2, v2, v2

    .line 103
    .line 104
    add-float/2addr v2, v3

    .line 105
    float-to-double v2, v2

    .line 106
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 107
    .line 108
    .line 109
    move-result-wide v2

    .line 110
    double-to-float p3, v2

    .line 111
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    int-to-float v2, v2

    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    int-to-float p1, p1

    .line 121
    const/4 v3, 0x0

    .line 122
    sub-float/2addr v2, v3

    .line 123
    sub-float/2addr p1, v3

    .line 124
    mul-float v2, v2, v2

    .line 125
    .line 126
    mul-float p1, p1, p1

    .line 127
    .line 128
    add-float/2addr p1, v2

    .line 129
    float-to-double v2, p1

    .line 130
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 131
    .line 132
    .line 133
    move-result-wide v2

    .line 134
    double-to-float p1, v2

    .line 135
    div-float/2addr p3, p1

    .line 136
    iget-wide p1, p2, Landroidx/transition/Transition;->c:J

    .line 137
    .line 138
    cmp-long v2, p1, v0

    .line 139
    .line 140
    if-gez v2, :cond_5

    .line 141
    .line 142
    const-wide/16 p1, 0x12c

    .line 143
    .line 144
    :cond_5
    int-to-long v0, p4

    .line 145
    mul-long p1, p1, v0

    .line 146
    .line 147
    long-to-float p1, p1

    .line 148
    const/high16 p2, 0x40400000    # 3.0f

    .line 149
    .line 150
    div-float/2addr p1, p2

    .line 151
    mul-float p1, p1, p3

    .line 152
    .line 153
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    int-to-long p1, p1

    .line 158
    return-wide p1
.end method
