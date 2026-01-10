.class public final Lr4/h;
.super Lr4/m;
.source "MyApplication"


# instance fields
.field public final synthetic u:I

.field public final synthetic v:Lr4/f;


# direct methods
.method public constructor <init>(Lr4/f;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lr4/h;->u:I

    .line 2
    iput-object p1, p0, Lr4/h;->v:Lr4/f;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lr4/m;-><init>(Lr4/f;Z)V

    return-void
.end method

.method public synthetic constructor <init>(Lr4/f;I)V
    .locals 0

    .line 1
    iput p2, p0, Lr4/h;->u:I

    iput-object p1, p0, Lr4/h;->v:Lr4/f;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lr4/m;-><init>(Lr4/f;Z)V

    return-void
.end method


# virtual methods
.method public final k0()V
    .locals 9

    .line 1
    iget v0, p0, Lr4/h;->u:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lr4/h;->v:Lr4/f;

    .line 7
    .line 8
    iget-object v0, v0, Lr4/f;->c:Lv4/l;

    .line 9
    .line 10
    invoke-virtual {p0}, Lr4/m;->l0()Lv4/m;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    new-instance v2, Lorg/json/JSONObject;

    .line 18
    .line 19
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lv4/o;->b()J

    .line 23
    .line 24
    .line 25
    move-result-wide v3

    .line 26
    :try_start_0
    const-string v5, "requestId"

    .line 27
    .line 28
    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 29
    .line 30
    .line 31
    const-string v5, "type"

    .line 32
    .line 33
    const-string v6, "GET_STATUS"

    .line 34
    .line 35
    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    .line 37
    .line 38
    iget-object v5, v0, Lv4/l;->f:Lcom/google/android/gms/cast/MediaStatus;

    .line 39
    .line 40
    if-eqz v5, :cond_0

    .line 41
    .line 42
    const-string v6, "mediaSessionId"

    .line 43
    .line 44
    iget-wide v7, v5, Lcom/google/android/gms/cast/MediaStatus;->b:J

    .line 45
    .line 46
    invoke-virtual {v2, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    :catch_0
    :cond_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v0, v3, v4, v2}, Lv4/o;->c(JLjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, v0, Lv4/l;->p:Lv4/n;

    .line 57
    .line 58
    invoke-virtual {v0, v3, v4, v1}, Lv4/n;->a(JLv4/m;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :pswitch_0
    iget-object v0, p0, Lr4/h;->v:Lr4/f;

    .line 63
    .line 64
    invoke-virtual {p0}, Lr4/m;->l0()Lv4/m;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    iget-object v0, v0, Lr4/f;->c:Lv4/l;

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    new-instance v2, Lorg/json/JSONObject;

    .line 74
    .line 75
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Lv4/o;->b()J

    .line 79
    .line 80
    .line 81
    move-result-wide v3

    .line 82
    :try_start_1
    const-string v5, "requestId"

    .line 83
    .line 84
    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 85
    .line 86
    .line 87
    const-string v5, "type"

    .line 88
    .line 89
    const-string v6, "SKIP_AD"

    .line 90
    .line 91
    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    .line 93
    .line 94
    const-string v5, "mediaSessionId"

    .line 95
    .line 96
    invoke-virtual {v0}, Lv4/l;->p()J

    .line 97
    .line 98
    .line 99
    move-result-wide v6

    .line 100
    invoke-virtual {v2, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :catch_1
    move-exception v5

    .line 105
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 106
    .line 107
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    const-string v6, "Error creating SkipAd message: "

    .line 112
    .line 113
    invoke-static {v6, v5}, Lea/q;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    const/4 v6, 0x0

    .line 118
    new-array v6, v6, [Ljava/lang/Object;

    .line 119
    .line 120
    iget-object v7, v0, Lv4/o;->a:Lv4/b;

    .line 121
    .line 122
    iget-object v8, v7, Lv4/b;->a:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {v7, v5, v6}, Lv4/b;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-static {v8, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-virtual {v0, v3, v4, v2}, Lv4/o;->c(JLjava/lang/String;)V

    .line 136
    .line 137
    .line 138
    iget-object v0, v0, Lv4/l;->v:Lv4/n;

    .line 139
    .line 140
    invoke-virtual {v0, v3, v4, v1}, Lv4/n;->a(JLv4/m;)V

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :pswitch_1
    iget-object v0, p0, Lr4/h;->v:Lr4/f;

    .line 145
    .line 146
    iget-object v0, v0, Lr4/f;->c:Lv4/l;

    .line 147
    .line 148
    invoke-virtual {p0}, Lr4/m;->l0()Lv4/m;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    new-instance v2, Lorg/json/JSONObject;

    .line 156
    .line 157
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0}, Lv4/o;->b()J

    .line 161
    .line 162
    .line 163
    move-result-wide v3

    .line 164
    :try_start_2
    const-string v5, "requestId"

    .line 165
    .line 166
    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 167
    .line 168
    .line 169
    const-string v5, "type"

    .line 170
    .line 171
    const-string v6, "PLAY"

    .line 172
    .line 173
    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    .line 175
    .line 176
    const-string v5, "mediaSessionId"

    .line 177
    .line 178
    invoke-virtual {v0}, Lv4/l;->p()J

    .line 179
    .line 180
    .line 181
    move-result-wide v6

    .line 182
    invoke-virtual {v2, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 183
    .line 184
    .line 185
    :catch_2
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    invoke-virtual {v0, v3, v4, v2}, Lv4/o;->c(JLjava/lang/String;)V

    .line 190
    .line 191
    .line 192
    iget-object v0, v0, Lv4/l;->l:Lv4/n;

    .line 193
    .line 194
    invoke-virtual {v0, v3, v4, v1}, Lv4/n;->a(JLv4/m;)V

    .line 195
    .line 196
    .line 197
    return-void

    .line 198
    :pswitch_2
    iget-object v0, p0, Lr4/h;->v:Lr4/f;

    .line 199
    .line 200
    iget-object v0, v0, Lr4/f;->c:Lv4/l;

    .line 201
    .line 202
    invoke-virtual {p0}, Lr4/m;->l0()Lv4/m;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    new-instance v2, Lorg/json/JSONObject;

    .line 210
    .line 211
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0}, Lv4/o;->b()J

    .line 215
    .line 216
    .line 217
    move-result-wide v3

    .line 218
    :try_start_3
    const-string v5, "requestId"

    .line 219
    .line 220
    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 221
    .line 222
    .line 223
    const-string v5, "type"

    .line 224
    .line 225
    const-string v6, "PAUSE"

    .line 226
    .line 227
    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    .line 229
    .line 230
    const-string v5, "mediaSessionId"

    .line 231
    .line 232
    invoke-virtual {v0}, Lv4/l;->p()J

    .line 233
    .line 234
    .line 235
    move-result-wide v6

    .line 236
    invoke-virtual {v2, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 237
    .line 238
    .line 239
    :catch_3
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    invoke-virtual {v0, v3, v4, v2}, Lv4/o;->c(JLjava/lang/String;)V

    .line 244
    .line 245
    .line 246
    iget-object v0, v0, Lv4/l;->k:Lv4/n;

    .line 247
    .line 248
    invoke-virtual {v0, v3, v4, v1}, Lv4/n;->a(JLv4/m;)V

    .line 249
    .line 250
    .line 251
    return-void

    .line 252
    :pswitch_3
    iget-object v0, p0, Lr4/h;->v:Lr4/f;

    .line 253
    .line 254
    iget-object v0, v0, Lr4/f;->c:Lv4/l;

    .line 255
    .line 256
    invoke-virtual {p0}, Lr4/m;->l0()Lv4/m;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 261
    .line 262
    .line 263
    new-instance v2, Lorg/json/JSONObject;

    .line 264
    .line 265
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0}, Lv4/o;->b()J

    .line 269
    .line 270
    .line 271
    move-result-wide v3

    .line 272
    :try_start_4
    const-string v5, "requestId"

    .line 273
    .line 274
    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 275
    .line 276
    .line 277
    const-string v5, "type"

    .line 278
    .line 279
    const-string v6, "QUEUE_GET_ITEM_IDS"

    .line 280
    .line 281
    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 282
    .line 283
    .line 284
    const-string v5, "mediaSessionId"

    .line 285
    .line 286
    invoke-virtual {v0}, Lv4/l;->p()J

    .line 287
    .line 288
    .line 289
    move-result-wide v6

    .line 290
    invoke-virtual {v2, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    .line 291
    .line 292
    .line 293
    :catch_4
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    invoke-virtual {v0, v3, v4, v2}, Lv4/o;->c(JLjava/lang/String;)V

    .line 298
    .line 299
    .line 300
    iget-object v0, v0, Lv4/l;->s:Lv4/n;

    .line 301
    .line 302
    invoke-virtual {v0, v3, v4, v1}, Lv4/n;->a(JLv4/m;)V

    .line 303
    .line 304
    .line 305
    return-void

    .line 306
    :pswitch_4
    iget-object v0, p0, Lr4/h;->v:Lr4/f;

    .line 307
    .line 308
    iget-object v0, v0, Lr4/f;->c:Lv4/l;

    .line 309
    .line 310
    invoke-virtual {p0}, Lr4/m;->l0()Lv4/m;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    const/4 v2, 0x1

    .line 315
    invoke-virtual {v0, v1, v2}, Lv4/l;->d(Lv4/m;I)V

    .line 316
    .line 317
    .line 318
    return-void

    .line 319
    :pswitch_5
    iget-object v0, p0, Lr4/h;->v:Lr4/f;

    .line 320
    .line 321
    iget-object v0, v0, Lr4/f;->c:Lv4/l;

    .line 322
    .line 323
    invoke-virtual {p0}, Lr4/m;->l0()Lv4/m;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    const/4 v2, -0x1

    .line 328
    invoke-virtual {v0, v1, v2}, Lv4/l;->d(Lv4/m;I)V

    .line 329
    .line 330
    .line 331
    return-void

    .line 332
    nop

    .line 333
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
