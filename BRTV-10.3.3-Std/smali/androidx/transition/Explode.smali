.class public Landroidx/transition/Explode;
.super Landroidx/transition/Visibility;
.source "MyApplication"


# static fields
.field public static final A:Landroid/view/animation/DecelerateInterpolator;

.field public static final B:Landroid/view/animation/AccelerateInterpolator;


# instance fields
.field public final z:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/transition/Explode;->A:Landroid/view/animation/DecelerateInterpolator;

    .line 7
    .line 8
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Landroidx/transition/Explode;->B:Landroid/view/animation/AccelerateInterpolator;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/transition/Visibility;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x2

    .line 5
    new-array p1, p1, [I

    .line 6
    .line 7
    iput-object p1, p0, Landroidx/transition/Explode;->z:[I

    .line 8
    .line 9
    new-instance p1, Ly1/k;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Landroidx/transition/Transition;->s:Ly1/v;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final H(Landroid/view/ViewGroup;Landroid/view/View;Ly1/e0;Ly1/e0;)Landroid/animation/Animator;
    .locals 10

    .line 1
    if-nez p4, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    iget-object p3, p4, Ly1/e0;->a:Ljava/util/HashMap;

    .line 6
    .line 7
    const-string v0, "android:explode:screenBounds"

    .line 8
    .line 9
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    check-cast p3, Landroid/graphics/Rect;

    .line 14
    .line 15
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    .line 20
    .line 21
    .line 22
    move-result v7

    .line 23
    iget-object v0, p0, Landroidx/transition/Explode;->z:[I

    .line 24
    .line 25
    invoke-virtual {p0, p1, p3, v0}, Landroidx/transition/Explode;->K(Landroid/view/ViewGroup;Landroid/graphics/Rect;[I)V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    aget p1, v0, p1

    .line 30
    .line 31
    int-to-float p1, p1

    .line 32
    add-float v4, v6, p1

    .line 33
    .line 34
    const/4 p1, 0x1

    .line 35
    aget p1, v0, p1

    .line 36
    .line 37
    int-to-float p1, p1

    .line 38
    add-float v5, v7, p1

    .line 39
    .line 40
    iget v2, p3, Landroid/graphics/Rect;->left:I

    .line 41
    .line 42
    iget v3, p3, Landroid/graphics/Rect;->top:I

    .line 43
    .line 44
    sget-object v8, Landroidx/transition/Explode;->A:Landroid/view/animation/DecelerateInterpolator;

    .line 45
    .line 46
    move-object v0, p2

    .line 47
    move-object v1, p4

    .line 48
    move-object v9, p0

    .line 49
    invoke-static/range {v0 .. v9}, Ly1/v;->c(Landroid/view/View;Ly1/e0;IIFFFFLandroid/animation/TimeInterpolator;Landroidx/transition/Visibility;)Landroid/animation/ObjectAnimator;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    return-object p1
.end method

.method public final I(Landroid/view/ViewGroup;Landroid/view/View;Ly1/e0;)Landroid/animation/Animator;
    .locals 11

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    iget-object v0, p3, Ly1/e0;->a:Ljava/util/HashMap;

    .line 6
    .line 7
    const-string v1, "android:explode:screenBounds"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/graphics/Rect;

    .line 14
    .line 15
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 16
    .line 17
    iget v4, v0, Landroid/graphics/Rect;->top:I

    .line 18
    .line 19
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    iget-object v1, p3, Ly1/e0;->b:Landroid/view/View;

    .line 28
    .line 29
    const v2, 0x7f0b0433

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, [I

    .line 37
    .line 38
    const/4 v2, 0x1

    .line 39
    const/4 v7, 0x0

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    aget v8, v1, v7

    .line 43
    .line 44
    iget v9, v0, Landroid/graphics/Rect;->left:I

    .line 45
    .line 46
    sub-int v9, v8, v9

    .line 47
    .line 48
    int-to-float v9, v9

    .line 49
    add-float/2addr v9, v5

    .line 50
    aget v1, v1, v2

    .line 51
    .line 52
    iget v10, v0, Landroid/graphics/Rect;->top:I

    .line 53
    .line 54
    sub-int v10, v1, v10

    .line 55
    .line 56
    int-to-float v10, v10

    .line 57
    add-float/2addr v10, v6

    .line 58
    invoke-virtual {v0, v8, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    move v9, v5

    .line 63
    move v10, v6

    .line 64
    :goto_0
    iget-object v1, p0, Landroidx/transition/Explode;->z:[I

    .line 65
    .line 66
    invoke-virtual {p0, p1, v0, v1}, Landroidx/transition/Explode;->K(Landroid/view/ViewGroup;Landroid/graphics/Rect;[I)V

    .line 67
    .line 68
    .line 69
    aget p1, v1, v7

    .line 70
    .line 71
    int-to-float p1, p1

    .line 72
    add-float v7, v9, p1

    .line 73
    .line 74
    aget p1, v1, v2

    .line 75
    .line 76
    int-to-float p1, p1

    .line 77
    add-float v8, v10, p1

    .line 78
    .line 79
    sget-object v9, Landroidx/transition/Explode;->B:Landroid/view/animation/AccelerateInterpolator;

    .line 80
    .line 81
    move-object v1, p2

    .line 82
    move-object v2, p3

    .line 83
    move-object v10, p0

    .line 84
    invoke-static/range {v1 .. v10}, Ly1/v;->c(Landroid/view/View;Ly1/e0;IIFFFFLandroid/animation/TimeInterpolator;Landroidx/transition/Visibility;)Landroid/animation/ObjectAnimator;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    return-object p1
.end method

.method public final K(Landroid/view/ViewGroup;Landroid/graphics/Rect;[I)V
    .locals 12

    .line 1
    iget-object v0, p0, Landroidx/transition/Explode;->z:[I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    aget v2, v0, v1

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    aget v0, v0, v3

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    div-int/lit8 v4, v4, 0x2

    .line 17
    .line 18
    add-int/2addr v4, v2

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    add-int/2addr v5, v4

    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    div-int/lit8 v4, v4, 0x2

    .line 33
    .line 34
    add-int/2addr v4, v0

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    add-int/2addr v6, v4

    .line 44
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    sub-int/2addr v4, v5

    .line 53
    int-to-float v4, v4

    .line 54
    sub-int/2addr p2, v6

    .line 55
    int-to-float p2, p2

    .line 56
    const/4 v7, 0x0

    .line 57
    cmpl-float v8, v4, v7

    .line 58
    .line 59
    if-nez v8, :cond_0

    .line 60
    .line 61
    cmpl-float v7, p2, v7

    .line 62
    .line 63
    if-nez v7, :cond_0

    .line 64
    .line 65
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 66
    .line 67
    .line 68
    move-result-wide v7

    .line 69
    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    .line 70
    .line 71
    mul-double v7, v7, v9

    .line 72
    .line 73
    double-to-float p2, v7

    .line 74
    const/high16 v4, 0x3f800000    # 1.0f

    .line 75
    .line 76
    sub-float/2addr p2, v4

    .line 77
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 78
    .line 79
    .line 80
    move-result-wide v7

    .line 81
    mul-double v7, v7, v9

    .line 82
    .line 83
    double-to-float v7, v7

    .line 84
    sub-float v4, v7, v4

    .line 85
    .line 86
    move v11, v4

    .line 87
    move v4, p2

    .line 88
    move p2, v11

    .line 89
    :cond_0
    mul-float v7, v4, v4

    .line 90
    .line 91
    mul-float v8, p2, p2

    .line 92
    .line 93
    add-float/2addr v8, v7

    .line 94
    float-to-double v7, v8

    .line 95
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    .line 96
    .line 97
    .line 98
    move-result-wide v7

    .line 99
    double-to-float v7, v7

    .line 100
    div-float/2addr v4, v7

    .line 101
    div-float/2addr p2, v7

    .line 102
    sub-int/2addr v5, v2

    .line 103
    sub-int/2addr v6, v0

    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    sub-int/2addr v0, v5

    .line 109
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    sub-int/2addr p1, v6

    .line 118
    invoke-static {v6, p1}, Ljava/lang/Math;->max(II)I

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    int-to-float v0, v0

    .line 123
    int-to-float p1, p1

    .line 124
    mul-float v0, v0, v0

    .line 125
    .line 126
    mul-float p1, p1, p1

    .line 127
    .line 128
    add-float/2addr p1, v0

    .line 129
    float-to-double v5, p1

    .line 130
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    .line 131
    .line 132
    .line 133
    move-result-wide v5

    .line 134
    double-to-float p1, v5

    .line 135
    mul-float v4, v4, p1

    .line 136
    .line 137
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    aput v0, p3, v1

    .line 142
    .line 143
    mul-float p1, p1, p2

    .line 144
    .line 145
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    aput p1, p3, v3

    .line 150
    .line 151
    return-void
.end method

.method public final L(Ly1/e0;)V
    .locals 5

    .line 1
    iget-object v0, p1, Ly1/e0;->b:Landroid/view/View;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/transition/Explode;->z:[I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    aget v2, v1, v2

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    aget v1, v1, v3

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    add-int/2addr v3, v2

    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    add-int/2addr v0, v1

    .line 24
    iget-object p1, p1, Ly1/e0;->a:Ljava/util/HashMap;

    .line 25
    .line 26
    new-instance v4, Landroid/graphics/Rect;

    .line 27
    .line 28
    invoke-direct {v4, v2, v1, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 29
    .line 30
    .line 31
    const-string v0, "android:explode:screenBounds"

    .line 32
    .line 33
    invoke-virtual {p1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final c(Ly1/e0;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/transition/Visibility;->F(Ly1/e0;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroidx/transition/Explode;->L(Ly1/e0;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final f(Ly1/e0;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/transition/Visibility;->F(Ly1/e0;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroidx/transition/Explode;->L(Ly1/e0;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
