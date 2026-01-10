.class public final Landroidx/leanback/widget/q;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroidx/leanback/widget/w0;


# instance fields
.field public final synthetic a:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/leanback/widget/q;->a:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;IIII)V
    .locals 7

    .line 1
    move-object v1, p1

    .line 2
    check-cast v1, Landroid/view/View;

    .line 3
    .line 4
    const/high16 p1, -0x80000000

    .line 5
    .line 6
    iget-object v0, p0, Landroidx/leanback/widget/q;->a:Ljava/lang/Object;

    .line 7
    .line 8
    move-object v6, v0

    .line 9
    check-cast v6, Landroidx/leanback/widget/GridLayoutManager;

    .line 10
    .line 11
    if-eq p5, p1, :cond_0

    .line 12
    .line 13
    const p1, 0x7fffffff

    .line 14
    .line 15
    .line 16
    if-ne p5, p1, :cond_2

    .line 17
    .line 18
    :cond_0
    iget-object p1, v6, Landroidx/leanback/widget/GridLayoutManager;->G:Landroidx/leanback/widget/p;

    .line 19
    .line 20
    iget-boolean p1, p1, Landroidx/leanback/widget/p;->c:Z

    .line 21
    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    iget-object p1, v6, Landroidx/leanback/widget/GridLayoutManager;->I:La0/f;

    .line 25
    .line 26
    iget-object p1, p1, La0/f;->d:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p1, Landroidx/leanback/widget/k1;

    .line 29
    .line 30
    iget p1, p1, Landroidx/leanback/widget/k1;->j:I

    .line 31
    .line 32
    move p5, p1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object p1, v6, Landroidx/leanback/widget/GridLayoutManager;->I:La0/f;

    .line 35
    .line 36
    iget-object p1, p1, La0/f;->d:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p1, Landroidx/leanback/widget/k1;

    .line 39
    .line 40
    iget p5, p1, Landroidx/leanback/widget/k1;->i:I

    .line 41
    .line 42
    iget p1, p1, Landroidx/leanback/widget/k1;->k:I

    .line 43
    .line 44
    sub-int/2addr p5, p1

    .line 45
    :cond_2
    :goto_0
    iget-object p1, v6, Landroidx/leanback/widget/GridLayoutManager;->G:Landroidx/leanback/widget/p;

    .line 46
    .line 47
    iget-boolean p1, p1, Landroidx/leanback/widget/p;->c:Z

    .line 48
    .line 49
    if-nez p1, :cond_3

    .line 50
    .line 51
    add-int/2addr p3, p5

    .line 52
    move v4, p3

    .line 53
    move v3, p5

    .line 54
    goto :goto_1

    .line 55
    :cond_3
    sub-int p1, p5, p3

    .line 56
    .line 57
    move v3, p1

    .line 58
    move v4, p5

    .line 59
    :goto_1
    invoke-virtual {v6, p4}, Landroidx/leanback/widget/GridLayoutManager;->m(I)I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    iget-object p3, v6, Landroidx/leanback/widget/GridLayoutManager;->I:La0/f;

    .line 64
    .line 65
    iget-object p3, p3, La0/f;->e:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast p3, Landroidx/leanback/widget/k1;

    .line 68
    .line 69
    iget p3, p3, Landroidx/leanback/widget/k1;->j:I

    .line 70
    .line 71
    add-int/2addr p1, p3

    .line 72
    iget p3, v6, Landroidx/leanback/widget/GridLayoutManager;->u:I

    .line 73
    .line 74
    sub-int v5, p1, p3

    .line 75
    .line 76
    iget-object p1, v6, Landroidx/leanback/widget/GridLayoutManager;->N:Landroidx/leanback/widget/j1;

    .line 77
    .line 78
    iget-object p3, p1, Landroidx/leanback/widget/j1;->c:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast p3, Lp/k;

    .line 81
    .line 82
    if-eqz p3, :cond_4

    .line 83
    .line 84
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    iget-object p1, p1, Landroidx/leanback/widget/j1;->c:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast p1, Lp/k;

    .line 91
    .line 92
    invoke-virtual {p1, p2}, Lp/k;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    check-cast p1, Landroid/util/SparseArray;

    .line 97
    .line 98
    if-eqz p1, :cond_4

    .line 99
    .line 100
    invoke-virtual {v1, p1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 101
    .line 102
    .line 103
    :cond_4
    iget-object p1, p0, Landroidx/leanback/widget/q;->a:Ljava/lang/Object;

    .line 104
    .line 105
    move-object v0, p1

    .line 106
    check-cast v0, Landroidx/leanback/widget/GridLayoutManager;

    .line 107
    .line 108
    move v2, p4

    .line 109
    invoke-virtual/range {v0 .. v5}, Landroidx/leanback/widget/GridLayoutManager;->t(Landroid/view/View;IIII)V

    .line 110
    .line 111
    .line 112
    iget-object p1, v6, Landroidx/leanback/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/l1;

    .line 113
    .line 114
    iget-boolean p1, p1, Landroidx/recyclerview/widget/l1;->g:Z

    .line 115
    .line 116
    if-nez p1, :cond_5

    .line 117
    .line 118
    invoke-virtual {v6}, Landroidx/leanback/widget/GridLayoutManager;->O()V

    .line 119
    .line 120
    .line 121
    :cond_5
    iget p1, v6, Landroidx/leanback/widget/GridLayoutManager;->n:I

    .line 122
    .line 123
    and-int/lit8 p1, p1, 0x3

    .line 124
    .line 125
    const/4 p2, 0x1

    .line 126
    if-eq p1, p2, :cond_9

    .line 127
    .line 128
    iget-object p1, v6, Landroidx/leanback/widget/GridLayoutManager;->r:Landroidx/leanback/widget/u;

    .line 129
    .line 130
    if-eqz p1, :cond_9

    .line 131
    .line 132
    iget-boolean p3, p1, Landroidx/leanback/widget/u;->c:Z

    .line 133
    .line 134
    iget-object p4, p1, Landroidx/leanback/widget/u;->e:Landroidx/leanback/widget/GridLayoutManager;

    .line 135
    .line 136
    if-eqz p3, :cond_6

    .line 137
    .line 138
    iget p3, p1, Landroidx/leanback/widget/u;->d:I

    .line 139
    .line 140
    if-eqz p3, :cond_6

    .line 141
    .line 142
    invoke-virtual {p4, p3, p2}, Landroidx/leanback/widget/GridLayoutManager;->z(IZ)I

    .line 143
    .line 144
    .line 145
    move-result p2

    .line 146
    iput p2, p1, Landroidx/leanback/widget/u;->d:I

    .line 147
    .line 148
    :cond_6
    iget p2, p1, Landroidx/leanback/widget/u;->d:I

    .line 149
    .line 150
    if-eqz p2, :cond_8

    .line 151
    .line 152
    if-lez p2, :cond_7

    .line 153
    .line 154
    invoke-virtual {p4}, Landroidx/leanback/widget/GridLayoutManager;->r()Z

    .line 155
    .line 156
    .line 157
    move-result p2

    .line 158
    if-nez p2, :cond_8

    .line 159
    .line 160
    :cond_7
    iget p2, p1, Landroidx/leanback/widget/u;->d:I

    .line 161
    .line 162
    if-gez p2, :cond_9

    .line 163
    .line 164
    invoke-virtual {p4}, Landroidx/leanback/widget/GridLayoutManager;->q()Z

    .line 165
    .line 166
    .line 167
    move-result p2

    .line 168
    if-eqz p2, :cond_9

    .line 169
    .line 170
    :cond_8
    iget p2, p4, Landroidx/leanback/widget/GridLayoutManager;->p:I

    .line 171
    .line 172
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/k1;->setTargetPosition(I)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1}, Landroidx/recyclerview/widget/k1;->stop()V

    .line 176
    .line 177
    .line 178
    :cond_9
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    return-void
.end method

