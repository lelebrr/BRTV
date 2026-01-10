.class public Lcom/youth/banner/transformer/MZScaleInTransformer;
.super Lcom/youth/banner/transformer/BasePageTransformer;
.source "MyApplication"


# static fields
.field private static final DEFAULT_MIN_SCALE:F = 0.85f


# instance fields
.field private mMinScale:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/youth/banner/transformer/BasePageTransformer;-><init>()V

    const v0, 0x3f59999a    # 0.85f

    .line 2
    iput v0, p0, Lcom/youth/banner/transformer/MZScaleInTransformer;->mMinScale:F

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/youth/banner/transformer/BasePageTransformer;-><init>()V

    .line 4
    iput p1, p0, Lcom/youth/banner/transformer/MZScaleInTransformer;->mMinScale:F

    return-void
.end method

.method private requireViewPager(Landroid/view/View;)Landroidx/viewpager2/widget/ViewPager2;
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    instance-of p1, p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    instance-of p1, v0, Landroidx/viewpager2/widget/ViewPager2;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "Expected the page view to be managed by a ViewPager2 instance."

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 8

    .line 1
    invoke-direct {p0, p1}, Lcom/youth/banner/transformer/MZScaleInTransformer;->requireViewPager(Landroid/view/View;)Landroidx/viewpager2/widget/ViewPager2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    int-to-float v1, v1

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    int-to-float v2, v2

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    int-to-float v0, v0

    .line 20
    sub-float/2addr v0, v1

    .line 21
    sub-float/2addr v0, v2

    .line 22
    div-float/2addr v1, v0

    .line 23
    sub-float/2addr p2, v1

    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    int-to-float v0, v0

    .line 29
    iget v1, p0, Lcom/youth/banner/transformer/MZScaleInTransformer;->mMinScale:F

    .line 30
    .line 31
    const/high16 v2, 0x3f800000    # 1.0f

    .line 32
    .line 33
    sub-float v3, v2, v1

    .line 34
    .line 35
    mul-float v3, v3, v0

    .line 36
    .line 37
    const/high16 v0, 0x40000000    # 2.0f

    .line 38
    .line 39
    div-float/2addr v3, v0

    .line 40
    const/high16 v0, -0x40800000    # -1.0f

    .line 41
    .line 42
    cmpg-float v0, p2, v0

    .line 43
    .line 44
    if-gtz v0, :cond_0

    .line 45
    .line 46
    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 47
    .line 48
    .line 49
    iget p2, p0, Lcom/youth/banner/transformer/MZScaleInTransformer;->mMinScale:F

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 52
    .line 53
    .line 54
    iget p2, p0, Lcom/youth/banner/transformer/MZScaleInTransformer;->mMinScale:F

    .line 55
    .line 56
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_0
    float-to-double v4, p2

    .line 61
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 62
    .line 63
    cmpg-double v0, v4, v6

    .line 64
    .line 65
    if-gtz v0, :cond_4

    .line 66
    .line 67
    sub-float v0, v2, v1

    .line 68
    .line 69
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    sub-float/2addr v2, v1

    .line 74
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    mul-float v1, v1, v0

    .line 79
    .line 80
    neg-float v0, v3

    .line 81
    mul-float v0, v0, p2

    .line 82
    .line 83
    const-wide/high16 v2, -0x4020000000000000L    # -0.5

    .line 84
    .line 85
    const/high16 v6, 0x3f000000    # 0.5f

    .line 86
    .line 87
    cmpg-double v7, v4, v2

    .line 88
    .line 89
    if-gtz v7, :cond_1

    .line 90
    .line 91
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    sub-float/2addr p2, v6

    .line 96
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    div-float/2addr p2, v6

    .line 101
    add-float/2addr p2, v0

    .line 102
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_1
    const/4 v2, 0x0

    .line 107
    cmpg-float v2, p2, v2

    .line 108
    .line 109
    if-gtz v2, :cond_2

    .line 110
    .line 111
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_2
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 116
    .line 117
    cmpl-double v7, v4, v2

    .line 118
    .line 119
    if-ltz v7, :cond_3

    .line 120
    .line 121
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 122
    .line 123
    .line 124
    move-result p2

    .line 125
    sub-float/2addr p2, v6

    .line 126
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 127
    .line 128
    .line 129
    move-result p2

    .line 130
    div-float/2addr p2, v6

    .line 131
    sub-float/2addr v0, p2

    .line 132
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 137
    .line 138
    .line 139
    :goto_0
    iget p2, p0, Lcom/youth/banner/transformer/MZScaleInTransformer;->mMinScale:F

    .line 140
    .line 141
    add-float/2addr p2, v1

    .line 142
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 143
    .line 144
    .line 145
    iget p2, p0, Lcom/youth/banner/transformer/MZScaleInTransformer;->mMinScale:F

    .line 146
    .line 147
    add-float/2addr v1, p2

    .line 148
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 149
    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_4
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 153
    .line 154
    .line 155
    iget p2, p0, Lcom/youth/banner/transformer/MZScaleInTransformer;->mMinScale:F

    .line 156
    .line 157
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    .line 158
    .line 159
    .line 160
    neg-float p2, v3

    .line 161
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 162
    .line 163
    .line 164
    :goto_1
    return-void
.end method
