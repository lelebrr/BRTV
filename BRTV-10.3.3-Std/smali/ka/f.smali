.class public final Lka/f;
.super Lcom/lzy/okgo/callback/StringCallback;
.source "MyApplication"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lka/j;


# direct methods
.method public synthetic constructor <init>(Lka/j;I)V
    .locals 0

    .line 1
    iput p2, p0, Lka/f;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lka/f;->b:Lka/j;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/lzy/okgo/callback/StringCallback;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final a(Lcom/lzy/okgo/model/Response;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final b(Lcom/lzy/okgo/model/Response;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public onCacheSuccess(Lcom/lzy/okgo/model/Response;)V
    .locals 2

    .line 1
    iget v0, p0, Lka/f;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lcom/lzy/okgo/callback/AbsCallback;->onCacheSuccess(Lcom/lzy/okgo/model/Response;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    const-string p1, "Z72d0SklTghCt57A\n"

    .line 11
    .line 12
    const-string v0, "L9LwtG9XL28=\n"

    .line 13
    .line 14
    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "StxLY3gcwXpF2FEtax+FX1/WUmNtEsZRSJlQKA==\n"

    .line 19
    .line 20
    const-string v1, "Lbk/Qw5zpTk=\n"

    .line 21
    .line 22
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sget-boolean v1, Lorg/bitspark/android/utils/m;->b:Z

    .line 27
    .line 28
    invoke-static {p1, v0}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final onError(Lcom/lzy/okgo/model/Response;)V
    .locals 0

    .line 1
    iget p1, p0, Lka/f;->a:I

    .line 2
    .line 3
    return-void
.end method

.method public final onSuccess(Lcom/lzy/okgo/model/Response;)V
    .locals 12

    .line 1
    iget v0, p0, Lka/f;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/lzy/okgo/model/Response;->body()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/String;

    .line 11
    .line 12
    new-instance v0, Landroidx/media3/common/x;

    .line 13
    .line 14
    const/16 v1, 0xf

    .line 15
    .line 16
    invoke-direct {v0, v1, p1}, Landroidx/media3/common/x;-><init>(ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    new-instance p1, Lp8/c;

    .line 20
    .line 21
    invoke-direct {p1, v0}, Lp8/c;-><init>(Li8/b;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lka/f;->b:Lka/j;

    .line 25
    .line 26
    iget-object v1, v0, Lka/j;->c0:Lo8/a;

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-virtual {v1}, Lo8/a;->g()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_0

    .line 35
    .line 36
    iget-object v1, v0, Lka/j;->c0:Lo8/a;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-static {v1}, Lm8/a;->b(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    sget-object v1, Lu8/e;->a:Lq8/h;

    .line 45
    .line 46
    const-string v2, "scheduler is null"

    .line 47
    .line 48
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    new-instance v2, Lp8/g;

    .line 52
    .line 53
    invoke-direct {v2, p1, v1}, Lp8/g;-><init>(Lo9/d;Lq8/h;)V

    .line 54
    .line 55
    .line 56
    sget-object p1, Lh8/b;->a:Li8/f;

    .line 57
    .line 58
    if-eqz p1, :cond_1

    .line 59
    .line 60
    invoke-virtual {v2, p1}, Lo9/d;->v(Li8/f;)Lp8/e;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    new-instance v1, Landroidx/media3/common/x;

    .line 65
    .line 66
    const/16 v2, 0x10

    .line 67
    .line 68
    invoke-direct {v1, v2, p0}, Landroidx/media3/common/x;-><init>(ILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    new-instance v2, Lo8/a;

    .line 72
    .line 73
    invoke-direct {v2, v1}, Lo8/a;-><init>(Ll8/a;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v2}, Lo9/d;->F(Li8/c;)V

    .line 77
    .line 78
    .line 79
    iput-object v2, v0, Lka/j;->c0:Lo8/a;

    .line 80
    .line 81
    return-void

    .line 82
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 83
    .line 84
    const-string v0, "scheduler == null"

    .line 85
    .line 86
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p1

    .line 90
    :pswitch_0
    const-string v0, "hctG6czlIk+gwUX4\n"

    .line 91
    .line 92
    const-string v1, "zaQrjIqXQyg=\n"

    .line 93
    .line 94
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string v2, "Q5rNzUstoilLmsvdAw2sI1zFmQ==\n"

    .line 104
    .line 105
    const-string v3, "Jf+5riNvw0c=\n"

    .line 106
    .line 107
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/lzy/okgo/model/Response;->body()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    check-cast v2, Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    sget-boolean v2, Lorg/bitspark/android/utils/m;->b:Z

    .line 128
    .line 129
    invoke-static {v0, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    :try_start_0
    invoke-virtual {p1}, Lcom/lzy/okgo/model/Response;->body()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    check-cast p1, Ljava/lang/String;

    .line 137
    .line 138
    const-class v0, Lorg/bitspark/android/beans/EventBean;

    .line 139
    .line 140
    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    .line 141
    .line 142
    .line 143
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    goto :goto_0

    .line 145
    :catch_0
    move-exception p1

    .line 146
    const-string v0, "9GmQb0TshsLRY5N+\n"

    .line 147
    .line 148
    const-string v1, "vAb9CgKe56U=\n"

    .line 149
    .line 150
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-static {v0, p1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    const/4 p1, 0x0

    .line 162
    :goto_0
    if-eqz p1, :cond_4

    .line 163
    .line 164
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-eqz v0, :cond_2

    .line 169
    .line 170
    goto/16 :goto_2

    .line 171
    .line 172
    :cond_2
    const-string v0, "LeQyvS47c0YI7jGs\n"

    .line 173
    .line 174
    const-string v1, "ZYtf2GhJEiE=\n"

    .line 175
    .line 176
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .line 184
    .line 185
    const-string v2, "L7xMCcPoWE0nvEoZi8ZQUD3jGA==\n"

    .line 186
    .line 187
    const-string v3, "Sdk4aquqOSM=\n"

    .line 188
    .line 189
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-static {v0, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    iget-object v0, p0, Lka/f;->b:Lka/j;

    .line 207
    .line 208
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 209
    .line 210
    .line 211
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    if-eqz v1, :cond_3

    .line 216
    .line 217
    goto :goto_2

    .line 218
    :cond_3
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 219
    .line 220
    const/4 v2, 0x0

    .line 221
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 222
    .line 223
    .line 224
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 225
    .line 226
    .line 227
    move-result v8

    .line 228
    new-instance v9, Ljava/util/ArrayList;

    .line 229
    .line 230
    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 231
    .line 232
    .line 233
    const-string v2, "ylQyVZqJUaDWSh5UlI9Qku5OMlemgFqW+Ec5V5CaFbLuZwVt1cUYzJcG\n"

    .line 234
    .line 235
    const-string v3, "uiZXOfXoNeE=\n"

    .line 236
    .line 237
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 245
    .line 246
    .line 247
    move-result v2

    .line 248
    if-eqz v2, :cond_4

    .line 249
    .line 250
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    move-object v7, v2

    .line 255
    check-cast v7, Lorg/bitspark/android/beans/EventBean;

    .line 256
    .line 257
    invoke-virtual {v0}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    invoke-static {v2}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lk3/l;

    .line 262
    .line 263
    .line 264
    move-result-object v3

    .line 265
    invoke-virtual {v3, v2}, Lk3/l;->c(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/o;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    iget-object v3, v7, Lorg/bitspark/android/beans/EventBean;->image:Ljava/lang/String;

    .line 270
    .line 271
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/o;->o(Ljava/lang/String;)Lcom/bumptech/glide/l;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    sget-object v3, Lx2/k;->c:Lx2/k;

    .line 276
    .line 277
    invoke-virtual {v2, v3}, Ln3/a;->d(Lx2/k;)Ln3/a;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    move-object v10, v2

    .line 282
    check-cast v10, Lcom/bumptech/glide/l;

    .line 283
    .line 284
    new-instance v11, Lka/h;

    .line 285
    .line 286
    move-object v2, v11

    .line 287
    move-object v3, v0

    .line 288
    move-object v4, v1

    .line 289
    move v5, v8

    .line 290
    move-object v6, v9

    .line 291
    invoke-direct/range {v2 .. v7}, Lka/h;-><init>(Lka/j;Ljava/util/concurrent/atomic/AtomicInteger;ILjava/util/ArrayList;Lorg/bitspark/android/beans/EventBean;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v10, v11}, Lcom/bumptech/glide/l;->x(Lka/h;)Lcom/bumptech/glide/l;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 299
    .line 300
    .line 301
    new-instance v3, Lo3/f;

    .line 302
    .line 303
    iget-object v4, v2, Lcom/bumptech/glide/l;->v:Lcom/bumptech/glide/o;

    .line 304
    .line 305
    invoke-direct {v3, v4}, Lo3/f;-><init>(Lcom/bumptech/glide/o;)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v2, v3, v2}, Lcom/bumptech/glide/l;->C(Lo3/h;Ln3/a;)V

    .line 309
    .line 310
    .line 311
    goto :goto_1

    .line 312
    :cond_4
    :goto_2
    return-void

    .line 313
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
