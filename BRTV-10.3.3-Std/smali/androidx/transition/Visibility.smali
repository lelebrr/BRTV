.class public abstract Landroidx/transition/Visibility;
.super Landroidx/transition/Transition;
.source "MyApplication"


# static fields
.field public static final y:[Ljava/lang/String;


# instance fields
.field public x:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "android:visibility:visibility"

    .line 2
    .line 3
    const-string v1, "android:visibility:parent"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Landroidx/transition/Visibility;->y:[Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/transition/Transition;-><init>()V

    const/4 v0, 0x3

    .line 2
    iput v0, p0, Landroidx/transition/Visibility;->x:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x3

    .line 4
    iput v0, p0, Landroidx/transition/Visibility;->x:I

    .line 5
    sget-object v0, Ly1/v;->c:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 6
    check-cast p2, Landroid/content/res/XmlResourceParser;

    const-string v0, "transitionVisibilityMode"

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, v1}, Le0/b;->c(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result p2

    .line 7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p2, :cond_0

    .line 8
    invoke-virtual {p0, p2}, Landroidx/transition/Visibility;->J(I)V

    :cond_0
    return-void
.end method

.method public static F(Ly1/e0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ly1/e0;->b:Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Ly1/e0;->a:Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v2, "android:visibility:visibility"

    .line 14
    .line 15
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Ly1/e0;->b:Landroid/view/View;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v2, "android:visibility:parent"

    .line 25
    .line 26
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x2

    .line 30
    new-array v0, v0, [I

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 33
    .line 34
    .line 35
    const-string p0, "android:visibility:screenLocation"

    .line 36
    .line 37
    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public static G(Ly1/e0;Ly1/e0;)Ly1/n0;
    .locals 8

    .line 1
    new-instance v0, Ly1/n0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-boolean v1, v0, Ly1/n0;->a:Z

    .line 8
    .line 9
    iput-boolean v1, v0, Ly1/n0;->b:Z

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, -0x1

    .line 13
    const-string v4, "android:visibility:parent"

    .line 14
    .line 15
    const-string v5, "android:visibility:visibility"

    .line 16
    .line 17
    if-eqz p0, :cond_0

    .line 18
    .line 19
    iget-object v6, p0, Ly1/e0;->a:Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v7

    .line 25
    if-eqz v7, :cond_0

    .line 26
    .line 27
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    check-cast v7, Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    iput v7, v0, Ly1/n0;->c:I

    .line 38
    .line 39
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    check-cast v6, Landroid/view/ViewGroup;

    .line 44
    .line 45
    iput-object v6, v0, Ly1/n0;->e:Landroid/view/ViewGroup;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iput v3, v0, Ly1/n0;->c:I

    .line 49
    .line 50
    iput-object v2, v0, Ly1/n0;->e:Landroid/view/ViewGroup;

    .line 51
    .line 52
    :goto_0
    if-eqz p1, :cond_1

    .line 53
    .line 54
    iget-object v6, p1, Ly1/e0;->a:Ljava/util/HashMap;

    .line 55
    .line 56
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    if-eqz v7, :cond_1

    .line 61
    .line 62
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Ljava/lang/Integer;

    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    iput v2, v0, Ly1/n0;->d:I

    .line 73
    .line 74
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    check-cast v2, Landroid/view/ViewGroup;

    .line 79
    .line 80
    iput-object v2, v0, Ly1/n0;->f:Landroid/view/ViewGroup;

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    iput v3, v0, Ly1/n0;->d:I

    .line 84
    .line 85
    iput-object v2, v0, Ly1/n0;->f:Landroid/view/ViewGroup;

    .line 86
    .line 87
    :goto_1
    const/4 v2, 0x1

    .line 88
    if-eqz p0, :cond_6

    .line 89
    .line 90
    if-eqz p1, :cond_6

    .line 91
    .line 92
    iget p0, v0, Ly1/n0;->c:I

    .line 93
    .line 94
    iget p1, v0, Ly1/n0;->d:I

    .line 95
    .line 96
    if-ne p0, p1, :cond_2

    .line 97
    .line 98
    iget-object v3, v0, Ly1/n0;->e:Landroid/view/ViewGroup;

    .line 99
    .line 100
    iget-object v4, v0, Ly1/n0;->f:Landroid/view/ViewGroup;

    .line 101
    .line 102
    if-ne v3, v4, :cond_2

    .line 103
    .line 104
    return-object v0

    .line 105
    :cond_2
    if-eq p0, p1, :cond_4

    .line 106
    .line 107
    if-nez p0, :cond_3

    .line 108
    .line 109
    iput-boolean v1, v0, Ly1/n0;->b:Z

    .line 110
    .line 111
    iput-boolean v2, v0, Ly1/n0;->a:Z

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_3
    if-nez p1, :cond_8

    .line 115
    .line 116
    iput-boolean v2, v0, Ly1/n0;->b:Z

    .line 117
    .line 118
    iput-boolean v2, v0, Ly1/n0;->a:Z

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_4
    iget-object p0, v0, Ly1/n0;->f:Landroid/view/ViewGroup;

    .line 122
    .line 123
    if-nez p0, :cond_5

    .line 124
    .line 125
    iput-boolean v1, v0, Ly1/n0;->b:Z

    .line 126
    .line 127
    iput-boolean v2, v0, Ly1/n0;->a:Z

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_5
    iget-object p0, v0, Ly1/n0;->e:Landroid/view/ViewGroup;

    .line 131
    .line 132
    if-nez p0, :cond_8

    .line 133
    .line 134
    iput-boolean v2, v0, Ly1/n0;->b:Z

    .line 135
    .line 136
    iput-boolean v2, v0, Ly1/n0;->a:Z

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_6
    if-nez p0, :cond_7

    .line 140
    .line 141
    iget p0, v0, Ly1/n0;->d:I

    .line 142
    .line 143
    if-nez p0, :cond_7

    .line 144
    .line 145
    iput-boolean v2, v0, Ly1/n0;->b:Z

    .line 146
    .line 147
    iput-boolean v2, v0, Ly1/n0;->a:Z

    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_7
    if-nez p1, :cond_8

    .line 151
    .line 152
    iget p0, v0, Ly1/n0;->c:I

    .line 153
    .line 154
    if-nez p0, :cond_8

    .line 155
    .line 156
    iput-boolean v1, v0, Ly1/n0;->b:Z

    .line 157
    .line 158
    iput-boolean v2, v0, Ly1/n0;->a:Z

    .line 159
    .line 160
    :cond_8
    :goto_2
    return-object v0
.end method


# virtual methods
.method public H(Landroid/view/ViewGroup;Landroid/view/View;Ly1/e0;Ly1/e0;)Landroid/animation/Animator;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public I(Landroid/view/ViewGroup;Landroid/view/View;Ly1/e0;)Landroid/animation/Animator;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public final J(I)V
    .locals 1

    .line 1
    and-int/lit8 v0, p1, -0x4

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput p1, p0, Landroidx/transition/Visibility;->x:I

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    const-string v0, "Only MODE_IN and MODE_OUT flags are allowed"

    .line 11
    .line 12
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw p1
.end method

.method public c(Ly1/e0;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/transition/Visibility;->F(Ly1/e0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public f(Ly1/e0;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/transition/Visibility;->F(Ly1/e0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final j(Landroid/view/ViewGroup;Ly1/e0;Ly1/e0;)Landroid/animation/Animator;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    invoke-static/range {p2 .. p3}, Landroidx/transition/Visibility;->G(Ly1/e0;Ly1/e0;)Ly1/n0;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    iget-boolean v5, v4, Ly1/n0;->a:Z

    .line 14
    .line 15
    if-eqz v5, :cond_0

    .line 16
    .line 17
    iget-object v5, v4, Ly1/n0;->e:Landroid/view/ViewGroup;

    .line 18
    .line 19
    if-nez v5, :cond_1

    .line 20
    .line 21
    iget-object v5, v4, Ly1/n0;->f:Landroid/view/ViewGroup;

    .line 22
    .line 23
    if-eqz v5, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object v2, v0

    .line 27
    const/4 v0, 0x0

    .line 28
    goto/16 :goto_13

    .line 29
    .line 30
    :cond_1
    :goto_0
    iget-boolean v5, v4, Ly1/n0;->b:Z

    .line 31
    .line 32
    const/4 v7, 0x0

    .line 33
    const/4 v8, 0x1

    .line 34
    if-eqz v5, :cond_5

    .line 35
    .line 36
    iget v4, v0, Landroidx/transition/Visibility;->x:I

    .line 37
    .line 38
    and-int/2addr v4, v8

    .line 39
    if-ne v4, v8, :cond_3

    .line 40
    .line 41
    if-nez v3, :cond_2

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    iget-object v4, v3, Ly1/e0;->b:Landroid/view/View;

    .line 45
    .line 46
    if-nez v2, :cond_4

    .line 47
    .line 48
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    check-cast v5, Landroid/view/View;

    .line 53
    .line 54
    invoke-virtual {v0, v5, v7}, Landroidx/transition/Transition;->m(Landroid/view/View;Z)Ly1/e0;

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    invoke-virtual {v0, v5, v7}, Landroidx/transition/Transition;->p(Landroid/view/View;Z)Ly1/e0;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-static {v8, v5}, Landroidx/transition/Visibility;->G(Ly1/e0;Ly1/e0;)Ly1/n0;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    iget-boolean v5, v5, Ly1/n0;->a:Z

    .line 67
    .line 68
    if-eqz v5, :cond_4

    .line 69
    .line 70
    :cond_3
    :goto_1
    const/4 v6, 0x0

    .line 71
    goto :goto_2

    .line 72
    :cond_4
    invoke-virtual {v0, v1, v4, v2, v3}, Landroidx/transition/Visibility;->H(Landroid/view/ViewGroup;Landroid/view/View;Ly1/e0;Ly1/e0;)Landroid/animation/Animator;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    :goto_2
    return-object v6

    .line 77
    :cond_5
    iget v4, v4, Ly1/n0;->d:I

    .line 78
    .line 79
    iget v5, v0, Landroidx/transition/Visibility;->x:I

    .line 80
    .line 81
    const/4 v9, 0x2

    .line 82
    and-int/2addr v5, v9

    .line 83
    if-eq v5, v9, :cond_7

    .line 84
    .line 85
    :goto_3
    move-object v2, v0

    .line 86
    :cond_6
    const/4 v6, 0x0

    .line 87
    goto/16 :goto_12

    .line 88
    .line 89
    :cond_7
    if-nez v2, :cond_8

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_8
    if-eqz v3, :cond_9

    .line 93
    .line 94
    iget-object v3, v3, Ly1/e0;->b:Landroid/view/View;

    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_9
    const/4 v3, 0x0

    .line 98
    :goto_4
    iget-object v5, v2, Ly1/e0;->b:Landroid/view/View;

    .line 99
    .line 100
    const v10, 0x7f0b0388

    .line 101
    .line 102
    .line 103
    invoke-virtual {v5, v10}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v11

    .line 107
    check-cast v11, Landroid/view/View;

    .line 108
    .line 109
    if-eqz v11, :cond_a

    .line 110
    .line 111
    move/from16 v19, v4

    .line 112
    .line 113
    const/4 v6, 0x0

    .line 114
    const/4 v7, 0x1

    .line 115
    goto/16 :goto_10

    .line 116
    .line 117
    :cond_a
    if-eqz v3, :cond_e

    .line 118
    .line 119
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 120
    .line 121
    .line 122
    move-result-object v11

    .line 123
    if-nez v11, :cond_b

    .line 124
    .line 125
    goto :goto_7

    .line 126
    :cond_b
    const/4 v11, 0x4

    .line 127
    if-ne v4, v11, :cond_c

    .line 128
    .line 129
    goto :goto_5

    .line 130
    :cond_c
    if-ne v5, v3, :cond_d

    .line 131
    .line 132
    :goto_5
    move-object v11, v3

    .line 133
    const/4 v3, 0x0

    .line 134
    :goto_6
    const/4 v12, 0x0

    .line 135
    goto :goto_8

    .line 136
    :cond_d
    const/4 v3, 0x0

    .line 137
    const/4 v11, 0x0

    .line 138
    const/4 v12, 0x1

    .line 139
    goto :goto_8

    .line 140
    :cond_e
    :goto_7
    if-eqz v3, :cond_d

    .line 141
    .line 142
    const/4 v11, 0x0

    .line 143
    goto :goto_6

    .line 144
    :goto_8
    if-eqz v12, :cond_19

    .line 145
    .line 146
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 147
    .line 148
    .line 149
    move-result-object v12

    .line 150
    if-nez v12, :cond_f

    .line 151
    .line 152
    move/from16 v19, v4

    .line 153
    .line 154
    move-object v6, v11

    .line 155
    move-object v11, v5

    .line 156
    goto/16 :goto_10

    .line 157
    .line 158
    :cond_f
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 159
    .line 160
    .line 161
    move-result-object v12

    .line 162
    instance-of v12, v12, Landroid/view/View;

    .line 163
    .line 164
    if-eqz v12, :cond_19

    .line 165
    .line 166
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 167
    .line 168
    .line 169
    move-result-object v12

    .line 170
    check-cast v12, Landroid/view/View;

    .line 171
    .line 172
    invoke-virtual {v0, v12, v8}, Landroidx/transition/Transition;->p(Landroid/view/View;Z)Ly1/e0;

    .line 173
    .line 174
    .line 175
    move-result-object v13

    .line 176
    invoke-virtual {v0, v12, v8}, Landroidx/transition/Transition;->m(Landroid/view/View;Z)Ly1/e0;

    .line 177
    .line 178
    .line 179
    move-result-object v14

    .line 180
    invoke-static {v13, v14}, Landroidx/transition/Visibility;->G(Ly1/e0;Ly1/e0;)Ly1/n0;

    .line 181
    .line 182
    .line 183
    move-result-object v13

    .line 184
    iget-boolean v13, v13, Ly1/n0;->a:Z

    .line 185
    .line 186
    if-nez v13, :cond_18

    .line 187
    .line 188
    sget-boolean v3, Ly1/d0;->a:Z

    .line 189
    .line 190
    new-instance v3, Landroid/graphics/Matrix;

    .line 191
    .line 192
    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v12}, Landroid/view/View;->getScrollX()I

    .line 196
    .line 197
    .line 198
    move-result v13

    .line 199
    neg-int v13, v13

    .line 200
    int-to-float v13, v13

    .line 201
    invoke-virtual {v12}, Landroid/view/View;->getScrollY()I

    .line 202
    .line 203
    .line 204
    move-result v12

    .line 205
    neg-int v12, v12

    .line 206
    int-to-float v12, v12

    .line 207
    invoke-virtual {v3, v13, v12}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 208
    .line 209
    .line 210
    sget-object v12, Ly1/g0;->a:Ly1/h0;

    .line 211
    .line 212
    invoke-virtual {v12, v5, v3}, Ly1/h0;->n(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v12, v1, v3}, Ly1/h0;->o(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 216
    .line 217
    .line 218
    new-instance v12, Landroid/graphics/RectF;

    .line 219
    .line 220
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 221
    .line 222
    .line 223
    move-result v13

    .line 224
    int-to-float v13, v13

    .line 225
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 226
    .line 227
    .line 228
    move-result v14

    .line 229
    int-to-float v14, v14

    .line 230
    const/4 v15, 0x0

    .line 231
    invoke-direct {v12, v15, v15, v13, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v3, v12}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 235
    .line 236
    .line 237
    iget v13, v12, Landroid/graphics/RectF;->left:F

    .line 238
    .line 239
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    .line 240
    .line 241
    .line 242
    move-result v13

    .line 243
    iget v14, v12, Landroid/graphics/RectF;->top:F

    .line 244
    .line 245
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    .line 246
    .line 247
    .line 248
    move-result v14

    .line 249
    iget v15, v12, Landroid/graphics/RectF;->right:F

    .line 250
    .line 251
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    .line 252
    .line 253
    .line 254
    move-result v15

    .line 255
    iget v6, v12, Landroid/graphics/RectF;->bottom:F

    .line 256
    .line 257
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 258
    .line 259
    .line 260
    move-result v6

    .line 261
    new-instance v10, Landroid/widget/ImageView;

    .line 262
    .line 263
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 264
    .line 265
    .line 266
    move-result-object v9

    .line 267
    invoke-direct {v10, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 268
    .line 269
    .line 270
    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 271
    .line 272
    invoke-virtual {v10, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 273
    .line 274
    .line 275
    sget-boolean v9, Ly1/d0;->a:Z

    .line 276
    .line 277
    if-eqz v9, :cond_11

    .line 278
    .line 279
    invoke-virtual {v5}, Landroid/view/View;->isAttachedToWindow()Z

    .line 280
    .line 281
    .line 282
    move-result v9

    .line 283
    xor-int/2addr v9, v8

    .line 284
    if-nez v1, :cond_10

    .line 285
    .line 286
    goto :goto_9

    .line 287
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isAttachedToWindow()Z

    .line 288
    .line 289
    .line 290
    move-result v16

    .line 291
    goto :goto_a

    .line 292
    :cond_11
    const/4 v9, 0x0

    .line 293
    :goto_9
    const/16 v16, 0x0

    .line 294
    .line 295
    :goto_a
    sget-boolean v17, Ly1/d0;->b:Z

    .line 296
    .line 297
    if-eqz v17, :cond_13

    .line 298
    .line 299
    if-eqz v9, :cond_13

    .line 300
    .line 301
    if-nez v16, :cond_12

    .line 302
    .line 303
    move/from16 v19, v4

    .line 304
    .line 305
    move-object/from16 v18, v11

    .line 306
    .line 307
    const/4 v0, 0x0

    .line 308
    goto/16 :goto_d

    .line 309
    .line 310
    :cond_12
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 311
    .line 312
    .line 313
    move-result-object v16

    .line 314
    move-object/from16 v8, v16

    .line 315
    .line 316
    check-cast v8, Landroid/view/ViewGroup;

    .line 317
    .line 318
    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 319
    .line 320
    .line 321
    move-result v16

    .line 322
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    .line 323
    .line 324
    .line 325
    move-result-object v7

    .line 326
    invoke-virtual {v7, v5}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 327
    .line 328
    .line 329
    move/from16 v7, v16

    .line 330
    .line 331
    goto :goto_b

    .line 332
    :cond_13
    const/4 v7, 0x0

    .line 333
    const/4 v8, 0x0

    .line 334
    :goto_b
    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    .line 335
    .line 336
    .line 337
    move-result v16

    .line 338
    move-object/from16 v18, v11

    .line 339
    .line 340
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    .line 341
    .line 342
    .line 343
    move-result v11

    .line 344
    invoke-virtual {v12}, Landroid/graphics/RectF;->height()F

    .line 345
    .line 346
    .line 347
    move-result v16

    .line 348
    move/from16 v19, v4

    .line 349
    .line 350
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    .line 351
    .line 352
    .line 353
    move-result v4

    .line 354
    if-lez v11, :cond_15

    .line 355
    .line 356
    if-lez v4, :cond_15

    .line 357
    .line 358
    mul-int v0, v11, v4

    .line 359
    .line 360
    int-to-float v0, v0

    .line 361
    const/high16 v16, 0x49800000    # 1048576.0f

    .line 362
    .line 363
    div-float v0, v16, v0

    .line 364
    .line 365
    const/high16 v2, 0x3f800000    # 1.0f

    .line 366
    .line 367
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    .line 368
    .line 369
    .line 370
    move-result v0

    .line 371
    int-to-float v2, v11

    .line 372
    mul-float v2, v2, v0

    .line 373
    .line 374
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 375
    .line 376
    .line 377
    move-result v2

    .line 378
    int-to-float v4, v4

    .line 379
    mul-float v4, v4, v0

    .line 380
    .line 381
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 382
    .line 383
    .line 384
    move-result v4

    .line 385
    iget v11, v12, Landroid/graphics/RectF;->left:F

    .line 386
    .line 387
    neg-float v11, v11

    .line 388
    iget v12, v12, Landroid/graphics/RectF;->top:F

    .line 389
    .line 390
    neg-float v12, v12

    .line 391
    invoke-virtual {v3, v11, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 392
    .line 393
    .line 394
    invoke-virtual {v3, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 395
    .line 396
    .line 397
    sget-boolean v0, Ly1/d0;->c:Z

    .line 398
    .line 399
    if-eqz v0, :cond_14

    .line 400
    .line 401
    new-instance v0, Landroid/graphics/Picture;

    .line 402
    .line 403
    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v0, v2, v4}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    .line 407
    .line 408
    .line 409
    move-result-object v2

    .line 410
    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v5, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v0}, Landroid/graphics/Picture;->endRecording()V

    .line 417
    .line 418
    .line 419
    invoke-static {v0}, Ll0/f;->e(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    goto :goto_c

    .line 424
    :cond_14
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 425
    .line 426
    invoke-static {v2, v4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    new-instance v2, Landroid/graphics/Canvas;

    .line 431
    .line 432
    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 436
    .line 437
    .line 438
    invoke-virtual {v5, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 439
    .line 440
    .line 441
    goto :goto_c

    .line 442
    :cond_15
    const/4 v0, 0x0

    .line 443
    :goto_c
    if-eqz v17, :cond_16

    .line 444
    .line 445
    if-eqz v9, :cond_16

    .line 446
    .line 447
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    .line 448
    .line 449
    .line 450
    move-result-object v2

    .line 451
    invoke-virtual {v2, v5}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v8, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 455
    .line 456
    .line 457
    :cond_16
    :goto_d
    if-eqz v0, :cond_17

    .line 458
    .line 459
    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 460
    .line 461
    .line 462
    :cond_17
    sub-int v0, v15, v13

    .line 463
    .line 464
    const/high16 v2, 0x40000000    # 2.0f

    .line 465
    .line 466
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 467
    .line 468
    .line 469
    move-result v0

    .line 470
    sub-int v3, v6, v14

    .line 471
    .line 472
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 473
    .line 474
    .line 475
    move-result v2

    .line 476
    invoke-virtual {v10, v0, v2}, Landroid/view/View;->measure(II)V

    .line 477
    .line 478
    .line 479
    invoke-virtual {v10, v13, v14, v15, v6}, Landroid/view/View;->layout(IIII)V

    .line 480
    .line 481
    .line 482
    move-object v11, v10

    .line 483
    :goto_e
    move-object/from16 v6, v18

    .line 484
    .line 485
    const/4 v7, 0x0

    .line 486
    goto :goto_10

    .line 487
    :cond_18
    move/from16 v19, v4

    .line 488
    .line 489
    move-object/from16 v18, v11

    .line 490
    .line 491
    invoke-virtual {v12}, Landroid/view/View;->getId()I

    .line 492
    .line 493
    .line 494
    move-result v0

    .line 495
    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 496
    .line 497
    .line 498
    move-result-object v2

    .line 499
    if-nez v2, :cond_1a

    .line 500
    .line 501
    const/4 v2, -0x1

    .line 502
    if-eq v0, v2, :cond_1a

    .line 503
    .line 504
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 505
    .line 506
    .line 507
    goto :goto_f

    .line 508
    :cond_19
    move/from16 v19, v4

    .line 509
    .line 510
    move-object/from16 v18, v11

    .line 511
    .line 512
    :cond_1a
    :goto_f
    move-object v11, v3

    .line 513
    goto :goto_e

    .line 514
    :goto_10
    if-eqz v11, :cond_1d

    .line 515
    .line 516
    move-object/from16 v0, p2

    .line 517
    .line 518
    if-nez v7, :cond_1b

    .line 519
    .line 520
    iget-object v2, v0, Ly1/e0;->a:Ljava/util/HashMap;

    .line 521
    .line 522
    const-string v3, "android:visibility:screenLocation"

    .line 523
    .line 524
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    .line 526
    .line 527
    move-result-object v2

    .line 528
    check-cast v2, [I

    .line 529
    .line 530
    const/4 v3, 0x0

    .line 531
    aget v4, v2, v3

    .line 532
    .line 533
    const/4 v6, 0x1

    .line 534
    aget v2, v2, v6

    .line 535
    .line 536
    const/4 v8, 0x2

    .line 537
    new-array v8, v8, [I

    .line 538
    .line 539
    invoke-virtual {v1, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 540
    .line 541
    .line 542
    aget v3, v8, v3

    .line 543
    .line 544
    sub-int/2addr v4, v3

    .line 545
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    .line 546
    .line 547
    .line 548
    move-result v3

    .line 549
    sub-int/2addr v4, v3

    .line 550
    invoke-virtual {v11, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 551
    .line 552
    .line 553
    aget v3, v8, v6

    .line 554
    .line 555
    sub-int/2addr v2, v3

    .line 556
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    .line 557
    .line 558
    .line 559
    move-result v3

    .line 560
    sub-int/2addr v2, v3

    .line 561
    invoke-virtual {v11, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 562
    .line 563
    .line 564
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    .line 565
    .line 566
    .line 567
    move-result-object v2

    .line 568
    invoke-virtual {v2, v11}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 569
    .line 570
    .line 571
    :cond_1b
    move-object/from16 v2, p0

    .line 572
    .line 573
    invoke-virtual {v2, v1, v11, v0}, Landroidx/transition/Visibility;->I(Landroid/view/ViewGroup;Landroid/view/View;Ly1/e0;)Landroid/animation/Animator;

    .line 574
    .line 575
    .line 576
    move-result-object v6

    .line 577
    if-nez v7, :cond_1f

    .line 578
    .line 579
    if-nez v6, :cond_1c

    .line 580
    .line 581
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    .line 582
    .line 583
    .line 584
    move-result-object v0

    .line 585
    invoke-virtual {v0, v11}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 586
    .line 587
    .line 588
    goto :goto_12

    .line 589
    :cond_1c
    const v0, 0x7f0b0388

    .line 590
    .line 591
    .line 592
    invoke-virtual {v5, v0, v11}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 593
    .line 594
    .line 595
    new-instance v0, Ly1/l0;

    .line 596
    .line 597
    invoke-direct {v0, v2, v1, v11, v5}, Ly1/l0;-><init>(Landroidx/transition/Visibility;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)V

    .line 598
    .line 599
    .line 600
    invoke-virtual {v2, v0}, Landroidx/transition/Transition;->a(Ly1/y;)V

    .line 601
    .line 602
    .line 603
    goto :goto_12

    .line 604
    :cond_1d
    move-object/from16 v2, p0

    .line 605
    .line 606
    move-object/from16 v0, p2

    .line 607
    .line 608
    if-eqz v6, :cond_6

    .line 609
    .line 610
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 611
    .line 612
    .line 613
    move-result v3

    .line 614
    const/4 v4, 0x0

    .line 615
    invoke-static {v4, v6}, Ly1/g0;->c(ILandroid/view/View;)V

    .line 616
    .line 617
    .line 618
    invoke-virtual {v2, v1, v6, v0}, Landroidx/transition/Visibility;->I(Landroid/view/ViewGroup;Landroid/view/View;Ly1/e0;)Landroid/animation/Animator;

    .line 619
    .line 620
    .line 621
    move-result-object v0

    .line 622
    if-eqz v0, :cond_1e

    .line 623
    .line 624
    new-instance v1, Ly1/m0;

    .line 625
    .line 626
    move/from16 v3, v19

    .line 627
    .line 628
    invoke-direct {v1, v6, v3}, Ly1/m0;-><init>(Landroid/view/View;I)V

    .line 629
    .line 630
    .line 631
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 632
    .line 633
    .line 634
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    .line 635
    .line 636
    .line 637
    invoke-virtual {v2, v1}, Landroidx/transition/Transition;->a(Ly1/y;)V

    .line 638
    .line 639
    .line 640
    goto :goto_11

    .line 641
    :cond_1e
    invoke-static {v3, v6}, Ly1/g0;->c(ILandroid/view/View;)V

    .line 642
    .line 643
    .line 644
    :goto_11
    move-object v6, v0

    .line 645
    :cond_1f
    :goto_12
    return-object v6

    .line 646
    :goto_13
    return-object v0
.end method

.method public final o()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroidx/transition/Visibility;->y:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final q(Ly1/e0;Ly1/e0;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    if-eqz p1, :cond_1

    .line 8
    .line 9
    if-eqz p2, :cond_1

    .line 10
    .line 11
    iget-object v1, p2, Ly1/e0;->a:Ljava/util/HashMap;

    .line 12
    .line 13
    const-string v2, "android:visibility:visibility"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iget-object v3, p1, Ly1/e0;->a:Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eq v1, v2, :cond_1

    .line 26
    .line 27
    return v0

    .line 28
    :cond_1
    invoke-static {p1, p2}, Landroidx/transition/Visibility;->G(Ly1/e0;Ly1/e0;)Ly1/n0;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-boolean p2, p1, Ly1/n0;->a:Z

    .line 33
    .line 34
    if-eqz p2, :cond_3

    .line 35
    .line 36
    iget p2, p1, Ly1/n0;->c:I

    .line 37
    .line 38
    if-eqz p2, :cond_2

    .line 39
    .line 40
    iget p1, p1, Ly1/n0;->d:I

    .line 41
    .line 42
    if-nez p1, :cond_3

    .line 43
    .line 44
    :cond_2
    const/4 v0, 0x1

    .line 45
    :cond_3
    return v0
.end method
