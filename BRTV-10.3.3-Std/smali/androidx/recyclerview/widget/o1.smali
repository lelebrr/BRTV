.class public final Landroidx/recyclerview/widget/o1;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:I

.field public b:I

.field public c:Landroid/widget/OverScroller;

.field public d:Landroid/view/animation/Interpolator;

.field public e:Z

.field public f:Z

.field public final synthetic g:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/recyclerview/widget/o1;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    .line 6
    sget-object v0, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    .line 7
    .line 8
    iput-object v0, p0, Landroidx/recyclerview/widget/o1;->d:Landroid/view/animation/Interpolator;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Landroidx/recyclerview/widget/o1;->e:Z

    .line 12
    .line 13
    iput-boolean v1, p0, Landroidx/recyclerview/widget/o1;->f:Z

    .line 14
    .line 15
    new-instance v1, Landroid/widget/OverScroller;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {v1, p1, v0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Landroidx/recyclerview/widget/o1;->c:Landroid/widget/OverScroller;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/o1;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput v1, p0, Landroidx/recyclerview/widget/o1;->b:I

    .line 9
    .line 10
    iput v1, p0, Landroidx/recyclerview/widget/o1;->a:I

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/recyclerview/widget/o1;->d:Landroid/view/animation/Interpolator;

    .line 13
    .line 14
    sget-object v2, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    .line 15
    .line 16
    if-eq v1, v2, :cond_0

    .line 17
    .line 18
    iput-object v2, p0, Landroidx/recyclerview/widget/o1;->d:Landroid/view/animation/Interpolator;

    .line 19
    .line 20
    new-instance v1, Landroid/widget/OverScroller;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-direct {v1, v0, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Landroidx/recyclerview/widget/o1;->c:Landroid/widget/OverScroller;

    .line 30
    .line 31
    :cond_0
    iget-object v3, p0, Landroidx/recyclerview/widget/o1;->c:Landroid/widget/OverScroller;

    .line 32
    .line 33
    const/high16 v8, -0x80000000

    .line 34
    .line 35
    const v9, 0x7fffffff

    .line 36
    .line 37
    .line 38
    const/4 v4, 0x0

    .line 39
    const/4 v5, 0x0

    .line 40
    const/high16 v10, -0x80000000

    .line 41
    .line 42
    const v11, 0x7fffffff

    .line 43
    .line 44
    .line 45
    move v6, p1

    .line 46
    move v7, p2

    .line 47
    invoke-virtual/range {v3 .. v11}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Landroidx/recyclerview/widget/o1;->b()V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/o1;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroidx/recyclerview/widget/o1;->f:Z

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/o1;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    sget-object v1, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method public final c(IILandroid/view/animation/Interpolator;I)V
    .locals 9

    .line 1
    const/high16 v0, -0x80000000

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Landroidx/recyclerview/widget/o1;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    .line 6
    if-ne p4, v0, :cond_3

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 9
    .line 10
    .line 11
    move-result p4

    .line 12
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-le p4, v0, :cond_0

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v3, 0x0

    .line 21
    :goto_0
    if-eqz v3, :cond_1

    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    :goto_1
    if-eqz v3, :cond_2

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_2
    move p4, v0

    .line 36
    :goto_2
    int-to-float p4, p4

    .line 37
    int-to-float v0, v4

    .line 38
    div-float/2addr p4, v0

    .line 39
    const/high16 v0, 0x3f800000    # 1.0f

    .line 40
    .line 41
    add-float/2addr p4, v0

    .line 42
    const/high16 v0, 0x43960000    # 300.0f

    .line 43
    .line 44
    mul-float p4, p4, v0

    .line 45
    .line 46
    float-to-int p4, p4

    .line 47
    const/16 v0, 0x7d0

    .line 48
    .line 49
    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    .line 50
    .line 51
    .line 52
    move-result p4

    .line 53
    :cond_3
    move v8, p4

    .line 54
    if-nez p3, :cond_4

    .line 55
    .line 56
    sget-object p3, Landroidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    .line 57
    .line 58
    :cond_4
    iget-object p4, p0, Landroidx/recyclerview/widget/o1;->d:Landroid/view/animation/Interpolator;

    .line 59
    .line 60
    if-eq p4, p3, :cond_5

    .line 61
    .line 62
    iput-object p3, p0, Landroidx/recyclerview/widget/o1;->d:Landroid/view/animation/Interpolator;

    .line 63
    .line 64
    new-instance p4, Landroid/widget/OverScroller;

    .line 65
    .line 66
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-direct {p4, v0, p3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 71
    .line 72
    .line 73
    iput-object p4, p0, Landroidx/recyclerview/widget/o1;->c:Landroid/widget/OverScroller;

    .line 74
    .line 75
    :cond_5
    iput v1, p0, Landroidx/recyclerview/widget/o1;->b:I

    .line 76
    .line 77
    iput v1, p0, Landroidx/recyclerview/widget/o1;->a:I

    .line 78
    .line 79
    const/4 p3, 0x2

    .line 80
    invoke-virtual {v2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 81
    .line 82
    .line 83
    iget-object v3, p0, Landroidx/recyclerview/widget/o1;->c:Landroid/widget/OverScroller;

    .line 84
    .line 85
    const/4 v4, 0x0

    .line 86
    const/4 v5, 0x0

    .line 87
    move v6, p1

    .line 88
    move v7, p2

    .line 89
    invoke-virtual/range {v3 .. v8}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 90
    .line 91
    .line 92
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 93
    .line 94
    const/16 p2, 0x17

    .line 95
    .line 96
    if-ge p1, p2, :cond_6

    .line 97
    .line 98
    iget-object p1, p0, Landroidx/recyclerview/widget/o1;->c:Landroid/widget/OverScroller;

    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 101
    .line 102
    .line 103
    :cond_6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/o1;->b()V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public final run()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v9, v0, Landroidx/recyclerview/widget/o1;->g:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    iget-object v1, v9, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/x0;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v9, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    iget-object v1, v0, Landroidx/recyclerview/widget/o1;->c:Landroid/widget/OverScroller;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const/4 v10, 0x0

    .line 19
    iput-boolean v10, v0, Landroidx/recyclerview/widget/o1;->f:Z

    .line 20
    .line 21
    const/4 v11, 0x1

    .line 22
    iput-boolean v11, v0, Landroidx/recyclerview/widget/o1;->e:Z

    .line 23
    .line 24
    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 25
    .line 26
    .line 27
    iget-object v12, v0, Landroidx/recyclerview/widget/o1;->c:Landroid/widget/OverScroller;

    .line 28
    .line 29
    invoke-virtual {v12}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_19

    .line 34
    .line 35
    invoke-virtual {v12}, Landroid/widget/OverScroller;->getCurrX()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-virtual {v12}, Landroid/widget/OverScroller;->getCurrY()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    iget v3, v0, Landroidx/recyclerview/widget/o1;->a:I

    .line 44
    .line 45
    sub-int v3, v1, v3

    .line 46
    .line 47
    iget v4, v0, Landroidx/recyclerview/widget/o1;->b:I

    .line 48
    .line 49
    sub-int v4, v2, v4

    .line 50
    .line 51
    iput v1, v0, Landroidx/recyclerview/widget/o1;->a:I

    .line 52
    .line 53
    iput v2, v0, Landroidx/recyclerview/widget/o1;->b:I

    .line 54
    .line 55
    invoke-virtual {v9, v3}, Landroidx/recyclerview/widget/RecyclerView;->consumeFlingInHorizontalStretch(I)I

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    invoke-virtual {v9, v4}, Landroidx/recyclerview/widget/RecyclerView;->consumeFlingInVerticalStretch(I)I

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    iget-object v4, v9, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    .line 64
    .line 65
    aput v10, v4, v10

    .line 66
    .line 67
    aput v10, v4, v11

    .line 68
    .line 69
    const/4 v5, 0x0

    .line 70
    const/4 v6, 0x1

    .line 71
    move-object v1, v9

    .line 72
    move v2, v7

    .line 73
    move v3, v8

    .line 74
    invoke-virtual/range {v1 .. v6}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_1

    .line 79
    .line 80
    iget-object v1, v9, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    .line 81
    .line 82
    aget v2, v1, v10

    .line 83
    .line 84
    sub-int/2addr v7, v2

    .line 85
    aget v1, v1, v11

    .line 86
    .line 87
    sub-int/2addr v8, v1

    .line 88
    :cond_1
    invoke-virtual {v9}, Landroid/view/View;->getOverScrollMode()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    const/4 v13, 0x2

    .line 93
    if-eq v1, v13, :cond_2

    .line 94
    .line 95
    invoke-virtual {v9, v7, v8}, Landroidx/recyclerview/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    .line 96
    .line 97
    .line 98
    :cond_2
    iget-object v1, v9, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/k0;

    .line 99
    .line 100
    if-eqz v1, :cond_6

    .line 101
    .line 102
    iget-object v1, v9, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    .line 103
    .line 104
    aput v10, v1, v10

    .line 105
    .line 106
    aput v10, v1, v11

    .line 107
    .line 108
    invoke-virtual {v9, v7, v8, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollStep(II[I)V

    .line 109
    .line 110
    .line 111
    iget-object v1, v9, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    .line 112
    .line 113
    aget v2, v1, v10

    .line 114
    .line 115
    aget v1, v1, v11

    .line 116
    .line 117
    sub-int/2addr v7, v2

    .line 118
    sub-int/2addr v8, v1

    .line 119
    iget-object v3, v9, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/x0;

    .line 120
    .line 121
    iget-object v3, v3, Landroidx/recyclerview/widget/x0;->mSmoothScroller:Landroidx/recyclerview/widget/k1;

    .line 122
    .line 123
    if-eqz v3, :cond_5

    .line 124
    .line 125
    invoke-virtual {v3}, Landroidx/recyclerview/widget/k1;->isPendingInitialRun()Z

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    if-nez v4, :cond_5

    .line 130
    .line 131
    invoke-virtual {v3}, Landroidx/recyclerview/widget/k1;->isRunning()Z

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    if-eqz v4, :cond_5

    .line 136
    .line 137
    iget-object v4, v9, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/l1;

    .line 138
    .line 139
    invoke-virtual {v4}, Landroidx/recyclerview/widget/l1;->b()I

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    if-nez v4, :cond_3

    .line 144
    .line 145
    invoke-virtual {v3}, Landroidx/recyclerview/widget/k1;->stop()V

    .line 146
    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_3
    invoke-virtual {v3}, Landroidx/recyclerview/widget/k1;->getTargetPosition()I

    .line 150
    .line 151
    .line 152
    move-result v5

    .line 153
    if-lt v5, v4, :cond_4

    .line 154
    .line 155
    sub-int/2addr v4, v11

    .line 156
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/k1;->setTargetPosition(I)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v3, v2, v1}, Landroidx/recyclerview/widget/k1;->onAnimation(II)V

    .line 160
    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_4
    invoke-virtual {v3, v2, v1}, Landroidx/recyclerview/widget/k1;->onAnimation(II)V

    .line 164
    .line 165
    .line 166
    :cond_5
    :goto_0
    move v14, v1

    .line 167
    move v15, v2

    .line 168
    move/from16 v16, v7

    .line 169
    .line 170
    move/from16 v17, v8

    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_6
    move/from16 v16, v7

    .line 174
    .line 175
    move/from16 v17, v8

    .line 176
    .line 177
    const/4 v14, 0x0

    .line 178
    const/4 v15, 0x0

    .line 179
    :goto_1
    iget-object v1, v9, Landroidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    .line 180
    .line 181
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    if-nez v1, :cond_7

    .line 186
    .line 187
    invoke-virtual {v9}, Landroid/view/View;->invalidate()V

    .line 188
    .line 189
    .line 190
    :cond_7
    iget-object v8, v9, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    .line 191
    .line 192
    aput v10, v8, v10

    .line 193
    .line 194
    aput v10, v8, v11

    .line 195
    .line 196
    const/4 v6, 0x0

    .line 197
    const/4 v7, 0x1

    .line 198
    move-object v1, v9

    .line 199
    move v2, v15

    .line 200
    move v3, v14

    .line 201
    move/from16 v4, v16

    .line 202
    .line 203
    move/from16 v5, v17

    .line 204
    .line 205
    invoke-virtual/range {v1 .. v8}, Landroidx/recyclerview/widget/RecyclerView;->dispatchNestedScroll(IIII[II[I)V

    .line 206
    .line 207
    .line 208
    iget-object v1, v9, Landroidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    .line 209
    .line 210
    aget v2, v1, v10

    .line 211
    .line 212
    sub-int v16, v16, v2

    .line 213
    .line 214
    aget v1, v1, v11

    .line 215
    .line 216
    sub-int v17, v17, v1

    .line 217
    .line 218
    if-nez v15, :cond_8

    .line 219
    .line 220
    if-eqz v14, :cond_9

    .line 221
    .line 222
    :cond_8
    invoke-virtual {v9, v15, v14}, Landroidx/recyclerview/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 223
    .line 224
    .line 225
    :cond_9
    invoke-static {v9}, Landroidx/recyclerview/widget/RecyclerView;->access$200(Landroidx/recyclerview/widget/RecyclerView;)Z

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    if-nez v1, :cond_a

    .line 230
    .line 231
    invoke-virtual {v9}, Landroid/view/View;->invalidate()V

    .line 232
    .line 233
    .line 234
    :cond_a
    invoke-virtual {v12}, Landroid/widget/OverScroller;->getCurrX()I

    .line 235
    .line 236
    .line 237
    move-result v1

    .line 238
    invoke-virtual {v12}, Landroid/widget/OverScroller;->getFinalX()I

    .line 239
    .line 240
    .line 241
    move-result v2

    .line 242
    if-ne v1, v2, :cond_b

    .line 243
    .line 244
    const/4 v1, 0x1

    .line 245
    goto :goto_2

    .line 246
    :cond_b
    const/4 v1, 0x0

    .line 247
    :goto_2
    invoke-virtual {v12}, Landroid/widget/OverScroller;->getCurrY()I

    .line 248
    .line 249
    .line 250
    move-result v2

    .line 251
    invoke-virtual {v12}, Landroid/widget/OverScroller;->getFinalY()I

    .line 252
    .line 253
    .line 254
    move-result v3

    .line 255
    if-ne v2, v3, :cond_c

    .line 256
    .line 257
    const/4 v2, 0x1

    .line 258
    goto :goto_3

    .line 259
    :cond_c
    const/4 v2, 0x0

    .line 260
    :goto_3
    invoke-virtual {v12}, Landroid/widget/OverScroller;->isFinished()Z

    .line 261
    .line 262
    .line 263
    move-result v3

    .line 264
    if-nez v3, :cond_f

    .line 265
    .line 266
    if-nez v1, :cond_d

    .line 267
    .line 268
    if-eqz v16, :cond_e

    .line 269
    .line 270
    :cond_d
    if-nez v2, :cond_f

    .line 271
    .line 272
    if-eqz v17, :cond_e

    .line 273
    .line 274
    goto :goto_4

    .line 275
    :cond_e
    const/4 v1, 0x0

    .line 276
    goto :goto_5

    .line 277
    :cond_f
    :goto_4
    const/4 v1, 0x1

    .line 278
    :goto_5
    iget-object v2, v9, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/x0;

    .line 279
    .line 280
    iget-object v2, v2, Landroidx/recyclerview/widget/x0;->mSmoothScroller:Landroidx/recyclerview/widget/k1;

    .line 281
    .line 282
    if-eqz v2, :cond_10

    .line 283
    .line 284
    invoke-virtual {v2}, Landroidx/recyclerview/widget/k1;->isPendingInitialRun()Z

    .line 285
    .line 286
    .line 287
    move-result v2

    .line 288
    if-eqz v2, :cond_10

    .line 289
    .line 290
    goto :goto_8

    .line 291
    :cond_10
    if-eqz v1, :cond_17

    .line 292
    .line 293
    invoke-virtual {v9}, Landroid/view/View;->getOverScrollMode()I

    .line 294
    .line 295
    .line 296
    move-result v1

    .line 297
    if-eq v1, v13, :cond_15

    .line 298
    .line 299
    invoke-virtual {v12}, Landroid/widget/OverScroller;->getCurrVelocity()F

    .line 300
    .line 301
    .line 302
    move-result v1

    .line 303
    float-to-int v1, v1

    .line 304
    if-gez v16, :cond_11

    .line 305
    .line 306
    neg-int v2, v1

    .line 307
    goto :goto_6

    .line 308
    :cond_11
    if-lez v16, :cond_12

    .line 309
    .line 310
    move v2, v1

    .line 311
    goto :goto_6

    .line 312
    :cond_12
    const/4 v2, 0x0

    .line 313
    :goto_6
    if-gez v17, :cond_13

    .line 314
    .line 315
    neg-int v1, v1

    .line 316
    goto :goto_7

    .line 317
    :cond_13
    if-lez v17, :cond_14

    .line 318
    .line 319
    goto :goto_7

    .line 320
    :cond_14
    const/4 v1, 0x0

    .line 321
    :goto_7
    invoke-virtual {v9, v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->absorbGlows(II)V

    .line 322
    .line 323
    .line 324
    :cond_15
    sget-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    .line 325
    .line 326
    if-eqz v1, :cond_18

    .line 327
    .line 328
    iget-object v1, v9, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Landroidx/recyclerview/widget/r;

    .line 329
    .line 330
    iget-object v2, v1, Landroidx/recyclerview/widget/r;->c:[I

    .line 331
    .line 332
    if-eqz v2, :cond_16

    .line 333
    .line 334
    const/4 v3, -0x1

    .line 335
    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 336
    .line 337
    .line 338
    :cond_16
    iput v10, v1, Landroidx/recyclerview/widget/r;->d:I

    .line 339
    .line 340
    goto :goto_9

    .line 341
    :cond_17
    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/o1;->b()V

    .line 342
    .line 343
    .line 344
    iget-object v1, v9, Landroidx/recyclerview/widget/RecyclerView;->mGapWorker:Landroidx/recyclerview/widget/t;

    .line 345
    .line 346
    if-eqz v1, :cond_18

    .line 347
    .line 348
    invoke-virtual {v1, v9, v15, v14}, Landroidx/recyclerview/widget/t;->a(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 349
    .line 350
    .line 351
    :cond_18
    :goto_9
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 352
    .line 353
    const/16 v2, 0x23

    .line 354
    .line 355
    if-lt v1, v2, :cond_19

    .line 356
    .line 357
    invoke-virtual {v12}, Landroid/widget/OverScroller;->getCurrVelocity()F

    .line 358
    .line 359
    .line 360
    move-result v1

    .line 361
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 362
    .line 363
    .line 364
    move-result v1

    .line 365
    invoke-static {v9, v1}, Landroidx/recyclerview/widget/n0;->a(Landroid/view/View;F)V

    .line 366
    .line 367
    .line 368
    :cond_19
    iget-object v1, v9, Landroidx/recyclerview/widget/RecyclerView;->mLayout:Landroidx/recyclerview/widget/x0;

    .line 369
    .line 370
    iget-object v1, v1, Landroidx/recyclerview/widget/x0;->mSmoothScroller:Landroidx/recyclerview/widget/k1;

    .line 371
    .line 372
    if-eqz v1, :cond_1a

    .line 373
    .line 374
    invoke-virtual {v1}, Landroidx/recyclerview/widget/k1;->isPendingInitialRun()Z

    .line 375
    .line 376
    .line 377
    move-result v2

    .line 378
    if-eqz v2, :cond_1a

    .line 379
    .line 380
    invoke-virtual {v1, v10, v10}, Landroidx/recyclerview/widget/k1;->onAnimation(II)V

    .line 381
    .line 382
    .line 383
    :cond_1a
    iput-boolean v10, v0, Landroidx/recyclerview/widget/o1;->e:Z

    .line 384
    .line 385
    iget-boolean v1, v0, Landroidx/recyclerview/widget/o1;->f:Z

    .line 386
    .line 387
    if-eqz v1, :cond_1b

    .line 388
    .line 389
    invoke-virtual {v9, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 390
    .line 391
    .line 392
    sget-object v1, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 393
    .line 394
    invoke-virtual {v9, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 395
    .line 396
    .line 397
    goto :goto_a

    .line 398
    :cond_1b
    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v9, v11}, Landroidx/recyclerview/widget/RecyclerView;->stopNestedScroll(I)V

    .line 402
    .line 403
    .line 404
    :goto_a
    return-void
.end method
