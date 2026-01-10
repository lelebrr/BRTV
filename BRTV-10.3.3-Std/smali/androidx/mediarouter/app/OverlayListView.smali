.class final Landroidx/mediarouter/app/OverlayListView;
.super Landroid/widget/ListView;
.source "MyApplication"


# instance fields
.field public final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/mediarouter/app/OverlayListView;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/mediarouter/app/OverlayListView;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/mediarouter/app/OverlayListView;->a:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-lez v1, :cond_7

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_7

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Landroidx/mediarouter/app/r0;

    .line 27
    .line 28
    iget-object v2, v1, Landroidx/mediarouter/app/r0;->a:Landroid/graphics/drawable/BitmapDrawable;

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getDrawingTime()J

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    iget-boolean v4, v1, Landroidx/mediarouter/app/r0;->k:Z

    .line 40
    .line 41
    if-eqz v4, :cond_2

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    goto/16 :goto_3

    .line 45
    .line 46
    :cond_2
    iget-wide v4, v1, Landroidx/mediarouter/app/r0;->i:J

    .line 47
    .line 48
    sub-long/2addr v2, v4

    .line 49
    long-to-float v2, v2

    .line 50
    iget-wide v3, v1, Landroidx/mediarouter/app/r0;->e:J

    .line 51
    .line 52
    long-to-float v3, v3

    .line 53
    div-float/2addr v2, v3

    .line 54
    const/high16 v3, 0x3f800000    # 1.0f

    .line 55
    .line 56
    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    const/4 v4, 0x0

    .line 61
    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    iget-boolean v5, v1, Landroidx/mediarouter/app/r0;->j:Z

    .line 66
    .line 67
    if-nez v5, :cond_3

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    move v4, v2

    .line 71
    :goto_1
    iget-object v2, v1, Landroidx/mediarouter/app/r0;->d:Landroid/view/animation/Interpolator;

    .line 72
    .line 73
    if-nez v2, :cond_4

    .line 74
    .line 75
    move v2, v4

    .line 76
    goto :goto_2

    .line 77
    :cond_4
    invoke-interface {v2, v4}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    :goto_2
    iget v5, v1, Landroidx/mediarouter/app/r0;->g:I

    .line 82
    .line 83
    int-to-float v5, v5

    .line 84
    mul-float v5, v5, v2

    .line 85
    .line 86
    float-to-int v5, v5

    .line 87
    iget-object v6, v1, Landroidx/mediarouter/app/r0;->f:Landroid/graphics/Rect;

    .line 88
    .line 89
    iget v7, v6, Landroid/graphics/Rect;->top:I

    .line 90
    .line 91
    add-int/2addr v7, v5

    .line 92
    iget-object v8, v1, Landroidx/mediarouter/app/r0;->c:Landroid/graphics/Rect;

    .line 93
    .line 94
    iput v7, v8, Landroid/graphics/Rect;->top:I

    .line 95
    .line 96
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    .line 97
    .line 98
    add-int/2addr v6, v5

    .line 99
    iput v6, v8, Landroid/graphics/Rect;->bottom:I

    .line 100
    .line 101
    iget v5, v1, Landroidx/mediarouter/app/r0;->h:F

    .line 102
    .line 103
    invoke-static {v5, v3, v2, v3}, Lea/q;->d(FFFF)F

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    iput v2, v1, Landroidx/mediarouter/app/r0;->b:F

    .line 108
    .line 109
    iget-object v5, v1, Landroidx/mediarouter/app/r0;->a:Landroid/graphics/drawable/BitmapDrawable;

    .line 110
    .line 111
    if-eqz v5, :cond_5

    .line 112
    .line 113
    const/high16 v6, 0x437f0000    # 255.0f

    .line 114
    .line 115
    mul-float v2, v2, v6

    .line 116
    .line 117
    float-to-int v2, v2

    .line 118
    invoke-virtual {v5, v2}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v5, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 122
    .line 123
    .line 124
    :cond_5
    iget-boolean v2, v1, Landroidx/mediarouter/app/r0;->j:Z

    .line 125
    .line 126
    const/4 v5, 0x1

    .line 127
    if-eqz v2, :cond_6

    .line 128
    .line 129
    cmpl-float v2, v4, v3

    .line 130
    .line 131
    if-ltz v2, :cond_6

    .line 132
    .line 133
    iput-boolean v5, v1, Landroidx/mediarouter/app/r0;->k:Z

    .line 134
    .line 135
    iget-object v2, v1, Landroidx/mediarouter/app/r0;->l:La7/f;

    .line 136
    .line 137
    if-eqz v2, :cond_6

    .line 138
    .line 139
    iget-object v3, v2, La7/f;->c:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast v3, Landroidx/mediarouter/app/u;

    .line 142
    .line 143
    iget-object v4, v3, Landroidx/mediarouter/app/u;->I:Ljava/util/HashSet;

    .line 144
    .line 145
    iget-object v2, v2, La7/f;->b:Ljava/lang/Object;

    .line 146
    .line 147
    check-cast v2, Lq1/s0;

    .line 148
    .line 149
    invoke-virtual {v4, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    iget-object v2, v3, Landroidx/mediarouter/app/u;->E:Landroidx/mediarouter/app/t;

    .line 153
    .line 154
    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 155
    .line 156
    .line 157
    :cond_6
    iget-boolean v1, v1, Landroidx/mediarouter/app/r0;->k:Z

    .line 158
    .line 159
    xor-int/2addr v1, v5

    .line 160
    :goto_3
    if-nez v1, :cond_0

    .line 161
    .line 162
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 163
    .line 164
    .line 165
    goto/16 :goto_0

    .line 166
    .line 167
    :cond_7
    return-void
.end method