.method public b(IZ[Ljava/lang/Object;Z)I
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/q;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/leanback/widget/GridLayoutManager;

    .line 4
    .line 5
    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->h:I

    .line 6
    .line 7
    sub-int v1, p1, v1

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/GridLayoutManager;->p(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Landroidx/leanback/widget/t;

    .line 18
    .line 19
    iget-object v2, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->a:Landroidx/recyclerview/widget/p1;

    .line 20
    .line 21
    invoke-virtual {v2}, Landroidx/recyclerview/widget/p1;->isRemoved()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const/4 v3, 0x0

    .line 26
    if-nez v2, :cond_11

    .line 27
    .line 28
    if-eqz p4, :cond_1

    .line 29
    .line 30
    if-eqz p2, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/x0;->addDisappearingView(Landroid/view/View;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {v0, v1, v3}, Landroidx/recyclerview/widget/x0;->addDisappearingView(Landroid/view/View;I)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    if-eqz p2, :cond_2

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/x0;->addView(Landroid/view/View;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {v0, v1, v3}, Landroidx/recyclerview/widget/x0;->addView(Landroid/view/View;I)V

    .line 47
    .line 48
    .line 49
    :goto_0
    iget p2, v0, Landroidx/leanback/widget/GridLayoutManager;->t:I

    .line 50
    .line 51
    const/4 p4, -0x1

    .line 52
    if-eq p2, p4, :cond_3

    .line 53
    .line 54
    invoke-virtual {v1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    :cond_3
    iget-object p2, v0, Landroidx/leanback/widget/GridLayoutManager;->r:Landroidx/leanback/widget/u;

    .line 58
    .line 59
    if-eqz p2, :cond_c

    .line 60
    .line 61
    iget-boolean p4, p2, Landroidx/leanback/widget/u;->c:Z

    .line 62
    .line 63
    if-nez p4, :cond_c

    .line 64
    .line 65
    iget p4, p2, Landroidx/leanback/widget/u;->d:I

    .line 66
    .line 67
    if-nez p4, :cond_4

    .line 68
    .line 69
    goto :goto_5

    .line 70
    :cond_4
    iget-object v2, p2, Landroidx/leanback/widget/u;->e:Landroidx/leanback/widget/GridLayoutManager;

    .line 71
    .line 72
    if-lez p4, :cond_5

    .line 73
    .line 74
    iget p4, v2, Landroidx/leanback/widget/GridLayoutManager;->p:I

    .line 75
    .line 76
    iget v4, v2, Landroidx/leanback/widget/GridLayoutManager;->E:I

    .line 77
    .line 78
    add-int/2addr p4, v4

    .line 79
    goto :goto_1

    .line 80
    :cond_5
    iget p4, v2, Landroidx/leanback/widget/GridLayoutManager;->p:I

    .line 81
    .line 82
    iget v4, v2, Landroidx/leanback/widget/GridLayoutManager;->E:I

    .line 83
    .line 84
    sub-int/2addr p4, v4

    .line 85
    :goto_1
    const/4 v4, 0x0

    .line 86
    :goto_2
    iget v5, p2, Landroidx/leanback/widget/u;->d:I

    .line 87
    .line 88
    if-eqz v5, :cond_b

    .line 89
    .line 90
    invoke-virtual {p2, p4}, Landroidx/recyclerview/widget/k1;->findViewByPosition(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    if-nez v5, :cond_6

    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    if-nez v6, :cond_9

    .line 105
    .line 106
    invoke-virtual {v2}, Landroidx/recyclerview/widget/x0;->hasFocus()Z

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    if-eqz v6, :cond_7

    .line 111
    .line 112
    invoke-virtual {v5}, Landroid/view/View;->hasFocusable()Z

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    if-eqz v6, :cond_9

    .line 117
    .line 118
    :cond_7
    iput p4, v2, Landroidx/leanback/widget/GridLayoutManager;->p:I

    .line 119
    .line 120
    iget v4, p2, Landroidx/leanback/widget/u;->d:I

    .line 121
    .line 122
    if-lez v4, :cond_8

    .line 123
    .line 124
    add-int/lit8 v4, v4, -0x1

    .line 125
    .line 126
    iput v4, p2, Landroidx/leanback/widget/u;->d:I

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_8
    add-int/lit8 v4, v4, 0x1

    .line 130
    .line 131
    iput v4, p2, Landroidx/leanback/widget/u;->d:I

    .line 132
    .line 133
    :goto_3
    move-object v4, v5

    .line 134
    :cond_9
    iget v5, p2, Landroidx/leanback/widget/u;->d:I

    .line 135
    .line 136
    if-lez v5, :cond_a

    .line 137
    .line 138
    iget v5, v2, Landroidx/leanback/widget/GridLayoutManager;->E:I

    .line 139
    .line 140
    add-int/2addr p4, v5

    .line 141
    goto :goto_2

    .line 142
    :cond_a
    iget v5, v2, Landroidx/leanback/widget/GridLayoutManager;->E:I

    .line 143
    .line 144
    sub-int/2addr p4, v5

    .line 145
    goto :goto_2

    .line 146
    :cond_b
    :goto_4
    if-eqz v4, :cond_c

    .line 147
    .line 148
    invoke-virtual {v2}, Landroidx/recyclerview/widget/x0;->hasFocus()Z

    .line 149
    .line 150
    .line 151
    move-result p2

    .line 152
    if-eqz p2, :cond_c

    .line 153
    .line 154
    iget p2, v2, Landroidx/leanback/widget/GridLayoutManager;->n:I

    .line 155
    .line 156
    or-int/lit8 p2, p2, 0x20

    .line 157
    .line 158
    iput p2, v2, Landroidx/leanback/widget/GridLayoutManager;->n:I

    .line 159
    .line 160
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 161
    .line 162
    .line 163
    iget p2, v2, Landroidx/leanback/widget/GridLayoutManager;->n:I

    .line 164
    .line 165
    and-int/lit8 p2, p2, -0x21

    .line 166
    .line 167
    iput p2, v2, Landroidx/leanback/widget/GridLayoutManager;->n:I

    .line 168
    .line 169
    :cond_c
    :goto_5
    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    if-nez p2, :cond_d

    .line 174
    .line 175
    goto :goto_6

    .line 176
    :cond_d
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    check-cast p2, Landroidx/leanback/widget/t;

    .line 181
    .line 182
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    .line 184
    .line 185
    :goto_6
    iget p2, v0, Landroidx/leanback/widget/GridLayoutManager;->n:I

    .line 186
    .line 187
    and-int/lit8 p4, p2, 0x3

    .line 188
    .line 189
    const/4 v2, 0x1

    .line 190
    if-eq p4, v2, :cond_e

    .line 191
    .line 192
    iget p2, v0, Landroidx/leanback/widget/GridLayoutManager;->p:I

    .line 193
    .line 194
    if-ne p1, p2, :cond_10

    .line 195
    .line 196
    iget-object p1, v0, Landroidx/leanback/widget/GridLayoutManager;->r:Landroidx/leanback/widget/u;

    .line 197
    .line 198
    if-nez p1, :cond_10

    .line 199
    .line 200
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->e()V

    .line 201
    .line 202
    .line 203
    goto :goto_7

    .line 204
    :cond_e
    and-int/lit8 p4, p2, 0x4

    .line 205
    .line 206
    if-nez p4, :cond_10

    .line 207
    .line 208
    and-int/lit8 p2, p2, 0x10

    .line 209
    .line 210
    if-nez p2, :cond_f

    .line 211
    .line 212
    iget p4, v0, Landroidx/leanback/widget/GridLayoutManager;->p:I

    .line 213
    .line 214
    if-ne p1, p4, :cond_f

    .line 215
    .line 216
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->e()V

    .line 217
    .line 218
    .line 219
    goto :goto_7

    .line 220
    :cond_f
    if-eqz p2, :cond_10

    .line 221
    .line 222
    iget p2, v0, Landroidx/leanback/widget/GridLayoutManager;->p:I

    .line 223
    .line 224
    if-lt p1, p2, :cond_10

    .line 225
    .line 226
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    .line 227
    .line 228
    .line 229
    move-result p2

    .line 230
    if-eqz p2, :cond_10

    .line 231
    .line 232
    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->p:I

    .line 233
    .line 234
    iget p1, v0, Landroidx/leanback/widget/GridLayoutManager;->n:I

    .line 235
    .line 236
    and-int/lit8 p1, p1, -0x11

    .line 237
    .line 238
    iput p1, v0, Landroidx/leanback/widget/GridLayoutManager;->n:I

    .line 239
    .line 240
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->e()V

    .line 241
    .line 242
    .line 243
    :cond_10
    :goto_7
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/GridLayoutManager;->v(Landroid/view/View;)V

    .line 244
    .line 245
    .line 246
    :cond_11
    aput-object v1, p3, v3

    .line 247
    .line 248
    iget p1, v0, Landroidx/leanback/widget/GridLayoutManager;->d:I

    .line 249
    .line 250
    if-nez p1, :cond_12

    .line 251
    .line 252
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/GridLayoutManager;->j(Landroid/view/View;)I

    .line 253
    .line 254
    .line 255
    move-result p1

    .line 256
    goto :goto_8

    .line 257
    :cond_12
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/GridLayoutManager;->i(Landroid/view/View;)I

    .line 258
    .line 259
    .line 260
    move-result p1

    .line 261
    :goto_8
    return p1
.end method

.method public c()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/q;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/leanback/widget/GridLayoutManager;

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->g:Landroidx/recyclerview/widget/l1;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/recyclerview/widget/l1;->b()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iget v0, v0, Landroidx/leanback/widget/GridLayoutManager;->h:I

    .line 12
    .line 13
    add-int/2addr v1, v0

    .line 14
    return v1
.end method

.method public d(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/q;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/leanback/widget/GridLayoutManager;

    .line 4
    .line 5
    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->h:I

    .line 6
    .line 7
    sub-int/2addr p1, v1

    .line 8
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/x0;->findViewByPosition(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->n:I

    .line 13
    .line 14
    const/high16 v2, 0x40000

    .line 15
    .line 16
    and-int/2addr v1, v2

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v0, v0, Landroidx/leanback/widget/GridLayoutManager;->e:Landroidx/recyclerview/widget/d0;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/d0;->b(Landroid/view/View;)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, v0, Landroidx/leanback/widget/GridLayoutManager;->e:Landroidx/recyclerview/widget/d0;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/d0;->e(Landroid/view/View;)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    :goto_0
    return p1
.end method

.method public e(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/q;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/leanback/widget/GridLayoutManager;

    .line 4
    .line 5
    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->h:I

    .line 6
    .line 7
    sub-int/2addr p1, v1

    .line 8
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/x0;->findViewByPosition(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    sget-object v1, Landroidx/leanback/widget/GridLayoutManager;->R:Landroid/graphics/Rect;

    .line 13
    .line 14
    invoke-virtual {v0, p1, v1}, Landroidx/leanback/widget/GridLayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 15
    .line 16
    .line 17
    iget p1, v0, Landroidx/leanback/widget/GridLayoutManager;->d:I

    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    :goto_0
    return p1
.end method

.method public f(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/q;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/leanback/widget/GridLayoutManager;

    .line 4
    .line 5
    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->h:I

    .line 6
    .line 7
    sub-int/2addr p1, v1

    .line 8
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/x0;->findViewByPosition(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->n:I

    .line 13
    .line 14
    and-int/lit8 v1, v1, 0x3

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    if-ne v1, v2, :cond_0

    .line 18
    .line 19
    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->m:Landroidx/recyclerview/widget/e1;

    .line 20
    .line 21
    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/x0;->detachAndScrapView(Landroid/view/View;Landroidx/recyclerview/widget/e1;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->m:Landroidx/recyclerview/widget/e1;

    .line 26
    .line 27
    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/x0;->removeAndRecycleView(Landroid/view/View;Landroidx/recyclerview/widget/e1;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method
