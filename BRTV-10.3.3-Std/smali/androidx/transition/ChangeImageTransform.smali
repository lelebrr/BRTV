.class public Landroidx/transition/ChangeImageTransform;
.super Landroidx/transition/Transition;
.source "MyApplication"


# static fields
.field public static final x:[Ljava/lang/String;

.field public static final y:Ly1/e;

.field public static final z:Landroidx/appcompat/widget/g3;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "android:changeImageTransform:matrix"

    .line 2
    .line 3
    const-string v1, "android:changeImageTransform:bounds"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Landroidx/transition/ChangeImageTransform;->x:[Ljava/lang/String;

    .line 10
    .line 11
    new-instance v0, Ly1/e;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    sput-object v0, Landroidx/transition/ChangeImageTransform;->y:Ly1/e;

    .line 17
    .line 18
    new-instance v0, Landroidx/appcompat/widget/g3;

    .line 19
    .line 20
    const-class v1, Landroid/graphics/Matrix;

    .line 21
    .line 22
    const-string v2, "animatedTransform"

    .line 23
    .line 24
    const/16 v3, 0xf

    .line 25
    .line 26
    invoke-direct {v0, v2, v1, v3}, Landroidx/appcompat/widget/g3;-><init>(Ljava/lang/String;Ljava/lang/Class;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Landroidx/transition/ChangeImageTransform;->z:Landroidx/appcompat/widget/g3;

    .line 30
    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static F(Ly1/e0;)V
    .locals 6

    .line 1
    iget-object v0, p0, Ly1/e0;->b:Landroid/view/View;

    .line 2
    .line 3
    instance-of v1, v0, Landroid/widget/ImageView;

    .line 4
    .line 5
    if-eqz v1, :cond_5

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    goto/16 :goto_2

    .line 14
    .line 15
    :cond_0
    move-object v1, v0

    .line 16
    check-cast v1, Landroid/widget/ImageView;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    iget-object p0, p0, Ly1/e0;->a:Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    new-instance v5, Landroid/graphics/Rect;

    .line 44
    .line 45
    invoke-direct {v5, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 46
    .line 47
    .line 48
    const-string v0, "android:changeImageTransform:bounds"

    .line 49
    .line 50
    invoke-virtual {p0, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-lez v2, :cond_4

    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-lez v0, :cond_4

    .line 68
    .line 69
    sget-object v0, Ly1/f;->a:[I

    .line 70
    .line 71
    invoke-virtual {v1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    aget v0, v0, v2

    .line 80
    .line 81
    const/4 v2, 0x1

    .line 82
    if-eq v0, v2, :cond_3

    .line 83
    .line 84
    const/4 v2, 0x2

    .line 85
    if-eq v0, v2, :cond_2

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_2
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    int-to-float v3, v3

    .line 101
    int-to-float v2, v2

    .line 102
    div-float v4, v3, v2

    .line 103
    .line 104
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    int-to-float v1, v1

    .line 113
    int-to-float v0, v0

    .line 114
    div-float v5, v1, v0

    .line 115
    .line 116
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    mul-float v2, v2, v4

    .line 121
    .line 122
    mul-float v0, v0, v4

    .line 123
    .line 124
    sub-float/2addr v3, v2

    .line 125
    const/high16 v2, 0x40000000    # 2.0f

    .line 126
    .line 127
    div-float/2addr v3, v2

    .line 128
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    sub-float/2addr v1, v0

    .line 133
    div-float/2addr v1, v2

    .line 134
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    new-instance v1, Landroid/graphics/Matrix;

    .line 139
    .line 140
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 144
    .line 145
    .line 146
    int-to-float v2, v3

    .line 147
    int-to-float v0, v0

    .line 148
    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 149
    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_3
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    new-instance v2, Landroid/graphics/Matrix;

    .line 157
    .line 158
    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 162
    .line 163
    .line 164
    move-result v3

    .line 165
    int-to-float v3, v3

    .line 166
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 167
    .line 168
    .line 169
    move-result v4

    .line 170
    int-to-float v4, v4

    .line 171
    div-float/2addr v3, v4

    .line 172
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    int-to-float v1, v1

    .line 177
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    int-to-float v0, v0

    .line 182
    div-float/2addr v1, v0

    .line 183
    invoke-virtual {v2, v3, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 184
    .line 185
    .line 186
    move-object v1, v2

    .line 187
    goto :goto_1

    .line 188
    :cond_4
    :goto_0
    new-instance v0, Landroid/graphics/Matrix;

    .line 189
    .line 190
    invoke-virtual {v1}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 195
    .line 196
    .line 197
    move-object v1, v0

    .line 198
    :goto_1
    const-string v0, "android:changeImageTransform:matrix"

    .line 199
    .line 200
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public final c(Ly1/e0;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/transition/ChangeImageTransform;->F(Ly1/e0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final f(Ly1/e0;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/transition/ChangeImageTransform;->F(Ly1/e0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final j(Landroid/view/ViewGroup;Ly1/e0;Ly1/e0;)Landroid/animation/Animator;
    .locals 7

    .line 1
    const/4 p1, 0x2

    .line 2
    const/4 v0, 0x0

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz p2, :cond_a

    .line 6
    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    goto/16 :goto_3

    .line 10
    .line 11
    :cond_0
    iget-object p2, p2, Ly1/e0;->a:Ljava/util/HashMap;

    .line 12
    .line 13
    const-string v3, "android:changeImageTransform:bounds"

    .line 14
    .line 15
    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    check-cast v4, Landroid/graphics/Rect;

    .line 20
    .line 21
    iget-object v5, p3, Ly1/e0;->a:Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Landroid/graphics/Rect;

    .line 28
    .line 29
    if-eqz v4, :cond_a

    .line 30
    .line 31
    if-nez v3, :cond_1

    .line 32
    .line 33
    goto :goto_3

    .line 34
    :cond_1
    const-string v6, "android:changeImageTransform:matrix"

    .line 35
    .line 36
    invoke-virtual {p2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    check-cast p2, Landroid/graphics/Matrix;

    .line 41
    .line 42
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    check-cast v5, Landroid/graphics/Matrix;

    .line 47
    .line 48
    if-nez p2, :cond_2

    .line 49
    .line 50
    if-eqz v5, :cond_3

    .line 51
    .line 52
    :cond_2
    if-eqz p2, :cond_4

    .line 53
    .line 54
    invoke-virtual {p2, v5}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    if-eqz v6, :cond_4

    .line 59
    .line 60
    :cond_3
    const/4 v6, 0x1

    .line 61
    goto :goto_0

    .line 62
    :cond_4
    const/4 v6, 0x0

    .line 63
    :goto_0
    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_5

    .line 68
    .line 69
    if-eqz v6, :cond_5

    .line 70
    .line 71
    return-object v2

    .line 72
    :cond_5
    iget-object p3, p3, Ly1/e0;->b:Landroid/view/View;

    .line 73
    .line 74
    check-cast p3, Landroid/widget/ImageView;

    .line 75
    .line 76
    invoke-virtual {p3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    sget-object v4, Landroidx/transition/ChangeImageTransform;->z:Landroidx/appcompat/widget/g3;

    .line 89
    .line 90
    if-lez v3, :cond_9

    .line 91
    .line 92
    if-gtz v2, :cond_6

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_6
    if-nez p2, :cond_7

    .line 96
    .line 97
    sget-object p2, Ly1/q;->a:Ly1/p;

    .line 98
    .line 99
    :cond_7
    if-nez v5, :cond_8

    .line 100
    .line 101
    sget-object v5, Ly1/q;->a:Ly1/p;

    .line 102
    .line 103
    :cond_8
    invoke-virtual {v4, p3, p2}, Landroidx/appcompat/widget/g3;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    new-instance v2, Ly1/c0;

    .line 107
    .line 108
    invoke-direct {v2}, Ly1/c0;-><init>()V

    .line 109
    .line 110
    .line 111
    new-array p1, p1, [Landroid/graphics/Matrix;

    .line 112
    .line 113
    aput-object p2, p1, v0

    .line 114
    .line 115
    aput-object v5, p1, v1

    .line 116
    .line 117
    invoke-static {p3, v4, v2, p1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    goto :goto_2

    .line 122
    :cond_9
    :goto_1
    sget-object p2, Landroidx/transition/ChangeImageTransform;->y:Ly1/e;

    .line 123
    .line 124
    new-array p1, p1, [Landroid/graphics/Matrix;

    .line 125
    .line 126
    sget-object v2, Ly1/q;->a:Ly1/p;

    .line 127
    .line 128
    aput-object v2, p1, v0

    .line 129
    .line 130
    aput-object v2, p1, v1

    .line 131
    .line 132
    invoke-static {p3, v4, p2, p1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    :goto_2
    return-object p1

    .line 137
    :cond_a
    :goto_3
    return-object v2
.end method

.method public final o()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/transition/ChangeImageTransform;->x:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
