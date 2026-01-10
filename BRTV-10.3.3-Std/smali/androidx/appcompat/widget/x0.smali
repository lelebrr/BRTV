.class public final Landroidx/appcompat/widget/x0;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public final a:Landroid/widget/TextView;

.field public b:Landroidx/appcompat/widget/l3;

.field public c:Landroidx/appcompat/widget/l3;

.field public d:Landroidx/appcompat/widget/l3;

.field public e:Landroidx/appcompat/widget/l3;

.field public f:Landroidx/appcompat/widget/l3;

.field public g:Landroidx/appcompat/widget/l3;

.field public h:Landroidx/appcompat/widget/l3;

.field public final i:Landroidx/appcompat/widget/g1;

.field public j:I

.field public k:I

.field public l:Landroid/graphics/Typeface;

.field public m:Z


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/appcompat/widget/x0;->j:I

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Landroidx/appcompat/widget/x0;->k:I

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/appcompat/widget/x0;->a:Landroid/widget/TextView;

    .line 11
    .line 12
    new-instance v0, Landroidx/appcompat/widget/g1;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Landroidx/appcompat/widget/g1;-><init>(Landroid/widget/TextView;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Landroidx/appcompat/widget/x0;->i:Landroidx/appcompat/widget/g1;

    .line 18
    .line 19
    return-void
.end method

.method public static c(Landroid/content/Context;Landroidx/appcompat/widget/w;I)Landroidx/appcompat/widget/l3;
    .locals 1

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p1, Landroidx/appcompat/widget/w;->a:Landroidx/appcompat/widget/l2;

    .line 3
    .line 4
    invoke-virtual {v0, p0, p2}, Landroidx/appcompat/widget/l2;->i(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 5
    .line 6
    .line 7
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p1

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    new-instance p1, Landroidx/appcompat/widget/l3;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 p2, 0x1

    .line 17
    iput-boolean p2, p1, Landroidx/appcompat/widget/l3;->d:Z

    .line 18
    .line 19
    iput-object p0, p1, Landroidx/appcompat/widget/l3;->a:Landroid/content/res/ColorStateList;

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return-object p0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw p0
.end method

.method public static h(Landroid/view/inputmethod/EditorInfo;Landroid/view/inputmethod/InputConnection;Landroid/widget/TextView;)V
    .locals 11

    .line 1
    const/16 v0, 0x800

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v4, 0x1e

    .line 8
    .line 9
    if-ge v3, v4, :cond_d

    .line 10
    .line 11
    if-eqz p1, :cond_d

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-lt v3, v4, :cond_0

    .line 18
    .line 19
    invoke-static {p0, p1}, Ls0/b;->a(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    goto/16 :goto_6

    .line 23
    .line 24
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    if-lt v3, v4, :cond_1

    .line 28
    .line 29
    invoke-static {p0, p1}, Ls0/b;->a(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    goto/16 :goto_6

    .line 33
    .line 34
    :cond_1
    iget p2, p0, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 35
    .line 36
    iget v3, p0, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 37
    .line 38
    if-le p2, v3, :cond_2

    .line 39
    .line 40
    move v4, v3

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    move v4, p2

    .line 43
    :goto_0
    if-le p2, v3, :cond_3

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_3
    move p2, v3

    .line 47
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    const/4 v5, 0x0

    .line 52
    if-ltz v4, :cond_c

    .line 53
    .line 54
    if-le p2, v3, :cond_4

    .line 55
    .line 56
    goto/16 :goto_5

    .line 57
    .line 58
    :cond_4
    iget v6, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 59
    .line 60
    and-int/lit16 v6, v6, 0xfff

    .line 61
    .line 62
    const/16 v7, 0x81

    .line 63
    .line 64
    if-eq v6, v7, :cond_b

    .line 65
    .line 66
    const/16 v7, 0xe1

    .line 67
    .line 68
    if-eq v6, v7, :cond_b

    .line 69
    .line 70
    const/16 v7, 0x12

    .line 71
    .line 72
    if-ne v6, v7, :cond_5

    .line 73
    .line 74
    goto/16 :goto_4

    .line 75
    .line 76
    :cond_5
    if-gt v3, v0, :cond_6

    .line 77
    .line 78
    invoke-static {p0, p1, v4, p2}, Ls0/c;->a(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    .line 79
    .line 80
    .line 81
    goto/16 :goto_6

    .line 82
    .line 83
    :cond_6
    sub-int v3, p2, v4

    .line 84
    .line 85
    const/16 v5, 0x400

    .line 86
    .line 87
    if-le v3, v5, :cond_7

    .line 88
    .line 89
    const/4 v5, 0x0

    .line 90
    goto :goto_2

    .line 91
    :cond_7
    move v5, v3

    .line 92
    :goto_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    sub-int/2addr v6, p2

    .line 97
    sub-int/2addr v0, v5

    .line 98
    const-wide v7, 0x3fe999999999999aL    # 0.8

    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    int-to-double v9, v0

    .line 104
    mul-double v9, v9, v7

    .line 105
    .line 106
    double-to-int v7, v9

    .line 107
    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    .line 108
    .line 109
    .line 110
    move-result v7

    .line 111
    sub-int v7, v0, v7

    .line 112
    .line 113
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    sub-int/2addr v0, v6

    .line 118
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    sub-int/2addr v4, v0

    .line 123
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    .line 124
    .line 125
    .line 126
    move-result v7

    .line 127
    invoke-static {v7}, Ljava/lang/Character;->isLowSurrogate(C)Z

    .line 128
    .line 129
    .line 130
    move-result v7

    .line 131
    if-eqz v7, :cond_8

    .line 132
    .line 133
    add-int/2addr v4, v2

    .line 134
    sub-int/2addr v0, v2

    .line 135
    :cond_8
    add-int v7, p2, v6

    .line 136
    .line 137
    sub-int/2addr v7, v2

    .line 138
    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    .line 139
    .line 140
    .line 141
    move-result v7

    .line 142
    invoke-static {v7}, Ljava/lang/Character;->isHighSurrogate(C)Z

    .line 143
    .line 144
    .line 145
    move-result v7

    .line 146
    if-eqz v7, :cond_9

    .line 147
    .line 148
    sub-int/2addr v6, v2

    .line 149
    :cond_9
    add-int v7, v0, v5

    .line 150
    .line 151
    add-int v8, v7, v6

    .line 152
    .line 153
    if-eq v5, v3, :cond_a

    .line 154
    .line 155
    add-int v3, v4, v0

    .line 156
    .line 157
    invoke-interface {p1, v4, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    add-int/2addr v6, p2

    .line 162
    invoke-interface {p1, p2, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    const/4 p2, 0x2

    .line 167
    new-array p2, p2, [Ljava/lang/CharSequence;

    .line 168
    .line 169
    aput-object v3, p2, v1

    .line 170
    .line 171
    aput-object p1, p2, v2

    .line 172
    .line 173
    invoke-static {p2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    goto :goto_3

    .line 178
    :cond_a
    add-int/2addr v8, v4

    .line 179
    invoke-interface {p1, v4, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    :goto_3
    invoke-static {p0, p1, v0, v7}, Ls0/c;->a(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    .line 184
    .line 185
    .line 186
    goto :goto_6

    .line 187
    :cond_b
    :goto_4
    invoke-static {p0, v5, v1, v1}, Ls0/c;->a(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    .line 188
    .line 189
    .line 190
    goto :goto_6

    .line 191
    :cond_c
    :goto_5
    invoke-static {p0, v5, v1, v1}, Ls0/c;->a(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    .line 192
    .line 193
    .line 194
    :cond_d
    :goto_6
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/l3;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/x0;->a:Landroid/widget/TextView;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/w;->e(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/l3;[I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/x0;->b:Landroidx/appcompat/widget/l3;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object v3, p0, Landroidx/appcompat/widget/x0;->a:Landroid/widget/TextView;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/appcompat/widget/x0;->c:Landroidx/appcompat/widget/l3;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/appcompat/widget/x0;->d:Landroidx/appcompat/widget/l3;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/appcompat/widget/x0;->e:Landroidx/appcompat/widget/l3;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    :cond_0
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    aget-object v4, v0, v2

    .line 26
    .line 27
    iget-object v5, p0, Landroidx/appcompat/widget/x0;->b:Landroidx/appcompat/widget/l3;

    .line 28
    .line 29
    invoke-virtual {p0, v4, v5}, Landroidx/appcompat/widget/x0;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/l3;)V

    .line 30
    .line 31
    .line 32
    const/4 v4, 0x1

    .line 33
    aget-object v4, v0, v4

    .line 34
    .line 35
    iget-object v5, p0, Landroidx/appcompat/widget/x0;->c:Landroidx/appcompat/widget/l3;

    .line 36
    .line 37
    invoke-virtual {p0, v4, v5}, Landroidx/appcompat/widget/x0;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/l3;)V

    .line 38
    .line 39
    .line 40
    aget-object v4, v0, v1

    .line 41
    .line 42
    iget-object v5, p0, Landroidx/appcompat/widget/x0;->d:Landroidx/appcompat/widget/l3;

    .line 43
    .line 44
    invoke-virtual {p0, v4, v5}, Landroidx/appcompat/widget/x0;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/l3;)V

    .line 45
    .line 46
    .line 47
    const/4 v4, 0x3

    .line 48
    aget-object v0, v0, v4

    .line 49
    .line 50
    iget-object v4, p0, Landroidx/appcompat/widget/x0;->e:Landroidx/appcompat/widget/l3;

    .line 51
    .line 52
    invoke-virtual {p0, v0, v4}, Landroidx/appcompat/widget/x0;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/l3;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/x0;->f:Landroidx/appcompat/widget/l3;

    .line 56
    .line 57
    if-nez v0, :cond_2

    .line 58
    .line 59
    iget-object v0, p0, Landroidx/appcompat/widget/x0;->g:Landroidx/appcompat/widget/l3;

    .line 60
    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    :cond_2
    invoke-static {v3}, Landroidx/appcompat/widget/s0;->a(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    aget-object v2, v0, v2

    .line 68
    .line 69
    iget-object v3, p0, Landroidx/appcompat/widget/x0;->f:Landroidx/appcompat/widget/l3;

    .line 70
    .line 71
    invoke-virtual {p0, v2, v3}, Landroidx/appcompat/widget/x0;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/l3;)V

    .line 72
    .line 73
    .line 74
    aget-object v0, v0, v1

    .line 75
    .line 76
    iget-object v1, p0, Landroidx/appcompat/widget/x0;->g:Landroidx/appcompat/widget/l3;

    .line 77
    .line 78
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/x0;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/l3;)V

    .line 79
    .line 80
    .line 81
    :cond_3
    return-void
.end method

.method public final d()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/x0;->h:Landroidx/appcompat/widget/l3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/appcompat/widget/l3;->a:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return-object v0
.end method

.method public final e()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/x0;->h:Landroidx/appcompat/widget/l3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/appcompat/widget/l3;->b:Landroid/graphics/PorterDuff$Mode;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return-object v0
.end method

.method public final f(Landroid/util/AttributeSet;I)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move/from16 v9, p2

    .line 6
    .line 7
    iget-object v10, v0, Landroidx/appcompat/widget/x0;->a:Landroid/widget/TextView;

    .line 8
    .line 9
    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v11

    .line 13
    invoke-static {}, Landroidx/appcompat/widget/w;->a()Landroidx/appcompat/widget/w;

    .line 14
    .line 15
    .line 16
    move-result-object v12

    .line 17
    sget-object v3, Le/a;->i:[I

    .line 18
    .line 19
    invoke-static {v11, v8, v3, v9}, La1/b;->C(Landroid/content/Context;Landroid/util/AttributeSet;[II)La1/b;

    .line 20
    .line 21
    .line 22
    move-result-object v13

    .line 23
    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const/4 v7, 0x0

    .line 28
    iget-object v1, v13, La1/b;->c:Ljava/lang/Object;

    .line 29
    .line 30
    move-object v5, v1

    .line 31
    check-cast v5, Landroid/content/res/TypedArray;

    .line 32
    .line 33
    move-object v1, v10

    .line 34
    move-object/from16 v4, p1

    .line 35
    .line 36
    move/from16 v6, p2

    .line 37
    .line 38
    invoke-static/range {v1 .. v7}, Ln0/s0;->p(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 39
    .line 40
    .line 41
    iget-object v1, v13, La1/b;->c:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v1, Landroid/content/res/TypedArray;

    .line 44
    .line 45
    const/4 v14, 0x0

    .line 46
    const/4 v15, -0x1

    .line 47
    invoke-virtual {v1, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    const/4 v7, 0x3

    .line 52
    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_0

    .line 57
    .line 58
    invoke-virtual {v1, v7, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    invoke-static {v11, v12, v3}, Landroidx/appcompat/widget/x0;->c(Landroid/content/Context;Landroidx/appcompat/widget/w;I)Landroidx/appcompat/widget/l3;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    iput-object v3, v0, Landroidx/appcompat/widget/x0;->b:Landroidx/appcompat/widget/l3;

    .line 67
    .line 68
    :cond_0
    const/4 v6, 0x1

    .line 69
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    if-eqz v3, :cond_1

    .line 74
    .line 75
    invoke-virtual {v1, v6, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    invoke-static {v11, v12, v3}, Landroidx/appcompat/widget/x0;->c(Landroid/content/Context;Landroidx/appcompat/widget/w;I)Landroidx/appcompat/widget/l3;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    iput-object v3, v0, Landroidx/appcompat/widget/x0;->c:Landroidx/appcompat/widget/l3;

    .line 84
    .line 85
    :cond_1
    const/4 v5, 0x4

    .line 86
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-eqz v3, :cond_2

    .line 91
    .line 92
    invoke-virtual {v1, v5, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    invoke-static {v11, v12, v3}, Landroidx/appcompat/widget/x0;->c(Landroid/content/Context;Landroidx/appcompat/widget/w;I)Landroidx/appcompat/widget/l3;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    iput-object v3, v0, Landroidx/appcompat/widget/x0;->d:Landroidx/appcompat/widget/l3;

    .line 101
    .line 102
    :cond_2
    const/4 v4, 0x2

    .line 103
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-eqz v3, :cond_3

    .line 108
    .line 109
    invoke-virtual {v1, v4, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    invoke-static {v11, v12, v3}, Landroidx/appcompat/widget/x0;->c(Landroid/content/Context;Landroidx/appcompat/widget/w;I)Landroidx/appcompat/widget/l3;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    iput-object v3, v0, Landroidx/appcompat/widget/x0;->e:Landroidx/appcompat/widget/l3;

    .line 118
    .line 119
    :cond_3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 120
    .line 121
    const/4 v5, 0x5

    .line 122
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 123
    .line 124
    .line 125
    move-result v17

    .line 126
    if-eqz v17, :cond_4

    .line 127
    .line 128
    invoke-virtual {v1, v5, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    invoke-static {v11, v12, v4}, Landroidx/appcompat/widget/x0;->c(Landroid/content/Context;Landroidx/appcompat/widget/w;I)Landroidx/appcompat/widget/l3;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    iput-object v4, v0, Landroidx/appcompat/widget/x0;->f:Landroidx/appcompat/widget/l3;

    .line 137
    .line 138
    :cond_4
    const/4 v4, 0x6

    .line 139
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 140
    .line 141
    .line 142
    move-result v18

    .line 143
    if-eqz v18, :cond_5

    .line 144
    .line 145
    invoke-virtual {v1, v4, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    invoke-static {v11, v12, v1}, Landroidx/appcompat/widget/x0;->c(Landroid/content/Context;Landroidx/appcompat/widget/w;I)Landroidx/appcompat/widget/l3;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    iput-object v1, v0, Landroidx/appcompat/widget/x0;->g:Landroidx/appcompat/widget/l3;

    .line 154
    .line 155
    :cond_5
    invoke-virtual {v13}, La1/b;->F()V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v10}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    instance-of v1, v1, Landroid/text/method/PasswordTransformationMethod;

    .line 163
    .line 164
    sget-object v13, Le/a;->y:[I

    .line 165
    .line 166
    const/16 v5, 0x17

    .line 167
    .line 168
    const/16 v6, 0xe

    .line 169
    .line 170
    const/16 v4, 0xf

    .line 171
    .line 172
    if-eq v2, v15, :cond_d

    .line 173
    .line 174
    new-instance v15, La1/b;

    .line 175
    .line 176
    invoke-virtual {v11, v2, v13}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    invoke-direct {v15, v11, v2}, La1/b;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 181
    .line 182
    .line 183
    if-nez v1, :cond_6

    .line 184
    .line 185
    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 186
    .line 187
    .line 188
    move-result v21

    .line 189
    if-eqz v21, :cond_6

    .line 190
    .line 191
    invoke-virtual {v2, v6, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 192
    .line 193
    .line 194
    move-result v21

    .line 195
    const/16 v22, 0x1

    .line 196
    .line 197
    goto :goto_0

    .line 198
    :cond_6
    const/16 v21, 0x0

    .line 199
    .line 200
    const/16 v22, 0x0

    .line 201
    .line 202
    :goto_0
    invoke-virtual {v0, v11, v15}, Landroidx/appcompat/widget/x0;->n(Landroid/content/Context;La1/b;)V

    .line 203
    .line 204
    .line 205
    if-ge v3, v5, :cond_a

    .line 206
    .line 207
    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 208
    .line 209
    .line 210
    move-result v23

    .line 211
    if-eqz v23, :cond_7

    .line 212
    .line 213
    invoke-virtual {v15, v7}, La1/b;->s(I)Landroid/content/res/ColorStateList;

    .line 214
    .line 215
    .line 216
    move-result-object v23

    .line 217
    const/4 v7, 0x4

    .line 218
    goto :goto_1

    .line 219
    :cond_7
    const/4 v7, 0x4

    .line 220
    const/16 v23, 0x0

    .line 221
    .line 222
    :goto_1
    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 223
    .line 224
    .line 225
    move-result v16

    .line 226
    if-eqz v16, :cond_8

    .line 227
    .line 228
    invoke-virtual {v15, v7}, La1/b;->s(I)Landroid/content/res/ColorStateList;

    .line 229
    .line 230
    .line 231
    move-result-object v24

    .line 232
    const/4 v7, 0x5

    .line 233
    goto :goto_2

    .line 234
    :cond_8
    const/4 v7, 0x5

    .line 235
    const/16 v24, 0x0

    .line 236
    .line 237
    :goto_2
    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 238
    .line 239
    .line 240
    move-result v18

    .line 241
    if-eqz v18, :cond_9

    .line 242
    .line 243
    invoke-virtual {v15, v7}, La1/b;->s(I)Landroid/content/res/ColorStateList;

    .line 244
    .line 245
    .line 246
    move-result-object v25

    .line 247
    goto :goto_4

    .line 248
    :cond_9
    :goto_3
    const/16 v25, 0x0

    .line 249
    .line 250
    goto :goto_4

    .line 251
    :cond_a
    const/16 v23, 0x0

    .line 252
    .line 253
    const/16 v24, 0x0

    .line 254
    .line 255
    goto :goto_3

    .line 256
    :goto_4
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 257
    .line 258
    .line 259
    move-result v7

    .line 260
    if-eqz v7, :cond_b

    .line 261
    .line 262
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v7

    .line 266
    const/16 v4, 0x1a

    .line 267
    .line 268
    goto :goto_5

    .line 269
    :cond_b
    const/16 v4, 0x1a

    .line 270
    .line 271
    const/4 v7, 0x0

    .line 272
    :goto_5
    if-lt v3, v4, :cond_c

    .line 273
    .line 274
    const/16 v4, 0xd

    .line 275
    .line 276
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 277
    .line 278
    .line 279
    move-result v20

    .line 280
    if-eqz v20, :cond_c

    .line 281
    .line 282
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v2

    .line 286
    goto :goto_6

    .line 287
    :cond_c
    const/4 v2, 0x0

    .line 288
    :goto_6
    invoke-virtual {v15}, La1/b;->F()V

    .line 289
    .line 290
    .line 291
    goto :goto_7

    .line 292
    :cond_d
    const/4 v2, 0x0

    .line 293
    const/4 v7, 0x0

    .line 294
    const/16 v21, 0x0

    .line 295
    .line 296
    const/16 v22, 0x0

    .line 297
    .line 298
    const/16 v23, 0x0

    .line 299
    .line 300
    const/16 v24, 0x0

    .line 301
    .line 302
    const/16 v25, 0x0

    .line 303
    .line 304
    :goto_7
    new-instance v4, La1/b;

    .line 305
    .line 306
    invoke-virtual {v11, v8, v13, v9, v14}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 307
    .line 308
    .line 309
    move-result-object v13

    .line 310
    invoke-direct {v4, v11, v13}, La1/b;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 311
    .line 312
    .line 313
    if-nez v1, :cond_e

    .line 314
    .line 315
    invoke-virtual {v13, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 316
    .line 317
    .line 318
    move-result v15

    .line 319
    if-eqz v15, :cond_e

    .line 320
    .line 321
    invoke-virtual {v13, v6, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 322
    .line 323
    .line 324
    move-result v21

    .line 325
    move/from16 v6, v21

    .line 326
    .line 327
    const/16 v22, 0x1

    .line 328
    .line 329
    goto :goto_8

    .line 330
    :cond_e
    move/from16 v6, v21

    .line 331
    .line 332
    :goto_8
    if-ge v3, v5, :cond_11

    .line 333
    .line 334
    const/4 v15, 0x3

    .line 335
    invoke-virtual {v13, v15}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 336
    .line 337
    .line 338
    move-result v5

    .line 339
    if-eqz v5, :cond_f

    .line 340
    .line 341
    invoke-virtual {v4, v15}, La1/b;->s(I)Landroid/content/res/ColorStateList;

    .line 342
    .line 343
    .line 344
    move-result-object v23

    .line 345
    :cond_f
    const/4 v5, 0x4

    .line 346
    invoke-virtual {v13, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 347
    .line 348
    .line 349
    move-result v16

    .line 350
    if-eqz v16, :cond_10

    .line 351
    .line 352
    invoke-virtual {v4, v5}, La1/b;->s(I)Landroid/content/res/ColorStateList;

    .line 353
    .line 354
    .line 355
    move-result-object v24

    .line 356
    :cond_10
    const/4 v5, 0x5

    .line 357
    invoke-virtual {v13, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 358
    .line 359
    .line 360
    move-result v18

    .line 361
    if-eqz v18, :cond_11

    .line 362
    .line 363
    invoke-virtual {v4, v5}, La1/b;->s(I)Landroid/content/res/ColorStateList;

    .line 364
    .line 365
    .line 366
    move-result-object v25

    .line 367
    :cond_11
    move-object/from16 v5, v23

    .line 368
    .line 369
    move-object/from16 v15, v24

    .line 370
    .line 371
    move-object/from16 v26, v25

    .line 372
    .line 373
    const/16 v14, 0xf

    .line 374
    .line 375
    invoke-virtual {v13, v14}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 376
    .line 377
    .line 378
    move-result v23

    .line 379
    if-eqz v23, :cond_12

    .line 380
    .line 381
    invoke-virtual {v13, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v7

    .line 385
    :cond_12
    const/16 v14, 0x1a

    .line 386
    .line 387
    if-lt v3, v14, :cond_13

    .line 388
    .line 389
    const/16 v14, 0xd

    .line 390
    .line 391
    invoke-virtual {v13, v14}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 392
    .line 393
    .line 394
    move-result v19

    .line 395
    if-eqz v19, :cond_14

    .line 396
    .line 397
    invoke-virtual {v13, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v2

    .line 401
    goto :goto_9

    .line 402
    :cond_13
    const/16 v14, 0xd

    .line 403
    .line 404
    :cond_14
    :goto_9
    const/16 v14, 0x1c

    .line 405
    .line 406
    if-lt v3, v14, :cond_15

    .line 407
    .line 408
    const/4 v14, 0x0

    .line 409
    invoke-virtual {v13, v14}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 410
    .line 411
    .line 412
    move-result v19

    .line 413
    if-eqz v19, :cond_15

    .line 414
    .line 415
    move-object/from16 v19, v12

    .line 416
    .line 417
    const/4 v12, -0x1

    .line 418
    invoke-virtual {v13, v14, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 419
    .line 420
    .line 421
    move-result v13

    .line 422
    if-nez v13, :cond_16

    .line 423
    .line 424
    const/4 v12, 0x0

    .line 425
    invoke-virtual {v10, v14, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 426
    .line 427
    .line 428
    goto :goto_a

    .line 429
    :cond_15
    move-object/from16 v19, v12

    .line 430
    .line 431
    :cond_16
    :goto_a
    invoke-virtual {v0, v11, v4}, Landroidx/appcompat/widget/x0;->n(Landroid/content/Context;La1/b;)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v4}, La1/b;->F()V

    .line 435
    .line 436
    .line 437
    if-eqz v5, :cond_17

    .line 438
    .line 439
    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 440
    .line 441
    .line 442
    :cond_17
    if-eqz v15, :cond_18

    .line 443
    .line 444
    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 445
    .line 446
    .line 447
    :cond_18
    move-object/from16 v4, v26

    .line 448
    .line 449
    if-eqz v4, :cond_19

    .line 450
    .line 451
    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 452
    .line 453
    .line 454
    :cond_19
    if-nez v1, :cond_1a

    .line 455
    .line 456
    if-eqz v22, :cond_1a

    .line 457
    .line 458
    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 459
    .line 460
    .line 461
    :cond_1a
    iget-object v1, v0, Landroidx/appcompat/widget/x0;->l:Landroid/graphics/Typeface;

    .line 462
    .line 463
    if-eqz v1, :cond_1c

    .line 464
    .line 465
    iget v4, v0, Landroidx/appcompat/widget/x0;->k:I

    .line 466
    .line 467
    const/4 v5, -0x1

    .line 468
    if-ne v4, v5, :cond_1b

    .line 469
    .line 470
    iget v4, v0, Landroidx/appcompat/widget/x0;->j:I

    .line 471
    .line 472
    invoke-virtual {v10, v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 473
    .line 474
    .line 475
    goto :goto_b

    .line 476
    :cond_1b
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 477
    .line 478
    .line 479
    :cond_1c
    :goto_b
    if-eqz v2, :cond_1d

    .line 480
    .line 481
    invoke-static {v10, v2}, Landroidx/appcompat/widget/v0;->d(Landroid/widget/TextView;Ljava/lang/String;)Z

    .line 482
    .line 483
    .line 484
    :cond_1d
    const/16 v12, 0x18

    .line 485
    .line 486
    if-eqz v7, :cond_1e

    .line 487
    .line 488
    if-lt v3, v12, :cond_1f

    .line 489
    .line 490
    invoke-static {v7}, Landroidx/appcompat/widget/u0;->a(Ljava/lang/String;)Landroid/os/LocaleList;

    .line 491
    .line 492
    .line 493
    move-result-object v1

    .line 494
    invoke-static {v10, v1}, Landroidx/appcompat/widget/u0;->b(Landroid/widget/TextView;Landroid/os/LocaleList;)V

    .line 495
    .line 496
    .line 497
    :cond_1e
    const/4 v2, 0x0

    .line 498
    goto :goto_c

    .line 499
    :cond_1f
    const-string v1, ","

    .line 500
    .line 501
    invoke-virtual {v7, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v1

    .line 505
    const/4 v2, 0x0

    .line 506
    aget-object v1, v1, v2

    .line 507
    .line 508
    invoke-static {v1}, Landroidx/appcompat/widget/t0;->a(Ljava/lang/String;)Ljava/util/Locale;

    .line 509
    .line 510
    .line 511
    move-result-object v1

    .line 512
    invoke-static {v10, v1}, Landroidx/appcompat/widget/s0;->c(Landroid/widget/TextView;Ljava/util/Locale;)V

    .line 513
    .line 514
    .line 515
    :goto_c
    sget-object v13, Le/a;->j:[I

    .line 516
    .line 517
    iget-object v14, v0, Landroidx/appcompat/widget/x0;->i:Landroidx/appcompat/widget/g1;

    .line 518
    .line 519
    iget-object v15, v14, Landroidx/appcompat/widget/g1;->j:Landroid/content/Context;

    .line 520
    .line 521
    invoke-virtual {v15, v8, v13, v9, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 522
    .line 523
    .line 524
    move-result-object v7

    .line 525
    iget-object v1, v14, Landroidx/appcompat/widget/g1;->i:Landroid/widget/TextView;

    .line 526
    .line 527
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 528
    .line 529
    .line 530
    move-result-object v2

    .line 531
    const/16 v22, 0x0

    .line 532
    .line 533
    move-object v3, v13

    .line 534
    const/4 v5, 0x6

    .line 535
    const/4 v6, 0x2

    .line 536
    const/16 v12, 0xd

    .line 537
    .line 538
    move-object/from16 v4, p1

    .line 539
    .line 540
    const/4 v12, 0x5

    .line 541
    move-object v5, v7

    .line 542
    move/from16 v6, p2

    .line 543
    .line 544
    move-object v9, v7

    .line 545
    move/from16 v7, v22

    .line 546
    .line 547
    invoke-static/range {v1 .. v7}, Ln0/s0;->p(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 548
    .line 549
    .line 550
    invoke-virtual {v9, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 551
    .line 552
    .line 553
    move-result v1

    .line 554
    if-eqz v1, :cond_20

    .line 555
    .line 556
    const/4 v1, 0x0

    .line 557
    invoke-virtual {v9, v12, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 558
    .line 559
    .line 560
    move-result v2

    .line 561
    iput v2, v14, Landroidx/appcompat/widget/g1;->a:I

    .line 562
    .line 563
    :cond_20
    const/4 v1, 0x4

    .line 564
    invoke-virtual {v9, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 565
    .line 566
    .line 567
    move-result v2

    .line 568
    const/high16 v3, -0x40800000    # -1.0f

    .line 569
    .line 570
    if-eqz v2, :cond_21

    .line 571
    .line 572
    invoke-virtual {v9, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 573
    .line 574
    .line 575
    move-result v1

    .line 576
    :goto_d
    const/4 v2, 0x2

    .line 577
    goto :goto_e

    .line 578
    :cond_21
    const/high16 v1, -0x40800000    # -1.0f

    .line 579
    .line 580
    goto :goto_d

    .line 581
    :goto_e
    invoke-virtual {v9, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 582
    .line 583
    .line 584
    move-result v4

    .line 585
    if-eqz v4, :cond_22

    .line 586
    .line 587
    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 588
    .line 589
    .line 590
    move-result v4

    .line 591
    :goto_f
    const/4 v5, 0x1

    .line 592
    goto :goto_10

    .line 593
    :cond_22
    const/high16 v4, -0x40800000    # -1.0f

    .line 594
    .line 595
    goto :goto_f

    .line 596
    :goto_10
    invoke-virtual {v9, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 597
    .line 598
    .line 599
    move-result v6

    .line 600
    if-eqz v6, :cond_23

    .line 601
    .line 602
    invoke-virtual {v9, v5, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 603
    .line 604
    .line 605
    move-result v6

    .line 606
    :goto_11
    const/4 v7, 0x3

    .line 607
    goto :goto_12

    .line 608
    :cond_23
    const/high16 v6, -0x40800000    # -1.0f

    .line 609
    .line 610
    goto :goto_11

    .line 611
    :goto_12
    invoke-virtual {v9, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 612
    .line 613
    .line 614
    move-result v12

    .line 615
    if-eqz v12, :cond_26

    .line 616
    .line 617
    const/4 v12, 0x0

    .line 618
    invoke-virtual {v9, v7, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 619
    .line 620
    .line 621
    move-result v2

    .line 622
    if-lez v2, :cond_26

    .line 623
    .line 624
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    .line 625
    .line 626
    .line 627
    move-result-object v7

    .line 628
    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 629
    .line 630
    .line 631
    move-result-object v2

    .line 632
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    .line 633
    .line 634
    .line 635
    move-result v7

    .line 636
    new-array v12, v7, [I

    .line 637
    .line 638
    if-lez v7, :cond_25

    .line 639
    .line 640
    const/4 v3, 0x0

    .line 641
    :goto_13
    if-ge v3, v7, :cond_24

    .line 642
    .line 643
    const/4 v5, -0x1

    .line 644
    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 645
    .line 646
    .line 647
    move-result v16

    .line 648
    aput v16, v12, v3

    .line 649
    .line 650
    add-int/lit8 v3, v3, 0x1

    .line 651
    .line 652
    const/4 v5, 0x1

    .line 653
    goto :goto_13

    .line 654
    :cond_24
    invoke-static {v12}, Landroidx/appcompat/widget/g1;->b([I)[I

    .line 655
    .line 656
    .line 657
    move-result-object v3

    .line 658
    iput-object v3, v14, Landroidx/appcompat/widget/g1;->f:[I

    .line 659
    .line 660
    invoke-virtual {v14}, Landroidx/appcompat/widget/g1;->i()Z

    .line 661
    .line 662
    .line 663
    :cond_25
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 664
    .line 665
    .line 666
    :cond_26
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 667
    .line 668
    .line 669
    invoke-virtual {v14}, Landroidx/appcompat/widget/g1;->j()Z

    .line 670
    .line 671
    .line 672
    move-result v2

    .line 673
    const/high16 v3, 0x3f800000    # 1.0f

    .line 674
    .line 675
    if-eqz v2, :cond_2b

    .line 676
    .line 677
    iget v2, v14, Landroidx/appcompat/widget/g1;->a:I

    .line 678
    .line 679
    const/4 v5, 0x1

    .line 680
    if-ne v2, v5, :cond_2c

    .line 681
    .line 682
    iget-boolean v2, v14, Landroidx/appcompat/widget/g1;->g:Z

    .line 683
    .line 684
    if-nez v2, :cond_2a

    .line 685
    .line 686
    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 687
    .line 688
    .line 689
    move-result-object v2

    .line 690
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 691
    .line 692
    .line 693
    move-result-object v2

    .line 694
    const/high16 v5, -0x40800000    # -1.0f

    .line 695
    .line 696
    cmpl-float v7, v4, v5

    .line 697
    .line 698
    if-nez v7, :cond_27

    .line 699
    .line 700
    const/high16 v4, 0x41400000    # 12.0f

    .line 701
    .line 702
    const/4 v7, 0x2

    .line 703
    invoke-static {v7, v4, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 704
    .line 705
    .line 706
    move-result v4

    .line 707
    goto :goto_14

    .line 708
    :cond_27
    const/4 v7, 0x2

    .line 709
    :goto_14
    cmpl-float v9, v6, v5

    .line 710
    .line 711
    if-nez v9, :cond_28

    .line 712
    .line 713
    const/high16 v6, 0x42e00000    # 112.0f

    .line 714
    .line 715
    invoke-static {v7, v6, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 716
    .line 717
    .line 718
    move-result v6

    .line 719
    :cond_28
    cmpl-float v2, v1, v5

    .line 720
    .line 721
    if-nez v2, :cond_29

    .line 722
    .line 723
    const/high16 v1, 0x3f800000    # 1.0f

    .line 724
    .line 725
    :cond_29
    invoke-virtual {v14, v4, v6, v1}, Landroidx/appcompat/widget/g1;->k(FFF)V

    .line 726
    .line 727
    .line 728
    :cond_2a
    invoke-virtual {v14}, Landroidx/appcompat/widget/g1;->h()Z

    .line 729
    .line 730
    .line 731
    goto :goto_15

    .line 732
    :cond_2b
    const/4 v1, 0x0

    .line 733
    iput v1, v14, Landroidx/appcompat/widget/g1;->a:I

    .line 734
    .line 735
    :cond_2c
    :goto_15
    sget-boolean v1, Landroidx/appcompat/widget/c4;->b:Z

    .line 736
    .line 737
    if-eqz v1, :cond_2e

    .line 738
    .line 739
    iget v1, v14, Landroidx/appcompat/widget/g1;->a:I

    .line 740
    .line 741
    if-eqz v1, :cond_2e

    .line 742
    .line 743
    iget-object v1, v14, Landroidx/appcompat/widget/g1;->f:[I

    .line 744
    .line 745
    array-length v2, v1

    .line 746
    if-lez v2, :cond_2e

    .line 747
    .line 748
    invoke-static {v10}, Landroidx/appcompat/widget/v0;->a(Landroid/widget/TextView;)I

    .line 749
    .line 750
    .line 751
    move-result v2

    .line 752
    int-to-float v2, v2

    .line 753
    const/high16 v4, -0x40800000    # -1.0f

    .line 754
    .line 755
    cmpl-float v2, v2, v4

    .line 756
    .line 757
    if-eqz v2, :cond_2d

    .line 758
    .line 759
    iget v1, v14, Landroidx/appcompat/widget/g1;->d:F

    .line 760
    .line 761
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 762
    .line 763
    .line 764
    move-result v1

    .line 765
    iget v2, v14, Landroidx/appcompat/widget/g1;->e:F

    .line 766
    .line 767
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 768
    .line 769
    .line 770
    move-result v2

    .line 771
    iget v4, v14, Landroidx/appcompat/widget/g1;->c:F

    .line 772
    .line 773
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    .line 774
    .line 775
    .line 776
    move-result v4

    .line 777
    const/4 v5, 0x0

    .line 778
    invoke-static {v10, v1, v2, v4, v5}, Landroidx/appcompat/widget/v0;->b(Landroid/widget/TextView;IIII)V

    .line 779
    .line 780
    .line 781
    goto :goto_16

    .line 782
    :cond_2d
    const/4 v5, 0x0

    .line 783
    invoke-static {v10, v1, v5}, Landroidx/appcompat/widget/v0;->c(Landroid/widget/TextView;[II)V

    .line 784
    .line 785
    .line 786
    :cond_2e
    :goto_16
    invoke-virtual {v11, v8, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 787
    .line 788
    .line 789
    move-result-object v1

    .line 790
    const/16 v2, 0x8

    .line 791
    .line 792
    const/4 v4, -0x1

    .line 793
    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 794
    .line 795
    .line 796
    move-result v2

    .line 797
    move-object/from16 v5, v19

    .line 798
    .line 799
    if-eq v2, v4, :cond_2f

    .line 800
    .line 801
    invoke-virtual {v5, v11, v2}, Landroidx/appcompat/widget/w;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 802
    .line 803
    .line 804
    move-result-object v2

    .line 805
    :goto_17
    const/16 v6, 0xd

    .line 806
    .line 807
    goto :goto_18

    .line 808
    :cond_2f
    const/4 v2, 0x0

    .line 809
    goto :goto_17

    .line 810
    :goto_18
    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 811
    .line 812
    .line 813
    move-result v6

    .line 814
    if-eq v6, v4, :cond_30

    .line 815
    .line 816
    invoke-virtual {v5, v11, v6}, Landroidx/appcompat/widget/w;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 817
    .line 818
    .line 819
    move-result-object v6

    .line 820
    goto :goto_19

    .line 821
    :cond_30
    const/4 v6, 0x0

    .line 822
    :goto_19
    const/16 v7, 0x9

    .line 823
    .line 824
    invoke-virtual {v1, v7, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 825
    .line 826
    .line 827
    move-result v7

    .line 828
    if-eq v7, v4, :cond_31

    .line 829
    .line 830
    invoke-virtual {v5, v11, v7}, Landroidx/appcompat/widget/w;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 831
    .line 832
    .line 833
    move-result-object v7

    .line 834
    :goto_1a
    const/4 v8, 0x6

    .line 835
    goto :goto_1b

    .line 836
    :cond_31
    const/4 v7, 0x0

    .line 837
    goto :goto_1a

    .line 838
    :goto_1b
    invoke-virtual {v1, v8, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 839
    .line 840
    .line 841
    move-result v8

    .line 842
    if-eq v8, v4, :cond_32

    .line 843
    .line 844
    invoke-virtual {v5, v11, v8}, Landroidx/appcompat/widget/w;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 845
    .line 846
    .line 847
    move-result-object v8

    .line 848
    goto :goto_1c

    .line 849
    :cond_32
    const/4 v8, 0x0

    .line 850
    :goto_1c
    const/16 v9, 0xa

    .line 851
    .line 852
    invoke-virtual {v1, v9, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 853
    .line 854
    .line 855
    move-result v9

    .line 856
    if-eq v9, v4, :cond_33

    .line 857
    .line 858
    invoke-virtual {v5, v11, v9}, Landroidx/appcompat/widget/w;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 859
    .line 860
    .line 861
    move-result-object v9

    .line 862
    goto :goto_1d

    .line 863
    :cond_33
    const/4 v9, 0x0

    .line 864
    :goto_1d
    const/4 v12, 0x7

    .line 865
    invoke-virtual {v1, v12, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 866
    .line 867
    .line 868
    move-result v12

    .line 869
    if-eq v12, v4, :cond_34

    .line 870
    .line 871
    invoke-virtual {v5, v11, v12}, Landroidx/appcompat/widget/w;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 872
    .line 873
    .line 874
    move-result-object v5

    .line 875
    goto :goto_1e

    .line 876
    :cond_34
    const/4 v5, 0x0

    .line 877
    :goto_1e
    if-nez v9, :cond_3f

    .line 878
    .line 879
    if-eqz v5, :cond_35

    .line 880
    .line 881
    goto :goto_27

    .line 882
    :cond_35
    if-nez v2, :cond_36

    .line 883
    .line 884
    if-nez v6, :cond_36

    .line 885
    .line 886
    if-nez v7, :cond_36

    .line 887
    .line 888
    if-eqz v8, :cond_44

    .line 889
    .line 890
    :cond_36
    invoke-static {v10}, Landroidx/appcompat/widget/s0;->a(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    .line 891
    .line 892
    .line 893
    move-result-object v4

    .line 894
    const/4 v5, 0x0

    .line 895
    aget-object v9, v4, v5

    .line 896
    .line 897
    if-nez v9, :cond_3c

    .line 898
    .line 899
    const/4 v12, 0x2

    .line 900
    aget-object v13, v4, v12

    .line 901
    .line 902
    if-eqz v13, :cond_37

    .line 903
    .line 904
    goto :goto_23

    .line 905
    :cond_37
    invoke-virtual {v10}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 906
    .line 907
    .line 908
    move-result-object v4

    .line 909
    if-eqz v2, :cond_38

    .line 910
    .line 911
    goto :goto_1f

    .line 912
    :cond_38
    aget-object v2, v4, v5

    .line 913
    .line 914
    :goto_1f
    if-eqz v6, :cond_39

    .line 915
    .line 916
    goto :goto_20

    .line 917
    :cond_39
    const/4 v5, 0x1

    .line 918
    aget-object v6, v4, v5

    .line 919
    .line 920
    :goto_20
    if-eqz v7, :cond_3a

    .line 921
    .line 922
    goto :goto_21

    .line 923
    :cond_3a
    const/4 v5, 0x2

    .line 924
    aget-object v7, v4, v5

    .line 925
    .line 926
    :goto_21
    if-eqz v8, :cond_3b

    .line 927
    .line 928
    goto :goto_22

    .line 929
    :cond_3b
    const/4 v5, 0x3

    .line 930
    aget-object v8, v4, v5

    .line 931
    .line 932
    :goto_22
    invoke-virtual {v10, v2, v6, v7, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 933
    .line 934
    .line 935
    goto :goto_2c

    .line 936
    :cond_3c
    :goto_23
    if-eqz v6, :cond_3d

    .line 937
    .line 938
    :goto_24
    const/4 v2, 0x2

    .line 939
    goto :goto_25

    .line 940
    :cond_3d
    const/4 v2, 0x1

    .line 941
    aget-object v6, v4, v2

    .line 942
    .line 943
    goto :goto_24

    .line 944
    :goto_25
    aget-object v2, v4, v2

    .line 945
    .line 946
    if-eqz v8, :cond_3e

    .line 947
    .line 948
    goto :goto_26

    .line 949
    :cond_3e
    const/4 v5, 0x3

    .line 950
    aget-object v8, v4, v5

    .line 951
    .line 952
    :goto_26
    invoke-static {v10, v9, v6, v2, v8}, Landroidx/appcompat/widget/s0;->b(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 953
    .line 954
    .line 955
    goto :goto_2c

    .line 956
    :cond_3f
    :goto_27
    invoke-static {v10}, Landroidx/appcompat/widget/s0;->a(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    .line 957
    .line 958
    .line 959
    move-result-object v2

    .line 960
    if-eqz v9, :cond_40

    .line 961
    .line 962
    goto :goto_28

    .line 963
    :cond_40
    const/4 v4, 0x0

    .line 964
    aget-object v9, v2, v4

    .line 965
    .line 966
    :goto_28
    if-eqz v6, :cond_41

    .line 967
    .line 968
    goto :goto_29

    .line 969
    :cond_41
    const/4 v4, 0x1

    .line 970
    aget-object v6, v2, v4

    .line 971
    .line 972
    :goto_29
    if-eqz v5, :cond_42

    .line 973
    .line 974
    goto :goto_2a

    .line 975
    :cond_42
    const/4 v4, 0x2

    .line 976
    aget-object v5, v2, v4

    .line 977
    .line 978
    :goto_2a
    if-eqz v8, :cond_43

    .line 979
    .line 980
    goto :goto_2b

    .line 981
    :cond_43
    const/4 v4, 0x3

    .line 982
    aget-object v8, v2, v4

    .line 983
    .line 984
    :goto_2b
    invoke-static {v10, v9, v6, v5, v8}, Landroidx/appcompat/widget/s0;->b(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 985
    .line 986
    .line 987
    :cond_44
    :goto_2c
    const/16 v2, 0xb

    .line 988
    .line 989
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 990
    .line 991
    .line 992
    move-result v4

    .line 993
    if-eqz v4, :cond_47

    .line 994
    .line 995
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 996
    .line 997
    .line 998
    move-result v4

    .line 999
    if-eqz v4, :cond_45

    .line 1000
    .line 1001
    const/4 v4, 0x0

    .line 1002
    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 1003
    .line 1004
    .line 1005
    move-result v4

    .line 1006
    if-eqz v4, :cond_45

    .line 1007
    .line 1008
    invoke-static {v11, v4}, Lu7/d;->k(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v4

    .line 1012
    if-eqz v4, :cond_45

    .line 1013
    .line 1014
    goto :goto_2d

    .line 1015
    :cond_45
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v4

    .line 1019
    :goto_2d
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1020
    .line 1021
    const/16 v5, 0x18

    .line 1022
    .line 1023
    if-lt v2, v5, :cond_46

    .line 1024
    .line 1025
    invoke-static {v10, v4}, Landroidx/core/widget/n;->f(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    .line 1026
    .line 1027
    .line 1028
    goto :goto_2e

    .line 1029
    :cond_46
    instance-of v2, v10, Landroidx/core/widget/s;

    .line 1030
    .line 1031
    if-eqz v2, :cond_47

    .line 1032
    .line 1033
    move-object v2, v10

    .line 1034
    check-cast v2, Landroidx/core/widget/s;

    .line 1035
    .line 1036
    invoke-interface {v2, v4}, Landroidx/core/widget/s;->setSupportCompoundDrawablesTintList(Landroid/content/res/ColorStateList;)V

    .line 1037
    .line 1038
    .line 1039
    :cond_47
    :goto_2e
    const/16 v2, 0xc

    .line 1040
    .line 1041
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 1042
    .line 1043
    .line 1044
    move-result v4

    .line 1045
    if-eqz v4, :cond_4a

    .line 1046
    .line 1047
    const/4 v4, -0x1

    .line 1048
    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 1049
    .line 1050
    .line 1051
    move-result v2

    .line 1052
    const/4 v4, 0x0

    .line 1053
    invoke-static {v2, v4}, Landroidx/appcompat/widget/m1;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 1054
    .line 1055
    .line 1056
    move-result-object v2

    .line 1057
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1058
    .line 1059
    const/16 v6, 0x18

    .line 1060
    .line 1061
    if-lt v5, v6, :cond_48

    .line 1062
    .line 1063
    invoke-static {v10, v2}, Landroidx/core/widget/n;->g(Landroid/widget/TextView;Landroid/graphics/PorterDuff$Mode;)V

    .line 1064
    .line 1065
    .line 1066
    goto :goto_2f

    .line 1067
    :cond_48
    instance-of v5, v10, Landroidx/core/widget/s;

    .line 1068
    .line 1069
    if-eqz v5, :cond_49

    .line 1070
    .line 1071
    move-object v5, v10

    .line 1072
    check-cast v5, Landroidx/core/widget/s;

    .line 1073
    .line 1074
    invoke-interface {v5, v2}, Landroidx/core/widget/s;->setSupportCompoundDrawablesTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 1075
    .line 1076
    .line 1077
    :cond_49
    :goto_2f
    const/4 v2, -0x1

    .line 1078
    const/16 v5, 0xf

    .line 1079
    .line 1080
    goto :goto_30

    .line 1081
    :cond_4a
    const/4 v4, 0x0

    .line 1082
    goto :goto_2f

    .line 1083
    :goto_30
    invoke-virtual {v1, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1084
    .line 1085
    .line 1086
    move-result v5

    .line 1087
    const/16 v6, 0x12

    .line 1088
    .line 1089
    invoke-virtual {v1, v6, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1090
    .line 1091
    .line 1092
    move-result v6

    .line 1093
    const/16 v7, 0x13

    .line 1094
    .line 1095
    invoke-virtual {v1, v7, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1096
    .line 1097
    .line 1098
    move-result v7

    .line 1099
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1100
    .line 1101
    .line 1102
    if-eq v5, v2, :cond_4b

    .line 1103
    .line 1104
    invoke-static {v10, v5}, Ln5/d;->O(Landroid/widget/TextView;I)V

    .line 1105
    .line 1106
    .line 1107
    :cond_4b
    if-eq v6, v2, :cond_4c

    .line 1108
    .line 1109
    invoke-static {v10, v6}, Ln5/d;->P(Landroid/widget/TextView;I)V

    .line 1110
    .line 1111
    .line 1112
    :cond_4c
    if-eq v7, v2, :cond_4d

    .line 1113
    .line 1114
    invoke-static {v7}, La2/a;->o(I)V

    .line 1115
    .line 1116
    .line 1117
    invoke-virtual {v10}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 1118
    .line 1119
    .line 1120
    move-result-object v1

    .line 1121
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 1122
    .line 1123
    .line 1124
    move-result v1

    .line 1125
    if-eq v7, v1, :cond_4d

    .line 1126
    .line 1127
    sub-int/2addr v7, v1

    .line 1128
    int-to-float v1, v7

    .line 1129
    invoke-virtual {v10, v1, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 1130
    .line 1131
    .line 1132
    :cond_4d
    return-void
.end method

.method public final g(Landroid/content/Context;I)V
    .locals 6

    .line 1
    sget-object v0, Le/a;->y:[I

    .line 2
    .line 3
    new-instance v1, La1/b;

    .line 4
    .line 5
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-direct {v1, p1, p2}, La1/b;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 10
    .line 11
    .line 12
    const/16 v0, 0xe

    .line 13
    .line 14
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    iget-object v3, p0, Landroidx/appcompat/widget/x0;->a:Landroid/widget/TextView;

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {p2, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 28
    .line 29
    .line 30
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 31
    .line 32
    const/16 v2, 0x17

    .line 33
    .line 34
    if-ge v0, v2, :cond_3

    .line 35
    .line 36
    const/4 v2, 0x3

    .line 37
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-eqz v5, :cond_1

    .line 42
    .line 43
    invoke-virtual {v1, v2}, La1/b;->s(I)Landroid/content/res/ColorStateList;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    if-eqz v2, :cond_1

    .line 48
    .line 49
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    const/4 v2, 0x5

    .line 53
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-eqz v5, :cond_2

    .line 58
    .line 59
    invoke-virtual {v1, v2}, La1/b;->s(I)Landroid/content/res/ColorStateList;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    if-eqz v2, :cond_2

    .line 64
    .line 65
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 66
    .line 67
    .line 68
    :cond_2
    const/4 v2, 0x4

    .line 69
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-eqz v5, :cond_3

    .line 74
    .line 75
    invoke-virtual {v1, v2}, La1/b;->s(I)Landroid/content/res/ColorStateList;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    if-eqz v2, :cond_3

    .line 80
    .line 81
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 82
    .line 83
    .line 84
    :cond_3
    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_4

    .line 89
    .line 90
    const/4 v2, -0x1

    .line 91
    invoke-virtual {p2, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-nez v2, :cond_4

    .line 96
    .line 97
    const/4 v2, 0x0

    .line 98
    invoke-virtual {v3, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 99
    .line 100
    .line 101
    :cond_4
    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/widget/x0;->n(Landroid/content/Context;La1/b;)V

    .line 102
    .line 103
    .line 104
    const/16 p1, 0x1a

    .line 105
    .line 106
    if-lt v0, p1, :cond_5

    .line 107
    .line 108
    const/16 p1, 0xd

    .line 109
    .line 110
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_5

    .line 115
    .line 116
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    if-eqz p1, :cond_5

    .line 121
    .line 122
    invoke-static {v3, p1}, Landroidx/appcompat/widget/v0;->d(Landroid/widget/TextView;Ljava/lang/String;)Z

    .line 123
    .line 124
    .line 125
    :cond_5
    invoke-virtual {v1}, La1/b;->F()V

    .line 126
    .line 127
    .line 128
    iget-object p1, p0, Landroidx/appcompat/widget/x0;->l:Landroid/graphics/Typeface;

    .line 129
    .line 130
    if-eqz p1, :cond_6

    .line 131
    .line 132
    iget p2, p0, Landroidx/appcompat/widget/x0;->j:I

    .line 133
    .line 134
    invoke-virtual {v3, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 135
    .line 136
    .line 137
    :cond_6
    return-void
.end method

.method public final i(IIII)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/x0;->i:Landroidx/appcompat/widget/g1;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/widget/g1;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v1, v0, Landroidx/appcompat/widget/g1;->j:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    int-to-float p1, p1

    .line 20
    invoke-static {p4, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    int-to-float p2, p2

    .line 25
    invoke-static {p4, p2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    int-to-float p3, p3

    .line 30
    invoke-static {p4, p3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    invoke-virtual {v0, p1, p2, p3}, Landroidx/appcompat/widget/g1;->k(FFF)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Landroidx/appcompat/widget/g1;->h()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    invoke-virtual {v0}, Landroidx/appcompat/widget/g1;->a()V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method

.method public final j([II)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/x0;->i:Landroidx/appcompat/widget/g1;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/widget/g1;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_4

    .line 8
    .line 9
    array-length v1, p1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-lez v1, :cond_3

    .line 12
    .line 13
    new-array v3, v1, [I

    .line 14
    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    iget-object v4, v0, Landroidx/appcompat/widget/g1;->j:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    :goto_0
    if-ge v2, v1, :cond_1

    .line 33
    .line 34
    aget v5, p1, v2

    .line 35
    .line 36
    int-to-float v5, v5

    .line 37
    invoke-static {p2, v5, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    aput v5, v3, v2

    .line 46
    .line 47
    add-int/lit8 v2, v2, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    :goto_1
    invoke-static {v3}, Landroidx/appcompat/widget/g1;->b([I)[I

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    iput-object p2, v0, Landroidx/appcompat/widget/g1;->f:[I

    .line 55
    .line 56
    invoke-virtual {v0}, Landroidx/appcompat/widget/g1;->i()Z

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    if-eqz p2, :cond_2

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 64
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v1, "None of the preset sizes is valid: "

    .line 68
    .line 69
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p2

    .line 87
    :cond_3
    iput-boolean v2, v0, Landroidx/appcompat/widget/g1;->g:Z

    .line 88
    .line 89
    :goto_2
    invoke-virtual {v0}, Landroidx/appcompat/widget/g1;->h()Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_4

    .line 94
    .line 95
    invoke-virtual {v0}, Landroidx/appcompat/widget/g1;->a()V

    .line 96
    .line 97
    .line 98
    :cond_4
    return-void
.end method

.method public final k(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/x0;->i:Landroidx/appcompat/widget/g1;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/widget/g1;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne p1, v1, :cond_0

    .line 13
    .line 14
    iget-object p1, v0, Landroidx/appcompat/widget/g1;->j:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const/high16 v1, 0x41400000    # 12.0f

    .line 25
    .line 26
    const/4 v2, 0x2

    .line 27
    invoke-static {v2, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/high16 v3, 0x42e00000    # 112.0f

    .line 32
    .line 33
    invoke-static {v2, v3, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    const/high16 v2, 0x3f800000    # 1.0f

    .line 38
    .line 39
    invoke-virtual {v0, v1, p1, v2}, Landroidx/appcompat/widget/g1;->k(FFF)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Landroidx/appcompat/widget/g1;->h()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    invoke-virtual {v0}, Landroidx/appcompat/widget/g1;->a()V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 53
    .line 54
    const-string v1, "Unknown auto-size text type: "

    .line 55
    .line 56
    invoke-static {p1, v1}, La/e;->n(ILjava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw v0

    .line 64
    :cond_1
    const/4 p1, 0x0

    .line 65
    iput p1, v0, Landroidx/appcompat/widget/g1;->a:I

    .line 66
    .line 67
    const/high16 v1, -0x40800000    # -1.0f

    .line 68
    .line 69
    iput v1, v0, Landroidx/appcompat/widget/g1;->d:F

    .line 70
    .line 71
    iput v1, v0, Landroidx/appcompat/widget/g1;->e:F

    .line 72
    .line 73
    iput v1, v0, Landroidx/appcompat/widget/g1;->c:F

    .line 74
    .line 75
    new-array v1, p1, [I

    .line 76
    .line 77
    iput-object v1, v0, Landroidx/appcompat/widget/g1;->f:[I

    .line 78
    .line 79
    iput-boolean p1, v0, Landroidx/appcompat/widget/g1;->b:Z

    .line 80
    .line 81
    :cond_2
    :goto_0
    return-void
.end method

.method public final l(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/x0;->h:Landroidx/appcompat/widget/l3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/appcompat/widget/l3;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/appcompat/widget/x0;->h:Landroidx/appcompat/widget/l3;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/x0;->h:Landroidx/appcompat/widget/l3;

    .line 13
    .line 14
    iput-object p1, v0, Landroidx/appcompat/widget/l3;->a:Landroid/content/res/ColorStateList;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 p1, 0x0

    .line 21
    :goto_0
    iput-boolean p1, v0, Landroidx/appcompat/widget/l3;->d:Z

    .line 22
    .line 23
    iput-object v0, p0, Landroidx/appcompat/widget/x0;->b:Landroidx/appcompat/widget/l3;

    .line 24
    .line 25
    iput-object v0, p0, Landroidx/appcompat/widget/x0;->c:Landroidx/appcompat/widget/l3;

    .line 26
    .line 27
    iput-object v0, p0, Landroidx/appcompat/widget/x0;->d:Landroidx/appcompat/widget/l3;

    .line 28
    .line 29
    iput-object v0, p0, Landroidx/appcompat/widget/x0;->e:Landroidx/appcompat/widget/l3;

    .line 30
    .line 31
    iput-object v0, p0, Landroidx/appcompat/widget/x0;->f:Landroidx/appcompat/widget/l3;

    .line 32
    .line 33
    iput-object v0, p0, Landroidx/appcompat/widget/x0;->g:Landroidx/appcompat/widget/l3;

    .line 34
    .line 35
    return-void
.end method

.method public final m(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/x0;->h:Landroidx/appcompat/widget/l3;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/appcompat/widget/l3;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/appcompat/widget/x0;->h:Landroidx/appcompat/widget/l3;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/x0;->h:Landroidx/appcompat/widget/l3;

    .line 13
    .line 14
    iput-object p1, v0, Landroidx/appcompat/widget/l3;->b:Landroid/graphics/PorterDuff$Mode;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 p1, 0x0

    .line 21
    :goto_0
    iput-boolean p1, v0, Landroidx/appcompat/widget/l3;->c:Z

    .line 22
    .line 23
    iput-object v0, p0, Landroidx/appcompat/widget/x0;->b:Landroidx/appcompat/widget/l3;

    .line 24
    .line 25
    iput-object v0, p0, Landroidx/appcompat/widget/x0;->c:Landroidx/appcompat/widget/l3;

    .line 26
    .line 27
    iput-object v0, p0, Landroidx/appcompat/widget/x0;->d:Landroidx/appcompat/widget/l3;

    .line 28
    .line 29
    iput-object v0, p0, Landroidx/appcompat/widget/x0;->e:Landroidx/appcompat/widget/l3;

    .line 30
    .line 31
    iput-object v0, p0, Landroidx/appcompat/widget/x0;->f:Landroidx/appcompat/widget/l3;

    .line 32
    .line 33
    iput-object v0, p0, Landroidx/appcompat/widget/x0;->g:Landroidx/appcompat/widget/l3;

    .line 34
    .line 35
    return-void
.end method

.method public final n(Landroid/content/Context;La1/b;)V
    .locals 11

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/x0;->j:I

    .line 2
    .line 3
    iget-object v1, p2, La1/b;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Landroid/content/res/TypedArray;

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput v0, p0, Landroidx/appcompat/widget/x0;->j:I

    .line 13
    .line 14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 15
    .line 16
    const/16 v3, 0x1c

    .line 17
    .line 18
    const/4 v4, -0x1

    .line 19
    if-lt v0, v3, :cond_0

    .line 20
    .line 21
    const/16 v5, 0xb

    .line 22
    .line 23
    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    iput v5, p0, Landroidx/appcompat/widget/x0;->k:I

    .line 28
    .line 29
    if-eq v5, v4, :cond_0

    .line 30
    .line 31
    iget v5, p0, Landroidx/appcompat/widget/x0;->j:I

    .line 32
    .line 33
    and-int/2addr v5, v2

    .line 34
    iput v5, p0, Landroidx/appcompat/widget/x0;->j:I

    .line 35
    .line 36
    :cond_0
    const/16 v5, 0xa

    .line 37
    .line 38
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    const/16 v7, 0xc

    .line 43
    .line 44
    const/4 v8, 0x0

    .line 45
    const/4 v9, 0x1

    .line 46
    if-nez v6, :cond_6

    .line 47
    .line 48
    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    if-eqz v6, :cond_1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_5

    .line 60
    .line 61
    iput-boolean v8, p0, Landroidx/appcompat/widget/x0;->m:Z

    .line 62
    .line 63
    invoke-virtual {v1, v9, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eq p1, v9, :cond_4

    .line 68
    .line 69
    if-eq p1, v2, :cond_3

    .line 70
    .line 71
    const/4 p2, 0x3

    .line 72
    if-eq p1, p2, :cond_2

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 76
    .line 77
    iput-object p1, p0, Landroidx/appcompat/widget/x0;->l:Landroid/graphics/Typeface;

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 81
    .line 82
    iput-object p1, p0, Landroidx/appcompat/widget/x0;->l:Landroid/graphics/Typeface;

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_4
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 86
    .line 87
    iput-object p1, p0, Landroidx/appcompat/widget/x0;->l:Landroid/graphics/Typeface;

    .line 88
    .line 89
    :cond_5
    :goto_0
    return-void

    .line 90
    :cond_6
    :goto_1
    const/4 v6, 0x0

    .line 91
    iput-object v6, p0, Landroidx/appcompat/widget/x0;->l:Landroid/graphics/Typeface;

    .line 92
    .line 93
    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    if-eqz v6, :cond_7

    .line 98
    .line 99
    const/16 v5, 0xc

    .line 100
    .line 101
    :cond_7
    iget v6, p0, Landroidx/appcompat/widget/x0;->k:I

    .line 102
    .line 103
    iget v7, p0, Landroidx/appcompat/widget/x0;->j:I

    .line 104
    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-nez p1, :cond_c

    .line 110
    .line 111
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 112
    .line 113
    iget-object v10, p0, Landroidx/appcompat/widget/x0;->a:Landroid/widget/TextView;

    .line 114
    .line 115
    invoke-direct {p1, v10}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    new-instance v10, Landroidx/appcompat/widget/q0;

    .line 119
    .line 120
    invoke-direct {v10, p0, v6, v7, p1}, Landroidx/appcompat/widget/q0;-><init>(Landroidx/appcompat/widget/x0;IILjava/lang/ref/WeakReference;)V

    .line 121
    .line 122
    .line 123
    :try_start_0
    iget p1, p0, Landroidx/appcompat/widget/x0;->j:I

    .line 124
    .line 125
    invoke-virtual {p2, v5, p1, v10}, La1/b;->v(IILandroidx/appcompat/widget/q0;)Landroid/graphics/Typeface;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    if-eqz p1, :cond_a

    .line 130
    .line 131
    if-lt v0, v3, :cond_9

    .line 132
    .line 133
    iget p2, p0, Landroidx/appcompat/widget/x0;->k:I

    .line 134
    .line 135
    if-eq p2, v4, :cond_9

    .line 136
    .line 137
    invoke-static {p1, v8}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    iget p2, p0, Landroidx/appcompat/widget/x0;->k:I

    .line 142
    .line 143
    iget v0, p0, Landroidx/appcompat/widget/x0;->j:I

    .line 144
    .line 145
    and-int/2addr v0, v2

    .line 146
    if-eqz v0, :cond_8

    .line 147
    .line 148
    const/4 v0, 0x1

    .line 149
    goto :goto_2

    .line 150
    :cond_8
    const/4 v0, 0x0

    .line 151
    :goto_2
    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/w0;->a(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    iput-object p1, p0, Landroidx/appcompat/widget/x0;->l:Landroid/graphics/Typeface;

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :catch_0
    nop

    .line 159
    goto :goto_5

    .line 160
    :cond_9
    iput-object p1, p0, Landroidx/appcompat/widget/x0;->l:Landroid/graphics/Typeface;

    .line 161
    .line 162
    :cond_a
    :goto_3
    iget-object p1, p0, Landroidx/appcompat/widget/x0;->l:Landroid/graphics/Typeface;

    .line 163
    .line 164
    if-nez p1, :cond_b

    .line 165
    .line 166
    const/4 p1, 0x1

    .line 167
    goto :goto_4

    .line 168
    :cond_b
    const/4 p1, 0x0

    .line 169
    :goto_4
    iput-boolean p1, p0, Landroidx/appcompat/widget/x0;->m:Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .line 171
    :cond_c
    :goto_5
    iget-object p1, p0, Landroidx/appcompat/widget/x0;->l:Landroid/graphics/Typeface;

    .line 172
    .line 173
    if-nez p1, :cond_f

    .line 174
    .line 175
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    if-eqz p1, :cond_f

    .line 180
    .line 181
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 182
    .line 183
    if-lt p2, v3, :cond_e

    .line 184
    .line 185
    iget p2, p0, Landroidx/appcompat/widget/x0;->k:I

    .line 186
    .line 187
    if-eq p2, v4, :cond_e

    .line 188
    .line 189
    invoke-static {p1, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    iget p2, p0, Landroidx/appcompat/widget/x0;->k:I

    .line 194
    .line 195
    iget v0, p0, Landroidx/appcompat/widget/x0;->j:I

    .line 196
    .line 197
    and-int/2addr v0, v2

    .line 198
    if-eqz v0, :cond_d

    .line 199
    .line 200
    const/4 v8, 0x1

    .line 201
    :cond_d
    invoke-static {p1, p2, v8}, Landroidx/appcompat/widget/w0;->a(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    iput-object p1, p0, Landroidx/appcompat/widget/x0;->l:Landroid/graphics/Typeface;

    .line 206
    .line 207
    goto :goto_6

    .line 208
    :cond_e
    iget p2, p0, Landroidx/appcompat/widget/x0;->j:I

    .line 209
    .line 210
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    iput-object p1, p0, Landroidx/appcompat/widget/x0;->l:Landroid/graphics/Typeface;

    .line 215
    .line 216
    :cond_f
    :goto_6
    return-void
.end method
