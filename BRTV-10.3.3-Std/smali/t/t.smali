.class public final Lt/t;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public a:Lv/f;

.field public b:Lv/f;

.field public c:Landroidx/constraintlayout/widget/d;

.field public d:Landroidx/constraintlayout/widget/d;

.field public e:I

.field public f:I

.field public final synthetic g:Landroidx/constraintlayout/motion/widget/MotionLayout;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lt/t;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 5
    .line 6
    new-instance p1, Lv/f;

    .line 7
    .line 8
    invoke-direct {p1}, Lv/f;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lt/t;->a:Lv/f;

    .line 12
    .line 13
    new-instance p1, Lv/f;

    .line 14
    .line 15
    invoke-direct {p1}, Lv/f;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lt/t;->b:Lv/f;

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lt/t;->c:Landroidx/constraintlayout/widget/d;

    .line 22
    .line 23
    iput-object p1, p0, Lt/t;->d:Landroidx/constraintlayout/widget/d;

    .line 24
    .line 25
    return-void
.end method

.method public static b(Lv/f;Lv/f;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lv/f;->g0:Ljava/util/ArrayList;

    .line 2
    .line 3
    new-instance v1, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    iget-object v2, p1, Lv/f;->g0:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p0, v1}, Lv/e;->f(Lv/e;Ljava/util/HashMap;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_5

    .line 28
    .line 29
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lv/e;

    .line 34
    .line 35
    instance-of v3, v2, Lv/a;

    .line 36
    .line 37
    if-eqz v3, :cond_0

    .line 38
    .line 39
    new-instance v3, Lv/a;

    .line 40
    .line 41
    invoke-direct {v3}, Lv/a;-><init>()V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    instance-of v3, v2, Lv/i;

    .line 46
    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    new-instance v3, Lv/i;

    .line 50
    .line 51
    invoke-direct {v3}, Lv/i;-><init>()V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    instance-of v3, v2, Lv/h;

    .line 56
    .line 57
    if-eqz v3, :cond_2

    .line 58
    .line 59
    new-instance v3, Lv/h;

    .line 60
    .line 61
    invoke-direct {v3}, Lv/h;-><init>()V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    instance-of v3, v2, Lv/j;

    .line 66
    .line 67
    if-eqz v3, :cond_3

    .line 68
    .line 69
    new-instance v3, Lv/j;

    .line 70
    .line 71
    invoke-direct {v3}, Lv/j;-><init>()V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    new-instance v3, Lv/e;

    .line 76
    .line 77
    invoke-direct {v3}, Lv/e;-><init>()V

    .line 78
    .line 79
    .line 80
    :goto_1
    iget-object v4, p1, Lv/f;->g0:Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    iget-object v4, v3, Lv/e;->K:Lv/e;

    .line 86
    .line 87
    if-eqz v4, :cond_4

    .line 88
    .line 89
    check-cast v4, Lv/f;

    .line 90
    .line 91
    iget-object v4, v4, Lv/f;->g0:Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    const/4 v4, 0x0

    .line 97
    iput-object v4, v3, Lv/e;->K:Lv/e;

    .line 98
    .line 99
    :cond_4
    iput-object p1, v3, Lv/e;->K:Lv/e;

    .line 100
    .line 101
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-eqz p1, :cond_6

    .line 114
    .line 115
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    check-cast p1, Lv/e;

    .line 120
    .line 121
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    check-cast v0, Lv/e;

    .line 126
    .line 127
    invoke-virtual {v0, p1, v1}, Lv/e;->f(Lv/e;Ljava/util/HashMap;)V

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_6
    return-void
.end method

.method public static c(Lv/f;Landroid/view/View;)Lv/e;
    .locals 4

    .line 1
    iget-object v0, p0, Lv/e;->W:Landroid/view/View;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    iget-object p0, p0, Lv/f;->g0:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lv/e;

    .line 20
    .line 21
    iget-object v3, v2, Lv/e;->W:Landroid/view/View;

    .line 22
    .line 23
    if-ne v3, p1, :cond_1

    .line 24
    .line 25
    return-object v2

    .line 26
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    const/4 p0, 0x0

    .line 30
    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lt/t;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    iget-object v3, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 12
    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    :goto_0
    if-ge v4, v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    new-instance v6, Lt/o;

    .line 23
    .line 24
    invoke-direct {v6, v5}, Lt/o;-><init>(Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    iget-object v7, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-virtual {v7, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    add-int/lit8 v4, v4, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    :goto_1
    if-ge v3, v2, :cond_7

    .line 36
    .line 37
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    iget-object v5, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:Ljava/util/HashMap;

    .line 42
    .line 43
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    check-cast v5, Lt/o;

    .line 48
    .line 49
    if-nez v5, :cond_1

    .line 50
    .line 51
    move/from16 v16, v2

    .line 52
    .line 53
    goto/16 :goto_3

    .line 54
    .line 55
    :cond_1
    iget-object v6, v0, Lt/t;->c:Landroidx/constraintlayout/widget/d;

    .line 56
    .line 57
    const-string v7, ")"

    .line 58
    .line 59
    const-string v8, " ("

    .line 60
    .line 61
    const-string v9, "no widget for  "

    .line 62
    .line 63
    const-string v10, "MotionLayout"

    .line 64
    .line 65
    if-eqz v6, :cond_3

    .line 66
    .line 67
    iget-object v6, v0, Lt/t;->a:Lv/f;

    .line 68
    .line 69
    invoke-static {v6, v4}, Lt/t;->c(Lv/f;Landroid/view/View;)Lv/e;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    if-eqz v6, :cond_2

    .line 74
    .line 75
    iget-object v11, v0, Lt/t;->c:Landroidx/constraintlayout/widget/d;

    .line 76
    .line 77
    iget-object v12, v5, Lt/o;->d:Lt/y;

    .line 78
    .line 79
    const/4 v13, 0x0

    .line 80
    iput v13, v12, Lt/y;->c:F

    .line 81
    .line 82
    iput v13, v12, Lt/y;->d:F

    .line 83
    .line 84
    invoke-virtual {v5, v12}, Lt/o;->d(Lt/y;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v6}, Lv/e;->n()I

    .line 88
    .line 89
    .line 90
    move-result v13

    .line 91
    int-to-float v13, v13

    .line 92
    invoke-virtual {v6}, Lv/e;->o()I

    .line 93
    .line 94
    .line 95
    move-result v14

    .line 96
    int-to-float v14, v14

    .line 97
    invoke-virtual {v6}, Lv/e;->m()I

    .line 98
    .line 99
    .line 100
    move-result v15

    .line 101
    int-to-float v15, v15

    .line 102
    move/from16 v16, v2

    .line 103
    .line 104
    invoke-virtual {v6}, Lv/e;->j()I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    int-to-float v2, v2

    .line 109
    iput v13, v12, Lt/y;->e:F

    .line 110
    .line 111
    iput v14, v12, Lt/y;->f:F

    .line 112
    .line 113
    iput v15, v12, Lt/y;->g:F

    .line 114
    .line 115
    iput v2, v12, Lt/y;->h:F

    .line 116
    .line 117
    iget v2, v5, Lt/o;->b:I

    .line 118
    .line 119
    invoke-virtual {v11, v2}, Landroidx/constraintlayout/widget/d;->g(I)Landroidx/constraintlayout/widget/c;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v12, v2}, Lt/y;->a(Landroidx/constraintlayout/widget/c;)V

    .line 124
    .line 125
    .line 126
    iget-object v2, v2, Landroidx/constraintlayout/widget/c;->c:Ly/e;

    .line 127
    .line 128
    iget v2, v2, Ly/e;->f:F

    .line 129
    .line 130
    iput v2, v5, Lt/o;->j:F

    .line 131
    .line 132
    iget-object v2, v5, Lt/o;->f:Lt/n;

    .line 133
    .line 134
    iget v12, v5, Lt/o;->b:I

    .line 135
    .line 136
    invoke-virtual {v2, v6, v11, v12}, Lt/n;->c(Lv/e;Landroidx/constraintlayout/widget/d;I)V

    .line 137
    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_2
    move/from16 v16, v2

    .line 141
    .line 142
    iget v2, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:I

    .line 143
    .line 144
    if-eqz v2, :cond_4

    .line 145
    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    invoke-static {}, La2/a;->w()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-static {v4}, La2/a;->y(Landroid/view/View;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v6

    .line 165
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v6

    .line 179
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    invoke-static {v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_3
    move/from16 v16, v2

    .line 194
    .line 195
    :cond_4
    :goto_2
    iget-object v2, v0, Lt/t;->d:Landroidx/constraintlayout/widget/d;

    .line 196
    .line 197
    if-eqz v2, :cond_6

    .line 198
    .line 199
    iget-object v2, v0, Lt/t;->b:Lv/f;

    .line 200
    .line 201
    invoke-static {v2, v4}, Lt/t;->c(Lv/f;Landroid/view/View;)Lv/e;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    if-eqz v2, :cond_5

    .line 206
    .line 207
    iget-object v4, v0, Lt/t;->d:Landroidx/constraintlayout/widget/d;

    .line 208
    .line 209
    iget-object v6, v5, Lt/o;->e:Lt/y;

    .line 210
    .line 211
    const/high16 v7, 0x3f800000    # 1.0f

    .line 212
    .line 213
    iput v7, v6, Lt/y;->c:F

    .line 214
    .line 215
    iput v7, v6, Lt/y;->d:F

    .line 216
    .line 217
    invoke-virtual {v5, v6}, Lt/o;->d(Lt/y;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v2}, Lv/e;->n()I

    .line 221
    .line 222
    .line 223
    move-result v7

    .line 224
    int-to-float v7, v7

    .line 225
    invoke-virtual {v2}, Lv/e;->o()I

    .line 226
    .line 227
    .line 228
    move-result v8

    .line 229
    int-to-float v8, v8

    .line 230
    invoke-virtual {v2}, Lv/e;->m()I

    .line 231
    .line 232
    .line 233
    move-result v9

    .line 234
    int-to-float v9, v9

    .line 235
    invoke-virtual {v2}, Lv/e;->j()I

    .line 236
    .line 237
    .line 238
    move-result v10

    .line 239
    int-to-float v10, v10

    .line 240
    iput v7, v6, Lt/y;->e:F

    .line 241
    .line 242
    iput v8, v6, Lt/y;->f:F

    .line 243
    .line 244
    iput v9, v6, Lt/y;->g:F

    .line 245
    .line 246
    iput v10, v6, Lt/y;->h:F

    .line 247
    .line 248
    iget v7, v5, Lt/o;->b:I

    .line 249
    .line 250
    invoke-virtual {v4, v7}, Landroidx/constraintlayout/widget/d;->g(I)Landroidx/constraintlayout/widget/c;

    .line 251
    .line 252
    .line 253
    move-result-object v7

    .line 254
    invoke-virtual {v6, v7}, Lt/y;->a(Landroidx/constraintlayout/widget/c;)V

    .line 255
    .line 256
    .line 257
    iget-object v6, v5, Lt/o;->g:Lt/n;

    .line 258
    .line 259
    iget v5, v5, Lt/o;->b:I

    .line 260
    .line 261
    invoke-virtual {v6, v2, v4, v5}, Lt/n;->c(Lv/e;Landroidx/constraintlayout/widget/d;I)V

    .line 262
    .line 263
    .line 264
    goto :goto_3

    .line 265
    :cond_5
    iget v2, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->J:I

    .line 266
    .line 267
    if-eqz v2, :cond_6

    .line 268
    .line 269
    new-instance v2, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .line 273
    .line 274
    invoke-static {}, La2/a;->w()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v5

    .line 278
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-static {v4}, La2/a;->y(Landroid/view/View;)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v5

    .line 288
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 295
    .line 296
    .line 297
    move-result-object v4

    .line 298
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v4

    .line 302
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    invoke-static {v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    .line 314
    .line 315
    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 316
    .line 317
    move/from16 v2, v16

    .line 318
    .line 319
    goto/16 :goto_1

    .line 320
    .line 321
    :cond_7
    return-void
.end method

.method public final d(Landroidx/constraintlayout/widget/d;Landroidx/constraintlayout/widget/d;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lt/t;->c:Landroidx/constraintlayout/widget/d;

    .line 2
    .line 3
    iput-object p2, p0, Lt/t;->d:Landroidx/constraintlayout/widget/d;

    .line 4
    .line 5
    new-instance v0, Lv/f;

    .line 6
    .line 7
    invoke-direct {v0}, Lv/f;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lt/t;->a:Lv/f;

    .line 11
    .line 12
    new-instance v0, Lv/f;

    .line 13
    .line 14
    invoke-direct {v0}, Lv/f;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lt/t;->b:Lv/f;

    .line 18
    .line 19
    iget-object v1, p0, Lt/t;->a:Lv/f;

    .line 20
    .line 21
    sget v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->A0:I

    .line 22
    .line 23
    iget-object v2, p0, Lt/t;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 24
    .line 25
    iget-object v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lv/f;

    .line 26
    .line 27
    iget-object v4, v3, Lv/f;->j0:Lw/c;

    .line 28
    .line 29
    iput-object v4, v1, Lv/f;->j0:Lw/c;

    .line 30
    .line 31
    iget-object v5, v1, Lv/f;->i0:Lw/f;

    .line 32
    .line 33
    iput-object v4, v5, Lw/f;->f:Lw/c;

    .line 34
    .line 35
    iget-object v3, v3, Lv/f;->j0:Lw/c;

    .line 36
    .line 37
    iput-object v3, v0, Lv/f;->j0:Lw/c;

    .line 38
    .line 39
    iget-object v0, v0, Lv/f;->i0:Lw/f;

    .line 40
    .line 41
    iput-object v3, v0, Lw/f;->f:Lw/c;

    .line 42
    .line 43
    iget-object v0, v1, Lv/f;->g0:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lt/t;->b:Lv/f;

    .line 49
    .line 50
    iget-object v0, v0, Lv/f;->g0:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 53
    .line 54
    .line 55
    iget-object v0, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lv/f;

    .line 56
    .line 57
    iget-object v1, p0, Lt/t;->a:Lv/f;

    .line 58
    .line 59
    invoke-static {v0, v1}, Lt/t;->b(Lv/f;Lv/f;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, v2, Landroidx/constraintlayout/widget/ConstraintLayout;->c:Lv/f;

    .line 63
    .line 64
    iget-object v1, p0, Lt/t;->b:Lv/f;

    .line 65
    .line 66
    invoke-static {v0, v1}, Lt/t;->b(Lv/f;Lv/f;)V

    .line 67
    .line 68
    .line 69
    iget v0, v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->D:F

    .line 70
    .line 71
    float-to-double v0, v0

    .line 72
    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    .line 73
    .line 74
    cmpl-double v5, v0, v3

    .line 75
    .line 76
    if-lez v5, :cond_1

    .line 77
    .line 78
    if-eqz p1, :cond_0

    .line 79
    .line 80
    iget-object v0, p0, Lt/t;->a:Lv/f;

    .line 81
    .line 82
    invoke-virtual {p0, v0, p1}, Lt/t;->f(Lv/f;Landroidx/constraintlayout/widget/d;)V

    .line 83
    .line 84
    .line 85
    :cond_0
    iget-object p1, p0, Lt/t;->b:Lv/f;

    .line 86
    .line 87
    invoke-virtual {p0, p1, p2}, Lt/t;->f(Lv/f;Landroidx/constraintlayout/widget/d;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, p0, Lt/t;->b:Lv/f;

    .line 92
    .line 93
    invoke-virtual {p0, v0, p2}, Lt/t;->f(Lv/f;Landroidx/constraintlayout/widget/d;)V

    .line 94
    .line 95
    .line 96
    if-eqz p1, :cond_2

    .line 97
    .line 98
    iget-object p2, p0, Lt/t;->a:Lv/f;

    .line 99
    .line 100
    invoke-virtual {p0, p2, p1}, Lt/t;->f(Lv/f;Landroidx/constraintlayout/widget/d;)V

    .line 101
    .line 102
    .line 103
    :cond_2
    :goto_0
    iget-object p1, p0, Lt/t;->a:Lv/f;

    .line 104
    .line 105
    invoke-virtual {v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->k()Z

    .line 106
    .line 107
    .line 108
    move-result p2

    .line 109
    iput-boolean p2, p1, Lv/f;->k0:Z

    .line 110
    .line 111
    iget-object p1, p0, Lt/t;->a:Lv/f;

    .line 112
    .line 113
    invoke-virtual {p1}, Lv/f;->G()V

    .line 114
    .line 115
    .line 116
    iget-object p1, p0, Lt/t;->b:Lv/f;

    .line 117
    .line 118
    invoke-virtual {v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->k()Z

    .line 119
    .line 120
    .line 121
    move-result p2

    .line 122
    iput-boolean p2, p1, Lv/f;->k0:Z

    .line 123
    .line 124
    iget-object p1, p0, Lt/t;->b:Lv/f;

    .line 125
    .line 126
    invoke-virtual {p1}, Lv/f;->G()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    if-eqz p1, :cond_4

    .line 134
    .line 135
    iget p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 136
    .line 137
    sget-object v0, Lv/d;->b:Lv/d;

    .line 138
    .line 139
    const/4 v1, -0x2

    .line 140
    if-ne p2, v1, :cond_3

    .line 141
    .line 142
    iget-object p2, p0, Lt/t;->a:Lv/f;

    .line 143
    .line 144
    invoke-virtual {p2, v0}, Lv/e;->x(Lv/d;)V

    .line 145
    .line 146
    .line 147
    iget-object p2, p0, Lt/t;->b:Lv/f;

    .line 148
    .line 149
    invoke-virtual {p2, v0}, Lv/e;->x(Lv/d;)V

    .line 150
    .line 151
    .line 152
    :cond_3
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 153
    .line 154
    if-ne p1, v1, :cond_4

    .line 155
    .line 156
    iget-object p1, p0, Lt/t;->a:Lv/f;

    .line 157
    .line 158
    invoke-virtual {p1, v0}, Lv/e;->y(Lv/d;)V

    .line 159
    .line 160
    .line 161
    iget-object p1, p0, Lt/t;->b:Lv/f;

    .line 162
    .line 163
    invoke-virtual {p1, v0}, Lv/e;->y(Lv/d;)V

    .line 164
    .line 165
    .line 166
    :cond_4
    return-void
.end method

.method public final e()V
    .locals 14

    .line 1
    iget-object v7, p0, Lt/t;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 2
    .line 3
    iget v1, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->w:I

    .line 4
    .line 5
    iget v2, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->x:I

    .line 6
    .line 7
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    iput v0, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->o0:I

    .line 16
    .line 17
    iput v3, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->p0:I

    .line 18
    .line 19
    invoke-virtual {v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->getOptimizationLevel()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    iget v5, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:I

    .line 24
    .line 25
    invoke-virtual {v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getStartState()I

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    if-ne v5, v6, :cond_0

    .line 30
    .line 31
    iget-object v5, p0, Lt/t;->b:Lv/f;

    .line 32
    .line 33
    invoke-virtual {v7, v5, v4, v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->n(Lv/f;III)V

    .line 34
    .line 35
    .line 36
    iget-object v5, p0, Lt/t;->c:Landroidx/constraintlayout/widget/d;

    .line 37
    .line 38
    if-eqz v5, :cond_2

    .line 39
    .line 40
    iget-object v5, p0, Lt/t;->a:Lv/f;

    .line 41
    .line 42
    invoke-virtual {v7, v5, v4, v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->n(Lv/f;III)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget-object v5, p0, Lt/t;->c:Landroidx/constraintlayout/widget/d;

    .line 47
    .line 48
    if-eqz v5, :cond_1

    .line 49
    .line 50
    iget-object v5, p0, Lt/t;->a:Lv/f;

    .line 51
    .line 52
    invoke-virtual {v7, v5, v4, v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->n(Lv/f;III)V

    .line 53
    .line 54
    .line 55
    :cond_1
    iget-object v5, p0, Lt/t;->b:Lv/f;

    .line 56
    .line 57
    invoke-virtual {v7, v5, v4, v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->n(Lv/f;III)V

    .line 58
    .line 59
    .line 60
    :cond_2
    :goto_0
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    instance-of v5, v5, Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 65
    .line 66
    const/4 v8, 0x1

    .line 67
    const/4 v9, 0x0

    .line 68
    if-eqz v5, :cond_3

    .line 69
    .line 70
    const/high16 v5, 0x40000000    # 2.0f

    .line 71
    .line 72
    if-ne v0, v5, :cond_3

    .line 73
    .line 74
    if-ne v3, v5, :cond_3

    .line 75
    .line 76
    goto :goto_4

    .line 77
    :cond_3
    iput v0, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->o0:I

    .line 78
    .line 79
    iput v3, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->p0:I

    .line 80
    .line 81
    iget v0, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->u:I

    .line 82
    .line 83
    invoke-virtual {v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getStartState()I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-ne v0, v3, :cond_4

    .line 88
    .line 89
    iget-object v0, p0, Lt/t;->b:Lv/f;

    .line 90
    .line 91
    invoke-virtual {v7, v0, v4, v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->n(Lv/f;III)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lt/t;->c:Landroidx/constraintlayout/widget/d;

    .line 95
    .line 96
    if-eqz v0, :cond_6

    .line 97
    .line 98
    iget-object v0, p0, Lt/t;->a:Lv/f;

    .line 99
    .line 100
    invoke-virtual {v7, v0, v4, v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->n(Lv/f;III)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_4
    iget-object v0, p0, Lt/t;->c:Landroidx/constraintlayout/widget/d;

    .line 105
    .line 106
    if-eqz v0, :cond_5

    .line 107
    .line 108
    iget-object v0, p0, Lt/t;->a:Lv/f;

    .line 109
    .line 110
    invoke-virtual {v7, v0, v4, v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->n(Lv/f;III)V

    .line 111
    .line 112
    .line 113
    :cond_5
    iget-object v0, p0, Lt/t;->b:Lv/f;

    .line 114
    .line 115
    invoke-virtual {v7, v0, v4, v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->n(Lv/f;III)V

    .line 116
    .line 117
    .line 118
    :cond_6
    :goto_1
    iget-object v0, p0, Lt/t;->a:Lv/f;

    .line 119
    .line 120
    invoke-virtual {v0}, Lv/e;->m()I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    iput v0, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->k0:I

    .line 125
    .line 126
    iget-object v0, p0, Lt/t;->a:Lv/f;

    .line 127
    .line 128
    invoke-virtual {v0}, Lv/e;->j()I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    iput v0, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->l0:I

    .line 133
    .line 134
    iget-object v0, p0, Lt/t;->b:Lv/f;

    .line 135
    .line 136
    invoke-virtual {v0}, Lv/e;->m()I

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    iput v0, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->m0:I

    .line 141
    .line 142
    iget-object v0, p0, Lt/t;->b:Lv/f;

    .line 143
    .line 144
    invoke-virtual {v0}, Lv/e;->j()I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    iput v0, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->n0:I

    .line 149
    .line 150
    iget v3, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->k0:I

    .line 151
    .line 152
    iget v4, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->m0:I

    .line 153
    .line 154
    if-ne v3, v4, :cond_8

    .line 155
    .line 156
    iget v3, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->l0:I

    .line 157
    .line 158
    if-eq v3, v0, :cond_7

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_7
    const/4 v0, 0x0

    .line 162
    goto :goto_3

    .line 163
    :cond_8
    :goto_2
    const/4 v0, 0x1

    .line 164
    :goto_3
    iput-boolean v0, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->j0:Z

    .line 165
    .line 166
    :goto_4
    iget v0, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->k0:I

    .line 167
    .line 168
    iget v3, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->l0:I

    .line 169
    .line 170
    iget v4, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->o0:I

    .line 171
    .line 172
    const/high16 v5, -0x80000000

    .line 173
    .line 174
    if-eq v4, v5, :cond_a

    .line 175
    .line 176
    if-nez v4, :cond_9

    .line 177
    .line 178
    goto :goto_6

    .line 179
    :cond_9
    :goto_5
    move v4, v0

    .line 180
    goto :goto_7

    .line 181
    :cond_a
    :goto_6
    int-to-float v4, v0

    .line 182
    iget v6, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->q0:F

    .line 183
    .line 184
    iget v10, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->m0:I

    .line 185
    .line 186
    sub-int/2addr v10, v0

    .line 187
    int-to-float v0, v10

    .line 188
    mul-float v6, v6, v0

    .line 189
    .line 190
    add-float/2addr v6, v4

    .line 191
    float-to-int v0, v6

    .line 192
    goto :goto_5

    .line 193
    :goto_7
    iget v0, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->p0:I

    .line 194
    .line 195
    if-eq v0, v5, :cond_c

    .line 196
    .line 197
    if-nez v0, :cond_b

    .line 198
    .line 199
    goto :goto_8

    .line 200
    :cond_b
    move v5, v3

    .line 201
    goto :goto_9

    .line 202
    :cond_c
    :goto_8
    int-to-float v0, v3

    .line 203
    iget v5, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->q0:F

    .line 204
    .line 205
    iget v6, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->n0:I

    .line 206
    .line 207
    sub-int/2addr v6, v3

    .line 208
    int-to-float v3, v6

    .line 209
    mul-float v5, v5, v3

    .line 210
    .line 211
    add-float/2addr v5, v0

    .line 212
    float-to-int v0, v5

    .line 213
    move v5, v0

    .line 214
    :goto_9
    iget-object v0, p0, Lt/t;->a:Lv/f;

    .line 215
    .line 216
    iget-boolean v3, v0, Lv/f;->t0:Z

    .line 217
    .line 218
    if-nez v3, :cond_e

    .line 219
    .line 220
    iget-object v3, p0, Lt/t;->b:Lv/f;

    .line 221
    .line 222
    iget-boolean v3, v3, Lv/f;->t0:Z

    .line 223
    .line 224
    if-eqz v3, :cond_d

    .line 225
    .line 226
    goto :goto_a

    .line 227
    :cond_d
    const/4 v6, 0x0

    .line 228
    goto :goto_b

    .line 229
    :cond_e
    :goto_a
    const/4 v6, 0x1

    .line 230
    :goto_b
    iget-boolean v0, v0, Lv/f;->u0:Z

    .line 231
    .line 232
    if-nez v0, :cond_10

    .line 233
    .line 234
    iget-object v0, p0, Lt/t;->b:Lv/f;

    .line 235
    .line 236
    iget-boolean v0, v0, Lv/f;->u0:Z

    .line 237
    .line 238
    if-eqz v0, :cond_f

    .line 239
    .line 240
    goto :goto_c

    .line 241
    :cond_f
    const/4 v10, 0x0

    .line 242
    goto :goto_d

    .line 243
    :cond_10
    :goto_c
    const/4 v10, 0x1

    .line 244
    :goto_d
    move-object v0, v7

    .line 245
    move v3, v4

    .line 246
    move v4, v5

    .line 247
    move v5, v6

    .line 248
    move v6, v10

    .line 249
    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->m(IIIIZZ)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    .line 253
    .line 254
    .line 255
    move-result v0

    .line 256
    iget-object v1, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->v0:Lt/t;

    .line 257
    .line 258
    invoke-virtual {v1}, Lt/t;->a()V

    .line 259
    .line 260
    .line 261
    iput-boolean v8, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->H:Z

    .line 262
    .line 263
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    .line 264
    .line 265
    .line 266
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    .line 267
    .line 268
    .line 269
    iget-object v1, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 270
    .line 271
    iget-object v1, v1, Lt/c0;->c:Lt/b0;

    .line 272
    .line 273
    const/4 v2, -0x1

    .line 274
    if-eqz v1, :cond_11

    .line 275
    .line 276
    iget v1, v1, Lt/b0;->p:I

    .line 277
    .line 278
    goto :goto_e

    .line 279
    :cond_11
    const/4 v1, -0x1

    .line 280
    :goto_e
    iget-object v3, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->z:Ljava/util/HashMap;

    .line 281
    .line 282
    if-eq v1, v2, :cond_13

    .line 283
    .line 284
    const/4 v2, 0x0

    .line 285
    :goto_f
    if-ge v2, v0, :cond_13

    .line 286
    .line 287
    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 288
    .line 289
    .line 290
    move-result-object v4

    .line 291
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v4

    .line 295
    check-cast v4, Lt/o;

    .line 296
    .line 297
    if-eqz v4, :cond_12

    .line 298
    .line 299
    iput v1, v4, Lt/o;->y:I

    .line 300
    .line 301
    :cond_12
    add-int/lit8 v2, v2, 0x1

    .line 302
    .line 303
    goto :goto_f

    .line 304
    :cond_13
    const/4 v1, 0x0

    .line 305
    :goto_10
    if-ge v1, v0, :cond_15

    .line 306
    .line 307
    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v2

    .line 315
    check-cast v2, Lt/o;

    .line 316
    .line 317
    if-eqz v2, :cond_14

    .line 318
    .line 319
    iget-object v4, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 320
    .line 321
    invoke-virtual {v4, v2}, Lt/c0;->e(Lt/o;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getNanoTime()J

    .line 325
    .line 326
    .line 327
    move-result-wide v4

    .line 328
    invoke-virtual {v2, v4, v5}, Lt/o;->e(J)V

    .line 329
    .line 330
    .line 331
    :cond_14
    add-int/lit8 v1, v1, 0x1

    .line 332
    .line 333
    goto :goto_10

    .line 334
    :cond_15
    iget-object v1, v7, Landroidx/constraintlayout/motion/widget/MotionLayout;->q:Lt/c0;

    .line 335
    .line 336
    iget-object v1, v1, Lt/c0;->c:Lt/b0;

    .line 337
    .line 338
    const/4 v2, 0x0

    .line 339
    if-eqz v1, :cond_16

    .line 340
    .line 341
    iget v1, v1, Lt/b0;->i:F

    .line 342
    .line 343
    goto :goto_11

    .line 344
    :cond_16
    const/4 v1, 0x0

    .line 345
    :goto_11
    cmpl-float v2, v1, v2

    .line 346
    .line 347
    if-eqz v2, :cond_20

    .line 348
    .line 349
    float-to-double v4, v1

    .line 350
    const-wide/16 v10, 0x0

    .line 351
    .line 352
    cmpg-double v2, v4, v10

    .line 353
    .line 354
    if-gez v2, :cond_17

    .line 355
    .line 356
    goto :goto_12

    .line 357
    :cond_17
    const/4 v8, 0x0

    .line 358
    :goto_12
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 359
    .line 360
    .line 361
    move-result v1

    .line 362
    const v2, -0x800001

    .line 363
    .line 364
    .line 365
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    .line 366
    .line 367
    .line 368
    const/4 v5, 0x0

    .line 369
    const v6, 0x7f7fffff    # Float.MAX_VALUE

    .line 370
    .line 371
    .line 372
    const v10, -0x800001

    .line 373
    .line 374
    .line 375
    :goto_13
    const/high16 v11, 0x3f800000    # 1.0f

    .line 376
    .line 377
    if-ge v5, v0, :cond_1e

    .line 378
    .line 379
    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 380
    .line 381
    .line 382
    move-result-object v12

    .line 383
    invoke-virtual {v3, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v12

    .line 387
    check-cast v12, Lt/o;

    .line 388
    .line 389
    iget v13, v12, Lt/o;->j:F

    .line 390
    .line 391
    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    .line 392
    .line 393
    .line 394
    move-result v13

    .line 395
    if-nez v13, :cond_1c

    .line 396
    .line 397
    const/4 v5, 0x0

    .line 398
    :goto_14
    if-ge v5, v0, :cond_19

    .line 399
    .line 400
    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 401
    .line 402
    .line 403
    move-result-object v6

    .line 404
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    move-result-object v6

    .line 408
    check-cast v6, Lt/o;

    .line 409
    .line 410
    iget v10, v6, Lt/o;->j:F

    .line 411
    .line 412
    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    .line 413
    .line 414
    .line 415
    move-result v10

    .line 416
    if-nez v10, :cond_18

    .line 417
    .line 418
    iget v10, v6, Lt/o;->j:F

    .line 419
    .line 420
    invoke-static {v4, v10}, Ljava/lang/Math;->min(FF)F

    .line 421
    .line 422
    .line 423
    move-result v4

    .line 424
    iget v6, v6, Lt/o;->j:F

    .line 425
    .line 426
    invoke-static {v2, v6}, Ljava/lang/Math;->max(FF)F

    .line 427
    .line 428
    .line 429
    move-result v2

    .line 430
    :cond_18
    add-int/lit8 v5, v5, 0x1

    .line 431
    .line 432
    goto :goto_14

    .line 433
    :cond_19
    :goto_15
    if-ge v9, v0, :cond_20

    .line 434
    .line 435
    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 436
    .line 437
    .line 438
    move-result-object v5

    .line 439
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v5

    .line 443
    check-cast v5, Lt/o;

    .line 444
    .line 445
    iget v6, v5, Lt/o;->j:F

    .line 446
    .line 447
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    .line 448
    .line 449
    .line 450
    move-result v6

    .line 451
    if-nez v6, :cond_1b

    .line 452
    .line 453
    sub-float v6, v11, v1

    .line 454
    .line 455
    div-float v6, v11, v6

    .line 456
    .line 457
    iput v6, v5, Lt/o;->l:F

    .line 458
    .line 459
    if-eqz v8, :cond_1a

    .line 460
    .line 461
    iget v6, v5, Lt/o;->j:F

    .line 462
    .line 463
    sub-float v6, v2, v6

    .line 464
    .line 465
    sub-float v10, v2, v4

    .line 466
    .line 467
    div-float/2addr v6, v10

    .line 468
    mul-float v6, v6, v1

    .line 469
    .line 470
    sub-float v6, v1, v6

    .line 471
    .line 472
    iput v6, v5, Lt/o;->k:F

    .line 473
    .line 474
    goto :goto_16

    .line 475
    :cond_1a
    iget v6, v5, Lt/o;->j:F

    .line 476
    .line 477
    sub-float/2addr v6, v4

    .line 478
    mul-float v6, v6, v1

    .line 479
    .line 480
    sub-float v10, v2, v4

    .line 481
    .line 482
    div-float/2addr v6, v10

    .line 483
    sub-float v6, v1, v6

    .line 484
    .line 485
    iput v6, v5, Lt/o;->k:F

    .line 486
    .line 487
    :cond_1b
    :goto_16
    add-int/lit8 v9, v9, 0x1

    .line 488
    .line 489
    goto :goto_15

    .line 490
    :cond_1c
    iget-object v11, v12, Lt/o;->e:Lt/y;

    .line 491
    .line 492
    iget v12, v11, Lt/y;->e:F

    .line 493
    .line 494
    iget v11, v11, Lt/y;->f:F

    .line 495
    .line 496
    if-eqz v8, :cond_1d

    .line 497
    .line 498
    sub-float/2addr v11, v12

    .line 499
    goto :goto_17

    .line 500
    :cond_1d
    add-float/2addr v11, v12

    .line 501
    :goto_17
    invoke-static {v6, v11}, Ljava/lang/Math;->min(FF)F

    .line 502
    .line 503
    .line 504
    move-result v6

    .line 505
    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    .line 506
    .line 507
    .line 508
    move-result v10

    .line 509
    add-int/lit8 v5, v5, 0x1

    .line 510
    .line 511
    goto/16 :goto_13

    .line 512
    .line 513
    :cond_1e
    :goto_18
    if-ge v9, v0, :cond_20

    .line 514
    .line 515
    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 516
    .line 517
    .line 518
    move-result-object v2

    .line 519
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    .line 521
    .line 522
    move-result-object v2

    .line 523
    check-cast v2, Lt/o;

    .line 524
    .line 525
    iget-object v4, v2, Lt/o;->e:Lt/y;

    .line 526
    .line 527
    iget v5, v4, Lt/y;->e:F

    .line 528
    .line 529
    iget v4, v4, Lt/y;->f:F

    .line 530
    .line 531
    if-eqz v8, :cond_1f

    .line 532
    .line 533
    sub-float/2addr v4, v5

    .line 534
    goto :goto_19

    .line 535
    :cond_1f
    add-float/2addr v4, v5

    .line 536
    :goto_19
    sub-float v5, v11, v1

    .line 537
    .line 538
    div-float v5, v11, v5

    .line 539
    .line 540
    iput v5, v2, Lt/o;->l:F

    .line 541
    .line 542
    sub-float/2addr v4, v6

    .line 543
    mul-float v4, v4, v1

    .line 544
    .line 545
    sub-float v5, v10, v6

    .line 546
    .line 547
    div-float/2addr v4, v5

    .line 548
    sub-float v4, v1, v4

    .line 549
    .line 550
    iput v4, v2, Lt/o;->k:F

    .line 551
    .line 552
    add-int/lit8 v9, v9, 0x1

    .line 553
    .line 554
    goto :goto_18

    .line 555
    :cond_20
    return-void
.end method

.method public final f(Lv/f;Landroidx/constraintlayout/widget/d;)V
    .locals 17

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
    const/4 v3, 0x1

    .line 8
    new-instance v10, Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-direct {v10}, Landroid/util/SparseArray;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v11, Landroidx/constraintlayout/widget/Constraints$LayoutParams;

    .line 14
    .line 15
    invoke-direct {v11}, Landroidx/constraintlayout/widget/Constraints$LayoutParams;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v10}, Landroid/util/SparseArray;->clear()V

    .line 19
    .line 20
    .line 21
    const/4 v12, 0x0

    .line 22
    invoke-virtual {v10, v12, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object v13, v0, Lt/t;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 26
    .line 27
    invoke-virtual {v13}, Landroid/view/View;->getId()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    invoke-virtual {v10, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object v4, v1, Lv/f;->g0:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-eqz v5, :cond_0

    .line 45
    .line 46
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    check-cast v5, Lv/e;

    .line 51
    .line 52
    iget-object v6, v5, Lv/e;->W:Landroid/view/View;

    .line 53
    .line 54
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    invoke-virtual {v10, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    iget-object v4, v1, Lv/f;->g0:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object v14

    .line 68
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-eqz v4, :cond_5

    .line 73
    .line 74
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    move-object v15, v4

    .line 79
    check-cast v15, Lv/e;

    .line 80
    .line 81
    iget-object v9, v15, Lv/e;->W:Landroid/view/View;

    .line 82
    .line 83
    invoke-virtual {v9}, Landroid/view/View;->getId()I

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    iget-object v5, v2, Landroidx/constraintlayout/widget/d;->c:Ljava/util/HashMap;

    .line 88
    .line 89
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    if-eqz v6, :cond_1

    .line 98
    .line 99
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    check-cast v4, Landroidx/constraintlayout/widget/c;

    .line 108
    .line 109
    invoke-virtual {v4, v11}, Landroidx/constraintlayout/widget/c;->a(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    .line 110
    .line 111
    .line 112
    :cond_1
    invoke-virtual {v9}, Landroid/view/View;->getId()I

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    invoke-virtual {v2, v4}, Landroidx/constraintlayout/widget/d;->g(I)Landroidx/constraintlayout/widget/c;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    iget-object v4, v4, Landroidx/constraintlayout/widget/c;->d:Ly/d;

    .line 121
    .line 122
    iget v4, v4, Ly/d;->c:I

    .line 123
    .line 124
    invoke-virtual {v15, v4}, Lv/e;->z(I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v9}, Landroid/view/View;->getId()I

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    invoke-virtual {v2, v4}, Landroidx/constraintlayout/widget/d;->g(I)Landroidx/constraintlayout/widget/c;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    iget-object v4, v4, Landroidx/constraintlayout/widget/c;->d:Ly/d;

    .line 136
    .line 137
    iget v4, v4, Ly/d;->d:I

    .line 138
    .line 139
    invoke-virtual {v15, v4}, Lv/e;->w(I)V

    .line 140
    .line 141
    .line 142
    instance-of v4, v9, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 143
    .line 144
    if-eqz v4, :cond_3

    .line 145
    .line 146
    move-object v4, v9

    .line 147
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 148
    .line 149
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    .line 150
    .line 151
    .line 152
    move-result v5

    .line 153
    iget-object v6, v2, Landroidx/constraintlayout/widget/d;->c:Ljava/util/HashMap;

    .line 154
    .line 155
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    .line 157
    .line 158
    move-result-object v7

    .line 159
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v7

    .line 163
    if-eqz v7, :cond_2

    .line 164
    .line 165
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    check-cast v5, Landroidx/constraintlayout/widget/c;

    .line 174
    .line 175
    instance-of v6, v15, Lv/j;

    .line 176
    .line 177
    if-eqz v6, :cond_2

    .line 178
    .line 179
    move-object v6, v15

    .line 180
    check-cast v6, Lv/j;

    .line 181
    .line 182
    invoke-virtual {v4, v5, v6, v11, v10}, Landroidx/constraintlayout/widget/ConstraintHelper;->h(Landroidx/constraintlayout/widget/c;Lv/j;Landroidx/constraintlayout/widget/Constraints$LayoutParams;Landroid/util/SparseArray;)V

    .line 183
    .line 184
    .line 185
    :cond_2
    instance-of v4, v9, Landroidx/constraintlayout/widget/Barrier;

    .line 186
    .line 187
    if-eqz v4, :cond_3

    .line 188
    .line 189
    move-object v4, v9

    .line 190
    check-cast v4, Landroidx/constraintlayout/widget/Barrier;

    .line 191
    .line 192
    invoke-virtual {v4}, Landroidx/constraintlayout/widget/ConstraintHelper;->l()V

    .line 193
    .line 194
    .line 195
    :cond_3
    invoke-virtual {v13}, Landroid/view/View;->getLayoutDirection()I

    .line 196
    .line 197
    .line 198
    move-result v4

    .line 199
    invoke-virtual {v11, v4}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveLayoutDirection(I)V

    .line 200
    .line 201
    .line 202
    sget v4, Landroidx/constraintlayout/motion/widget/MotionLayout;->A0:I

    .line 203
    .line 204
    iget-object v4, v0, Lt/t;->g:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 205
    .line 206
    const/4 v5, 0x0

    .line 207
    move-object v6, v9

    .line 208
    move-object v7, v15

    .line 209
    move-object v8, v11

    .line 210
    move-object/from16 v16, v9

    .line 211
    .line 212
    move-object v9, v10

    .line 213
    invoke-virtual/range {v4 .. v9}, Landroidx/constraintlayout/widget/ConstraintLayout;->c(ZLandroid/view/View;Lv/e;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getId()I

    .line 217
    .line 218
    .line 219
    move-result v4

    .line 220
    invoke-virtual {v2, v4}, Landroidx/constraintlayout/widget/d;->g(I)Landroidx/constraintlayout/widget/c;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    iget-object v4, v4, Landroidx/constraintlayout/widget/c;->b:Ly/f;

    .line 225
    .line 226
    iget v4, v4, Ly/f;->c:I

    .line 227
    .line 228
    if-ne v4, v3, :cond_4

    .line 229
    .line 230
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getVisibility()I

    .line 231
    .line 232
    .line 233
    move-result v4

    .line 234
    iput v4, v15, Lv/e;->X:I

    .line 235
    .line 236
    goto/16 :goto_1

    .line 237
    .line 238
    :cond_4
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getId()I

    .line 239
    .line 240
    .line 241
    move-result v4

    .line 242
    invoke-virtual {v2, v4}, Landroidx/constraintlayout/widget/d;->g(I)Landroidx/constraintlayout/widget/c;

    .line 243
    .line 244
    .line 245
    move-result-object v4

    .line 246
    iget-object v4, v4, Landroidx/constraintlayout/widget/c;->b:Ly/f;

    .line 247
    .line 248
    iget v4, v4, Ly/f;->b:I

    .line 249
    .line 250
    iput v4, v15, Lv/e;->X:I

    .line 251
    .line 252
    goto/16 :goto_1

    .line 253
    .line 254
    :cond_5
    iget-object v1, v1, Lv/f;->g0:Ljava/util/ArrayList;

    .line 255
    .line 256
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 261
    .line 262
    .line 263
    move-result v2

    .line 264
    if-eqz v2, :cond_8

    .line 265
    .line 266
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    check-cast v2, Lv/e;

    .line 271
    .line 272
    instance-of v4, v2, Lv/h;

    .line 273
    .line 274
    if-eqz v4, :cond_6

    .line 275
    .line 276
    iget-object v4, v2, Lv/e;->W:Landroid/view/View;

    .line 277
    .line 278
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 279
    .line 280
    check-cast v2, Lv/j;

    .line 281
    .line 282
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 283
    .line 284
    .line 285
    iput v12, v2, Lv/j;->h0:I

    .line 286
    .line 287
    iget-object v5, v2, Lv/j;->g0:[Lv/e;

    .line 288
    .line 289
    const/4 v6, 0x0

    .line 290
    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 291
    .line 292
    .line 293
    const/4 v5, 0x0

    .line 294
    :goto_2
    iget v6, v4, Landroidx/constraintlayout/widget/ConstraintHelper;->b:I

    .line 295
    .line 296
    if-ge v5, v6, :cond_7

    .line 297
    .line 298
    iget-object v6, v4, Landroidx/constraintlayout/widget/ConstraintHelper;->a:[I

    .line 299
    .line 300
    aget v6, v6, v5

    .line 301
    .line 302
    invoke-virtual {v10, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v6

    .line 306
    check-cast v6, Lv/e;

    .line 307
    .line 308
    invoke-virtual {v2, v6}, Lv/j;->C(Lv/e;)V

    .line 309
    .line 310
    .line 311
    add-int/2addr v5, v3

    .line 312
    goto :goto_2

    .line 313
    :cond_7
    check-cast v2, Lv/h;

    .line 314
    .line 315
    const/4 v4, 0x0

    .line 316
    :goto_3
    iget v5, v2, Lv/j;->h0:I

    .line 317
    .line 318
    if-ge v4, v5, :cond_6

    .line 319
    .line 320
    iget-object v5, v2, Lv/j;->g0:[Lv/e;

    .line 321
    .line 322
    aget-object v5, v5, v4

    .line 323
    .line 324
    add-int/2addr v4, v3

    .line 325
    goto :goto_3

    .line 326
    :cond_8
    return-void
.end method
