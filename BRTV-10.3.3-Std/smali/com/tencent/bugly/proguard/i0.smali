.class public final Lcom/tencent/bugly/proguard/i0;
.super Ljava/lang/Thread;
.source "MyApplication"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/bugly/proguard/i0;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/tencent/bugly/proguard/i0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    iget v3, v1, Lcom/tencent/bugly/proguard/i0;->a:I

    .line 6
    .line 7
    packed-switch v3, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    const/16 v2, 0x14

    .line 11
    .line 12
    :try_start_0
    iget-object v0, v1, Lcom/tencent/bugly/proguard/i0;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Ljava/lang/String;

    .line 15
    .line 16
    const-class v3, Lorg/bitspark/android/beans/ChannelBean;

    .line 17
    .line 18
    invoke-static {v0, v3}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lga/d;->b:Ljava/util/List;

    .line 23
    .line 24
    invoke-static {}, Lga/d;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    :goto_0
    sget-object v0, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    goto :goto_2

    .line 35
    :catch_0
    move-exception v0

    .line 36
    :try_start_1
    const-string v3, "XPdnyzJSPPdy\n"

    .line 37
    .line 38
    const-string v4, "HqQko1M8UpI=\n"

    .line 39
    .line 40
    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    new-instance v4, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v5, "L6TW9B+wLxs+q8riFrAoEiukhOII4iMBfg==\n"

    .line 50
    .line 51
    const-string v6, "X8Wkh3qQTHM=\n"

    .line 52
    .line 53
    invoke-static {v5, v6}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sget-boolean v4, Lorg/bitspark/android/utils/m;->b:Z

    .line 72
    .line 73
    invoke-static {v3, v0}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :goto_1
    return-void

    .line 78
    :goto_2
    sget-object v3, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 79
    .line 80
    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 81
    .line 82
    .line 83
    throw v0

    .line 84
    :pswitch_0
    iget-object v3, v1, Lcom/tencent/bugly/proguard/i0;->b:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v3, Lcom/tencent/bugly/proguard/at;

    .line 87
    .line 88
    invoke-static {v3}, Lcom/tencent/bugly/proguard/at;->b(Lcom/tencent/bugly/proguard/at;)Landroid/content/Context;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    const-string v5, "local_crash_lock"

    .line 93
    .line 94
    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/ap;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-nez v4, :cond_0

    .line 99
    .line 100
    const-string v2, "Failed to lock file for uploading local crash."

    .line 101
    .line 102
    new-array v0, v0, [Ljava/lang/Object;

    .line 103
    .line 104
    invoke-static {v2, v0}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    goto/16 :goto_9

    .line 108
    .line 109
    :cond_0
    invoke-static {}, Lcom/tencent/bugly/proguard/ag$a;->a()Lcom/tencent/bugly/proguard/ag;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-static {}, Lcom/tencent/bugly/proguard/ag;->a()Ljava/util/List;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    if-eqz v6, :cond_4

    .line 118
    .line 119
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 120
    .line 121
    .line 122
    move-result v7

    .line 123
    if-eqz v7, :cond_1

    .line 124
    .line 125
    goto :goto_4

    .line 126
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 127
    .line 128
    .line 129
    move-result v7

    .line 130
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    .line 132
    .line 133
    move-result-object v7

    .line 134
    new-array v8, v2, [Ljava/lang/Object;

    .line 135
    .line 136
    aput-object v7, v8, v0

    .line 137
    .line 138
    const-string v7, "sla load local data list size:%s"

    .line 139
    .line 140
    invoke-static {v7, v8}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 144
    .line 145
    .line 146
    move-result-object v7

    .line 147
    new-instance v8, Ljava/util/ArrayList;

    .line 148
    .line 149
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .line 151
    .line 152
    :cond_2
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 153
    .line 154
    .line 155
    move-result v9

    .line 156
    if-eqz v9, :cond_3

    .line 157
    .line 158
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v9

    .line 162
    check-cast v9, Lcom/tencent/bugly/proguard/ag$b;

    .line 163
    .line 164
    iget-wide v10, v9, Lcom/tencent/bugly/proguard/ag$b;->b:J

    .line 165
    .line 166
    invoke-static {}, Lcom/tencent/bugly/proguard/ap;->b()J

    .line 167
    .line 168
    .line 169
    move-result-wide v12

    .line 170
    const-wide/32 v14, 0x240c8400

    .line 171
    .line 172
    .line 173
    sub-long/2addr v12, v14

    .line 174
    cmp-long v14, v10, v12

    .line 175
    .line 176
    if-gez v14, :cond_2

    .line 177
    .line 178
    iget-object v10, v9, Lcom/tencent/bugly/proguard/ag$b;->c:Ljava/lang/String;

    .line 179
    .line 180
    new-array v11, v2, [Ljava/lang/Object;

    .line 181
    .line 182
    aput-object v10, v11, v0

    .line 183
    .line 184
    const-string v10, "sla local data is expired:%s"

    .line 185
    .line 186
    invoke-static {v10, v11}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 193
    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_3
    invoke-static {v8}, Lcom/tencent/bugly/proguard/ag;->d(Ljava/util/List;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v4, v6}, Lcom/tencent/bugly/proguard/ag;->b(Ljava/util/List;)V

    .line 200
    .line 201
    .line 202
    goto :goto_5

    .line 203
    :cond_4
    :goto_4
    const-string v4, "sla local data is null"

    .line 204
    .line 205
    new-array v6, v0, [Ljava/lang/Object;

    .line 206
    .line 207
    invoke-static {v4, v6}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    :goto_5
    invoke-static {}, Lcom/tencent/bugly/proguard/as;->a()Ljava/util/List;

    .line 211
    .line 212
    .line 213
    move-result-object v4

    .line 214
    if-eqz v4, :cond_7

    .line 215
    .line 216
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 217
    .line 218
    .line 219
    move-result v6

    .line 220
    if-lez v6, :cond_7

    .line 221
    .line 222
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 223
    .line 224
    .line 225
    move-result v6

    .line 226
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 227
    .line 228
    .line 229
    move-result-object v6

    .line 230
    new-array v7, v2, [Ljava/lang/Object;

    .line 231
    .line 232
    aput-object v6, v7, v0

    .line 233
    .line 234
    const-string v6, "Size of crash list: %s"

    .line 235
    .line 236
    invoke-static {v6, v7}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 240
    .line 241
    .line 242
    move-result v6

    .line 243
    int-to-long v7, v6

    .line 244
    const-wide/16 v9, 0x14

    .line 245
    .line 246
    cmp-long v11, v7, v9

    .line 247
    .line 248
    if-lez v11, :cond_6

    .line 249
    .line 250
    new-instance v7, Ljava/util/ArrayList;

    .line 251
    .line 252
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .line 254
    .line 255
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 256
    .line 257
    .line 258
    :goto_6
    int-to-long v11, v0

    .line 259
    cmp-long v8, v11, v9

    .line 260
    .line 261
    if-gez v8, :cond_5

    .line 262
    .line 263
    add-int/lit8 v8, v6, -0x1

    .line 264
    .line 265
    sub-int/2addr v8, v0

    .line 266
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v8

    .line 270
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    add-int/2addr v0, v2

    .line 274
    goto :goto_6

    .line 275
    :cond_5
    move-object v12, v7

    .line 276
    goto :goto_7

    .line 277
    :cond_6
    move-object v12, v4

    .line 278
    :goto_7
    iget-object v11, v3, Lcom/tencent/bugly/proguard/at;->s:Lcom/tencent/bugly/proguard/as;

    .line 279
    .line 280
    const/16 v16, 0x0

    .line 281
    .line 282
    const/16 v17, 0x0

    .line 283
    .line 284
    const-wide/16 v13, 0x0

    .line 285
    .line 286
    const/4 v15, 0x0

    .line 287
    invoke-virtual/range {v11 .. v17}, Lcom/tencent/bugly/proguard/as;->a(Ljava/util/List;JZZZ)V

    .line 288
    .line 289
    .line 290
    goto :goto_8

    .line 291
    :cond_7
    const-string v2, "no crash need to be uploaded at this start"

    .line 292
    .line 293
    new-array v0, v0, [Ljava/lang/Object;

    .line 294
    .line 295
    invoke-static {v2, v0}, Lcom/tencent/bugly/proguard/al;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    :goto_8
    invoke-static {v3}, Lcom/tencent/bugly/proguard/at;->b(Lcom/tencent/bugly/proguard/at;)Landroid/content/Context;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    invoke-static {v0, v5}, Lcom/tencent/bugly/proguard/ap;->b(Landroid/content/Context;Ljava/lang/String;)Z

    .line 303
    .line 304
    .line 305
    :goto_9
    return-void

    .line 306
    nop

    .line 307
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
