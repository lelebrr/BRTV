.class public Landroidx/recyclerview/widget/f0;
.super Landroidx/recyclerview/widget/t1;
.source "MyApplication"


# static fields
.field private static final MAX_SCROLL_ON_FLING_DURATION:I = 0x64


# instance fields
.field private mHorizontalHelper:Landroidx/recyclerview/widget/d0;

.field private mVerticalHelper:Landroidx/recyclerview/widget/d0;


# direct methods
.method public static a(Landroid/view/View;Landroidx/recyclerview/widget/d0;)I
    .locals 1

    .line 1
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/d0;->e(Landroid/view/View;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/d0;->c(Landroid/view/View;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    div-int/lit8 p0, p0, 0x2

    .line 10
    .line 11
    add-int/2addr p0, v0

    .line 12
    invoke-virtual {p1}, Landroidx/recyclerview/widget/d0;->k()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p1}, Landroidx/recyclerview/widget/d0;->l()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    div-int/lit8 p1, p1, 0x2

    .line 21
    .line 22
    add-int/2addr p1, v0

    .line 23
    sub-int/2addr p0, p1

    .line 24
    return p0
.end method

.method public static b(Landroidx/recyclerview/widget/x0;Landroidx/recyclerview/widget/d0;)Landroid/view/View;
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/x0;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/d0;->k()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p1}, Landroidx/recyclerview/widget/d0;->l()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    div-int/lit8 v3, v3, 0x2

    .line 18
    .line 19
    add-int/2addr v3, v2

    .line 20
    const v2, 0x7fffffff

    .line 21
    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    :goto_0
    if-ge v4, v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/x0;->getChildAt(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/d0;->e(Landroid/view/View;)I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/d0;->c(Landroid/view/View;)I

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    div-int/lit8 v7, v7, 0x2

    .line 39
    .line 40
    add-int/2addr v7, v6

    .line 41
    sub-int/2addr v7, v3

    .line 42
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    if-ge v6, v2, :cond_1

    .line 47
    .line 48
    move-object v1, v5

    .line 49
    move v2, v6

    .line 50
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    return-object v1
.end method


# virtual methods
.method public final c(Landroidx/recyclerview/widget/x0;)Landroidx/recyclerview/widget/d0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/f0;->mHorizontalHelper:Landroidx/recyclerview/widget/d0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/recyclerview/widget/d0;->a:Landroidx/recyclerview/widget/x0;

    .line 6
    .line 7
    if-eq v0, p1, :cond_1

    .line 8
    .line 9
    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/b0;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/d0;-><init>(Landroidx/recyclerview/widget/x0;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Landroidx/recyclerview/widget/f0;->mHorizontalHelper:Landroidx/recyclerview/widget/d0;

    .line 15
    .line 16
    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/f0;->mHorizontalHelper:Landroidx/recyclerview/widget/d0;

    .line 17
    .line 18
    return-object p1
.end method

.method public calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/x0;Landroid/view/View;)[I
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/x0;->canScrollHorizontally()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/f0;->c(Landroidx/recyclerview/widget/x0;)Landroidx/recyclerview/widget/d0;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {p2, v1}, Landroidx/recyclerview/widget/f0;->a(Landroid/view/View;Landroidx/recyclerview/widget/d0;)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    aput v1, v0, v2

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    aput v2, v0, v2

    .line 23
    .line 24
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/x0;->canScrollVertically()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/4 v3, 0x1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/f0;->d(Landroidx/recyclerview/widget/x0;)Landroidx/recyclerview/widget/d0;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {p2, p1}, Landroidx/recyclerview/widget/f0;->a(Landroid/view/View;Landroidx/recyclerview/widget/d0;)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    aput p1, v0, v3

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    aput v2, v0, v3

    .line 43
    .line 44
    :goto_1
    return-object v0
.end method

.method public createScroller(Landroidx/recyclerview/widget/x0;)Landroidx/recyclerview/widget/k1;
    .locals 2

    .line 1
    instance-of p1, p1, Landroidx/recyclerview/widget/j1;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    new-instance p1, Landroidx/recyclerview/widget/e0;

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/recyclerview/widget/t1;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-direct {p1, p0, v0, v1}, Landroidx/recyclerview/widget/e0;-><init>(Landroidx/recyclerview/widget/t1;Landroid/content/Context;I)V

    .line 17
    .line 18
    .line 19
    return-object p1
.end method

.method public final d(Landroidx/recyclerview/widget/x0;)Landroidx/recyclerview/widget/d0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/f0;->mVerticalHelper:Landroidx/recyclerview/widget/d0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/recyclerview/widget/d0;->a:Landroidx/recyclerview/widget/x0;

    .line 6
    .line 7
    if-eq v0, p1, :cond_1

    .line 8
    .line 9
    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/c0;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/d0;-><init>(Landroidx/recyclerview/widget/x0;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Landroidx/recyclerview/widget/f0;->mVerticalHelper:Landroidx/recyclerview/widget/d0;

    .line 15
    .line 16
    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/f0;->mVerticalHelper:Landroidx/recyclerview/widget/d0;

    .line 17
    .line 18
    return-object p1
.end method

.method public findSnapView(Landroidx/recyclerview/widget/x0;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/x0;->canScrollVertically()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/f0;->d(Landroidx/recyclerview/widget/x0;)Landroidx/recyclerview/widget/d0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {p1, v0}, Landroidx/recyclerview/widget/f0;->b(Landroidx/recyclerview/widget/x0;Landroidx/recyclerview/widget/d0;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/x0;->canScrollHorizontally()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/f0;->c(Landroidx/recyclerview/widget/x0;)Landroidx/recyclerview/widget/d0;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {p1, v0}, Landroidx/recyclerview/widget/f0;->b(Landroidx/recyclerview/widget/x0;Landroidx/recyclerview/widget/d0;)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1

    .line 31
    :cond_1
    const/4 p1, 0x0

    .line 32
    return-object p1
.end method

.method public findTargetSnapPosition(Landroidx/recyclerview/widget/x0;II)I
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/x0;->getItemCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/x0;->canScrollVertically()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/f0;->d(Landroidx/recyclerview/widget/x0;)Landroidx/recyclerview/widget/d0;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/x0;->canScrollHorizontally()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/f0;->c(Landroidx/recyclerview/widget/x0;)Landroidx/recyclerview/widget/d0;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    move-object v2, v3

    .line 33
    :goto_0
    if-nez v2, :cond_3

    .line 34
    .line 35
    return v1

    .line 36
    :cond_3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/x0;->getChildCount()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    const/4 v5, 0x0

    .line 41
    const/high16 v6, -0x80000000

    .line 42
    .line 43
    const v7, 0x7fffffff

    .line 44
    .line 45
    .line 46
    move-object v6, v3

    .line 47
    const/high16 v7, -0x80000000

    .line 48
    .line 49
    const v8, 0x7fffffff

    .line 50
    .line 51
    .line 52
    const/4 v9, 0x0

    .line 53
    :goto_1
    if-ge v9, v4, :cond_7

    .line 54
    .line 55
    invoke-virtual {p1, v9}, Landroidx/recyclerview/widget/x0;->getChildAt(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v10

    .line 59
    if-nez v10, :cond_4

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_4
    invoke-static {v10, v2}, Landroidx/recyclerview/widget/f0;->a(Landroid/view/View;Landroidx/recyclerview/widget/d0;)I

    .line 63
    .line 64
    .line 65
    move-result v11

    .line 66
    if-gtz v11, :cond_5

    .line 67
    .line 68
    if-le v11, v7, :cond_5

    .line 69
    .line 70
    move-object v6, v10

    .line 71
    move v7, v11

    .line 72
    :cond_5
    if-ltz v11, :cond_6

    .line 73
    .line 74
    if-ge v11, v8, :cond_6

    .line 75
    .line 76
    move-object v3, v10

    .line 77
    move v8, v11

    .line 78
    :cond_6
    :goto_2
    add-int/lit8 v9, v9, 0x1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/x0;->canScrollHorizontally()Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    const/4 v4, 0x1

    .line 86
    if-eqz v2, :cond_9

    .line 87
    .line 88
    if-lez p2, :cond_8

    .line 89
    .line 90
    :goto_3
    const/4 p2, 0x1

    .line 91
    goto :goto_4

    .line 92
    :cond_8
    const/4 p2, 0x0

    .line 93
    goto :goto_4

    .line 94
    :cond_9
    if-lez p3, :cond_8

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :goto_4
    if-eqz p2, :cond_a

    .line 98
    .line 99
    if-eqz v3, :cond_a

    .line 100
    .line 101
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/x0;->getPosition(Landroid/view/View;)I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    return p1

    .line 106
    :cond_a
    if-nez p2, :cond_b

    .line 107
    .line 108
    if-eqz v6, :cond_b

    .line 109
    .line 110
    invoke-virtual {p1, v6}, Landroidx/recyclerview/widget/x0;->getPosition(Landroid/view/View;)I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    return p1

    .line 115
    :cond_b
    if-eqz p2, :cond_c

    .line 116
    .line 117
    move-object v3, v6

    .line 118
    :cond_c
    if-nez v3, :cond_d

    .line 119
    .line 120
    return v1

    .line 121
    :cond_d
    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/x0;->getPosition(Landroid/view/View;)I

    .line 122
    .line 123
    .line 124
    move-result p3

    .line 125
    invoke-virtual {p1}, Landroidx/recyclerview/widget/x0;->getItemCount()I

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    instance-of v3, p1, Landroidx/recyclerview/widget/j1;

    .line 130
    .line 131
    if-eqz v3, :cond_f

    .line 132
    .line 133
    check-cast p1, Landroidx/recyclerview/widget/j1;

    .line 134
    .line 135
    sub-int/2addr v2, v4

    .line 136
    invoke-interface {p1, v2}, Landroidx/recyclerview/widget/j1;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    if-eqz p1, :cond_f

    .line 141
    .line 142
    iget v2, p1, Landroid/graphics/PointF;->x:F

    .line 143
    .line 144
    const/4 v3, 0x0

    .line 145
    cmpg-float v2, v2, v3

    .line 146
    .line 147
    if-ltz v2, :cond_e

    .line 148
    .line 149
    iget p1, p1, Landroid/graphics/PointF;->y:F

    .line 150
    .line 151
    cmpg-float p1, p1, v3

    .line 152
    .line 153
    if-gez p1, :cond_f

    .line 154
    .line 155
    :cond_e
    const/4 v5, 0x1

    .line 156
    :cond_f
    if-ne v5, p2, :cond_10

    .line 157
    .line 158
    const/4 v4, -0x1

    .line 159
    :cond_10
    add-int/2addr p3, v4

    .line 160
    if-ltz p3, :cond_12

    .line 161
    .line 162
    if-lt p3, v0, :cond_11

    .line 163
    .line 164
    goto :goto_5

    .line 165
    :cond_11
    return p3

    .line 166
    :cond_12
    :goto_5
    return v1
.end method
