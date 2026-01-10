.class public Landroidx/transition/ChangeTransform;
.super Landroidx/transition/Transition;
.source "MyApplication"


# static fields
.field public static final A:[Ljava/lang/String;

.field public static final B:Landroidx/appcompat/widget/g3;

.field public static final C:Landroidx/appcompat/widget/g3;

.field public static final D:Z


# instance fields
.field public final x:Z

.field public final y:Z

.field public final z:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "android:changeTransform:parentMatrix"

    .line 2
    .line 3
    const-string v1, "android:changeTransform:matrix"

    .line 4
    .line 5
    const-string v2, "android:changeTransform:transforms"

    .line 6
    .line 7
    filled-new-array {v1, v2, v0}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Landroidx/transition/ChangeTransform;->A:[Ljava/lang/String;

    .line 12
    .line 13
    new-instance v0, Landroidx/appcompat/widget/g3;

    .line 14
    .line 15
    const-class v1, [F

    .line 16
    .line 17
    const-string v2, "nonTranslations"

    .line 18
    .line 19
    const/16 v3, 0x10

    .line 20
    .line 21
    invoke-direct {v0, v2, v1, v3}, Landroidx/appcompat/widget/g3;-><init>(Ljava/lang/String;Ljava/lang/Class;I)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Landroidx/transition/ChangeTransform;->B:Landroidx/appcompat/widget/g3;

    .line 25
    .line 26
    new-instance v0, Landroidx/appcompat/widget/g3;

    .line 27
    .line 28
    const-class v1, Landroid/graphics/PointF;

    .line 29
    .line 30
    const-string v2, "translations"

    .line 31
    .line 32
    const/16 v3, 0x11

    .line 33
    .line 34
    invoke-direct {v0, v2, v1, v3}, Landroidx/appcompat/widget/g3;-><init>(Ljava/lang/String;Ljava/lang/Class;I)V

    .line 35
    .line 36
    .line 37
    sput-object v0, Landroidx/transition/ChangeTransform;->C:Landroidx/appcompat/widget/g3;

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    sput-boolean v0, Landroidx/transition/ChangeTransform;->D:Z

    .line 41
    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/transition/ChangeTransform;->x:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Landroidx/transition/ChangeTransform;->y:Z

    .line 8
    .line 9
    new-instance v1, Landroid/graphics/Matrix;

    .line 10
    .line 11
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Landroidx/transition/ChangeTransform;->z:Landroid/graphics/Matrix;

    .line 15
    .line 16
    sget-object v1, Ly1/v;->e:[I

    .line 17
    .line 18
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p2, Lorg/xmlpull/v1/XmlPullParser;

    .line 23
    .line 24
    const-string v1, "reparentWithOverlay"

    .line 25
    .line 26
    invoke-static {p2, v1}, Le0/b;->e(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    const/4 v1, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    :goto_0
    iput-boolean v1, p0, Landroidx/transition/ChangeTransform;->x:Z

    .line 39
    .line 40
    const-string v1, "reparent"

    .line 41
    .line 42
    invoke-static {p2, v1}, Le0/b;->e(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    if-nez p2, :cond_1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    const/4 p2, 0x0

    .line 50
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    :goto_1
    iput-boolean v0, p0, Landroidx/transition/ChangeTransform;->y:Z

    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    .line 58
    .line 59
    return-void
.end method


# virtual methods
.method public final F(Ly1/e0;)V
    .locals 4

    .line 1
    iget-object v0, p1, Ly1/e0;->b:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/16 v2, 0x8

    .line 8
    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object p1, p1, Ly1/e0;->a:Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "android:changeTransform:parent"

    .line 19
    .line 20
    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    new-instance v1, Ly1/j;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Ly1/j;-><init>(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    const-string v2, "android:changeTransform:transforms"

    .line 29
    .line 30
    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/graphics/Matrix;->isIdentity()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    new-instance v2, Landroid/graphics/Matrix;

    .line 47
    .line 48
    invoke-direct {v2, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    :goto_0
    const/4 v2, 0x0

    .line 53
    :goto_1
    const-string v1, "android:changeTransform:matrix"

    .line 54
    .line 55
    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    iget-boolean v1, p0, Landroidx/transition/ChangeTransform;->y:Z

    .line 59
    .line 60
    if-eqz v1, :cond_3

    .line 61
    .line 62
    new-instance v1, Landroid/graphics/Matrix;

    .line 63
    .line 64
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Landroid/view/ViewGroup;

    .line 72
    .line 73
    sget-object v3, Ly1/g0;->a:Ly1/h0;

    .line 74
    .line 75
    invoke-virtual {v3, v2, v1}, Ly1/h0;->n(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    neg-int v3, v3

    .line 83
    int-to-float v3, v3

    .line 84
    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    neg-int v2, v2

    .line 89
    int-to-float v2, v2

    .line 90
    invoke-virtual {v1, v3, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 91
    .line 92
    .line 93
    const-string v2, "android:changeTransform:parentMatrix"

    .line 94
    .line 95
    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    const v1, 0x7f0b0435

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    const-string v2, "android:changeTransform:intermediateMatrix"

    .line 106
    .line 107
    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    const v1, 0x7f0b0335

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    const-string v1, "android:changeTransform:intermediateParentMatrix"

    .line 118
    .line 119
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    :cond_3
    return-void
.end method

.method public final c(Ly1/e0;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/transition/ChangeTransform;->F(Ly1/e0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final f(Ly1/e0;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroidx/transition/ChangeTransform;->F(Ly1/e0;)V

    .line 2
    .line 3
    .line 4
    sget-boolean v0, Landroidx/transition/ChangeTransform;->D:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object p1, p1, Ly1/e0;->b:Landroid/view/View;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/view/ViewGroup;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final j(Landroid/view/ViewGroup;Ly1/e0;Ly1/e0;)Landroid/animation/Animator;
    .locals 26

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    move-object/from16 v1, p3

    .line 8
    .line 9
    const/4 v13, 0x1

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v15, v0, Ly1/e0;->a:Ljava/util/HashMap;

    .line 15
    .line 16
    const-string v7, "android:changeTransform:parent"

    .line 17
    .line 18
    invoke-virtual {v15, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    iget-object v6, v1, Ly1/e0;->a:Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    :cond_0
    const/4 v1, 0x0

    .line 33
    goto/16 :goto_21

    .line 34
    .line 35
    :cond_1
    invoke-virtual {v15, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    move-object v5, v2

    .line 40
    check-cast v5, Landroid/view/ViewGroup;

    .line 41
    .line 42
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Landroid/view/ViewGroup;

    .line 47
    .line 48
    iget-boolean v3, v8, Landroidx/transition/ChangeTransform;->y:Z

    .line 49
    .line 50
    if-eqz v3, :cond_5

    .line 51
    .line 52
    invoke-virtual {v8, v5}, Landroidx/transition/Transition;->r(Landroid/view/View;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_3

    .line 57
    .line 58
    invoke-virtual {v8, v2}, Landroidx/transition/Transition;->r(Landroid/view/View;)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-nez v3, :cond_2

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {v8, v5, v13}, Landroidx/transition/Transition;->m(Landroid/view/View;Z)Ly1/e0;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    if-eqz v3, :cond_4

    .line 70
    .line 71
    iget-object v3, v3, Ly1/e0;->b:Landroid/view/View;

    .line 72
    .line 73
    if-ne v2, v3, :cond_4

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_3
    :goto_0
    if-ne v5, v2, :cond_4

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_4
    const/16 v16, 0x1

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_5
    :goto_1
    const/16 v16, 0x0

    .line 83
    .line 84
    :goto_2
    const-string v2, "android:changeTransform:intermediateMatrix"

    .line 85
    .line 86
    invoke-virtual {v15, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    check-cast v2, Landroid/graphics/Matrix;

    .line 91
    .line 92
    const-string v3, "android:changeTransform:matrix"

    .line 93
    .line 94
    if-eqz v2, :cond_6

    .line 95
    .line 96
    invoke-virtual {v15, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    :cond_6
    const-string v2, "android:changeTransform:intermediateParentMatrix"

    .line 100
    .line 101
    invoke-virtual {v15, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    check-cast v2, Landroid/graphics/Matrix;

    .line 106
    .line 107
    const-string v4, "android:changeTransform:parentMatrix"

    .line 108
    .line 109
    if-eqz v2, :cond_7

    .line 110
    .line 111
    invoke-virtual {v15, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    :cond_7
    iget-object v2, v1, Ly1/e0;->b:Landroid/view/View;

    .line 115
    .line 116
    if-eqz v16, :cond_9

    .line 117
    .line 118
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    check-cast v1, Landroid/graphics/Matrix;

    .line 123
    .line 124
    const v10, 0x7f0b0335

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2, v10, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    iget-object v10, v8, Landroidx/transition/ChangeTransform;->z:Landroid/graphics/Matrix;

    .line 131
    .line 132
    invoke-virtual {v10}, Landroid/graphics/Matrix;->reset()V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v10}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 136
    .line 137
    .line 138
    invoke-virtual {v15, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    check-cast v1, Landroid/graphics/Matrix;

    .line 143
    .line 144
    if-nez v1, :cond_8

    .line 145
    .line 146
    new-instance v1, Landroid/graphics/Matrix;

    .line 147
    .line 148
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v15, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    :cond_8
    invoke-virtual {v15, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v18

    .line 158
    move-object/from16 v14, v18

    .line 159
    .line 160
    check-cast v14, Landroid/graphics/Matrix;

    .line 161
    .line 162
    invoke-virtual {v1, v14}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1, v10}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 166
    .line 167
    .line 168
    :cond_9
    invoke-virtual {v15, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    check-cast v1, Landroid/graphics/Matrix;

    .line 173
    .line 174
    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    check-cast v3, Landroid/graphics/Matrix;

    .line 179
    .line 180
    if-nez v1, :cond_a

    .line 181
    .line 182
    sget-object v1, Ly1/q;->a:Ly1/p;

    .line 183
    .line 184
    :cond_a
    if-nez v3, :cond_b

    .line 185
    .line 186
    sget-object v3, Ly1/q;->a:Ly1/p;

    .line 187
    .line 188
    :cond_b
    move-object v10, v3

    .line 189
    invoke-virtual {v1, v10}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    const/high16 v14, 0x3f800000    # 1.0f

    .line 194
    .line 195
    const/4 v12, 0x0

    .line 196
    if-eqz v3, :cond_c

    .line 197
    .line 198
    move-object v14, v2

    .line 199
    move-object/from16 v23, v5

    .line 200
    .line 201
    move-object v10, v6

    .line 202
    move-object/from16 v24, v7

    .line 203
    .line 204
    move-object/from16 v22, v15

    .line 205
    .line 206
    const/4 v11, 0x0

    .line 207
    move-object v15, v4

    .line 208
    goto/16 :goto_3

    .line 209
    .line 210
    :cond_c
    const-string v3, "android:changeTransform:transforms"

    .line 211
    .line 212
    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    move-object/from16 v20, v3

    .line 217
    .line 218
    check-cast v20, Ly1/j;

    .line 219
    .line 220
    invoke-virtual {v2, v12}, Landroid/view/View;->setTranslationX(F)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v2, v12}, Landroid/view/View;->setTranslationY(F)V

    .line 224
    .line 225
    .line 226
    sget-object v3, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 227
    .line 228
    invoke-static {v2, v12}, Ln0/g0;->w(Landroid/view/View;F)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v2, v14}, Landroid/view/View;->setScaleX(F)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v2, v14}, Landroid/view/View;->setScaleY(F)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v2, v12}, Landroid/view/View;->setRotationX(F)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v2, v12}, Landroid/view/View;->setRotationY(F)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v2, v12}, Landroid/view/View;->setRotation(F)V

    .line 244
    .line 245
    .line 246
    const/16 v3, 0x9

    .line 247
    .line 248
    new-array v14, v3, [F

    .line 249
    .line 250
    invoke-virtual {v1, v14}, Landroid/graphics/Matrix;->getValues([F)V

    .line 251
    .line 252
    .line 253
    new-array v1, v3, [F

    .line 254
    .line 255
    invoke-virtual {v10, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 256
    .line 257
    .line 258
    new-instance v12, Ly1/i;

    .line 259
    .line 260
    invoke-direct {v12, v2, v14}, Ly1/i;-><init>(Landroid/view/View;[F)V

    .line 261
    .line 262
    .line 263
    new-instance v11, Ll6/m;

    .line 264
    .line 265
    new-array v3, v3, [F

    .line 266
    .line 267
    invoke-direct {v11, v13}, Ll6/m;-><init>(I)V

    .line 268
    .line 269
    .line 270
    iput-object v3, v11, Ll6/m;->b:Ljava/lang/Object;

    .line 271
    .line 272
    move-object/from16 v22, v2

    .line 273
    .line 274
    const/4 v3, 0x2

    .line 275
    new-array v2, v3, [[F

    .line 276
    .line 277
    const/16 v18, 0x0

    .line 278
    .line 279
    aput-object v14, v2, v18

    .line 280
    .line 281
    aput-object v1, v2, v13

    .line 282
    .line 283
    sget-object v13, Landroidx/transition/ChangeTransform;->B:Landroidx/appcompat/widget/g3;

    .line 284
    .line 285
    invoke-static {v13, v11, v2}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    iget-object v11, v8, Landroidx/transition/Transition;->t:Ly1/w;

    .line 290
    .line 291
    aget v13, v14, v3

    .line 292
    .line 293
    const/16 v21, 0x5

    .line 294
    .line 295
    aget v14, v14, v21

    .line 296
    .line 297
    move-object/from16 v23, v4

    .line 298
    .line 299
    aget v4, v1, v3

    .line 300
    .line 301
    aget v1, v1, v21

    .line 302
    .line 303
    invoke-virtual {v11, v13, v14, v4, v1}, Ly1/w;->a(FFFF)Landroid/graphics/Path;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    sget-object v4, Landroidx/transition/ChangeTransform;->C:Landroidx/appcompat/widget/g3;

    .line 308
    .line 309
    const/4 v11, 0x0

    .line 310
    invoke-static {v4, v11, v1}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    new-array v4, v3, [Landroid/animation/PropertyValuesHolder;

    .line 315
    .line 316
    const/4 v3, 0x0

    .line 317
    aput-object v2, v4, v3

    .line 318
    .line 319
    const/4 v2, 0x1

    .line 320
    aput-object v1, v4, v2

    .line 321
    .line 322
    invoke-static {v12, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 323
    .line 324
    .line 325
    move-result-object v11

    .line 326
    new-instance v13, Ly1/g;

    .line 327
    .line 328
    move-object v1, v13

    .line 329
    move-object/from16 v14, v22

    .line 330
    .line 331
    move-object/from16 v2, p0

    .line 332
    .line 333
    move/from16 v3, v16

    .line 334
    .line 335
    move-object/from16 v22, v15

    .line 336
    .line 337
    move-object/from16 v15, v23

    .line 338
    .line 339
    move-object v4, v10

    .line 340
    move-object v10, v5

    .line 341
    move-object v5, v14

    .line 342
    move-object/from16 v23, v10

    .line 343
    .line 344
    move-object v10, v6

    .line 345
    move-object/from16 v6, v20

    .line 346
    .line 347
    move-object/from16 v24, v7

    .line 348
    .line 349
    move-object v7, v12

    .line 350
    invoke-direct/range {v1 .. v7}, Ly1/g;-><init>(Landroidx/transition/ChangeTransform;ZLandroid/graphics/Matrix;Landroid/view/View;Ly1/j;Ly1/i;)V

    .line 351
    .line 352
    .line 353
    invoke-virtual {v11, v13}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v11, v13}, Landroid/animation/Animator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    .line 357
    .line 358
    .line 359
    :goto_3
    iget-object v1, v0, Ly1/e0;->b:Landroid/view/View;

    .line 360
    .line 361
    sget-boolean v2, Landroidx/transition/ChangeTransform;->D:Z

    .line 362
    .line 363
    if-eqz v16, :cond_28

    .line 364
    .line 365
    if-eqz v11, :cond_28

    .line 366
    .line 367
    iget-boolean v0, v8, Landroidx/transition/ChangeTransform;->x:Z

    .line 368
    .line 369
    if-eqz v0, :cond_28

    .line 370
    .line 371
    invoke-virtual {v10, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    check-cast v0, Landroid/graphics/Matrix;

    .line 376
    .line 377
    new-instance v3, Landroid/graphics/Matrix;

    .line 378
    .line 379
    invoke-direct {v3, v0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 380
    .line 381
    .line 382
    sget-object v0, Ly1/g0;->a:Ly1/h0;

    .line 383
    .line 384
    invoke-virtual {v0, v9, v3}, Ly1/h0;->o(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 385
    .line 386
    .line 387
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 388
    .line 389
    const/16 v4, 0x1c

    .line 390
    .line 391
    const-class v5, Landroid/view/ViewGroup;

    .line 392
    .line 393
    if-ne v0, v4, :cond_f

    .line 394
    .line 395
    sget-boolean v0, Ls2/c;->f:Z

    .line 396
    .line 397
    if-nez v0, :cond_d

    .line 398
    .line 399
    :try_start_0
    invoke-static {}, Ls2/c;->d()V

    .line 400
    .line 401
    .line 402
    sget-object v0, Ls2/c;->c:Ljava/lang/Class;

    .line 403
    .line 404
    const-string v4, "addGhost"

    .line 405
    .line 406
    const/4 v6, 0x3

    .line 407
    new-array v7, v6, [Ljava/lang/Class;

    .line 408
    .line 409
    const-class v6, Landroid/view/View;

    .line 410
    .line 411
    const/4 v10, 0x0

    .line 412
    aput-object v6, v7, v10

    .line 413
    .line 414
    const/4 v6, 0x1

    .line 415
    aput-object v5, v7, v6

    .line 416
    .line 417
    const-class v5, Landroid/graphics/Matrix;

    .line 418
    .line 419
    const/4 v10, 0x2

    .line 420
    aput-object v5, v7, v10

    .line 421
    .line 422
    invoke-virtual {v0, v4, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 423
    .line 424
    .line 425
    move-result-object v0

    .line 426
    sput-object v0, Ls2/c;->e:Ljava/lang/reflect/Method;

    .line 427
    .line 428
    invoke-virtual {v0, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    .line 430
    .line 431
    :goto_4
    const/4 v4, 0x1

    .line 432
    goto :goto_5

    .line 433
    :catch_0
    move-exception v0

    .line 434
    const-string v4, "GhostViewApi21"

    .line 435
    .line 436
    const-string v5, "Failed to retrieve addGhost method"

    .line 437
    .line 438
    invoke-static {v4, v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 439
    .line 440
    .line 441
    goto :goto_4

    .line 442
    :goto_5
    sput-boolean v4, Ls2/c;->f:Z

    .line 443
    .line 444
    goto :goto_6

    .line 445
    :cond_d
    const/4 v4, 0x1

    .line 446
    :goto_6
    sget-object v0, Ls2/c;->e:Ljava/lang/reflect/Method;

    .line 447
    .line 448
    if-eqz v0, :cond_e

    .line 449
    .line 450
    :try_start_1
    new-instance v5, Ls2/c;

    .line 451
    .line 452
    const/4 v6, 0x3

    .line 453
    new-array v6, v6, [Ljava/lang/Object;

    .line 454
    .line 455
    const/4 v7, 0x0

    .line 456
    aput-object v14, v6, v7

    .line 457
    .line 458
    aput-object v9, v6, v4

    .line 459
    .line 460
    const/4 v4, 0x2

    .line 461
    aput-object v3, v6, v4

    .line 462
    .line 463
    const/4 v3, 0x0

    .line 464
    invoke-virtual {v0, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    .line 466
    .line 467
    move-result-object v0

    .line 468
    check-cast v0, Landroid/view/View;

    .line 469
    .line 470
    const/16 v3, 0x8

    .line 471
    .line 472
    invoke-direct {v5, v3, v0}, Ls2/c;-><init>(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 473
    .line 474
    .line 475
    move-object/from16 v19, v5

    .line 476
    .line 477
    goto :goto_9

    .line 478
    :catch_1
    move-exception v0

    .line 479
    goto :goto_7

    .line 480
    :catch_2
    nop

    .line 481
    goto :goto_8

    .line 482
    :goto_7
    new-instance v1, Ljava/lang/RuntimeException;

    .line 483
    .line 484
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 489
    .line 490
    .line 491
    throw v1

    .line 492
    :cond_e
    :goto_8
    const/16 v19, 0x0

    .line 493
    .line 494
    :goto_9
    move/from16 v20, v2

    .line 495
    .line 496
    move-object/from16 v17, v11

    .line 497
    .line 498
    move-object/from16 v25, v14

    .line 499
    .line 500
    move-object/from16 v6, v19

    .line 501
    .line 502
    goto/16 :goto_1e

    .line 503
    .line 504
    :cond_f
    sget v0, Ly1/o;->g:I

    .line 505
    .line 506
    invoke-virtual {v14}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 507
    .line 508
    .line 509
    move-result-object v0

    .line 510
    instance-of v0, v0, Landroid/view/ViewGroup;

    .line 511
    .line 512
    if-eqz v0, :cond_27

    .line 513
    .line 514
    sget v0, Ly1/n;->c:I

    .line 515
    .line 516
    const v0, 0x7f0b01ae

    .line 517
    .line 518
    .line 519
    invoke-virtual {v9, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 520
    .line 521
    .line 522
    move-result-object v4

    .line 523
    check-cast v4, Ly1/n;

    .line 524
    .line 525
    const v6, 0x7f0b01ad

    .line 526
    .line 527
    .line 528
    invoke-virtual {v14, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 529
    .line 530
    .line 531
    move-result-object v6

    .line 532
    check-cast v6, Ly1/o;

    .line 533
    .line 534
    if-eqz v6, :cond_10

    .line 535
    .line 536
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 537
    .line 538
    .line 539
    move-result-object v7

    .line 540
    check-cast v7, Ly1/n;

    .line 541
    .line 542
    if-eq v7, v4, :cond_10

    .line 543
    .line 544
    iget v10, v6, Ly1/o;->d:I

    .line 545
    .line 546
    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 547
    .line 548
    .line 549
    const/4 v6, 0x0

    .line 550
    goto :goto_a

    .line 551
    :cond_10
    const/4 v10, 0x0

    .line 552
    :goto_a
    if-nez v6, :cond_23

    .line 553
    .line 554
    new-instance v6, Ly1/o;

    .line 555
    .line 556
    invoke-direct {v6, v14}, Ly1/o;-><init>(Landroid/view/View;)V

    .line 557
    .line 558
    .line 559
    iput-object v3, v6, Ly1/o;->e:Landroid/graphics/Matrix;

    .line 560
    .line 561
    if-nez v4, :cond_11

    .line 562
    .line 563
    new-instance v4, Ly1/n;

    .line 564
    .line 565
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 566
    .line 567
    .line 568
    move-result-object v3

    .line 569
    invoke-direct {v4, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 570
    .line 571
    .line 572
    const/4 v3, 0x0

    .line 573
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 574
    .line 575
    .line 576
    iput-object v9, v4, Ly1/n;->a:Landroid/view/ViewGroup;

    .line 577
    .line 578
    invoke-virtual {v9, v0, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 579
    .line 580
    .line 581
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    .line 582
    .line 583
    .line 584
    move-result-object v0

    .line 585
    invoke-virtual {v0, v4}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 586
    .line 587
    .line 588
    const/4 v3, 0x1

    .line 589
    iput-boolean v3, v4, Ly1/n;->b:Z

    .line 590
    .line 591
    goto :goto_b

    .line 592
    :cond_11
    iget-boolean v0, v4, Ly1/n;->b:Z

    .line 593
    .line 594
    if-eqz v0, :cond_22

    .line 595
    .line 596
    iget-object v0, v4, Ly1/n;->a:Landroid/view/ViewGroup;

    .line 597
    .line 598
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    .line 599
    .line 600
    .line 601
    move-result-object v3

    .line 602
    invoke-virtual {v3, v4}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 603
    .line 604
    .line 605
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    .line 606
    .line 607
    .line 608
    move-result-object v0

    .line 609
    invoke-virtual {v0, v4}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 610
    .line 611
    .line 612
    :goto_b
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    .line 613
    .line 614
    .line 615
    move-result v0

    .line 616
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    .line 617
    .line 618
    .line 619
    move-result v3

    .line 620
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    .line 621
    .line 622
    .line 623
    move-result v7

    .line 624
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    .line 625
    .line 626
    .line 627
    move-result v12

    .line 628
    add-int/2addr v12, v7

    .line 629
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    .line 630
    .line 631
    .line 632
    move-result v7

    .line 633
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    .line 634
    .line 635
    .line 636
    move-result v13

    .line 637
    add-int/2addr v13, v7

    .line 638
    invoke-static {v4, v0, v3, v12, v13}, Ly1/g0;->a(Landroid/view/View;IIII)V

    .line 639
    .line 640
    .line 641
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    .line 642
    .line 643
    .line 644
    move-result v0

    .line 645
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    .line 646
    .line 647
    .line 648
    move-result v3

    .line 649
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    .line 650
    .line 651
    .line 652
    move-result v7

    .line 653
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    .line 654
    .line 655
    .line 656
    move-result v12

    .line 657
    add-int/2addr v12, v7

    .line 658
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    .line 659
    .line 660
    .line 661
    move-result v7

    .line 662
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    .line 663
    .line 664
    .line 665
    move-result v9

    .line 666
    add-int/2addr v9, v7

    .line 667
    invoke-static {v6, v0, v3, v12, v9}, Ly1/g0;->a(Landroid/view/View;IIII)V

    .line 668
    .line 669
    .line 670
    new-instance v0, Ljava/util/ArrayList;

    .line 671
    .line 672
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 673
    .line 674
    .line 675
    iget-object v3, v6, Ly1/o;->c:Landroid/view/View;

    .line 676
    .line 677
    invoke-static {v3, v0}, Ly1/n;->a(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 678
    .line 679
    .line 680
    new-instance v3, Ljava/util/ArrayList;

    .line 681
    .line 682
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 683
    .line 684
    .line 685
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    .line 686
    .line 687
    .line 688
    move-result v7

    .line 689
    const/4 v9, 0x1

    .line 690
    sub-int/2addr v7, v9

    .line 691
    const/4 v9, 0x0

    .line 692
    :goto_c
    if-gt v9, v7, :cond_1f

    .line 693
    .line 694
    add-int v12, v9, v7

    .line 695
    .line 696
    const/4 v13, 0x2

    .line 697
    div-int/2addr v12, v13

    .line 698
    invoke-virtual {v4, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 699
    .line 700
    .line 701
    move-result-object v13

    .line 702
    check-cast v13, Ly1/o;

    .line 703
    .line 704
    iget-object v13, v13, Ly1/o;->c:Landroid/view/View;

    .line 705
    .line 706
    invoke-static {v13, v3}, Ly1/n;->a(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 707
    .line 708
    .line 709
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 710
    .line 711
    .line 712
    move-result v13

    .line 713
    if-nez v13, :cond_1e

    .line 714
    .line 715
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 716
    .line 717
    .line 718
    move-result v13

    .line 719
    if-nez v13, :cond_1e

    .line 720
    .line 721
    const/4 v13, 0x0

    .line 722
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 723
    .line 724
    .line 725
    move-result-object v15

    .line 726
    move/from16 v16, v7

    .line 727
    .line 728
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 729
    .line 730
    .line 731
    move-result-object v7

    .line 732
    if-eq v15, v7, :cond_12

    .line 733
    .line 734
    move-object/from16 p1, v0

    .line 735
    .line 736
    goto :goto_e

    .line 737
    :cond_12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 738
    .line 739
    .line 740
    move-result v7

    .line 741
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 742
    .line 743
    .line 744
    move-result v13

    .line 745
    invoke-static {v7, v13}, Ljava/lang/Math;->min(II)I

    .line 746
    .line 747
    .line 748
    move-result v7

    .line 749
    const/4 v13, 0x1

    .line 750
    :goto_d
    if-ge v13, v7, :cond_1c

    .line 751
    .line 752
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 753
    .line 754
    .line 755
    move-result-object v15

    .line 756
    check-cast v15, Landroid/view/View;

    .line 757
    .line 758
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 759
    .line 760
    .line 761
    move-result-object v17

    .line 762
    move-object/from16 p1, v0

    .line 763
    .line 764
    move-object/from16 v0, v17

    .line 765
    .line 766
    check-cast v0, Landroid/view/View;

    .line 767
    .line 768
    if-eq v15, v0, :cond_1b

    .line 769
    .line 770
    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 771
    .line 772
    .line 773
    move-result-object v7

    .line 774
    check-cast v7, Landroid/view/ViewGroup;

    .line 775
    .line 776
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    .line 777
    .line 778
    .line 779
    move-result v13

    .line 780
    invoke-virtual {v15}, Landroid/view/View;->getZ()F

    .line 781
    .line 782
    .line 783
    move-result v17

    .line 784
    invoke-virtual {v0}, Landroid/view/View;->getZ()F

    .line 785
    .line 786
    .line 787
    move-result v19

    .line 788
    cmpl-float v17, v17, v19

    .line 789
    .line 790
    if-eqz v17, :cond_15

    .line 791
    .line 792
    invoke-virtual {v15}, Landroid/view/View;->getZ()F

    .line 793
    .line 794
    .line 795
    move-result v7

    .line 796
    invoke-virtual {v0}, Landroid/view/View;->getZ()F

    .line 797
    .line 798
    .line 799
    move-result v0

    .line 800
    cmpl-float v0, v7, v0

    .line 801
    .line 802
    if-lez v0, :cond_14

    .line 803
    .line 804
    :cond_13
    :goto_e
    move/from16 v20, v2

    .line 805
    .line 806
    move-object/from16 v21, v5

    .line 807
    .line 808
    :goto_f
    move-object/from16 v17, v11

    .line 809
    .line 810
    move-object/from16 v25, v14

    .line 811
    .line 812
    const/4 v2, 0x1

    .line 813
    const/4 v14, 0x2

    .line 814
    const/16 v18, 0x0

    .line 815
    .line 816
    goto/16 :goto_19

    .line 817
    .line 818
    :cond_14
    move/from16 v20, v2

    .line 819
    .line 820
    move-object/from16 v21, v5

    .line 821
    .line 822
    move-object/from16 v17, v11

    .line 823
    .line 824
    move-object/from16 v25, v14

    .line 825
    .line 826
    const/4 v2, 0x1

    .line 827
    const/4 v14, 0x2

    .line 828
    const/16 v18, 0x0

    .line 829
    .line 830
    goto/16 :goto_18

    .line 831
    .line 832
    :cond_15
    const/4 v8, 0x0

    .line 833
    :goto_10
    if-ge v8, v13, :cond_13

    .line 834
    .line 835
    move/from16 p2, v13

    .line 836
    .line 837
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 838
    .line 839
    move-object/from16 v17, v11

    .line 840
    .line 841
    const/16 v11, 0x1d

    .line 842
    .line 843
    if-lt v13, v11, :cond_16

    .line 844
    .line 845
    invoke-static {v7, v8}, Ln0/f1;->b(Landroid/view/ViewGroup;I)I

    .line 846
    .line 847
    .line 848
    move-result v11

    .line 849
    move/from16 v20, v2

    .line 850
    .line 851
    move-object/from16 v21, v5

    .line 852
    .line 853
    move-object/from16 v25, v14

    .line 854
    .line 855
    const/4 v14, 0x2

    .line 856
    const/16 v18, 0x0

    .line 857
    .line 858
    goto/16 :goto_17

    .line 859
    .line 860
    :cond_16
    sget-boolean v11, Ly1/v;->q:Z

    .line 861
    .line 862
    if-nez v11, :cond_17

    .line 863
    .line 864
    :try_start_2
    const-string v11, "getChildDrawingOrder"
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_4

    .line 865
    .line 866
    move/from16 v20, v2

    .line 867
    .line 868
    const/4 v13, 0x2

    .line 869
    :try_start_3
    new-array v2, v13, [Ljava/lang/Class;

    .line 870
    .line 871
    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 872
    .line 873
    const/16 v18, 0x0

    .line 874
    .line 875
    aput-object v13, v2, v18
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_5

    .line 876
    .line 877
    move-object/from16 v25, v14

    .line 878
    .line 879
    const/4 v14, 0x1

    .line 880
    :try_start_4
    aput-object v13, v2, v14

    .line 881
    .line 882
    invoke-virtual {v5, v11, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 883
    .line 884
    .line 885
    move-result-object v2

    .line 886
    sput-object v2, Ly1/v;->p:Ljava/lang/reflect/Method;

    .line 887
    .line 888
    invoke-virtual {v2, v14}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_3

    .line 889
    .line 890
    .line 891
    :catch_3
    :goto_11
    const/4 v2, 0x1

    .line 892
    goto :goto_12

    .line 893
    :catch_4
    move/from16 v20, v2

    .line 894
    .line 895
    :catch_5
    move-object/from16 v25, v14

    .line 896
    .line 897
    goto :goto_11

    .line 898
    :goto_12
    sput-boolean v2, Ly1/v;->q:Z

    .line 899
    .line 900
    goto :goto_13

    .line 901
    :cond_17
    move/from16 v20, v2

    .line 902
    .line 903
    move-object/from16 v25, v14

    .line 904
    .line 905
    :goto_13
    sget-object v2, Ly1/v;->p:Ljava/lang/reflect/Method;

    .line 906
    .line 907
    if-eqz v2, :cond_18

    .line 908
    .line 909
    :try_start_5
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    .line 910
    .line 911
    .line 912
    move-result v11

    .line 913
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 914
    .line 915
    .line 916
    move-result-object v11

    .line 917
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 918
    .line 919
    .line 920
    move-result-object v13
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_8

    .line 921
    move-object/from16 v21, v5

    .line 922
    .line 923
    const/4 v14, 0x2

    .line 924
    :try_start_6
    new-array v5, v14, [Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_7

    .line 925
    .line 926
    const/16 v18, 0x0

    .line 927
    .line 928
    :try_start_7
    aput-object v11, v5, v18

    .line 929
    .line 930
    const/4 v11, 0x1

    .line 931
    aput-object v13, v5, v11

    .line 932
    .line 933
    invoke-virtual {v2, v7, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    .line 935
    .line 936
    move-result-object v2

    .line 937
    check-cast v2, Ljava/lang/Integer;

    .line 938
    .line 939
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 940
    .line 941
    .line 942
    move-result v11
    :try_end_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_7} :catch_6

    .line 943
    goto :goto_17

    .line 944
    :catch_6
    :goto_14
    nop

    .line 945
    goto :goto_16

    .line 946
    :catch_7
    :goto_15
    const/16 v18, 0x0

    .line 947
    .line 948
    goto :goto_14

    .line 949
    :catch_8
    move-object/from16 v21, v5

    .line 950
    .line 951
    const/4 v14, 0x2

    .line 952
    goto :goto_15

    .line 953
    :cond_18
    move-object/from16 v21, v5

    .line 954
    .line 955
    const/4 v14, 0x2

    .line 956
    const/16 v18, 0x0

    .line 957
    .line 958
    :goto_16
    move v11, v8

    .line 959
    :goto_17
    invoke-virtual {v7, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 960
    .line 961
    .line 962
    move-result-object v2

    .line 963
    if-ne v2, v15, :cond_19

    .line 964
    .line 965
    const/4 v2, 0x1

    .line 966
    goto :goto_18

    .line 967
    :cond_19
    if-ne v2, v0, :cond_1a

    .line 968
    .line 969
    const/4 v2, 0x1

    .line 970
    goto :goto_19

    .line 971
    :cond_1a
    const/4 v2, 0x1

    .line 972
    add-int/2addr v8, v2

    .line 973
    move/from16 v13, p2

    .line 974
    .line 975
    move-object/from16 v11, v17

    .line 976
    .line 977
    move/from16 v2, v20

    .line 978
    .line 979
    move-object/from16 v5, v21

    .line 980
    .line 981
    move-object/from16 v14, v25

    .line 982
    .line 983
    goto/16 :goto_10

    .line 984
    .line 985
    :cond_1b
    move/from16 v20, v2

    .line 986
    .line 987
    move-object/from16 v21, v5

    .line 988
    .line 989
    move-object/from16 v17, v11

    .line 990
    .line 991
    move-object/from16 v25, v14

    .line 992
    .line 993
    const/4 v2, 0x1

    .line 994
    const/4 v14, 0x2

    .line 995
    const/16 v18, 0x0

    .line 996
    .line 997
    add-int/2addr v13, v2

    .line 998
    move-object/from16 v8, p0

    .line 999
    .line 1000
    move-object/from16 v0, p1

    .line 1001
    .line 1002
    move/from16 v2, v20

    .line 1003
    .line 1004
    move-object/from16 v14, v25

    .line 1005
    .line 1006
    goto/16 :goto_d

    .line 1007
    .line 1008
    :cond_1c
    move-object/from16 p1, v0

    .line 1009
    .line 1010
    move/from16 v20, v2

    .line 1011
    .line 1012
    move-object/from16 v21, v5

    .line 1013
    .line 1014
    move-object/from16 v17, v11

    .line 1015
    .line 1016
    move-object/from16 v25, v14

    .line 1017
    .line 1018
    const/4 v2, 0x1

    .line 1019
    const/4 v14, 0x2

    .line 1020
    const/16 v18, 0x0

    .line 1021
    .line 1022
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 1023
    .line 1024
    .line 1025
    move-result v0

    .line 1026
    if-ne v0, v7, :cond_1d

    .line 1027
    .line 1028
    goto :goto_19

    .line 1029
    :cond_1d
    :goto_18
    sub-int/2addr v12, v2

    .line 1030
    move v7, v12

    .line 1031
    goto :goto_1a

    .line 1032
    :cond_1e
    move-object/from16 p1, v0

    .line 1033
    .line 1034
    move/from16 v20, v2

    .line 1035
    .line 1036
    move-object/from16 v21, v5

    .line 1037
    .line 1038
    move/from16 v16, v7

    .line 1039
    .line 1040
    goto/16 :goto_f

    .line 1041
    .line 1042
    :goto_19
    add-int/2addr v12, v2

    .line 1043
    move v9, v12

    .line 1044
    move/from16 v7, v16

    .line 1045
    .line 1046
    :goto_1a
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1047
    .line 1048
    .line 1049
    move-object/from16 v8, p0

    .line 1050
    .line 1051
    move-object/from16 v0, p1

    .line 1052
    .line 1053
    move-object/from16 v11, v17

    .line 1054
    .line 1055
    move/from16 v2, v20

    .line 1056
    .line 1057
    move-object/from16 v5, v21

    .line 1058
    .line 1059
    move-object/from16 v14, v25

    .line 1060
    .line 1061
    goto/16 :goto_c

    .line 1062
    .line 1063
    :cond_1f
    move/from16 v20, v2

    .line 1064
    .line 1065
    move-object/from16 v17, v11

    .line 1066
    .line 1067
    move-object/from16 v25, v14

    .line 1068
    .line 1069
    if-ltz v9, :cond_21

    .line 1070
    .line 1071
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    .line 1072
    .line 1073
    .line 1074
    move-result v0

    .line 1075
    if-lt v9, v0, :cond_20

    .line 1076
    .line 1077
    goto :goto_1b

    .line 1078
    :cond_20
    invoke-virtual {v4, v6, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1079
    .line 1080
    .line 1081
    goto :goto_1c

    .line 1082
    :cond_21
    :goto_1b
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1083
    .line 1084
    .line 1085
    :goto_1c
    iput v10, v6, Ly1/o;->d:I

    .line 1086
    .line 1087
    goto :goto_1d

    .line 1088
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1089
    .line 1090
    const-string v1, "This GhostViewHolder is detached!"

    .line 1091
    .line 1092
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1093
    .line 1094
    .line 1095
    throw v0

    .line 1096
    :cond_23
    move/from16 v20, v2

    .line 1097
    .line 1098
    move-object/from16 v17, v11

    .line 1099
    .line 1100
    move-object/from16 v25, v14

    .line 1101
    .line 1102
    iput-object v3, v6, Ly1/o;->e:Landroid/graphics/Matrix;

    .line 1103
    .line 1104
    :goto_1d
    iget v0, v6, Ly1/o;->d:I

    .line 1105
    .line 1106
    const/4 v2, 0x1

    .line 1107
    add-int/2addr v0, v2

    .line 1108
    iput v0, v6, Ly1/o;->d:I

    .line 1109
    .line 1110
    :goto_1e
    if-nez v6, :cond_24

    .line 1111
    .line 1112
    goto :goto_20

    .line 1113
    :cond_24
    move-object/from16 v2, v22

    .line 1114
    .line 1115
    move-object/from16 v3, v24

    .line 1116
    .line 1117
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    .line 1119
    .line 1120
    move-result-object v0

    .line 1121
    check-cast v0, Landroid/view/ViewGroup;

    .line 1122
    .line 1123
    invoke-interface {v6, v0, v1}, Ly1/m;->a(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 1124
    .line 1125
    .line 1126
    move-object/from16 v0, p0

    .line 1127
    .line 1128
    :goto_1f
    iget-object v2, v0, Landroidx/transition/Transition;->i:Landroidx/transition/TransitionSet;

    .line 1129
    .line 1130
    if-eqz v2, :cond_25

    .line 1131
    .line 1132
    move-object v0, v2

    .line 1133
    goto :goto_1f

    .line 1134
    :cond_25
    new-instance v2, Ly1/h;

    .line 1135
    .line 1136
    invoke-direct {v2}, Ly1/h;-><init>()V

    .line 1137
    .line 1138
    .line 1139
    move-object/from16 v3, v25

    .line 1140
    .line 1141
    iput-object v3, v2, Ly1/h;->b:Ljava/lang/Object;

    .line 1142
    .line 1143
    iput-object v6, v2, Ly1/h;->c:Ljava/lang/Object;

    .line 1144
    .line 1145
    invoke-virtual {v0, v2}, Landroidx/transition/Transition;->a(Ly1/y;)V

    .line 1146
    .line 1147
    .line 1148
    if-eqz v20, :cond_29

    .line 1149
    .line 1150
    if-eq v1, v3, :cond_26

    .line 1151
    .line 1152
    const/4 v2, 0x0

    .line 1153
    invoke-static {v1, v2}, Ly1/g0;->b(Landroid/view/View;F)V

    .line 1154
    .line 1155
    .line 1156
    :cond_26
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1157
    .line 1158
    invoke-static {v3, v1}, Ly1/g0;->b(Landroid/view/View;F)V

    .line 1159
    .line 1160
    .line 1161
    goto :goto_20

    .line 1162
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1163
    .line 1164
    const-string v1, "Ghosted views must be parented by a ViewGroup"

    .line 1165
    .line 1166
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1167
    .line 1168
    .line 1169
    throw v0

    .line 1170
    :cond_28
    move/from16 v20, v2

    .line 1171
    .line 1172
    move-object/from16 v17, v11

    .line 1173
    .line 1174
    if-nez v20, :cond_29

    .line 1175
    .line 1176
    move-object/from16 v2, v23

    .line 1177
    .line 1178
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 1179
    .line 1180
    .line 1181
    :cond_29
    :goto_20
    return-object v17

    .line 1182
    :goto_21
    return-object v1
.end method

.method public final o()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/transition/ChangeTransform;->A:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
