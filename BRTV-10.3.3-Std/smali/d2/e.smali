.class public final Ld2/e;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public final a:Ld2/n;

.field public final b:Lm2/m;

.field public final c:Laa/e;

.field public final d:Ld2/j;


# direct methods
.method public constructor <init>(Ld2/n;Lm2/m;Laa/e;Ld2/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ld2/e;->a:Ld2/n;

    .line 5
    .line 6
    iput-object p2, p0, Ld2/e;->b:Lm2/m;

    .line 7
    .line 8
    iput-object p3, p0, Ld2/e;->c:Laa/e;

    .line 9
    .line 10
    iput-object p4, p0, Ld2/e;->d:Ld2/j;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Lc9/c;)Ljava/lang/Object;
    .locals 13

    .line 1
    instance-of v0, p1, Ld2/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Ld2/d;

    .line 7
    .line 8
    iget v1, v0, Ld2/d;->e:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Ld2/d;->e:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Ld2/d;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Ld2/d;-><init>(Ld2/e;Lc9/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Ld2/d;->c:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object v1, Lb9/a;->a:Lb9/a;

    .line 28
    .line 29
    iget v2, v0, Ld2/d;->e:I

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x2

    .line 33
    const/4 v5, 0x1

    .line 34
    if-eqz v2, :cond_3

    .line 35
    .line 36
    if-eq v2, v5, :cond_2

    .line 37
    .line 38
    if-ne v2, v4, :cond_1

    .line 39
    .line 40
    iget-object v0, v0, Ld2/d;->a:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v0, Laa/a;

    .line 43
    .line 44
    :try_start_0
    invoke-static {p1}, Lo9/d;->I(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    goto/16 :goto_9

    .line 48
    .line 49
    :catchall_0
    move-exception p1

    .line 50
    goto/16 :goto_b

    .line 51
    .line 52
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 55
    .line 56
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p1

    .line 60
    :cond_2
    iget-object v2, v0, Ld2/d;->b:Laa/e;

    .line 61
    .line 62
    iget-object v5, v0, Ld2/d;->a:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v5, Ld2/e;

    .line 65
    .line 66
    invoke-static {p1}, Lo9/d;->I(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    move-object p1, v2

    .line 70
    goto/16 :goto_8

    .line 71
    .line 72
    :cond_3
    invoke-static {p1}, Lo9/d;->I(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    iput-object p0, v0, Ld2/d;->a:Ljava/lang/Object;

    .line 76
    .line 77
    iget-object p1, p0, Ld2/e;->c:Laa/e;

    .line 78
    .line 79
    iput-object p1, v0, Ld2/d;->b:Laa/e;

    .line 80
    .line 81
    iput v5, v0, Ld2/d;->e:I

    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    :cond_4
    sget-object v2, Laa/e;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 87
    .line 88
    invoke-virtual {v2, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndDecrement(Ljava/lang/Object;)I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    iget v6, p1, Laa/e;->a:I

    .line 93
    .line 94
    if-gt v2, v6, :cond_4

    .line 95
    .line 96
    sget-object v7, Lw8/l;->a:Lw8/l;

    .line 97
    .line 98
    if-lez v2, :cond_5

    .line 99
    .line 100
    goto/16 :goto_7

    .line 101
    .line 102
    :cond_5
    invoke-static {v0}, Lcom/bumptech/glide/d;->r(La9/d;)La9/d;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    instance-of v8, v2, Lx9/g;

    .line 107
    .line 108
    if-nez v8, :cond_6

    .line 109
    .line 110
    new-instance v8, Lt9/e;

    .line 111
    .line 112
    invoke-direct {v8, v2, v5}, Lt9/e;-><init>(La9/d;I)V

    .line 113
    .line 114
    .line 115
    goto :goto_4

    .line 116
    :cond_6
    move-object v8, v2

    .line 117
    check-cast v8, Lx9/g;

    .line 118
    .line 119
    :cond_7
    :goto_1
    sget-object v5, Lx9/g;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 120
    .line 121
    invoke-virtual {v5, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v9

    .line 125
    sget-object v10, Lx9/a;->d:Lu7/b;

    .line 126
    .line 127
    if-nez v9, :cond_8

    .line 128
    .line 129
    invoke-virtual {v5, v8, v10}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    move-object v9, v3

    .line 133
    goto :goto_2

    .line 134
    :cond_8
    instance-of v11, v9, Lt9/e;

    .line 135
    .line 136
    if-eqz v11, :cond_15

    .line 137
    .line 138
    :cond_9
    invoke-virtual {v5, v8, v9, v10}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v11

    .line 142
    if-eqz v11, :cond_14

    .line 143
    .line 144
    check-cast v9, Lt9/e;

    .line 145
    .line 146
    :goto_2
    if-eqz v9, :cond_b

    .line 147
    .line 148
    sget-object v5, Lt9/e;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 149
    .line 150
    invoke-virtual {v5, v9}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v8

    .line 154
    instance-of v10, v8, Lt9/j;

    .line 155
    .line 156
    if-eqz v10, :cond_a

    .line 157
    .line 158
    check-cast v8, Lt9/j;

    .line 159
    .line 160
    iget-object v8, v8, Lt9/j;->d:Ljava/lang/Object;

    .line 161
    .line 162
    if-eqz v8, :cond_a

    .line 163
    .line 164
    invoke-virtual {v9}, Lt9/e;->k()V

    .line 165
    .line 166
    .line 167
    move-object v8, v3

    .line 168
    goto :goto_3

    .line 169
    :cond_a
    sget-object v8, Lt9/e;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 170
    .line 171
    const v10, 0x1fffffff

    .line 172
    .line 173
    .line 174
    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 175
    .line 176
    .line 177
    sget-object v8, Lt9/b;->a:Lt9/b;

    .line 178
    .line 179
    invoke-virtual {v5, v9, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    move-object v8, v9

    .line 183
    :goto_3
    if-nez v8, :cond_c

    .line 184
    .line 185
    :cond_b
    new-instance v8, Lt9/e;

    .line 186
    .line 187
    invoke-direct {v8, v2, v4}, Lt9/e;-><init>(La9/d;I)V

    .line 188
    .line 189
    .line 190
    :cond_c
    :goto_4
    :try_start_1
    invoke-virtual {p1, v8}, Laa/e;->a(Lt9/e;)Z

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    if-nez v2, :cond_f

    .line 195
    .line 196
    :cond_d
    sget-object v2, Laa/e;->g:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 197
    .line 198
    invoke-virtual {v2, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndDecrement(Ljava/lang/Object;)I

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    if-gt v2, v6, :cond_d

    .line 203
    .line 204
    if-lez v2, :cond_e

    .line 205
    .line 206
    iget-object v2, p1, Laa/e;->b:Laa/c;

    .line 207
    .line 208
    iget v5, v8, Lt9/a0;->c:I

    .line 209
    .line 210
    invoke-virtual {v8, v7, v5, v2}, Lt9/e;->u(Ljava/lang/Object;ILi9/l;)V

    .line 211
    .line 212
    .line 213
    goto :goto_5

    .line 214
    :catchall_1
    move-exception p1

    .line 215
    goto :goto_c

    .line 216
    :cond_e
    invoke-virtual {p1, v8}, Laa/e;->a(Lt9/e;)Z

    .line 217
    .line 218
    .line 219
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 220
    if-eqz v2, :cond_d

    .line 221
    .line 222
    :cond_f
    :goto_5
    invoke-virtual {v8}, Lt9/e;->m()Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    if-ne v2, v1, :cond_10

    .line 227
    .line 228
    goto :goto_6

    .line 229
    :cond_10
    move-object v2, v7

    .line 230
    :goto_6
    if-ne v2, v1, :cond_11

    .line 231
    .line 232
    move-object v7, v2

    .line 233
    :cond_11
    :goto_7
    if-ne v7, v1, :cond_12

    .line 234
    .line 235
    return-object v1

    .line 236
    :cond_12
    move-object v5, p0

    .line 237
    :goto_8
    :try_start_2
    new-instance v2, Landroidx/lifecycle/p0;

    .line 238
    .line 239
    const/4 v6, 0x1

    .line 240
    invoke-direct {v2, v6, v5}, Landroidx/lifecycle/p0;-><init>(ILjava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    iput-object p1, v0, Ld2/d;->a:Ljava/lang/Object;

    .line 244
    .line 245
    iput-object v3, v0, Ld2/d;->b:Laa/e;

    .line 246
    .line 247
    iput v4, v0, Ld2/d;->e:I

    .line 248
    .line 249
    sget-object v4, La9/j;->a:La9/j;

    .line 250
    .line 251
    new-instance v5, Lt9/m0;

    .line 252
    .line 253
    invoke-direct {v5, v2, v3}, Lt9/m0;-><init>(Landroidx/lifecycle/p0;La9/d;)V

    .line 254
    .line 255
    .line 256
    invoke-static {v4, v5, v0}, Lt9/u;->p(La9/i;Li9/p;Lc9/c;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 260
    if-ne v0, v1, :cond_13

    .line 261
    .line 262
    return-object v1

    .line 263
    :cond_13
    move-object v12, v0

    .line 264
    move-object v0, p1

    .line 265
    move-object p1, v12

    .line 266
    :goto_9
    :try_start_3
    check-cast p1, Ld2/g;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 267
    .line 268
    check-cast v0, Laa/e;

    .line 269
    .line 270
    invoke-virtual {v0}, Laa/e;->b()V

    .line 271
    .line 272
    .line 273
    return-object p1

    .line 274
    :goto_a
    move-object v12, v0

    .line 275
    move-object v0, p1

    .line 276
    move-object p1, v12

    .line 277
    goto :goto_b

    .line 278
    :catchall_2
    move-exception v0

    .line 279
    goto :goto_a

    .line 280
    :goto_b
    check-cast v0, Laa/e;

    .line 281
    .line 282
    invoke-virtual {v0}, Laa/e;->b()V

    .line 283
    .line 284
    .line 285
    throw p1

    .line 286
    :goto_c
    invoke-virtual {v8}, Lt9/e;->t()V

    .line 287
    .line 288
    .line 289
    throw p1

    .line 290
    :cond_14
    invoke-virtual {v5, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v11

    .line 294
    if-eq v11, v9, :cond_9

    .line 295
    .line 296
    goto/16 :goto_1

    .line 297
    .line 298
    :cond_15
    if-eq v9, v10, :cond_7

    .line 299
    .line 300
    instance-of v5, v9, Ljava/lang/Throwable;

    .line 301
    .line 302
    if-eqz v5, :cond_16

    .line 303
    .line 304
    goto/16 :goto_1

    .line 305
    .line 306
    :cond_16
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 307
    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    .line 309
    .line 310
    const-string v1, "Inconsistent state "

    .line 311
    .line 312
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    throw p1
.end method
