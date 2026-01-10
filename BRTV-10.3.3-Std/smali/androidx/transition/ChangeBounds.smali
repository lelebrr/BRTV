.class public Landroidx/transition/ChangeBounds;
.super Landroidx/transition/Transition;
.source "MyApplication"


# static fields
.field public static final A:Landroidx/appcompat/widget/g3;

.field public static final B:Landroidx/appcompat/widget/g3;

.field public static final C:Landroidx/appcompat/widget/g3;

.field public static final D:Landroidx/appcompat/widget/g3;

.field public static final E:Ll6/m;

.field public static final y:[Ljava/lang/String;

.field public static final z:Landroidx/appcompat/widget/g3;


# instance fields
.field public x:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-string v0, "android:changeBounds:clip"

    .line 2
    .line 3
    const-string v1, "android:changeBounds:parent"

    .line 4
    .line 5
    const-string v2, "android:changeBounds:bounds"

    .line 6
    .line 7
    const-string v3, "android:changeBounds:windowX"

    .line 8
    .line 9
    const-string v4, "android:changeBounds:windowY"

    .line 10
    .line 11
    filled-new-array {v2, v0, v1, v3, v4}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Landroidx/transition/ChangeBounds;->y:[Ljava/lang/String;

    .line 16
    .line 17
    new-instance v0, Ll6/a;

    .line 18
    .line 19
    const-string v1, "boundsOrigin"

    .line 20
    .line 21
    const-class v2, Landroid/graphics/PointF;

    .line 22
    .line 23
    invoke-direct {v0, v2, v1}, Ll6/a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance v1, Landroid/graphics/Rect;

    .line 27
    .line 28
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v1, v0, Ll6/a;->b:Ljava/lang/Object;

    .line 32
    .line 33
    new-instance v0, Landroidx/appcompat/widget/g3;

    .line 34
    .line 35
    const-string v1, "topLeft"

    .line 36
    .line 37
    const/16 v3, 0xa

    .line 38
    .line 39
    invoke-direct {v0, v1, v2, v3}, Landroidx/appcompat/widget/g3;-><init>(Ljava/lang/String;Ljava/lang/Class;I)V

    .line 40
    .line 41
    .line 42
    sput-object v0, Landroidx/transition/ChangeBounds;->z:Landroidx/appcompat/widget/g3;

    .line 43
    .line 44
    new-instance v0, Landroidx/appcompat/widget/g3;

    .line 45
    .line 46
    const-string v3, "bottomRight"

    .line 47
    .line 48
    const/16 v4, 0xb

    .line 49
    .line 50
    invoke-direct {v0, v3, v2, v4}, Landroidx/appcompat/widget/g3;-><init>(Ljava/lang/String;Ljava/lang/Class;I)V

    .line 51
    .line 52
    .line 53
    sput-object v0, Landroidx/transition/ChangeBounds;->A:Landroidx/appcompat/widget/g3;

    .line 54
    .line 55
    new-instance v0, Landroidx/appcompat/widget/g3;

    .line 56
    .line 57
    const/16 v4, 0xc

    .line 58
    .line 59
    invoke-direct {v0, v3, v2, v4}, Landroidx/appcompat/widget/g3;-><init>(Ljava/lang/String;Ljava/lang/Class;I)V

    .line 60
    .line 61
    .line 62
    sput-object v0, Landroidx/transition/ChangeBounds;->B:Landroidx/appcompat/widget/g3;

    .line 63
    .line 64
    new-instance v0, Landroidx/appcompat/widget/g3;

    .line 65
    .line 66
    const/16 v3, 0xd

    .line 67
    .line 68
    invoke-direct {v0, v1, v2, v3}, Landroidx/appcompat/widget/g3;-><init>(Ljava/lang/String;Ljava/lang/Class;I)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Landroidx/transition/ChangeBounds;->C:Landroidx/appcompat/widget/g3;

    .line 72
    .line 73
    new-instance v0, Landroidx/appcompat/widget/g3;

    .line 74
    .line 75
    const-string v1, "position"

    .line 76
    .line 77
    const/16 v3, 0xe

    .line 78
    .line 79
    invoke-direct {v0, v1, v2, v3}, Landroidx/appcompat/widget/g3;-><init>(Ljava/lang/String;Ljava/lang/Class;I)V

    .line 80
    .line 81
    .line 82
    sput-object v0, Landroidx/transition/ChangeBounds;->D:Landroidx/appcompat/widget/g3;

    .line 83
    .line 84
    new-instance v0, Ll6/m;

    .line 85
    .line 86
    const/4 v1, 0x2

    .line 87
    invoke-direct {v0, v1}, Ll6/m;-><init>(I)V

    .line 88
    .line 89
    .line 90
    sput-object v0, Landroidx/transition/ChangeBounds;->E:Ll6/m;

    .line 91
    .line 92
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
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/transition/ChangeBounds;->x:Z

    .line 6
    .line 7
    sget-object v1, Ly1/v;->b:[I

    .line 8
    .line 9
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p2, Landroid/content/res/XmlResourceParser;

    .line 14
    .line 15
    const-string v1, "resizeClip"

    .line 16
    .line 17
    invoke-static {p2, v1}, Le0/b;->e(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-nez p2, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 29
    .line 30
    .line 31
    iput-boolean v0, p0, Landroidx/transition/ChangeBounds;->x:Z

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final F(Ly1/e0;)V
    .locals 7

    .line 1
    iget-object v0, p1, Ly1/e0;->b:Landroid/view/View;

    .line 2
    .line 3
    sget-object v1, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    :cond_0
    iget-object v1, p1, Ly1/e0;->a:Ljava/util/HashMap;

    .line 24
    .line 25
    new-instance v2, Landroid/graphics/Rect;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 44
    .line 45
    .line 46
    const-string v3, "android:changeBounds:bounds"

    .line 47
    .line 48
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    iget-object p1, p1, Ly1/e0;->b:Landroid/view/View;

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const-string v2, "android:changeBounds:parent"

    .line 58
    .line 59
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    iget-boolean p1, p0, Landroidx/transition/ChangeBounds;->x:Z

    .line 63
    .line 64
    if-eqz p1, :cond_1

    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const-string v0, "android:changeBounds:clip"

    .line 71
    .line 72
    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    :cond_1
    return-void
.end method

.method public final c(Ly1/e0;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/transition/ChangeBounds;->F(Ly1/e0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final f(Ly1/e0;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/transition/ChangeBounds;->F(Ly1/e0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final j(Landroid/view/ViewGroup;Ly1/e0;Ly1/e0;)Landroid/animation/Animator;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    if-nez v2, :cond_1

    .line 10
    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    goto/16 :goto_e

    .line 13
    .line 14
    :cond_1
    iget-object v1, v1, Ly1/e0;->a:Ljava/util/HashMap;

    .line 15
    .line 16
    iget-object v7, v2, Ly1/e0;->a:Ljava/util/HashMap;

    .line 17
    .line 18
    const-string v8, "android:changeBounds:parent"

    .line 19
    .line 20
    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v9

    .line 24
    check-cast v9, Landroid/view/ViewGroup;

    .line 25
    .line 26
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v8

    .line 30
    check-cast v8, Landroid/view/ViewGroup;

    .line 31
    .line 32
    if-eqz v9, :cond_2

    .line 33
    .line 34
    if-nez v8, :cond_3

    .line 35
    .line 36
    :cond_2
    const/4 v1, 0x0

    .line 37
    goto/16 :goto_e

    .line 38
    .line 39
    :cond_3
    const-string v8, "android:changeBounds:bounds"

    .line 40
    .line 41
    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v9

    .line 45
    check-cast v9, Landroid/graphics/Rect;

    .line 46
    .line 47
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    check-cast v8, Landroid/graphics/Rect;

    .line 52
    .line 53
    iget v10, v9, Landroid/graphics/Rect;->left:I

    .line 54
    .line 55
    iget v14, v8, Landroid/graphics/Rect;->left:I

    .line 56
    .line 57
    iget v11, v9, Landroid/graphics/Rect;->top:I

    .line 58
    .line 59
    iget v15, v8, Landroid/graphics/Rect;->top:I

    .line 60
    .line 61
    iget v12, v9, Landroid/graphics/Rect;->right:I

    .line 62
    .line 63
    iget v13, v8, Landroid/graphics/Rect;->right:I

    .line 64
    .line 65
    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    .line 66
    .line 67
    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    .line 68
    .line 69
    sub-int v4, v12, v10

    .line 70
    .line 71
    sub-int v6, v9, v11

    .line 72
    .line 73
    sub-int v3, v13, v14

    .line 74
    .line 75
    sub-int v5, v8, v15

    .line 76
    .line 77
    const-string v2, "android:changeBounds:clip"

    .line 78
    .line 79
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Landroid/graphics/Rect;

    .line 84
    .line 85
    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    check-cast v2, Landroid/graphics/Rect;

    .line 90
    .line 91
    if-eqz v4, :cond_4

    .line 92
    .line 93
    if-nez v6, :cond_5

    .line 94
    .line 95
    :cond_4
    if-eqz v3, :cond_9

    .line 96
    .line 97
    if-eqz v5, :cond_9

    .line 98
    .line 99
    :cond_5
    if-ne v10, v14, :cond_7

    .line 100
    .line 101
    if-eq v11, v15, :cond_6

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_6
    const/4 v7, 0x0

    .line 105
    goto :goto_1

    .line 106
    :cond_7
    :goto_0
    const/4 v7, 0x1

    .line 107
    :goto_1
    if-ne v12, v13, :cond_8

    .line 108
    .line 109
    if-eq v9, v8, :cond_a

    .line 110
    .line 111
    :cond_8
    const/16 v17, 0x1

    .line 112
    .line 113
    add-int/lit8 v7, v7, 0x1

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_9
    const/4 v7, 0x0

    .line 117
    :cond_a
    :goto_2
    if-eqz v1, :cond_c

    .line 118
    .line 119
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v17

    .line 123
    if-eqz v17, :cond_b

    .line 124
    .line 125
    goto :goto_4

    .line 126
    :cond_b
    :goto_3
    const/16 v17, 0x1

    .line 127
    .line 128
    goto :goto_5

    .line 129
    :cond_c
    :goto_4
    if-nez v1, :cond_d

    .line 130
    .line 131
    if-eqz v2, :cond_d

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :goto_5
    add-int/lit8 v7, v7, 0x1

    .line 135
    .line 136
    :cond_d
    if-lez v7, :cond_1b

    .line 137
    .line 138
    move-object/from16 p2, v2

    .line 139
    .line 140
    iget-boolean v2, v0, Landroidx/transition/ChangeBounds;->x:Z

    .line 141
    .line 142
    move-object/from16 v17, v1

    .line 143
    .line 144
    move-object/from16 v1, p3

    .line 145
    .line 146
    iget-object v1, v1, Ly1/e0;->b:Landroid/view/View;

    .line 147
    .line 148
    move/from16 v18, v8

    .line 149
    .line 150
    sget-object v8, Landroidx/transition/ChangeBounds;->D:Landroidx/appcompat/widget/g3;

    .line 151
    .line 152
    if-nez v2, :cond_12

    .line 153
    .line 154
    invoke-static {v1, v10, v11, v12, v9}, Ly1/g0;->a(Landroid/view/View;IIII)V

    .line 155
    .line 156
    .line 157
    const/4 v2, 0x2

    .line 158
    if-ne v7, v2, :cond_f

    .line 159
    .line 160
    if-ne v4, v3, :cond_e

    .line 161
    .line 162
    if-ne v6, v5, :cond_e

    .line 163
    .line 164
    iget-object v2, v0, Landroidx/transition/Transition;->t:Ly1/w;

    .line 165
    .line 166
    int-to-float v3, v10

    .line 167
    int-to-float v4, v11

    .line 168
    int-to-float v5, v14

    .line 169
    int-to-float v6, v15

    .line 170
    invoke-virtual {v2, v3, v4, v5, v6}, Ly1/w;->a(FFFF)Landroid/graphics/Path;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    const/4 v3, 0x0

    .line 175
    invoke-static {v1, v8, v3, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    :goto_6
    const/4 v4, 0x1

    .line 180
    goto/16 :goto_d

    .line 181
    .line 182
    :cond_e
    new-instance v2, Ly1/d;

    .line 183
    .line 184
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 185
    .line 186
    .line 187
    iput-object v1, v2, Ly1/d;->e:Landroid/view/View;

    .line 188
    .line 189
    iget-object v3, v0, Landroidx/transition/Transition;->t:Ly1/w;

    .line 190
    .line 191
    int-to-float v4, v10

    .line 192
    int-to-float v5, v11

    .line 193
    int-to-float v6, v14

    .line 194
    int-to-float v7, v15

    .line 195
    invoke-virtual {v3, v4, v5, v6, v7}, Ly1/w;->a(FFFF)Landroid/graphics/Path;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    sget-object v4, Landroidx/transition/ChangeBounds;->z:Landroidx/appcompat/widget/g3;

    .line 200
    .line 201
    const/4 v5, 0x0

    .line 202
    invoke-static {v2, v4, v5, v3}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    iget-object v4, v0, Landroidx/transition/Transition;->t:Ly1/w;

    .line 207
    .line 208
    int-to-float v6, v12

    .line 209
    int-to-float v7, v9

    .line 210
    int-to-float v8, v13

    .line 211
    move/from16 v9, v18

    .line 212
    .line 213
    int-to-float v9, v9

    .line 214
    invoke-virtual {v4, v6, v7, v8, v9}, Ly1/w;->a(FFFF)Landroid/graphics/Path;

    .line 215
    .line 216
    .line 217
    move-result-object v4

    .line 218
    sget-object v6, Landroidx/transition/ChangeBounds;->A:Landroidx/appcompat/widget/g3;

    .line 219
    .line 220
    invoke-static {v2, v6, v5, v4}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    new-instance v5, Landroid/animation/AnimatorSet;

    .line 225
    .line 226
    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 227
    .line 228
    .line 229
    const/4 v6, 0x2

    .line 230
    new-array v6, v6, [Landroid/animation/Animator;

    .line 231
    .line 232
    const/4 v7, 0x0

    .line 233
    aput-object v3, v6, v7

    .line 234
    .line 235
    const/4 v3, 0x1

    .line 236
    aput-object v4, v6, v3

    .line 237
    .line 238
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 239
    .line 240
    .line 241
    new-instance v3, Ly1/a;

    .line 242
    .line 243
    invoke-direct {v3, v2}, Ly1/a;-><init>(Ly1/d;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v5, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 247
    .line 248
    .line 249
    move-object v2, v5

    .line 250
    goto :goto_6

    .line 251
    :cond_f
    move/from16 v2, v18

    .line 252
    .line 253
    if-ne v10, v14, :cond_11

    .line 254
    .line 255
    if-eq v11, v15, :cond_10

    .line 256
    .line 257
    goto :goto_7

    .line 258
    :cond_10
    iget-object v3, v0, Landroidx/transition/Transition;->t:Ly1/w;

    .line 259
    .line 260
    int-to-float v4, v12

    .line 261
    int-to-float v5, v9

    .line 262
    int-to-float v6, v13

    .line 263
    int-to-float v2, v2

    .line 264
    invoke-virtual {v3, v4, v5, v6, v2}, Ly1/w;->a(FFFF)Landroid/graphics/Path;

    .line 265
    .line 266
    .line 267
    move-result-object v2

    .line 268
    sget-object v3, Landroidx/transition/ChangeBounds;->B:Landroidx/appcompat/widget/g3;

    .line 269
    .line 270
    const/4 v4, 0x0

    .line 271
    invoke-static {v1, v3, v4, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    goto :goto_6

    .line 276
    :cond_11
    :goto_7
    iget-object v2, v0, Landroidx/transition/Transition;->t:Ly1/w;

    .line 277
    .line 278
    int-to-float v3, v10

    .line 279
    int-to-float v4, v11

    .line 280
    int-to-float v5, v14

    .line 281
    int-to-float v6, v15

    .line 282
    invoke-virtual {v2, v3, v4, v5, v6}, Ly1/w;->a(FFFF)Landroid/graphics/Path;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    sget-object v3, Landroidx/transition/ChangeBounds;->C:Landroidx/appcompat/widget/g3;

    .line 287
    .line 288
    const/4 v4, 0x0

    .line 289
    invoke-static {v1, v3, v4, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    goto :goto_6

    .line 294
    :cond_12
    move/from16 v2, v18

    .line 295
    .line 296
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    .line 297
    .line 298
    .line 299
    move-result v7

    .line 300
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    .line 301
    .line 302
    .line 303
    move-result v9

    .line 304
    add-int/2addr v7, v10

    .line 305
    add-int/2addr v9, v11

    .line 306
    invoke-static {v1, v10, v11, v7, v9}, Ly1/g0;->a(Landroid/view/View;IIII)V

    .line 307
    .line 308
    .line 309
    if-ne v10, v14, :cond_14

    .line 310
    .line 311
    if-eq v11, v15, :cond_13

    .line 312
    .line 313
    goto :goto_8

    .line 314
    :cond_13
    const/4 v7, 0x0

    .line 315
    goto :goto_9

    .line 316
    :cond_14
    :goto_8
    iget-object v7, v0, Landroidx/transition/Transition;->t:Ly1/w;

    .line 317
    .line 318
    int-to-float v9, v10

    .line 319
    int-to-float v10, v11

    .line 320
    int-to-float v11, v14

    .line 321
    int-to-float v12, v15

    .line 322
    invoke-virtual {v7, v9, v10, v11, v12}, Ly1/w;->a(FFFF)Landroid/graphics/Path;

    .line 323
    .line 324
    .line 325
    move-result-object v7

    .line 326
    const/4 v9, 0x0

    .line 327
    invoke-static {v1, v8, v9, v7}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    .line 328
    .line 329
    .line 330
    move-result-object v7

    .line 331
    :goto_9
    if-nez v17, :cond_15

    .line 332
    .line 333
    new-instance v8, Landroid/graphics/Rect;

    .line 334
    .line 335
    const/4 v9, 0x0

    .line 336
    invoke-direct {v8, v9, v9, v4, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 337
    .line 338
    .line 339
    goto :goto_a

    .line 340
    :cond_15
    const/4 v9, 0x0

    .line 341
    move-object/from16 v8, v17

    .line 342
    .line 343
    :goto_a
    if-nez p2, :cond_16

    .line 344
    .line 345
    new-instance v4, Landroid/graphics/Rect;

    .line 346
    .line 347
    invoke-direct {v4, v9, v9, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 348
    .line 349
    .line 350
    goto :goto_b

    .line 351
    :cond_16
    move-object/from16 v4, p2

    .line 352
    .line 353
    :goto_b
    invoke-virtual {v8, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    move-result v3

    .line 357
    if-nez v3, :cond_17

    .line 358
    .line 359
    sget-object v3, Ln0/s0;->a:Ljava/util/WeakHashMap;

    .line 360
    .line 361
    invoke-virtual {v1, v8}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 362
    .line 363
    .line 364
    sget-object v3, Landroidx/transition/ChangeBounds;->E:Ll6/m;

    .line 365
    .line 366
    const/4 v5, 0x2

    .line 367
    new-array v6, v5, [Ljava/lang/Object;

    .line 368
    .line 369
    aput-object v8, v6, v9

    .line 370
    .line 371
    const/4 v5, 0x1

    .line 372
    aput-object v4, v6, v5

    .line 373
    .line 374
    const-string v4, "clipBounds"

    .line 375
    .line 376
    invoke-static {v1, v4, v3, v6}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    .line 377
    .line 378
    .line 379
    move-result-object v6

    .line 380
    new-instance v3, Ly1/b;

    .line 381
    .line 382
    move-object v11, v3

    .line 383
    move-object v12, v1

    .line 384
    move v4, v13

    .line 385
    move-object/from16 v13, p2

    .line 386
    .line 387
    move/from16 v16, v4

    .line 388
    .line 389
    move/from16 v17, v2

    .line 390
    .line 391
    invoke-direct/range {v11 .. v17}, Ly1/b;-><init>(Landroid/view/View;Landroid/graphics/Rect;IIII)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v6, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 395
    .line 396
    .line 397
    goto :goto_c

    .line 398
    :cond_17
    const/4 v6, 0x0

    .line 399
    :goto_c
    sget-boolean v2, Ly1/d0;->a:Z

    .line 400
    .line 401
    if-nez v7, :cond_18

    .line 402
    .line 403
    move-object v2, v6

    .line 404
    goto/16 :goto_6

    .line 405
    .line 406
    :cond_18
    if-nez v6, :cond_19

    .line 407
    .line 408
    move-object v2, v7

    .line 409
    goto/16 :goto_6

    .line 410
    .line 411
    :cond_19
    new-instance v2, Landroid/animation/AnimatorSet;

    .line 412
    .line 413
    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 414
    .line 415
    .line 416
    const/4 v3, 0x2

    .line 417
    new-array v3, v3, [Landroid/animation/Animator;

    .line 418
    .line 419
    const/4 v4, 0x0

    .line 420
    aput-object v7, v3, v4

    .line 421
    .line 422
    const/4 v4, 0x1

    .line 423
    aput-object v6, v3, v4

    .line 424
    .line 425
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 426
    .line 427
    .line 428
    :goto_d
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 429
    .line 430
    .line 431
    move-result-object v3

    .line 432
    instance-of v3, v3, Landroid/view/ViewGroup;

    .line 433
    .line 434
    if-eqz v3, :cond_1a

    .line 435
    .line 436
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 437
    .line 438
    .line 439
    move-result-object v1

    .line 440
    check-cast v1, Landroid/view/ViewGroup;

    .line 441
    .line 442
    invoke-static {v1, v4}, Ly1/v;->j(Landroid/view/ViewGroup;Z)V

    .line 443
    .line 444
    .line 445
    new-instance v3, Ly1/c;

    .line 446
    .line 447
    invoke-direct {v3, v1}, Ly1/c;-><init>(Landroid/view/ViewGroup;)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v0, v3}, Landroidx/transition/Transition;->a(Ly1/y;)V

    .line 451
    .line 452
    .line 453
    :cond_1a
    return-object v2

    .line 454
    :cond_1b
    const/4 v1, 0x0

    .line 455
    :goto_e
    return-object v1
.end method

.method public final o()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/transition/ChangeBounds;->y:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
