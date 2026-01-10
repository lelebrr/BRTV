.class public final Lga/c;
.super Lcom/lzy/okgo/callback/StringCallback;
.source "MyApplication"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lga/c;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lga/c;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/lzy/okgo/callback/StringCallback;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onCacheSuccess(Lcom/lzy/okgo/model/Response;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lga/c;->b:Ljava/lang/Object;

    .line 2
    .line 3
    iget v1, p0, Lga/c;->a:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Lcom/lzy/okgo/callback/AbsCallback;->onCacheSuccess(Lcom/lzy/okgo/model/Response;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    const-string p1, "LEcMeicdipAAej95\n"

    .line 13
    .line 14
    const-string v0, "bhRaFUNe4vE=\n"

    .line 15
    .line 16
    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v0, "daZGhLtvs556olzKqGz3u2CsX4SuYbS1d+Ndzw==\n"

    .line 21
    .line 22
    const-string v1, "EsMypM0A190=\n"

    .line 23
    .line 24
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sget-boolean v1, Lorg/bitspark/android/utils/m;->b:Z

    .line 29
    .line 30
    invoke-static {p1, v0}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_1
    const-string v1, "PxJjFpuS\n"

    .line 35
    .line 36
    const-string v2, "fUE2Zf7gC70=\n"

    .line 37
    .line 38
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v3, "fB0ODkrgNiA7HghBRrUhKXgQHw5E/mJlJVg=\n"

    .line 48
    .line 49
    const-string v4, "G3h6LiuVQkg=\n"

    .line 50
    .line 51
    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/lzy/okgo/model/Response;->body()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    check-cast v3, Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    sget-boolean v3, Lorg/bitspark/android/utils/m;->b:Z

    .line 72
    .line 73
    invoke-static {v1, v2}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/lzy/okgo/model/Response;->body()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/lzy/okgo/model/Response;->code()I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    check-cast v0, Lga/m;

    .line 87
    .line 88
    invoke-static {v0, v1, p1}, Lga/m;->c(Lga/m;Ljava/lang/String;I)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :pswitch_2
    const-string v1, "3DdRQQ7LxEny\n"

    .line 93
    .line 94
    const-string v2, "nmQSKW+lqiw=\n"

    .line 95
    .line 96
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    const-string v2, "sf1jPOOSfj24/Xs85ohwPvb7dn/onz88vQ==\n"

    .line 101
    .line 102
    const-string v3, "1pgXHID6H1M=\n"

    .line 103
    .line 104
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    sget-boolean v3, Lorg/bitspark/android/utils/m;->b:Z

    .line 109
    .line 110
    invoke-static {v1, v2}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Lcom/lzy/okgo/model/Response;->body()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    check-cast p1, Ljava/lang/String;

    .line 118
    .line 119
    check-cast v0, Lga/d;

    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    new-instance v0, Lcom/tencent/bugly/proguard/i0;

    .line 125
    .line 126
    const/4 v1, 0x1

    .line 127
    invoke-direct {v0, v1, p1}, Lcom/tencent/bugly/proguard/i0;-><init>(ILjava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    nop

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onError(Lcom/lzy/okgo/model/Response;)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lga/c;->b:Ljava/lang/Object;

    .line 3
    .line 4
    iget v2, p0, Lga/c;->a:I

    .line 5
    .line 6
    packed-switch v2, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    const-string p1, "XdFCA1V1fqBn3VoH\n"

    .line 10
    .line 11
    const-string v0, "E7Q2dDoHFfU=\n"

    .line 12
    .line 13
    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v0, "UGewRDRf7uZlYapTcUj//Gcoq0QiSfnsdnutTCRQuv12e65FP0//tTNtrFg+Tg==\n"

    .line 18
    .line 19
    const-string v2, "EwjeKlE8mo8=\n"

    .line 20
    .line 21
    invoke-static {v0, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sget-boolean v2, Lorg/bitspark/android/utils/m;->b:Z

    .line 26
    .line 27
    invoke-static {p1, v0}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string p1, "bJCA7d4EwnUHzNw=\n"

    .line 31
    .line 32
    const-string v0, "KeLygqwk8FU=\n"

    .line 33
    .line 34
    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast v1, Lorg/bitspark/android/utils/j;

    .line 39
    .line 40
    invoke-interface {v1, p1}, Lorg/bitspark/android/utils/j;->b(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :pswitch_0
    sget-object p1, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 45
    .line 46
    const/16 v0, 0x16

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :pswitch_1
    const-string v2, "37V3xwmV\n"

    .line 53
    .line 54
    const-string v3, "neYitGzn4W4=\n"

    .line 55
    .line 56
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string v4, "FNykKih6w85WkrM9KWXegAjXwRs1cdTUWw==\n"

    .line 66
    .line 67
    const-string v5, "e7LhWFoVse4=\n"

    .line 68
    .line 69
    invoke-static {v4, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/lzy/okgo/model/Response;->code()I

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v4, "M6wXUUM3xQslrA==\n"

    .line 84
    .line 85
    const-string v5, "H4xEJSJDsHg=\n"

    .line 86
    .line 87
    invoke-static {v4, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/lzy/okgo/model/Response;->message()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v4, "RIMZzPdw9cIbmXE=\n"

    .line 102
    .line 103
    const-string v5, "aKNRqZYUkLA=\n"

    .line 104
    .line 105
    invoke-static {v4, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Lcom/lzy/okgo/model/Response;->headers()Lokhttp3/Headers;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v4, "oNCNGLZ88Sc=\n"

    .line 120
    .line 121
    const-string v5, "jPDPd9IFywc=\n"

    .line 122
    .line 123
    invoke-static {v4, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/lzy/okgo/model/Response;->body()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    check-cast v4, Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    sget-boolean v4, Lorg/bitspark/android/utils/m;->b:Z

    .line 144
    .line 145
    invoke-static {v2, v3}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1}, Lcom/lzy/okgo/model/Response;->getException()Ljava/lang/Throwable;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    if-eqz p1, :cond_0

    .line 153
    .line 154
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    const-string v3, "wuHxkhgD\n"

    .line 159
    .line 160
    const-string v4, "gLKk4X1xoCk=\n"

    .line 161
    .line 162
    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    new-instance v4, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .line 170
    .line 171
    const-string v5, "/7kTU125qiG99xNZTLOodfm4OBsP\n"

    .line 172
    .line 173
    const-string v6, "kNdWIS/W2AE=\n"

    .line 174
    .line 175
    invoke-static {v5, v6}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    const-string p1, "EyJOJRY=\n"

    .line 190
    .line 191
    const-string v5, "Mw9jCDZ98wA=\n"

    .line 192
    .line 193
    invoke-static {p1, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    invoke-static {v3, p1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    :cond_0
    const-string p1, "xw==\n"

    .line 211
    .line 212
    const-string v2, "87z/l6R1jZY=\n"

    .line 213
    .line 214
    invoke-static {p1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    check-cast v1, Lga/m;

    .line 219
    .line 220
    invoke-static {v1, p1}, Lga/m;->a(Lga/m;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-static {v1}, Lga/m;->b(Lga/m;)Z

    .line 224
    .line 225
    .line 226
    move-result p1

    .line 227
    if-eqz p1, :cond_1

    .line 228
    .line 229
    invoke-virtual {v1}, Lga/m;->e()V

    .line 230
    .line 231
    .line 232
    goto :goto_0

    .line 233
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    .line 237
    .line 238
    iget-object v1, v1, Lga/m;->a:Landroid/content/Context;

    .line 239
    .line 240
    const v2, 0x7f120127

    .line 241
    .line 242
    .line 243
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    const-string v1, "hA==\n"

    .line 251
    .line 252
    const-string v2, "sJCC562kpW4=\n"

    .line 253
    .line 254
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    invoke-static {v0, p1}, Lorg/bitspark/android/Spark;->m0(ILjava/lang/String;)V

    .line 266
    .line 267
    .line 268
    sget-object p1, Lea/g;->a:Ljava/lang/String;

    .line 269
    .line 270
    invoke-static {p1}, Lorg/bitspark/android/utils/m;->l(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    sget-object p1, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 274
    .line 275
    const/16 v0, 0xa

    .line 276
    .line 277
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 278
    .line 279
    .line 280
    const-string p1, "+A==\n"

    .line 281
    .line 282
    const-string v0, "zKnltZJQAGg=\n"

    .line 283
    .line 284
    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    sget-object p1, Lea/h;->a:Ljava/lang/String;

    .line 288
    .line 289
    :goto_0
    return-void

    .line 290
    :pswitch_2
    sget-object p1, Lorg/bitspark/android/Spark;->d2:Lda/c;

    .line 291
    .line 292
    const-string v2, "FBXhUfrv3w==\n"

    .line 293
    .line 294
    const-string v3, "d32AP5SKswo=\n"

    .line 295
    .line 296
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    iget-object v3, p1, Lda/c;->b:Lda/b;

    .line 301
    .line 302
    invoke-virtual {v3, v2}, Lda/b;->b(Ljava/lang/String;)Ljava/io/File;

    .line 303
    .line 304
    .line 305
    move-result-object v3

    .line 306
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 307
    .line 308
    .line 309
    move-result v4

    .line 310
    const/4 v5, 0x0

    .line 311
    if-nez v4, :cond_2

    .line 312
    .line 313
    goto/16 :goto_5

    .line 314
    .line 315
    :cond_2
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    .line 316
    .line 317
    new-instance v6, Ljava/io/FileReader;

    .line 318
    .line 319
    invoke-direct {v6, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 320
    .line 321
    .line 322
    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 323
    .line 324
    .line 325
    :try_start_1
    const-string v3, ""

    .line 326
    .line 327
    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v6

    .line 331
    if-eqz v6, :cond_3

    .line 332
    .line 333
    new-instance v7, Ljava/lang/StringBuilder;

    .line 334
    .line 335
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v3

    .line 348
    goto :goto_1

    .line 349
    :catchall_0
    move-exception p1

    .line 350
    move-object v5, v4

    .line 351
    goto/16 :goto_8

    .line 352
    .line 353
    :catch_0
    move-exception p1

    .line 354
    goto :goto_4

    .line 355
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    .line 356
    .line 357
    .line 358
    move-result-object v6

    .line 359
    invoke-static {v6}, Lo9/e;->u([B)Z

    .line 360
    .line 361
    .line 362
    move-result v6

    .line 363
    if-nez v6, :cond_5

    .line 364
    .line 365
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    .line 366
    .line 367
    .line 368
    move-result-object p1

    .line 369
    invoke-static {p1}, Lo9/e;->r([B)Z

    .line 370
    .line 371
    .line 372
    move-result p1

    .line 373
    if-eqz p1, :cond_4

    .line 374
    .line 375
    const/16 p1, 0x20

    .line 376
    .line 377
    invoke-virtual {v3, p1}, Ljava/lang/String;->indexOf(I)I

    .line 378
    .line 379
    .line 380
    move-result p1

    .line 381
    add-int/2addr p1, v0

    .line 382
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 383
    .line 384
    .line 385
    move-result v2

    .line 386
    invoke-virtual {v3, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 390
    move-object v5, p1

    .line 391
    goto :goto_2

    .line 392
    :cond_4
    move-object v5, v3

    .line 393
    :goto_2
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 394
    .line 395
    .line 396
    goto :goto_5

    .line 397
    :catch_1
    move-exception p1

    .line 398
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 399
    .line 400
    .line 401
    goto :goto_5

    .line 402
    :cond_5
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 403
    .line 404
    .line 405
    goto :goto_3

    .line 406
    :catch_2
    move-exception v3

    .line 407
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 408
    .line 409
    .line 410
    :goto_3
    invoke-virtual {p1, v2}, Lda/c;->g(Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    goto :goto_5

    .line 414
    :catchall_1
    move-exception p1

    .line 415
    goto :goto_8

    .line 416
    :catch_3
    move-exception p1

    .line 417
    move-object v4, v5

    .line 418
    :goto_4
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 419
    .line 420
    .line 421
    if-eqz v4, :cond_6

    .line 422
    .line 423
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 424
    .line 425
    .line 426
    :cond_6
    :goto_5
    if-eqz v5, :cond_7

    .line 427
    .line 428
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 429
    .line 430
    .line 431
    move-result p1

    .line 432
    const/16 v2, 0x32

    .line 433
    .line 434
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    .line 435
    .line 436
    .line 437
    move-result p1

    .line 438
    const/4 v2, 0x0

    .line 439
    invoke-virtual {v5, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object p1

    .line 443
    goto :goto_6

    .line 444
    :cond_7
    const-string p1, "v+YUWg==\n"

    .line 445
    .line 446
    const-string v2, "0ZN4Niptsp8=\n"

    .line 447
    .line 448
    invoke-static {p1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object p1

    .line 452
    :goto_6
    const-string v2, "TtrmZ5lB2fRg\n"

    .line 453
    .line 454
    const-string v3, "DImlD/gvt5E=\n"

    .line 455
    .line 456
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v2

    .line 460
    new-instance v3, Ljava/lang/StringBuilder;

    .line 461
    .line 462
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 463
    .line 464
    .line 465
    const-string v4, "A+RnBZaf6sIK5H8Fk4XkwUTydleDkvmMAuB6SdnX+ckF5TNDh5jmjAfgcE2QxrGM\n"

    .line 466
    .line 467
    const-string v6, "ZIETJfX3i6w=\n"

    .line 468
    .line 469
    invoke-static {v4, v6, v3, p1}, Lea/q;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object p1

    .line 473
    sget-boolean v3, Lorg/bitspark/android/utils/m;->b:Z

    .line 474
    .line 475
    invoke-static {v2, p1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    if-eqz v5, :cond_8

    .line 479
    .line 480
    const-string p1, "c6WLNMi7Fh5d\n"

    .line 481
    .line 482
    const-string v2, "MfbIXKnVeHs=\n"

    .line 483
    .line 484
    invoke-static {p1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object p1

    .line 488
    const-string v2, "5eiGzLqzqkXs6J7Mv6mkRqL+l56vvrkL5OybgPX7uU7j6dKKq7SmC+HskYS86Q==\n"

    .line 489
    .line 490
    const-string v3, "go3y7Nnbyys=\n"

    .line 491
    .line 492
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v2

    .line 496
    invoke-static {p1, v2}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    .line 498
    .line 499
    check-cast v1, Lga/d;

    .line 500
    .line 501
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 502
    .line 503
    .line 504
    new-instance p1, Lcom/tencent/bugly/proguard/i0;

    .line 505
    .line 506
    invoke-direct {p1, v0, v5}, Lcom/tencent/bugly/proguard/i0;-><init>(ILjava/lang/Object;)V

    .line 507
    .line 508
    .line 509
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 510
    .line 511
    .line 512
    goto :goto_7

    .line 513
    :cond_8
    sget-object p1, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 514
    .line 515
    const/16 v0, 0x15

    .line 516
    .line 517
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 518
    .line 519
    .line 520
    :goto_7
    return-void

    .line 521
    :goto_8
    if-eqz v5, :cond_9

    .line 522
    .line 523
    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 524
    .line 525
    .line 526
    goto :goto_9

    .line 527
    :catch_4
    move-exception v0

    .line 528
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 529
    .line 530
    .line 531
    :cond_9
    :goto_9
    throw p1

    .line 532
    nop

    .line 533
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onSuccess(Lcom/lzy/okgo/model/Response;)V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    iget v1, p0, Lga/c;->a:I

    .line 3
    .line 4
    packed-switch v1, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/lzy/okgo/model/Response;->isSuccessful()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lga/c;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Lorg/bitspark/android/utils/j;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const-string p1, "YaWXvOBXoQ==\n"

    .line 18
    .line 19
    const-string v0, "Lu63ks55gRo=\n"

    .line 20
    .line 21
    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-interface {v1, p1}, Lorg/bitspark/android/utils/j;->a(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string v0, "gbPf21PC4G+7v8ff\n"

    .line 30
    .line 31
    const-string v2, "z9arrDywizo=\n"

    .line 32
    .line 33
    invoke-static {v0, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v3, "QHViKyMVIwl1c3g8ZgIyE3c6eSs1AzQDZml/IzMadxJmaXwqKAUyWiM6IWUFGTMFOTo=\n"

    .line 43
    .line 44
    const-string v4, "AxoMRUZ2V2A=\n"

    .line 45
    .line 46
    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/lzy/okgo/model/Response;->code()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    sget-boolean v2, Lorg/bitspark/android/utils/m;->b:Z

    .line 65
    .line 66
    invoke-static {v0, p1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string p1, "UtC44cZVb/w5jOQ=\n"

    .line 70
    .line 71
    const-string v0, "F6LKjrR1Xtw=\n"

    .line 72
    .line 73
    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-interface {v1, p1}, Lorg/bitspark/android/utils/j;->b(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :goto_0
    return-void

    .line 81
    :pswitch_0
    const-string v0, "fCB3dzomkINQHUR0\n"

    .line 82
    .line 83
    const-string v1, "PnMhGF5l+OI=\n"

    .line 84
    .line 85
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    const-string v1, "PabSmwJpC8UyosjVEWpP4Cisy5sHYx3wP7GG1B8=\n"

    .line 90
    .line 91
    const-string v2, "WsOmu3QGb4Y=\n"

    .line 92
    .line 93
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    sget-boolean v2, Lorg/bitspark/android/utils/m;->b:Z

    .line 98
    .line 99
    invoke-static {v0, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lga/c;->b:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v0, Lga/o;

    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/lzy/okgo/model/Response;->body()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    check-cast p1, Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    const/16 v0, 0x16

    .line 116
    .line 117
    :try_start_0
    const-class v1, Lorg/bitspark/android/beans/GroupBeanModel;

    .line 118
    .line 119
    invoke-static {p1, v1}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    sput-object p1, Lga/o;->f:Ljava/util/List;

    .line 124
    .line 125
    sget-object p1, Lga/o;->f:Ljava/util/List;

    .line 126
    .line 127
    new-instance v1, La0/e;

    .line 128
    .line 129
    const/4 v2, 0x4

    .line 130
    invoke-direct {v1, v2}, La0/e;-><init>(I)V

    .line 131
    .line 132
    .line 133
    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 134
    .line 135
    .line 136
    sget-object p1, Lga/o;->f:Ljava/util/List;

    .line 137
    .line 138
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_1

    .line 147
    .line 148
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    check-cast v1, Lorg/bitspark/android/beans/GroupBeanModel;

    .line 153
    .line 154
    iget-object v1, v1, Lorg/bitspark/android/beans/GroupBeanModel;->items:Ljava/util/List;

    .line 155
    .line 156
    new-instance v2, Lga/n;

    .line 157
    .line 158
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 159
    .line 160
    .line 161
    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 162
    .line 163
    .line 164
    goto :goto_1

    .line 165
    :catchall_0
    move-exception p1

    .line 166
    goto :goto_5

    .line 167
    :catch_0
    move-exception p1

    .line 168
    goto :goto_3

    .line 169
    :cond_1
    sget-object p1, Lga/o;->f:Ljava/util/List;

    .line 170
    .line 171
    if-eqz p1, :cond_2

    .line 172
    .line 173
    invoke-static {}, Lga/o;->a()V

    .line 174
    .line 175
    .line 176
    :cond_2
    const-string p1, "diq+u+CXkLRyKuy+6tPJ+yhl7A==\n"

    .line 177
    .line 178
    const-string v1, "BkvMyIW39NU=\n"

    .line 179
    .line 180
    invoke-static {p1, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    .line 182
    .line 183
    :goto_2
    sget-object p1, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 184
    .line 185
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 186
    .line 187
    .line 188
    goto :goto_4

    .line 189
    :goto_3
    :try_start_1
    sget-object v1, Lga/o;->a:Ljava/lang/String;

    .line 190
    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    const-string v3, "s7IYGgEydWOnkAIICnxmYOO3Cx0FMmZ+sbwYSEQ=\n"

    .line 197
    .line 198
    const-string v4, "w9NqaWQSAww=\n"

    .line 199
    .line 200
    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    sget-boolean v2, Lorg/bitspark/android/utils/m;->b:Z

    .line 219
    .line 220
    invoke-static {v1, p1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    .line 222
    .line 223
    goto :goto_2

    .line 224
    :goto_4
    return-void

    .line 225
    :goto_5
    sget-object v1, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 226
    .line 227
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 228
    .line 229
    .line 230
    throw p1

    .line 231
    :pswitch_1
    invoke-virtual {p1}, Lcom/lzy/okgo/model/Response;->isSuccessful()Z

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    const/16 v2, 0xa

    .line 236
    .line 237
    const v3, 0x7f120127

    .line 238
    .line 239
    .line 240
    iget-object v4, p0, Lga/c;->b:Ljava/lang/Object;

    .line 241
    .line 242
    check-cast v4, Lga/m;

    .line 243
    .line 244
    if-nez v1, :cond_4

    .line 245
    .line 246
    const-string v1, "tBMQLJv7\n"

    .line 247
    .line 248
    const-string v5, "9kBFX/6Jp1I=\n"

    .line 249
    .line 250
    invoke-static {v1, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    new-instance v5, Ljava/lang/StringBuilder;

    .line 255
    .line 256
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    .line 258
    .line 259
    const-string v6, "187KX1xD4E3LmrlEUFSlV8vz7ElcRfZN3tX1Cg==\n"

    .line 260
    .line 261
    const-string v7, "uKCZKj8ghT4=\n"

    .line 262
    .line 263
    invoke-static {v6, v7}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v6

    .line 267
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {p1}, Lcom/lzy/okgo/model/Response;->headers()Lokhttp3/Headers;

    .line 271
    .line 272
    .line 273
    move-result-object v6

    .line 274
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    const-string v6, "Tokc\n"

    .line 278
    .line 279
    const-string v7, "Y6QxPqiqV5Y=\n"

    .line 280
    .line 281
    invoke-static {v6, v7}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v6

    .line 285
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {p1}, Lcom/lzy/okgo/model/Response;->body()Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    check-cast p1, Ljava/lang/String;

    .line 293
    .line 294
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    sget-boolean v5, Lorg/bitspark/android/utils/m;->b:Z

    .line 302
    .line 303
    invoke-static {v1, p1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    const-string p1, "9w==\n"

    .line 307
    .line 308
    const-string v1, "xSR/ks84huA=\n"

    .line 309
    .line 310
    invoke-static {p1, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    invoke-static {v4, p1}, Lga/m;->a(Lga/m;Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    invoke-static {v4}, Lga/m;->b(Lga/m;)Z

    .line 318
    .line 319
    .line 320
    move-result p1

    .line 321
    if-eqz p1, :cond_3

    .line 322
    .line 323
    invoke-virtual {v4}, Lga/m;->e()V

    .line 324
    .line 325
    .line 326
    goto/16 :goto_7

    .line 327
    .line 328
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 329
    .line 330
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    .line 332
    .line 333
    iget-object v1, v4, Lga/m;->a:Landroid/content/Context;

    .line 334
    .line 335
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    const-string v1, "Dg==\n"

    .line 343
    .line 344
    const-string v3, "PBLQ6btZBC8=\n"

    .line 345
    .line 346
    invoke-static {v1, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object p1

    .line 357
    invoke-static {v0, p1}, Lorg/bitspark/android/Spark;->m0(ILjava/lang/String;)V

    .line 358
    .line 359
    .line 360
    sget-object p1, Lea/g;->a:Ljava/lang/String;

    .line 361
    .line 362
    invoke-static {p1}, Lorg/bitspark/android/utils/m;->l(Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    sget-object p1, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 366
    .line 367
    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 368
    .line 369
    .line 370
    const-string p1, "qQ==\n"

    .line 371
    .line 372
    const-string v0, "mxtwlUN8KVI=\n"

    .line 373
    .line 374
    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    sget-object p1, Lea/h;->a:Ljava/lang/String;

    .line 378
    .line 379
    goto/16 :goto_7

    .line 380
    .line 381
    :cond_4
    const-string v1, "FmtqoI1c\n"

    .line 382
    .line 383
    const-string v5, "VDg/0+guEhw=\n"

    .line 384
    .line 385
    invoke-static {v1, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v1

    .line 389
    new-instance v5, Ljava/lang/StringBuilder;

    .line 390
    .line 391
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 392
    .line 393
    .line 394
    const-string v6, "mQyur8MDs6zeD6jgz1a0oYwfv/2CGazk01f6\n"

    .line 395
    .line 396
    const-string v7, "/mnaj6J2x8Q=\n"

    .line 397
    .line 398
    invoke-static {v6, v7}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v6

    .line 402
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {p1}, Lcom/lzy/okgo/model/Response;->body()Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object v6

    .line 409
    check-cast v6, Ljava/lang/String;

    .line 410
    .line 411
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v5

    .line 418
    sget-boolean v6, Lorg/bitspark/android/utils/m;->b:Z

    .line 419
    .line 420
    invoke-static {v1, v5}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    invoke-virtual {p1}, Lcom/lzy/okgo/model/Response;->headers()Lokhttp3/Headers;

    .line 424
    .line 425
    .line 426
    move-result-object v1

    .line 427
    const-string v5, "HqcJ8Q==\n"

    .line 428
    .line 429
    const-string v6, "WsZ9lNFz7i4=\n"

    .line 430
    .line 431
    invoke-static {v5, v6}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v5

    .line 435
    invoke-virtual {v1, v5}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v1

    .line 439
    const-string v5, "ZZsKDKZu\n"

    .line 440
    .line 441
    const-string v6, "J8hff8McSqE=\n"

    .line 442
    .line 443
    invoke-static {v5, v6}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v5

    .line 447
    new-instance v6, Ljava/lang/StringBuilder;

    .line 448
    .line 449
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 450
    .line 451
    .line 452
    const-string v7, "dXbNuLzUWYVPftr0+Q==\n"

    .line 453
    .line 454
    const-string v8, "JhO/ztmmefE=\n"

    .line 455
    .line 456
    invoke-static {v7, v8}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v7

    .line 460
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v6

    .line 470
    invoke-static {v5, v6}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    if-eqz v1, :cond_6

    .line 474
    .line 475
    new-instance v5, Ljava/text/SimpleDateFormat;

    .line 476
    .line 477
    const-string v6, "mQv8pZzujweRA/SpxfOSXvwG8bPR59FUr27D\n"

    .line 478
    .line 479
    const-string v7, "3E65ibyK6yc=\n"

    .line 480
    .line 481
    invoke-static {v6, v7}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v6

    .line 485
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 486
    .line 487
    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 488
    .line 489
    .line 490
    new-instance v6, Ljava/text/SimpleDateFormat;

    .line 491
    .line 492
    const-string v7, "DM+aKbokHHEEx/984zlFHAHC5Wj3ek9PadA=\n"

    .line 493
    .line 494
    const-string v8, "SYrfBZpAPDw=\n"

    .line 495
    .line 496
    invoke-static {v7, v8}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v7

    .line 500
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 501
    .line 502
    .line 503
    move-result-object v8

    .line 504
    invoke-direct {v6, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 505
    .line 506
    .line 507
    :try_start_2
    invoke-virtual {v5, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 508
    .line 509
    .line 510
    move-result-object v1

    .line 511
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    .line 512
    .line 513
    .line 514
    move-result-wide v7

    .line 515
    sput-wide v7, Lga/m;->d:J

    .line 516
    .line 517
    const-string v1, "KSIcv5vI\n"

    .line 518
    .line 519
    const-string v5, "a3FJzP66nwE=\n"

    .line 520
    .line 521
    invoke-static {v1, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v1

    .line 525
    new-instance v5, Ljava/lang/StringBuilder;

    .line 526
    .line 527
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 528
    .line 529
    .line 530
    const-string v7, "Ne+F0Nb8ROQP+5Oekw==\n"

    .line 531
    .line 532
    const-string v8, "Zpb2pLORZJA=\n"

    .line 533
    .line 534
    invoke-static {v7, v8}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v7

    .line 538
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 542
    .line 543
    .line 544
    move-result-wide v7

    .line 545
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 546
    .line 547
    .line 548
    move-result-object v7

    .line 549
    invoke-virtual {v6, v7}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object v6

    .line 553
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    .line 555
    .line 556
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v5

    .line 560
    invoke-static {v1, v5}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    .line 562
    .line 563
    sget-wide v5, Lga/m;->d:J

    .line 564
    .line 565
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 566
    .line 567
    .line 568
    move-result-wide v7

    .line 569
    sub-long/2addr v5, v7

    .line 570
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    .line 571
    .line 572
    .line 573
    move-result-wide v5

    .line 574
    const-wide/32 v7, 0x927c0

    .line 575
    .line 576
    .line 577
    cmp-long v1, v5, v7

    .line 578
    .line 579
    if-lez v1, :cond_6

    .line 580
    .line 581
    sget-wide v5, Lga/m;->d:J

    .line 582
    .line 583
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 584
    .line 585
    .line 586
    move-result-wide v7

    .line 587
    sub-long/2addr v5, v7

    .line 588
    sput-wide v5, Lorg/bitspark/android/utils/m;->a:J

    .line 589
    .line 590
    const-string v1, "qJtFkMRn\n"

    .line 591
    .line 592
    const-string v5, "6sgQ46EVqqs=\n"

    .line 593
    .line 594
    invoke-static {v1, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object v1

    .line 598
    new-instance v5, Ljava/lang/StringBuilder;

    .line 599
    .line 600
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 601
    .line 602
    .line 603
    const-string v6, "CxrmxkQAt4cCGpCy\n"

    .line 604
    .line 605
    const-string v7, "T1+qkgVf484=\n"

    .line 606
    .line 607
    invoke-static {v6, v7}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 608
    .line 609
    .line 610
    move-result-object v6

    .line 611
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    .line 613
    .line 614
    sget-wide v6, Lorg/bitspark/android/utils/m;->a:J

    .line 615
    .line 616
    const-wide/16 v8, 0x3e8

    .line 617
    .line 618
    div-long/2addr v6, v8

    .line 619
    long-to-int v7, v6

    .line 620
    int-to-long v6, v7

    .line 621
    invoke-static {v6, v7}, Lorg/bitspark/android/utils/m;->q(J)Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object v6

    .line 625
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    .line 627
    .line 628
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object v5

    .line 632
    invoke-static {v1, v5}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_1

    .line 633
    .line 634
    .line 635
    goto/16 :goto_6

    .line 636
    .line 637
    :catch_1
    const-string v1, "dqMj0/pL\n"

    .line 638
    .line 639
    const-string v5, "NPB2oJ85HBY=\n"

    .line 640
    .line 641
    invoke-static {v1, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object v1

    .line 645
    new-instance v5, Ljava/lang/StringBuilder;

    .line 646
    .line 647
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 648
    .line 649
    .line 650
    const-string v6, "6DS5PR+2V430YMoYHadBm8IiiS0MoVuR6Xo=\n"

    .line 651
    .line 652
    const-string v7, "h1rqSHzVMv4=\n"

    .line 653
    .line 654
    invoke-static {v6, v7}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 655
    .line 656
    .line 657
    move-result-object v6

    .line 658
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    .line 660
    .line 661
    invoke-virtual {p1}, Lcom/lzy/okgo/model/Response;->headers()Lokhttp3/Headers;

    .line 662
    .line 663
    .line 664
    move-result-object v6

    .line 665
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 666
    .line 667
    .line 668
    const-string v6, "ejAx\n"

    .line 669
    .line 670
    const-string v7, "Vx0cBBogvuw=\n"

    .line 671
    .line 672
    invoke-static {v6, v7}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 673
    .line 674
    .line 675
    move-result-object v6

    .line 676
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    .line 678
    .line 679
    invoke-virtual {p1}, Lcom/lzy/okgo/model/Response;->body()Ljava/lang/Object;

    .line 680
    .line 681
    .line 682
    move-result-object p1

    .line 683
    check-cast p1, Ljava/lang/String;

    .line 684
    .line 685
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    .line 687
    .line 688
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 689
    .line 690
    .line 691
    move-result-object p1

    .line 692
    invoke-static {v1, p1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    .line 694
    .line 695
    const-string p1, "8g==\n"

    .line 696
    .line 697
    const-string v1, "wcKF6nDKgwc=\n"

    .line 698
    .line 699
    invoke-static {p1, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 700
    .line 701
    .line 702
    move-result-object p1

    .line 703
    invoke-static {v4, p1}, Lga/m;->a(Lga/m;Ljava/lang/String;)V

    .line 704
    .line 705
    .line 706
    invoke-static {v4}, Lga/m;->b(Lga/m;)Z

    .line 707
    .line 708
    .line 709
    move-result p1

    .line 710
    if-eqz p1, :cond_5

    .line 711
    .line 712
    invoke-virtual {v4}, Lga/m;->e()V

    .line 713
    .line 714
    .line 715
    goto :goto_7

    .line 716
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 717
    .line 718
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 719
    .line 720
    .line 721
    iget-object v1, v4, Lga/m;->a:Landroid/content/Context;

    .line 722
    .line 723
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 724
    .line 725
    .line 726
    move-result-object v1

    .line 727
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    .line 729
    .line 730
    const-string v1, "ew==\n"

    .line 731
    .line 732
    const-string v3, "SA8b04zTKSY=\n"

    .line 733
    .line 734
    invoke-static {v1, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 735
    .line 736
    .line 737
    move-result-object v1

    .line 738
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    .line 740
    .line 741
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 742
    .line 743
    .line 744
    move-result-object p1

    .line 745
    invoke-static {v0, p1}, Lorg/bitspark/android/Spark;->m0(ILjava/lang/String;)V

    .line 746
    .line 747
    .line 748
    sget-object p1, Lea/g;->a:Ljava/lang/String;

    .line 749
    .line 750
    invoke-static {p1}, Lorg/bitspark/android/utils/m;->l(Ljava/lang/String;)V

    .line 751
    .line 752
    .line 753
    sget-object p1, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 754
    .line 755
    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 756
    .line 757
    .line 758
    const-string p1, "KQ==\n"

    .line 759
    .line 760
    const-string v0, "GoImOs5lN0c=\n"

    .line 761
    .line 762
    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 763
    .line 764
    .line 765
    sget-object p1, Lea/h;->a:Ljava/lang/String;

    .line 766
    .line 767
    goto :goto_7

    .line 768
    :cond_6
    :goto_6
    invoke-virtual {p1}, Lcom/lzy/okgo/model/Response;->body()Ljava/lang/Object;

    .line 769
    .line 770
    .line 771
    move-result-object v0

    .line 772
    check-cast v0, Ljava/lang/String;

    .line 773
    .line 774
    invoke-virtual {p1}, Lcom/lzy/okgo/model/Response;->code()I

    .line 775
    .line 776
    .line 777
    move-result p1

    .line 778
    invoke-static {v4, v0, p1}, Lga/m;->c(Lga/m;Ljava/lang/String;I)V

    .line 779
    .line 780
    .line 781
    const-string p1, "xg==\n"

    .line 782
    .line 783
    const-string v0, "9mBI2GW74QA=\n"

    .line 784
    .line 785
    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 786
    .line 787
    .line 788
    move-result-object p1

    .line 789
    new-instance v0, Ljava/lang/StringBuilder;

    .line 790
    .line 791
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 792
    .line 793
    .line 794
    const-string v1, "51LRpEb0aXvoWMW+Eoc=\n"

    .line 795
    .line 796
    const-string v2, "iz22zSinHBg=\n"

    .line 797
    .line 798
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 799
    .line 800
    .line 801
    move-result-object v1

    .line 802
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    .line 804
    .line 805
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    .line 807
    .line 808
    const-string p1, "PP82ew==\n"

    .line 809
    .line 810
    const-string v1, "HNIbW9OshT0=\n"

    .line 811
    .line 812
    invoke-static {p1, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 813
    .line 814
    .line 815
    move-result-object p1

    .line 816
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    .line 818
    .line 819
    iget p1, v4, Lga/m;->b:I

    .line 820
    .line 821
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 822
    .line 823
    .line 824
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 825
    .line 826
    .line 827
    move-result-object p1

    .line 828
    sget-object v0, Lga/m;->c:Ljava/lang/String;

    .line 829
    .line 830
    invoke-static {v0, p1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    .line 832
    .line 833
    const/4 p1, 0x0

    .line 834
    iput p1, v4, Lga/m;->b:I

    .line 835
    .line 836
    :goto_7
    return-void

    .line 837
    :pswitch_2
    const-string v1, "M24ZY2RxqNwd\n"

    .line 838
    .line 839
    const-string v2, "cT1aCwUfxrk=\n"

    .line 840
    .line 841
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 842
    .line 843
    .line 844
    move-result-object v1

    .line 845
    const-string v2, "VW9vQAwIgNZcb3dACRKO1RJ5fhIZBZOYXWE=\n"

    .line 846
    .line 847
    const-string v3, "MgobYG9g4bg=\n"

    .line 848
    .line 849
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 850
    .line 851
    .line 852
    move-result-object v2

    .line 853
    sget-boolean v3, Lorg/bitspark/android/utils/m;->b:Z

    .line 854
    .line 855
    invoke-static {v1, v2}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    .line 857
    .line 858
    invoke-virtual {p1}, Lcom/lzy/okgo/model/Response;->body()Ljava/lang/Object;

    .line 859
    .line 860
    .line 861
    move-result-object v1

    .line 862
    check-cast v1, Ljava/lang/String;

    .line 863
    .line 864
    iget-object v2, p0, Lga/c;->b:Ljava/lang/Object;

    .line 865
    .line 866
    check-cast v2, Lga/d;

    .line 867
    .line 868
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 869
    .line 870
    .line 871
    new-instance v2, Lcom/tencent/bugly/proguard/i0;

    .line 872
    .line 873
    invoke-direct {v2, v0, v1}, Lcom/tencent/bugly/proguard/i0;-><init>(ILjava/lang/Object;)V

    .line 874
    .line 875
    .line 876
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 877
    .line 878
    .line 879
    sget-object v0, Lorg/bitspark/android/Spark;->d2:Lda/c;

    .line 880
    .line 881
    const-string v1, "5qOvUyChjg==\n"

    .line 882
    .line 883
    const-string v2, "hcvOPU7E4pk=\n"

    .line 884
    .line 885
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 886
    .line 887
    .line 888
    move-result-object v1

    .line 889
    invoke-virtual {v0, v1}, Lda/c;->g(Ljava/lang/String;)V

    .line 890
    .line 891
    .line 892
    sget-object v0, Lorg/bitspark/android/Spark;->d2:Lda/c;

    .line 893
    .line 894
    const-string v1, "JDvQjyWbgQ==\n"

    .line 895
    .line 896
    const-string v2, "R1Ox4Uv+7YM=\n"

    .line 897
    .line 898
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 899
    .line 900
    .line 901
    move-result-object v1

    .line 902
    invoke-virtual {p1}, Lcom/lzy/okgo/model/Response;->body()Ljava/lang/Object;

    .line 903
    .line 904
    .line 905
    move-result-object p1

    .line 906
    check-cast p1, Ljava/lang/String;

    .line 907
    .line 908
    sget v2, Lea/h;->j:I

    .line 909
    .line 910
    div-int/lit16 v2, v2, 0x3e8

    .line 911
    .line 912
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 913
    .line 914
    .line 915
    new-instance v3, Ljava/lang/StringBuilder;

    .line 916
    .line 917
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 918
    .line 919
    .line 920
    invoke-static {v2}, Lo9/e;->n(I)Ljava/lang/String;

    .line 921
    .line 922
    .line 923
    move-result-object v2

    .line 924
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 925
    .line 926
    .line 927
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 928
    .line 929
    .line 930
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 931
    .line 932
    .line 933
    move-result-object p1

    .line 934
    new-instance v2, Lda/a;

    .line 935
    .line 936
    invoke-direct {v2, v0, v1, p1}, Lda/a;-><init>(Lda/c;Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    .line 938
    .line 939
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 940
    .line 941
    .line 942
    return-void

    .line 943
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
