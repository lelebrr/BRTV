.class public final Lw/f;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public a:Lv/f;

.field public b:Z

.field public c:Z

.field public d:Lv/f;

.field public e:Ljava/util/ArrayList;

.field public f:Lw/c;

.field public g:Lw/b;

.field public h:Ljava/util/ArrayList;


# virtual methods
.method public final a(Lw/g;ILjava/util/ArrayList;Lw/l;)V
    .locals 6

    .line 1
    iget-object p1, p1, Lw/g;->d:Lw/n;

    .line 2
    .line 3
    iget-object v0, p1, Lw/n;->c:Lw/l;

    .line 4
    .line 5
    if-nez v0, :cond_a

    .line 6
    .line 7
    iget-object v0, p0, Lw/f;->a:Lv/f;

    .line 8
    .line 9
    iget-object v1, v0, Lv/e;->d:Lw/k;

    .line 10
    .line 11
    if-eq p1, v1, :cond_a

    .line 12
    .line 13
    iget-object v0, v0, Lv/e;->e:Lw/m;

    .line 14
    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    .line 17
    goto/16 :goto_6

    .line 18
    .line 19
    :cond_0
    if-nez p4, :cond_1

    .line 20
    .line 21
    new-instance p4, Lw/l;

    .line 22
    .line 23
    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput-object v0, p4, Lw/l;->a:Lw/n;

    .line 28
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p4, Lw/l;->b:Ljava/util/ArrayList;

    .line 35
    .line 36
    iput-object p1, p4, Lw/l;->a:Lw/n;

    .line 37
    .line 38
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    :cond_1
    iput-object p4, p1, Lw/n;->c:Lw/l;

    .line 42
    .line 43
    iget-object v0, p4, Lw/l;->b:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    iget-object v0, p1, Lw/n;->h:Lw/g;

    .line 49
    .line 50
    iget-object v1, v0, Lw/g;->k:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_3

    .line 61
    .line 62
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Lw/e;

    .line 67
    .line 68
    instance-of v3, v2, Lw/g;

    .line 69
    .line 70
    if-eqz v3, :cond_2

    .line 71
    .line 72
    check-cast v2, Lw/g;

    .line 73
    .line 74
    invoke-virtual {p0, v2, p2, p3, p4}, Lw/f;->a(Lw/g;ILjava/util/ArrayList;Lw/l;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    iget-object v1, p1, Lw/n;->i:Lw/g;

    .line 79
    .line 80
    iget-object v2, v1, Lw/g;->k:Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-eqz v3, :cond_5

    .line 91
    .line 92
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    check-cast v3, Lw/e;

    .line 97
    .line 98
    instance-of v4, v3, Lw/g;

    .line 99
    .line 100
    if-eqz v4, :cond_4

    .line 101
    .line 102
    check-cast v3, Lw/g;

    .line 103
    .line 104
    invoke-virtual {p0, v3, p2, p3, p4}, Lw/f;->a(Lw/g;ILjava/util/ArrayList;Lw/l;)V

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_5
    const/4 v2, 0x1

    .line 109
    if-ne p2, v2, :cond_7

    .line 110
    .line 111
    instance-of v3, p1, Lw/m;

    .line 112
    .line 113
    if-eqz v3, :cond_7

    .line 114
    .line 115
    move-object v3, p1

    .line 116
    check-cast v3, Lw/m;

    .line 117
    .line 118
    iget-object v3, v3, Lw/m;->k:Lw/g;

    .line 119
    .line 120
    iget-object v3, v3, Lw/g;->k:Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    if-eqz v4, :cond_7

    .line 131
    .line 132
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    check-cast v4, Lw/e;

    .line 137
    .line 138
    instance-of v5, v4, Lw/g;

    .line 139
    .line 140
    if-eqz v5, :cond_6

    .line 141
    .line 142
    check-cast v4, Lw/g;

    .line 143
    .line 144
    invoke-virtual {p0, v4, p2, p3, p4}, Lw/f;->a(Lw/g;ILjava/util/ArrayList;Lw/l;)V

    .line 145
    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_7
    iget-object v0, v0, Lw/g;->l:Ljava/util/ArrayList;

    .line 149
    .line 150
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    if-eqz v3, :cond_8

    .line 159
    .line 160
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    check-cast v3, Lw/g;

    .line 165
    .line 166
    invoke-virtual {p0, v3, p2, p3, p4}, Lw/f;->a(Lw/g;ILjava/util/ArrayList;Lw/l;)V

    .line 167
    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_8
    iget-object v0, v1, Lw/g;->l:Ljava/util/ArrayList;

    .line 171
    .line 172
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-eqz v1, :cond_9

    .line 181
    .line 182
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    check-cast v1, Lw/g;

    .line 187
    .line 188
    invoke-virtual {p0, v1, p2, p3, p4}, Lw/f;->a(Lw/g;ILjava/util/ArrayList;Lw/l;)V

    .line 189
    .line 190
    .line 191
    goto :goto_4

    .line 192
    :cond_9
    if-ne p2, v2, :cond_a

    .line 193
    .line 194
    instance-of v0, p1, Lw/m;

    .line 195
    .line 196
    if-eqz v0, :cond_a

    .line 197
    .line 198
    check-cast p1, Lw/m;

    .line 199
    .line 200
    iget-object p1, p1, Lw/m;->k:Lw/g;

    .line 201
    .line 202
    iget-object p1, p1, Lw/g;->l:Ljava/util/ArrayList;

    .line 203
    .line 204
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    if-eqz v0, :cond_a

    .line 213
    .line 214
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    check-cast v0, Lw/g;

    .line 219
    .line 220
    :try_start_0
    invoke-virtual {p0, v0, p2, p3, p4}, Lw/f;->a(Lw/g;ILjava/util/ArrayList;Lw/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    .line 222
    .line 223
    goto :goto_5

    .line 224
    :catchall_0
    move-exception p1

    .line 225
    throw p1

    .line 226
    :cond_a
    :goto_6
    return-void
.end method

.method public final b(Lv/f;)V
    .locals 22

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    iget-object v1, v0, Lv/f;->g0:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_2a

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lv/e;

    .line 20
    .line 21
    iget-object v3, v2, Lv/e;->J:[Lv/d;

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    aget-object v5, v3, v4

    .line 25
    .line 26
    const/4 v9, 0x1

    .line 27
    aget-object v3, v3, v9

    .line 28
    .line 29
    iget v6, v2, Lv/e;->X:I

    .line 30
    .line 31
    const/16 v7, 0x8

    .line 32
    .line 33
    if-ne v6, v7, :cond_0

    .line 34
    .line 35
    iput-boolean v9, v2, Lv/e;->a:Z

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget v6, v2, Lv/e;->o:F

    .line 39
    .line 40
    sget-object v7, Lv/d;->c:Lv/d;

    .line 41
    .line 42
    const/high16 v10, 0x3f800000    # 1.0f

    .line 43
    .line 44
    const/4 v8, 0x2

    .line 45
    cmpg-float v11, v6, v10

    .line 46
    .line 47
    if-gez v11, :cond_1

    .line 48
    .line 49
    if-ne v5, v7, :cond_1

    .line 50
    .line 51
    iput v8, v2, Lv/e;->j:I

    .line 52
    .line 53
    :cond_1
    iget v11, v2, Lv/e;->r:F

    .line 54
    .line 55
    cmpg-float v12, v11, v10

    .line 56
    .line 57
    if-gez v12, :cond_2

    .line 58
    .line 59
    if-ne v3, v7, :cond_2

    .line 60
    .line 61
    iput v8, v2, Lv/e;->k:I

    .line 62
    .line 63
    :cond_2
    iget v12, v2, Lv/e;->N:F

    .line 64
    .line 65
    sget-object v13, Lv/d;->b:Lv/d;

    .line 66
    .line 67
    sget-object v14, Lv/d;->a:Lv/d;

    .line 68
    .line 69
    const/4 v15, 0x0

    .line 70
    const/4 v10, 0x3

    .line 71
    cmpl-float v12, v12, v15

    .line 72
    .line 73
    if-lez v12, :cond_8

    .line 74
    .line 75
    if-ne v5, v7, :cond_4

    .line 76
    .line 77
    if-eq v3, v13, :cond_3

    .line 78
    .line 79
    if-ne v3, v14, :cond_4

    .line 80
    .line 81
    :cond_3
    iput v10, v2, Lv/e;->j:I

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_4
    if-ne v3, v7, :cond_6

    .line 85
    .line 86
    if-eq v5, v13, :cond_5

    .line 87
    .line 88
    if-ne v5, v14, :cond_6

    .line 89
    .line 90
    :cond_5
    iput v10, v2, Lv/e;->k:I

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_6
    if-ne v5, v7, :cond_8

    .line 94
    .line 95
    if-ne v3, v7, :cond_8

    .line 96
    .line 97
    iget v12, v2, Lv/e;->j:I

    .line 98
    .line 99
    if-nez v12, :cond_7

    .line 100
    .line 101
    iput v10, v2, Lv/e;->j:I

    .line 102
    .line 103
    :cond_7
    iget v12, v2, Lv/e;->k:I

    .line 104
    .line 105
    if-nez v12, :cond_8

    .line 106
    .line 107
    iput v10, v2, Lv/e;->k:I

    .line 108
    .line 109
    :cond_8
    :goto_1
    iget-object v12, v2, Lv/e;->A:Lv/c;

    .line 110
    .line 111
    iget-object v15, v2, Lv/e;->y:Lv/c;

    .line 112
    .line 113
    if-ne v5, v7, :cond_a

    .line 114
    .line 115
    iget v4, v2, Lv/e;->j:I

    .line 116
    .line 117
    if-ne v4, v9, :cond_a

    .line 118
    .line 119
    iget-object v4, v15, Lv/c;->d:Lv/c;

    .line 120
    .line 121
    if-eqz v4, :cond_9

    .line 122
    .line 123
    iget-object v4, v12, Lv/c;->d:Lv/c;

    .line 124
    .line 125
    if-nez v4, :cond_a

    .line 126
    .line 127
    :cond_9
    move-object v5, v13

    .line 128
    :cond_a
    iget-object v4, v2, Lv/e;->B:Lv/c;

    .line 129
    .line 130
    iget-object v8, v2, Lv/e;->z:Lv/c;

    .line 131
    .line 132
    if-ne v3, v7, :cond_c

    .line 133
    .line 134
    iget v10, v2, Lv/e;->k:I

    .line 135
    .line 136
    if-ne v10, v9, :cond_c

    .line 137
    .line 138
    iget-object v10, v8, Lv/c;->d:Lv/c;

    .line 139
    .line 140
    if-eqz v10, :cond_b

    .line 141
    .line 142
    iget-object v10, v4, Lv/c;->d:Lv/c;

    .line 143
    .line 144
    if-nez v10, :cond_c

    .line 145
    .line 146
    :cond_b
    move-object v10, v13

    .line 147
    goto :goto_2

    .line 148
    :cond_c
    move-object v10, v3

    .line 149
    :goto_2
    iget-object v3, v2, Lv/e;->d:Lw/k;

    .line 150
    .line 151
    iput-object v5, v3, Lw/n;->d:Lv/d;

    .line 152
    .line 153
    iget v9, v2, Lv/e;->j:I

    .line 154
    .line 155
    iput v9, v3, Lw/n;->a:I

    .line 156
    .line 157
    move-object/from16 v18, v8

    .line 158
    .line 159
    iget-object v8, v2, Lv/e;->e:Lw/m;

    .line 160
    .line 161
    iput-object v10, v8, Lw/n;->d:Lv/d;

    .line 162
    .line 163
    move-object/from16 v19, v1

    .line 164
    .line 165
    iget v1, v2, Lv/e;->k:I

    .line 166
    .line 167
    iput v1, v8, Lw/n;->a:I

    .line 168
    .line 169
    move-object/from16 v20, v3

    .line 170
    .line 171
    sget-object v3, Lv/d;->d:Lv/d;

    .line 172
    .line 173
    if-eq v5, v3, :cond_d

    .line 174
    .line 175
    if-eq v5, v14, :cond_d

    .line 176
    .line 177
    if-ne v5, v13, :cond_f

    .line 178
    .line 179
    :cond_d
    if-eq v10, v3, :cond_e

    .line 180
    .line 181
    if-eq v10, v14, :cond_e

    .line 182
    .line 183
    if-ne v10, v13, :cond_f

    .line 184
    .line 185
    :cond_e
    move-object v9, v8

    .line 186
    move-object/from16 v1, v20

    .line 187
    .line 188
    goto/16 :goto_c

    .line 189
    .line 190
    :cond_f
    iget-object v4, v2, Lv/e;->G:[Lv/c;

    .line 191
    .line 192
    const/high16 v12, 0x3f000000    # 0.5f

    .line 193
    .line 194
    if-ne v5, v7, :cond_11

    .line 195
    .line 196
    if-eq v10, v13, :cond_10

    .line 197
    .line 198
    if-ne v10, v14, :cond_11

    .line 199
    .line 200
    :cond_10
    const/4 v15, 0x3

    .line 201
    goto :goto_3

    .line 202
    :cond_11
    move-object v12, v8

    .line 203
    move-object/from16 v15, v20

    .line 204
    .line 205
    goto/16 :goto_8

    .line 206
    .line 207
    :goto_3
    if-ne v9, v15, :cond_14

    .line 208
    .line 209
    if-ne v10, v13, :cond_12

    .line 210
    .line 211
    const/4 v1, 0x0

    .line 212
    const/4 v6, 0x0

    .line 213
    move-object/from16 v15, v20

    .line 214
    .line 215
    move-object/from16 v3, p0

    .line 216
    .line 217
    move-object v4, v2

    .line 218
    move-object v5, v13

    .line 219
    move-object v7, v13

    .line 220
    move-object v9, v8

    .line 221
    move v8, v1

    .line 222
    invoke-virtual/range {v3 .. v8}, Lw/f;->f(Lv/e;Lv/d;ILv/d;I)V

    .line 223
    .line 224
    .line 225
    goto :goto_4

    .line 226
    :cond_12
    move-object v9, v8

    .line 227
    move-object/from16 v15, v20

    .line 228
    .line 229
    :goto_4
    invoke-virtual {v2}, Lv/e;->j()I

    .line 230
    .line 231
    .line 232
    move-result v8

    .line 233
    int-to-float v1, v8

    .line 234
    iget v3, v2, Lv/e;->N:F

    .line 235
    .line 236
    mul-float v1, v1, v3

    .line 237
    .line 238
    add-float/2addr v1, v12

    .line 239
    float-to-int v6, v1

    .line 240
    move-object/from16 v3, p0

    .line 241
    .line 242
    move-object v4, v2

    .line 243
    move-object v5, v14

    .line 244
    move-object v7, v14

    .line 245
    invoke-virtual/range {v3 .. v8}, Lw/f;->f(Lv/e;Lv/d;ILv/d;I)V

    .line 246
    .line 247
    .line 248
    iget-object v1, v15, Lw/n;->e:Lw/h;

    .line 249
    .line 250
    invoke-virtual {v2}, Lv/e;->m()I

    .line 251
    .line 252
    .line 253
    move-result v3

    .line 254
    invoke-virtual {v1, v3}, Lw/h;->d(I)V

    .line 255
    .line 256
    .line 257
    iget-object v1, v9, Lw/n;->e:Lw/h;

    .line 258
    .line 259
    invoke-virtual {v2}, Lv/e;->j()I

    .line 260
    .line 261
    .line 262
    move-result v3

    .line 263
    invoke-virtual {v1, v3}, Lw/h;->d(I)V

    .line 264
    .line 265
    .line 266
    const/4 v8, 0x1

    .line 267
    iput-boolean v8, v2, Lv/e;->a:Z

    .line 268
    .line 269
    :cond_13
    :goto_5
    move-object/from16 v1, v19

    .line 270
    .line 271
    goto/16 :goto_0

    .line 272
    .line 273
    :cond_14
    move-object/from16 v21, v8

    .line 274
    .line 275
    move-object/from16 v15, v20

    .line 276
    .line 277
    const/4 v8, 0x1

    .line 278
    if-ne v9, v8, :cond_15

    .line 279
    .line 280
    const/4 v6, 0x0

    .line 281
    const/4 v8, 0x0

    .line 282
    move-object/from16 v3, p0

    .line 283
    .line 284
    move-object v4, v2

    .line 285
    move-object v5, v13

    .line 286
    move-object v7, v10

    .line 287
    invoke-virtual/range {v3 .. v8}, Lw/f;->f(Lv/e;Lv/d;ILv/d;I)V

    .line 288
    .line 289
    .line 290
    iget-object v1, v15, Lw/n;->e:Lw/h;

    .line 291
    .line 292
    invoke-virtual {v2}, Lv/e;->m()I

    .line 293
    .line 294
    .line 295
    move-result v2

    .line 296
    iput v2, v1, Lw/h;->m:I

    .line 297
    .line 298
    goto :goto_5

    .line 299
    :cond_15
    const/4 v8, 0x2

    .line 300
    if-ne v9, v8, :cond_18

    .line 301
    .line 302
    iget-object v8, v0, Lv/e;->J:[Lv/d;

    .line 303
    .line 304
    const/16 v16, 0x0

    .line 305
    .line 306
    aget-object v8, v8, v16

    .line 307
    .line 308
    if-eq v8, v14, :cond_17

    .line 309
    .line 310
    if-ne v8, v3, :cond_16

    .line 311
    .line 312
    goto :goto_6

    .line 313
    :cond_16
    move-object/from16 v12, v21

    .line 314
    .line 315
    goto/16 :goto_8

    .line 316
    .line 317
    :cond_17
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lv/e;->m()I

    .line 318
    .line 319
    .line 320
    move-result v1

    .line 321
    int-to-float v1, v1

    .line 322
    mul-float v6, v6, v1

    .line 323
    .line 324
    add-float/2addr v6, v12

    .line 325
    float-to-int v6, v6

    .line 326
    invoke-virtual {v2}, Lv/e;->j()I

    .line 327
    .line 328
    .line 329
    move-result v8

    .line 330
    move-object/from16 v3, p0

    .line 331
    .line 332
    move-object v4, v2

    .line 333
    move-object v5, v14

    .line 334
    move-object v7, v10

    .line 335
    invoke-virtual/range {v3 .. v8}, Lw/f;->f(Lv/e;Lv/d;ILv/d;I)V

    .line 336
    .line 337
    .line 338
    iget-object v1, v15, Lw/n;->e:Lw/h;

    .line 339
    .line 340
    invoke-virtual {v2}, Lv/e;->m()I

    .line 341
    .line 342
    .line 343
    move-result v3

    .line 344
    invoke-virtual {v1, v3}, Lw/h;->d(I)V

    .line 345
    .line 346
    .line 347
    move-object/from16 v8, v21

    .line 348
    .line 349
    iget-object v1, v8, Lw/n;->e:Lw/h;

    .line 350
    .line 351
    invoke-virtual {v2}, Lv/e;->j()I

    .line 352
    .line 353
    .line 354
    move-result v3

    .line 355
    invoke-virtual {v1, v3}, Lw/h;->d(I)V

    .line 356
    .line 357
    .line 358
    const/4 v1, 0x1

    .line 359
    iput-boolean v1, v2, Lv/e;->a:Z

    .line 360
    .line 361
    goto :goto_5

    .line 362
    :cond_18
    move-object/from16 v8, v21

    .line 363
    .line 364
    const/16 v16, 0x0

    .line 365
    .line 366
    const/16 v17, 0x1

    .line 367
    .line 368
    aget-object v12, v4, v16

    .line 369
    .line 370
    iget-object v12, v12, Lv/c;->d:Lv/c;

    .line 371
    .line 372
    if-eqz v12, :cond_1a

    .line 373
    .line 374
    aget-object v12, v4, v17

    .line 375
    .line 376
    iget-object v12, v12, Lv/c;->d:Lv/c;

    .line 377
    .line 378
    if-nez v12, :cond_19

    .line 379
    .line 380
    goto :goto_7

    .line 381
    :cond_19
    move-object v12, v8

    .line 382
    goto :goto_8

    .line 383
    :cond_1a
    :goto_7
    const/4 v6, 0x0

    .line 384
    const/4 v1, 0x0

    .line 385
    move-object/from16 v3, p0

    .line 386
    .line 387
    move-object v4, v2

    .line 388
    move-object v5, v13

    .line 389
    move-object v7, v10

    .line 390
    move-object v12, v8

    .line 391
    move v8, v1

    .line 392
    invoke-virtual/range {v3 .. v8}, Lw/f;->f(Lv/e;Lv/d;ILv/d;I)V

    .line 393
    .line 394
    .line 395
    iget-object v1, v15, Lw/n;->e:Lw/h;

    .line 396
    .line 397
    invoke-virtual {v2}, Lv/e;->m()I

    .line 398
    .line 399
    .line 400
    move-result v3

    .line 401
    invoke-virtual {v1, v3}, Lw/h;->d(I)V

    .line 402
    .line 403
    .line 404
    iget-object v1, v12, Lw/n;->e:Lw/h;

    .line 405
    .line 406
    invoke-virtual {v2}, Lv/e;->j()I

    .line 407
    .line 408
    .line 409
    move-result v3

    .line 410
    invoke-virtual {v1, v3}, Lw/h;->d(I)V

    .line 411
    .line 412
    .line 413
    const/4 v1, 0x1

    .line 414
    iput-boolean v1, v2, Lv/e;->a:Z

    .line 415
    .line 416
    goto/16 :goto_5

    .line 417
    .line 418
    :goto_8
    if-ne v10, v7, :cond_1c

    .line 419
    .line 420
    if-eq v5, v13, :cond_1b

    .line 421
    .line 422
    if-ne v5, v14, :cond_1c

    .line 423
    .line 424
    :cond_1b
    const/4 v8, 0x3

    .line 425
    goto :goto_9

    .line 426
    :cond_1c
    const/4 v3, 0x1

    .line 427
    goto/16 :goto_a

    .line 428
    .line 429
    :goto_9
    if-ne v1, v8, :cond_1f

    .line 430
    .line 431
    if-ne v5, v13, :cond_1d

    .line 432
    .line 433
    const/4 v8, 0x0

    .line 434
    const/4 v6, 0x0

    .line 435
    move-object/from16 v3, p0

    .line 436
    .line 437
    move-object v4, v2

    .line 438
    move-object v5, v13

    .line 439
    move-object v7, v13

    .line 440
    invoke-virtual/range {v3 .. v8}, Lw/f;->f(Lv/e;Lv/d;ILv/d;I)V

    .line 441
    .line 442
    .line 443
    :cond_1d
    invoke-virtual {v2}, Lv/e;->m()I

    .line 444
    .line 445
    .line 446
    move-result v6

    .line 447
    iget v1, v2, Lv/e;->N:F

    .line 448
    .line 449
    iget v3, v2, Lv/e;->O:I

    .line 450
    .line 451
    const/4 v4, -0x1

    .line 452
    if-ne v3, v4, :cond_1e

    .line 453
    .line 454
    const/high16 v3, 0x3f800000    # 1.0f

    .line 455
    .line 456
    div-float v1, v3, v1

    .line 457
    .line 458
    :cond_1e
    int-to-float v3, v6

    .line 459
    mul-float v3, v3, v1

    .line 460
    .line 461
    const/high16 v1, 0x3f000000    # 0.5f

    .line 462
    .line 463
    add-float/2addr v3, v1

    .line 464
    float-to-int v8, v3

    .line 465
    move-object/from16 v3, p0

    .line 466
    .line 467
    move-object v4, v2

    .line 468
    move-object v5, v14

    .line 469
    move-object v7, v14

    .line 470
    invoke-virtual/range {v3 .. v8}, Lw/f;->f(Lv/e;Lv/d;ILv/d;I)V

    .line 471
    .line 472
    .line 473
    iget-object v1, v15, Lw/n;->e:Lw/h;

    .line 474
    .line 475
    invoke-virtual {v2}, Lv/e;->m()I

    .line 476
    .line 477
    .line 478
    move-result v3

    .line 479
    invoke-virtual {v1, v3}, Lw/h;->d(I)V

    .line 480
    .line 481
    .line 482
    iget-object v1, v12, Lw/n;->e:Lw/h;

    .line 483
    .line 484
    invoke-virtual {v2}, Lv/e;->j()I

    .line 485
    .line 486
    .line 487
    move-result v3

    .line 488
    invoke-virtual {v1, v3}, Lw/h;->d(I)V

    .line 489
    .line 490
    .line 491
    const/4 v8, 0x1

    .line 492
    iput-boolean v8, v2, Lv/e;->a:Z

    .line 493
    .line 494
    goto/16 :goto_5

    .line 495
    .line 496
    :cond_1f
    const/4 v8, 0x1

    .line 497
    if-ne v1, v8, :cond_20

    .line 498
    .line 499
    const/4 v8, 0x0

    .line 500
    const/4 v6, 0x0

    .line 501
    move-object/from16 v3, p0

    .line 502
    .line 503
    move-object v4, v2

    .line 504
    move-object v7, v13

    .line 505
    invoke-virtual/range {v3 .. v8}, Lw/f;->f(Lv/e;Lv/d;ILv/d;I)V

    .line 506
    .line 507
    .line 508
    iget-object v1, v12, Lw/n;->e:Lw/h;

    .line 509
    .line 510
    invoke-virtual {v2}, Lv/e;->j()I

    .line 511
    .line 512
    .line 513
    move-result v2

    .line 514
    iput v2, v1, Lw/h;->m:I

    .line 515
    .line 516
    goto/16 :goto_5

    .line 517
    .line 518
    :cond_20
    const/4 v8, 0x2

    .line 519
    if-ne v1, v8, :cond_22

    .line 520
    .line 521
    iget-object v4, v0, Lv/e;->J:[Lv/d;

    .line 522
    .line 523
    const/4 v8, 0x1

    .line 524
    aget-object v4, v4, v8

    .line 525
    .line 526
    if-eq v4, v14, :cond_21

    .line 527
    .line 528
    if-ne v4, v3, :cond_1c

    .line 529
    .line 530
    :cond_21
    invoke-virtual {v2}, Lv/e;->m()I

    .line 531
    .line 532
    .line 533
    move-result v6

    .line 534
    invoke-virtual/range {p1 .. p1}, Lv/e;->j()I

    .line 535
    .line 536
    .line 537
    move-result v1

    .line 538
    int-to-float v1, v1

    .line 539
    mul-float v11, v11, v1

    .line 540
    .line 541
    const/high16 v1, 0x3f000000    # 0.5f

    .line 542
    .line 543
    add-float/2addr v11, v1

    .line 544
    float-to-int v8, v11

    .line 545
    move-object/from16 v3, p0

    .line 546
    .line 547
    move-object v4, v2

    .line 548
    move-object v7, v14

    .line 549
    invoke-virtual/range {v3 .. v8}, Lw/f;->f(Lv/e;Lv/d;ILv/d;I)V

    .line 550
    .line 551
    .line 552
    iget-object v1, v15, Lw/n;->e:Lw/h;

    .line 553
    .line 554
    invoke-virtual {v2}, Lv/e;->m()I

    .line 555
    .line 556
    .line 557
    move-result v3

    .line 558
    invoke-virtual {v1, v3}, Lw/h;->d(I)V

    .line 559
    .line 560
    .line 561
    iget-object v1, v12, Lw/n;->e:Lw/h;

    .line 562
    .line 563
    invoke-virtual {v2}, Lv/e;->j()I

    .line 564
    .line 565
    .line 566
    move-result v3

    .line 567
    invoke-virtual {v1, v3}, Lw/h;->d(I)V

    .line 568
    .line 569
    .line 570
    const/4 v1, 0x1

    .line 571
    iput-boolean v1, v2, Lv/e;->a:Z

    .line 572
    .line 573
    goto/16 :goto_5

    .line 574
    .line 575
    :cond_22
    const/4 v3, 0x2

    .line 576
    aget-object v8, v4, v3

    .line 577
    .line 578
    iget-object v3, v8, Lv/c;->d:Lv/c;

    .line 579
    .line 580
    if-eqz v3, :cond_23

    .line 581
    .line 582
    const/4 v3, 0x3

    .line 583
    aget-object v3, v4, v3

    .line 584
    .line 585
    iget-object v3, v3, Lv/c;->d:Lv/c;

    .line 586
    .line 587
    if-nez v3, :cond_1c

    .line 588
    .line 589
    :cond_23
    const/4 v6, 0x0

    .line 590
    const/4 v8, 0x0

    .line 591
    move-object/from16 v3, p0

    .line 592
    .line 593
    move-object v4, v2

    .line 594
    move-object v5, v13

    .line 595
    move-object v7, v10

    .line 596
    invoke-virtual/range {v3 .. v8}, Lw/f;->f(Lv/e;Lv/d;ILv/d;I)V

    .line 597
    .line 598
    .line 599
    iget-object v1, v15, Lw/n;->e:Lw/h;

    .line 600
    .line 601
    invoke-virtual {v2}, Lv/e;->m()I

    .line 602
    .line 603
    .line 604
    move-result v3

    .line 605
    invoke-virtual {v1, v3}, Lw/h;->d(I)V

    .line 606
    .line 607
    .line 608
    iget-object v1, v12, Lw/n;->e:Lw/h;

    .line 609
    .line 610
    invoke-virtual {v2}, Lv/e;->j()I

    .line 611
    .line 612
    .line 613
    move-result v3

    .line 614
    invoke-virtual {v1, v3}, Lw/h;->d(I)V

    .line 615
    .line 616
    .line 617
    const/4 v3, 0x1

    .line 618
    iput-boolean v3, v2, Lv/e;->a:Z

    .line 619
    .line 620
    goto/16 :goto_5

    .line 621
    .line 622
    :goto_a
    if-ne v5, v7, :cond_13

    .line 623
    .line 624
    if-ne v10, v7, :cond_13

    .line 625
    .line 626
    if-eq v9, v3, :cond_27

    .line 627
    .line 628
    if-ne v1, v3, :cond_24

    .line 629
    .line 630
    goto :goto_b

    .line 631
    :cond_24
    const/4 v4, 0x2

    .line 632
    if-ne v1, v4, :cond_13

    .line 633
    .line 634
    if-ne v9, v4, :cond_13

    .line 635
    .line 636
    iget-object v1, v0, Lv/e;->J:[Lv/d;

    .line 637
    .line 638
    const/4 v4, 0x0

    .line 639
    aget-object v4, v1, v4

    .line 640
    .line 641
    if-eq v4, v14, :cond_25

    .line 642
    .line 643
    if-ne v4, v14, :cond_13

    .line 644
    .line 645
    :cond_25
    aget-object v1, v1, v3

    .line 646
    .line 647
    if-eq v1, v14, :cond_26

    .line 648
    .line 649
    if-ne v1, v14, :cond_13

    .line 650
    .line 651
    :cond_26
    invoke-virtual/range {p1 .. p1}, Lv/e;->m()I

    .line 652
    .line 653
    .line 654
    move-result v1

    .line 655
    int-to-float v1, v1

    .line 656
    mul-float v6, v6, v1

    .line 657
    .line 658
    const/high16 v1, 0x3f000000    # 0.5f

    .line 659
    .line 660
    add-float/2addr v6, v1

    .line 661
    float-to-int v6, v6

    .line 662
    invoke-virtual/range {p1 .. p1}, Lv/e;->j()I

    .line 663
    .line 664
    .line 665
    move-result v3

    .line 666
    int-to-float v3, v3

    .line 667
    mul-float v11, v11, v3

    .line 668
    .line 669
    add-float/2addr v11, v1

    .line 670
    float-to-int v8, v11

    .line 671
    move-object/from16 v3, p0

    .line 672
    .line 673
    move-object v4, v2

    .line 674
    move-object v5, v14

    .line 675
    move-object v7, v14

    .line 676
    invoke-virtual/range {v3 .. v8}, Lw/f;->f(Lv/e;Lv/d;ILv/d;I)V

    .line 677
    .line 678
    .line 679
    iget-object v1, v15, Lw/n;->e:Lw/h;

    .line 680
    .line 681
    invoke-virtual {v2}, Lv/e;->m()I

    .line 682
    .line 683
    .line 684
    move-result v3

    .line 685
    invoke-virtual {v1, v3}, Lw/h;->d(I)V

    .line 686
    .line 687
    .line 688
    iget-object v1, v12, Lw/n;->e:Lw/h;

    .line 689
    .line 690
    invoke-virtual {v2}, Lv/e;->j()I

    .line 691
    .line 692
    .line 693
    move-result v3

    .line 694
    invoke-virtual {v1, v3}, Lw/h;->d(I)V

    .line 695
    .line 696
    .line 697
    const/4 v1, 0x1

    .line 698
    iput-boolean v1, v2, Lv/e;->a:Z

    .line 699
    .line 700
    goto/16 :goto_5

    .line 701
    .line 702
    :cond_27
    :goto_b
    const/4 v8, 0x0

    .line 703
    const/4 v6, 0x0

    .line 704
    move-object/from16 v3, p0

    .line 705
    .line 706
    move-object v4, v2

    .line 707
    move-object v5, v13

    .line 708
    move-object v7, v13

    .line 709
    invoke-virtual/range {v3 .. v8}, Lw/f;->f(Lv/e;Lv/d;ILv/d;I)V

    .line 710
    .line 711
    .line 712
    iget-object v1, v15, Lw/n;->e:Lw/h;

    .line 713
    .line 714
    invoke-virtual {v2}, Lv/e;->m()I

    .line 715
    .line 716
    .line 717
    move-result v3

    .line 718
    iput v3, v1, Lw/h;->m:I

    .line 719
    .line 720
    iget-object v1, v12, Lw/n;->e:Lw/h;

    .line 721
    .line 722
    invoke-virtual {v2}, Lv/e;->j()I

    .line 723
    .line 724
    .line 725
    move-result v2

    .line 726
    iput v2, v1, Lw/h;->m:I

    .line 727
    .line 728
    goto/16 :goto_5

    .line 729
    .line 730
    :goto_c
    invoke-virtual {v2}, Lv/e;->m()I

    .line 731
    .line 732
    .line 733
    move-result v6

    .line 734
    if-ne v5, v3, :cond_28

    .line 735
    .line 736
    invoke-virtual/range {p1 .. p1}, Lv/e;->m()I

    .line 737
    .line 738
    .line 739
    move-result v5

    .line 740
    iget v6, v15, Lv/c;->e:I

    .line 741
    .line 742
    sub-int/2addr v5, v6

    .line 743
    iget v6, v12, Lv/c;->e:I

    .line 744
    .line 745
    sub-int/2addr v5, v6

    .line 746
    move v6, v5

    .line 747
    move-object v5, v14

    .line 748
    :cond_28
    invoke-virtual {v2}, Lv/e;->j()I

    .line 749
    .line 750
    .line 751
    move-result v7

    .line 752
    if-ne v10, v3, :cond_29

    .line 753
    .line 754
    invoke-virtual/range {p1 .. p1}, Lv/e;->j()I

    .line 755
    .line 756
    .line 757
    move-result v3

    .line 758
    move-object/from16 v7, v18

    .line 759
    .line 760
    iget v7, v7, Lv/c;->e:I

    .line 761
    .line 762
    sub-int/2addr v3, v7

    .line 763
    iget v4, v4, Lv/c;->e:I

    .line 764
    .line 765
    sub-int/2addr v3, v4

    .line 766
    move v8, v3

    .line 767
    move-object v7, v14

    .line 768
    goto :goto_d

    .line 769
    :cond_29
    move v8, v7

    .line 770
    move-object v7, v10

    .line 771
    :goto_d
    move-object/from16 v3, p0

    .line 772
    .line 773
    move-object v4, v2

    .line 774
    invoke-virtual/range {v3 .. v8}, Lw/f;->f(Lv/e;Lv/d;ILv/d;I)V

    .line 775
    .line 776
    .line 777
    iget-object v1, v1, Lw/n;->e:Lw/h;

    .line 778
    .line 779
    invoke-virtual {v2}, Lv/e;->m()I

    .line 780
    .line 781
    .line 782
    move-result v3

    .line 783
    invoke-virtual {v1, v3}, Lw/h;->d(I)V

    .line 784
    .line 785
    .line 786
    iget-object v1, v9, Lw/n;->e:Lw/h;

    .line 787
    .line 788
    invoke-virtual {v2}, Lv/e;->j()I

    .line 789
    .line 790
    .line 791
    move-result v3

    .line 792
    invoke-virtual {v1, v3}, Lw/h;->d(I)V

    .line 793
    .line 794
    .line 795
    const/4 v1, 0x1

    .line 796
    iput-boolean v1, v2, Lv/e;->a:Z

    .line 797
    .line 798
    goto/16 :goto_5

    .line 799
    .line 800
    :cond_2a
    return-void
.end method

.method public final c()V
    .locals 8

    .line 1
    iget-object v0, p0, Lw/f;->e:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lw/f;->d:Lv/f;

    .line 7
    .line 8
    iget-object v2, v1, Lv/e;->d:Lw/k;

    .line 9
    .line 10
    invoke-virtual {v2}, Lw/k;->f()V

    .line 11
    .line 12
    .line 13
    iget-object v2, v1, Lv/e;->e:Lw/m;

    .line 14
    .line 15
    invoke-virtual {v2}, Lw/m;->f()V

    .line 16
    .line 17
    .line 18
    iget-object v3, v1, Lv/e;->d:Lw/k;

    .line 19
    .line 20
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    iget-object v2, v1, Lv/f;->g0:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const/4 v3, 0x0

    .line 33
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    const/4 v5, 0x1

    .line 38
    const/4 v6, 0x0

    .line 39
    if-eqz v4, :cond_8

    .line 40
    .line 41
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    check-cast v4, Lv/e;

    .line 46
    .line 47
    instance-of v7, v4, Lv/i;

    .line 48
    .line 49
    if-eqz v7, :cond_1

    .line 50
    .line 51
    new-instance v5, Lw/i;

    .line 52
    .line 53
    invoke-direct {v5, v4}, Lw/n;-><init>(Lv/e;)V

    .line 54
    .line 55
    .line 56
    iget-object v6, v4, Lv/e;->d:Lw/k;

    .line 57
    .line 58
    invoke-virtual {v6}, Lw/k;->f()V

    .line 59
    .line 60
    .line 61
    iget-object v6, v4, Lv/e;->e:Lw/m;

    .line 62
    .line 63
    invoke-virtual {v6}, Lw/m;->f()V

    .line 64
    .line 65
    .line 66
    check-cast v4, Lv/i;

    .line 67
    .line 68
    iget v4, v4, Lv/i;->k0:I

    .line 69
    .line 70
    iput v4, v5, Lw/n;->f:I

    .line 71
    .line 72
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {v4}, Lv/e;->r()Z

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    if-eqz v7, :cond_4

    .line 81
    .line 82
    iget-object v7, v4, Lv/e;->b:Lw/d;

    .line 83
    .line 84
    if-nez v7, :cond_2

    .line 85
    .line 86
    new-instance v7, Lw/d;

    .line 87
    .line 88
    invoke-direct {v7, v4, v6}, Lw/d;-><init>(Lv/e;I)V

    .line 89
    .line 90
    .line 91
    iput-object v7, v4, Lv/e;->b:Lw/d;

    .line 92
    .line 93
    :cond_2
    if-nez v3, :cond_3

    .line 94
    .line 95
    new-instance v3, Ljava/util/HashSet;

    .line 96
    .line 97
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 98
    .line 99
    .line 100
    :cond_3
    iget-object v6, v4, Lv/e;->b:Lw/d;

    .line 101
    .line 102
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_4
    iget-object v6, v4, Lv/e;->d:Lw/k;

    .line 107
    .line 108
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    :goto_1
    invoke-virtual {v4}, Lv/e;->s()Z

    .line 112
    .line 113
    .line 114
    move-result v6

    .line 115
    if-eqz v6, :cond_7

    .line 116
    .line 117
    iget-object v6, v4, Lv/e;->c:Lw/d;

    .line 118
    .line 119
    if-nez v6, :cond_5

    .line 120
    .line 121
    new-instance v6, Lw/d;

    .line 122
    .line 123
    invoke-direct {v6, v4, v5}, Lw/d;-><init>(Lv/e;I)V

    .line 124
    .line 125
    .line 126
    iput-object v6, v4, Lv/e;->c:Lw/d;

    .line 127
    .line 128
    :cond_5
    if-nez v3, :cond_6

    .line 129
    .line 130
    new-instance v3, Ljava/util/HashSet;

    .line 131
    .line 132
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 133
    .line 134
    .line 135
    :cond_6
    iget-object v5, v4, Lv/e;->c:Lw/d;

    .line 136
    .line 137
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_7
    iget-object v5, v4, Lv/e;->e:Lw/m;

    .line 142
    .line 143
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    :goto_2
    instance-of v5, v4, Lv/j;

    .line 147
    .line 148
    if-eqz v5, :cond_0

    .line 149
    .line 150
    new-instance v5, Lw/j;

    .line 151
    .line 152
    invoke-direct {v5, v4}, Lw/n;-><init>(Lv/e;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    goto :goto_0

    .line 159
    :cond_8
    if-eqz v3, :cond_9

    .line 160
    .line 161
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 162
    .line 163
    .line 164
    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    if-eqz v3, :cond_a

    .line 173
    .line 174
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    check-cast v3, Lw/n;

    .line 179
    .line 180
    invoke-virtual {v3}, Lw/n;->f()V

    .line 181
    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    if-eqz v2, :cond_c

    .line 193
    .line 194
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    check-cast v2, Lw/n;

    .line 199
    .line 200
    iget-object v3, v2, Lw/n;->b:Lv/e;

    .line 201
    .line 202
    if-ne v3, v1, :cond_b

    .line 203
    .line 204
    goto :goto_4

    .line 205
    :cond_b
    invoke-virtual {v2}, Lw/n;->d()V

    .line 206
    .line 207
    .line 208
    goto :goto_4

    .line 209
    :cond_c
    iget-object v0, p0, Lw/f;->h:Ljava/util/ArrayList;

    .line 210
    .line 211
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 212
    .line 213
    .line 214
    iget-object v1, p0, Lw/f;->a:Lv/f;

    .line 215
    .line 216
    iget-object v2, v1, Lv/e;->d:Lw/k;

    .line 217
    .line 218
    invoke-virtual {p0, v2, v6, v0}, Lw/f;->e(Lw/n;ILjava/util/ArrayList;)V

    .line 219
    .line 220
    .line 221
    iget-object v1, v1, Lv/e;->e:Lw/m;

    .line 222
    .line 223
    invoke-virtual {p0, v1, v5, v0}, Lw/f;->e(Lw/n;ILjava/util/ArrayList;)V

    .line 224
    .line 225
    .line 226
    iput-boolean v6, p0, Lw/f;->b:Z

    .line 227
    .line 228
    return-void
.end method

.method public final d(Lv/f;I)I
    .locals 19

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v1, Lw/f;->h:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    const/4 v7, 0x0

    .line 14
    const-wide/16 v8, 0x0

    .line 15
    .line 16
    :goto_0
    if-ge v7, v4, :cond_d

    .line 17
    .line 18
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v10

    .line 22
    check-cast v10, Lw/l;

    .line 23
    .line 24
    iget-object v10, v10, Lw/l;->a:Lw/n;

    .line 25
    .line 26
    instance-of v11, v10, Lw/d;

    .line 27
    .line 28
    if-eqz v11, :cond_0

    .line 29
    .line 30
    move-object v11, v10

    .line 31
    check-cast v11, Lw/d;

    .line 32
    .line 33
    iget v11, v11, Lw/n;->f:I

    .line 34
    .line 35
    if-eq v11, v2, :cond_2

    .line 36
    .line 37
    :goto_1
    move-object/from16 v18, v3

    .line 38
    .line 39
    move/from16 v16, v4

    .line 40
    .line 41
    move/from16 v17, v7

    .line 42
    .line 43
    const-wide/16 v0, 0x0

    .line 44
    .line 45
    goto/16 :goto_8

    .line 46
    .line 47
    :cond_0
    if-nez v2, :cond_1

    .line 48
    .line 49
    instance-of v11, v10, Lw/k;

    .line 50
    .line 51
    if-nez v11, :cond_2

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    instance-of v11, v10, Lw/m;

    .line 55
    .line 56
    if-nez v11, :cond_2

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    if-nez v2, :cond_3

    .line 60
    .line 61
    iget-object v11, v0, Lv/e;->d:Lw/k;

    .line 62
    .line 63
    :goto_2
    iget-object v11, v11, Lw/n;->h:Lw/g;

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_3
    iget-object v11, v0, Lv/e;->e:Lw/m;

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :goto_3
    if-nez v2, :cond_4

    .line 70
    .line 71
    iget-object v12, v0, Lv/e;->d:Lw/k;

    .line 72
    .line 73
    :goto_4
    iget-object v12, v12, Lw/n;->i:Lw/g;

    .line 74
    .line 75
    goto :goto_5

    .line 76
    :cond_4
    iget-object v12, v0, Lv/e;->e:Lw/m;

    .line 77
    .line 78
    goto :goto_4

    .line 79
    :goto_5
    iget-object v13, v10, Lw/n;->h:Lw/g;

    .line 80
    .line 81
    iget-object v13, v13, Lw/g;->l:Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v11

    .line 87
    iget-object v13, v10, Lw/n;->i:Lw/g;

    .line 88
    .line 89
    iget-object v14, v13, Lw/g;->l:Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v12

    .line 95
    invoke-virtual {v10}, Lw/n;->j()J

    .line 96
    .line 97
    .line 98
    move-result-wide v14

    .line 99
    iget-object v5, v10, Lw/n;->h:Lw/g;

    .line 100
    .line 101
    if-eqz v11, :cond_a

    .line 102
    .line 103
    if-eqz v12, :cond_a

    .line 104
    .line 105
    const-wide/16 v0, 0x0

    .line 106
    .line 107
    invoke-static {v5, v0, v1}, Lw/l;->b(Lw/g;J)J

    .line 108
    .line 109
    .line 110
    move-result-wide v11

    .line 111
    move-object v6, v3

    .line 112
    move/from16 v16, v4

    .line 113
    .line 114
    invoke-static {v13, v0, v1}, Lw/l;->a(Lw/g;J)J

    .line 115
    .line 116
    .line 117
    move-result-wide v3

    .line 118
    sub-long/2addr v11, v14

    .line 119
    iget v0, v13, Lw/g;->f:I

    .line 120
    .line 121
    neg-int v1, v0

    .line 122
    move-object/from16 v18, v6

    .line 123
    .line 124
    move/from16 v17, v7

    .line 125
    .line 126
    int-to-long v6, v1

    .line 127
    cmp-long v1, v11, v6

    .line 128
    .line 129
    if-ltz v1, :cond_5

    .line 130
    .line 131
    int-to-long v0, v0

    .line 132
    add-long/2addr v11, v0

    .line 133
    :cond_5
    neg-long v0, v3

    .line 134
    sub-long/2addr v0, v14

    .line 135
    iget v3, v5, Lw/g;->f:I

    .line 136
    .line 137
    int-to-long v3, v3

    .line 138
    sub-long/2addr v0, v3

    .line 139
    cmp-long v6, v0, v3

    .line 140
    .line 141
    if-ltz v6, :cond_6

    .line 142
    .line 143
    sub-long/2addr v0, v3

    .line 144
    :cond_6
    iget-object v3, v10, Lw/n;->b:Lv/e;

    .line 145
    .line 146
    if-nez v2, :cond_7

    .line 147
    .line 148
    iget v3, v3, Lv/e;->U:F

    .line 149
    .line 150
    goto :goto_6

    .line 151
    :cond_7
    const/4 v4, 0x1

    .line 152
    if-ne v2, v4, :cond_8

    .line 153
    .line 154
    iget v3, v3, Lv/e;->V:F

    .line 155
    .line 156
    goto :goto_6

    .line 157
    :cond_8
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    const/high16 v3, -0x40800000    # -1.0f

    .line 161
    .line 162
    :goto_6
    const/4 v4, 0x0

    .line 163
    const/high16 v6, 0x3f800000    # 1.0f

    .line 164
    .line 165
    cmpl-float v4, v3, v4

    .line 166
    .line 167
    if-lez v4, :cond_9

    .line 168
    .line 169
    long-to-float v0, v0

    .line 170
    div-float/2addr v0, v3

    .line 171
    long-to-float v1, v11

    .line 172
    sub-float v4, v6, v3

    .line 173
    .line 174
    div-float/2addr v1, v4

    .line 175
    add-float/2addr v1, v0

    .line 176
    float-to-long v0, v1

    .line 177
    goto :goto_7

    .line 178
    :cond_9
    const-wide/16 v0, 0x0

    .line 179
    .line 180
    :goto_7
    long-to-float v0, v0

    .line 181
    mul-float v1, v0, v3

    .line 182
    .line 183
    const/high16 v4, 0x3f000000    # 0.5f

    .line 184
    .line 185
    add-float/2addr v1, v4

    .line 186
    float-to-long v10, v1

    .line 187
    invoke-static {v6, v3, v0, v4}, Lea/q;->d(FFFF)F

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    float-to-long v0, v0

    .line 192
    add-long/2addr v10, v14

    .line 193
    add-long/2addr v10, v0

    .line 194
    iget v0, v5, Lw/g;->f:I

    .line 195
    .line 196
    int-to-long v0, v0

    .line 197
    add-long/2addr v0, v10

    .line 198
    iget v3, v13, Lw/g;->f:I

    .line 199
    .line 200
    int-to-long v3, v3

    .line 201
    sub-long/2addr v0, v3

    .line 202
    goto :goto_8

    .line 203
    :cond_a
    move-object/from16 v18, v3

    .line 204
    .line 205
    move/from16 v16, v4

    .line 206
    .line 207
    move/from16 v17, v7

    .line 208
    .line 209
    if-eqz v11, :cond_b

    .line 210
    .line 211
    iget v0, v5, Lw/g;->f:I

    .line 212
    .line 213
    int-to-long v0, v0

    .line 214
    invoke-static {v5, v0, v1}, Lw/l;->b(Lw/g;J)J

    .line 215
    .line 216
    .line 217
    move-result-wide v0

    .line 218
    iget v3, v5, Lw/g;->f:I

    .line 219
    .line 220
    int-to-long v3, v3

    .line 221
    add-long/2addr v3, v14

    .line 222
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 223
    .line 224
    .line 225
    move-result-wide v0

    .line 226
    goto :goto_8

    .line 227
    :cond_b
    if-eqz v12, :cond_c

    .line 228
    .line 229
    iget v0, v13, Lw/g;->f:I

    .line 230
    .line 231
    int-to-long v0, v0

    .line 232
    invoke-static {v13, v0, v1}, Lw/l;->a(Lw/g;J)J

    .line 233
    .line 234
    .line 235
    move-result-wide v0

    .line 236
    iget v3, v13, Lw/g;->f:I

    .line 237
    .line 238
    neg-int v3, v3

    .line 239
    int-to-long v3, v3

    .line 240
    add-long/2addr v3, v14

    .line 241
    neg-long v0, v0

    .line 242
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 243
    .line 244
    .line 245
    move-result-wide v0

    .line 246
    goto :goto_8

    .line 247
    :cond_c
    iget v0, v5, Lw/g;->f:I

    .line 248
    .line 249
    int-to-long v0, v0

    .line 250
    invoke-virtual {v10}, Lw/n;->j()J

    .line 251
    .line 252
    .line 253
    move-result-wide v3

    .line 254
    add-long/2addr v3, v0

    .line 255
    iget v0, v13, Lw/g;->f:I

    .line 256
    .line 257
    int-to-long v0, v0

    .line 258
    sub-long v0, v3, v0

    .line 259
    .line 260
    :goto_8
    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 261
    .line 262
    .line 263
    move-result-wide v8

    .line 264
    add-int/lit8 v7, v17, 0x1

    .line 265
    .line 266
    move-object/from16 v1, p0

    .line 267
    .line 268
    move-object/from16 v0, p1

    .line 269
    .line 270
    move/from16 v4, v16

    .line 271
    .line 272
    move-object/from16 v3, v18

    .line 273
    .line 274
    goto/16 :goto_0

    .line 275
    .line 276
    :cond_d
    long-to-int v0, v8

    .line 277
    return v0
.end method

.method public final e(Lw/n;ILjava/util/ArrayList;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lw/n;->h:Lw/g;

    .line 2
    .line 3
    iget-object v0, v0, Lw/g;->k:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v2, p1, Lw/n;->i:Lw/g;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lw/e;

    .line 23
    .line 24
    instance-of v2, v1, Lw/g;

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    check-cast v1, Lw/g;

    .line 29
    .line 30
    invoke-virtual {p0, v1, p2, p3, v3}, Lw/f;->a(Lw/g;ILjava/util/ArrayList;Lw/l;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    instance-of v2, v1, Lw/n;

    .line 35
    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    check-cast v1, Lw/n;

    .line 39
    .line 40
    iget-object v1, v1, Lw/n;->h:Lw/g;

    .line 41
    .line 42
    invoke-virtual {p0, v1, p2, p3, v3}, Lw/f;->a(Lw/g;ILjava/util/ArrayList;Lw/l;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    iget-object v0, v2, Lw/g;->k:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_5

    .line 57
    .line 58
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Lw/e;

    .line 63
    .line 64
    instance-of v2, v1, Lw/g;

    .line 65
    .line 66
    if-eqz v2, :cond_4

    .line 67
    .line 68
    check-cast v1, Lw/g;

    .line 69
    .line 70
    invoke-virtual {p0, v1, p2, p3, v3}, Lw/f;->a(Lw/g;ILjava/util/ArrayList;Lw/l;)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_4
    instance-of v2, v1, Lw/n;

    .line 75
    .line 76
    if-eqz v2, :cond_3

    .line 77
    .line 78
    check-cast v1, Lw/n;

    .line 79
    .line 80
    iget-object v1, v1, Lw/n;->i:Lw/g;

    .line 81
    .line 82
    invoke-virtual {p0, v1, p2, p3, v3}, Lw/f;->a(Lw/g;ILjava/util/ArrayList;Lw/l;)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_5
    const/4 v0, 0x1

    .line 87
    if-ne p2, v0, :cond_7

    .line 88
    .line 89
    check-cast p1, Lw/m;

    .line 90
    .line 91
    iget-object p1, p1, Lw/m;->k:Lw/g;

    .line 92
    .line 93
    iget-object p1, p1, Lw/g;->k:Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_7

    .line 104
    .line 105
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    check-cast v0, Lw/e;

    .line 110
    .line 111
    instance-of v1, v0, Lw/g;

    .line 112
    .line 113
    if-eqz v1, :cond_6

    .line 114
    .line 115
    check-cast v0, Lw/g;

    .line 116
    .line 117
    invoke-virtual {p0, v0, p2, p3, v3}, Lw/f;->a(Lw/g;ILjava/util/ArrayList;Lw/l;)V

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_7
    return-void
.end method

.method public final f(Lv/e;Lv/d;ILv/d;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lw/f;->g:Lw/b;

    .line 2
    .line 3
    iput-object p2, v0, Lw/b;->a:Lv/d;

    .line 4
    .line 5
    iput-object p4, v0, Lw/b;->b:Lv/d;

    .line 6
    .line 7
    iput p3, v0, Lw/b;->c:I

    .line 8
    .line 9
    iput p5, v0, Lw/b;->d:I

    .line 10
    .line 11
    iget-object p2, p0, Lw/f;->f:Lw/c;

    .line 12
    .line 13
    check-cast p2, Landroidx/constraintlayout/widget/b;

    .line 14
    .line 15
    invoke-virtual {p2, p1, v0}, Landroidx/constraintlayout/widget/b;->a(Lv/e;Lw/b;)V

    .line 16
    .line 17
    .line 18
    iget p2, v0, Lw/b;->e:I

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Lv/e;->z(I)V

    .line 21
    .line 22
    .line 23
    iget p2, v0, Lw/b;->f:I

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Lv/e;->w(I)V

    .line 26
    .line 27
    .line 28
    iget-boolean p2, v0, Lw/b;->h:Z

    .line 29
    .line 30
    iput-boolean p2, p1, Lv/e;->w:Z

    .line 31
    .line 32
    iget p2, v0, Lw/b;->g:I

    .line 33
    .line 34
    iput p2, p1, Lv/e;->R:I

    .line 35
    .line 36
    if-lez p2, :cond_0

    .line 37
    .line 38
    const/4 p2, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 p2, 0x0

    .line 41
    :goto_0
    iput-boolean p2, p1, Lv/e;->w:Z

    .line 42
    .line 43
    return-void
.end method

.method public final g()V
    .locals 17

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    iget-object v0, v6, Lw/f;->a:Lv/f;

    .line 4
    .line 5
    iget-object v0, v0, Lv/f;->g0:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v7

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_b

    .line 16
    .line 17
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    move-object v8, v0

    .line 22
    check-cast v8, Lv/e;

    .line 23
    .line 24
    iget-boolean v0, v8, Lv/e;->a:Z

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object v0, v8, Lv/e;->J:[Lv/d;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    aget-object v9, v0, v1

    .line 33
    .line 34
    const/4 v10, 0x1

    .line 35
    aget-object v11, v0, v10

    .line 36
    .line 37
    iget v0, v8, Lv/e;->j:I

    .line 38
    .line 39
    iget v2, v8, Lv/e;->k:I

    .line 40
    .line 41
    sget-object v4, Lv/d;->b:Lv/d;

    .line 42
    .line 43
    sget-object v12, Lv/d;->c:Lv/d;

    .line 44
    .line 45
    if-eq v9, v4, :cond_3

    .line 46
    .line 47
    if-ne v9, v12, :cond_2

    .line 48
    .line 49
    if-ne v0, v10, :cond_2

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    const/4 v0, 0x0

    .line 53
    goto :goto_2

    .line 54
    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 55
    :goto_2
    if-eq v11, v4, :cond_4

    .line 56
    .line 57
    if-ne v11, v12, :cond_5

    .line 58
    .line 59
    if-ne v2, v10, :cond_5

    .line 60
    .line 61
    :cond_4
    const/4 v1, 0x1

    .line 62
    :cond_5
    iget-object v13, v8, Lv/e;->d:Lw/k;

    .line 63
    .line 64
    iget-object v2, v13, Lw/n;->e:Lw/h;

    .line 65
    .line 66
    iget-boolean v3, v2, Lw/g;->j:Z

    .line 67
    .line 68
    iget-object v14, v8, Lv/e;->e:Lw/m;

    .line 69
    .line 70
    iget-object v5, v14, Lw/n;->e:Lw/h;

    .line 71
    .line 72
    iget-boolean v15, v5, Lw/g;->j:Z

    .line 73
    .line 74
    sget-object v16, Lv/d;->a:Lv/d;

    .line 75
    .line 76
    if-eqz v3, :cond_6

    .line 77
    .line 78
    if-eqz v15, :cond_6

    .line 79
    .line 80
    iget v3, v2, Lw/g;->g:I

    .line 81
    .line 82
    iget v5, v5, Lw/g;->g:I

    .line 83
    .line 84
    move-object/from16 v0, p0

    .line 85
    .line 86
    move-object v1, v8

    .line 87
    move-object/from16 v2, v16

    .line 88
    .line 89
    move-object/from16 v4, v16

    .line 90
    .line 91
    invoke-virtual/range {v0 .. v5}, Lw/f;->f(Lv/e;Lv/d;ILv/d;I)V

    .line 92
    .line 93
    .line 94
    iput-boolean v10, v8, Lv/e;->a:Z

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_6
    if-eqz v3, :cond_8

    .line 98
    .line 99
    if-eqz v1, :cond_8

    .line 100
    .line 101
    iget v3, v2, Lw/g;->g:I

    .line 102
    .line 103
    iget v5, v5, Lw/g;->g:I

    .line 104
    .line 105
    move-object/from16 v0, p0

    .line 106
    .line 107
    move-object v1, v8

    .line 108
    move-object/from16 v2, v16

    .line 109
    .line 110
    invoke-virtual/range {v0 .. v5}, Lw/f;->f(Lv/e;Lv/d;ILv/d;I)V

    .line 111
    .line 112
    .line 113
    if-ne v11, v12, :cond_7

    .line 114
    .line 115
    iget-object v0, v14, Lw/n;->e:Lw/h;

    .line 116
    .line 117
    invoke-virtual {v8}, Lv/e;->j()I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    iput v1, v0, Lw/h;->m:I

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_7
    iget-object v0, v14, Lw/n;->e:Lw/h;

    .line 125
    .line 126
    invoke-virtual {v8}, Lv/e;->j()I

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    invoke-virtual {v0, v1}, Lw/h;->d(I)V

    .line 131
    .line 132
    .line 133
    iput-boolean v10, v8, Lv/e;->a:Z

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_8
    if-eqz v15, :cond_a

    .line 137
    .line 138
    if-eqz v0, :cond_a

    .line 139
    .line 140
    iget v3, v2, Lw/g;->g:I

    .line 141
    .line 142
    iget v5, v5, Lw/g;->g:I

    .line 143
    .line 144
    move-object/from16 v0, p0

    .line 145
    .line 146
    move-object v1, v8

    .line 147
    move-object v2, v4

    .line 148
    move-object/from16 v4, v16

    .line 149
    .line 150
    invoke-virtual/range {v0 .. v5}, Lw/f;->f(Lv/e;Lv/d;ILv/d;I)V

    .line 151
    .line 152
    .line 153
    if-ne v9, v12, :cond_9

    .line 154
    .line 155
    iget-object v0, v13, Lw/n;->e:Lw/h;

    .line 156
    .line 157
    invoke-virtual {v8}, Lv/e;->m()I

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    iput v1, v0, Lw/h;->m:I

    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_9
    iget-object v0, v13, Lw/n;->e:Lw/h;

    .line 165
    .line 166
    invoke-virtual {v8}, Lv/e;->m()I

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    invoke-virtual {v0, v1}, Lw/h;->d(I)V

    .line 171
    .line 172
    .line 173
    iput-boolean v10, v8, Lv/e;->a:Z

    .line 174
    .line 175
    :cond_a
    :goto_3
    iget-boolean v0, v8, Lv/e;->a:Z

    .line 176
    .line 177
    if-eqz v0, :cond_0

    .line 178
    .line 179
    iget-object v0, v14, Lw/m;->l:Lw/a;

    .line 180
    .line 181
    if-eqz v0, :cond_0

    .line 182
    .line 183
    iget v1, v8, Lv/e;->R:I

    .line 184
    .line 185
    invoke-virtual {v0, v1}, Lw/h;->d(I)V

    .line 186
    .line 187
    .line 188
    goto/16 :goto_0

    .line 189
    .line 190
    :cond_b
    return-void
.end method
