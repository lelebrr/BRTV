.class public final Lv7/h;
.super Lv7/d;
.source "MyApplication"


# virtual methods
.method public final a(Ls2/c;Ljava/lang/String;Ljava/lang/String;)Lv7/f;
    .locals 8

    .line 1
    const-string v0, " from "

    .line 2
    .line 3
    const-string v1, "DoH HTTP "

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    const-wide v4, 0x40efffe000000000L    # 65535.0

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    mul-double v2, v2, v4

    .line 15
    .line 16
    double-to-int v2, v2

    .line 17
    int-to-short v2, v2

    .line 18
    new-instance v3, Lv7/b;

    .line 19
    .line 20
    invoke-direct {v3, v2, p3}, Lv7/b;-><init>(SLjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3}, Lv7/b;->a()[B

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    invoke-static {}, Lcom/lzy/okgo/https/HttpsUtils;->getSslSocketFactory()Lcom/lzy/okgo/https/HttpsUtils$SSLParams;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    new-instance v4, Lorg/bitspark/android/utils/l;

    .line 32
    .line 33
    const/4 v5, 0x1

    .line 34
    invoke-direct {v4, v5}, Lorg/bitspark/android/utils/l;-><init>(I)V

    .line 35
    .line 36
    .line 37
    new-instance v5, Ljava/net/URL;

    .line 38
    .line 39
    invoke-direct {v5, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    check-cast v5, Ljavax/net/ssl/HttpsURLConnection;

    .line 47
    .line 48
    invoke-virtual {v5, v4}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 49
    .line 50
    .line 51
    iget-object v2, v2, Lcom/lzy/okgo/https/HttpsUtils$SSLParams;->sSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 52
    .line 53
    invoke-virtual {v5, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 54
    .line 55
    .line 56
    iget v2, p0, Lv7/d;->c:I

    .line 57
    .line 58
    mul-int/lit16 v2, v2, 0x3e8

    .line 59
    .line 60
    invoke-virtual {v5, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 64
    .line 65
    .line 66
    const/4 v2, 0x1

    .line 67
    invoke-virtual {v5, v2}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 68
    .line 69
    .line 70
    const-string v2, "POST"

    .line 71
    .line 72
    invoke-virtual {v5, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const-string v2, "Content-Type"

    .line 76
    .line 77
    const-string v4, "application/dns-message"

    .line 78
    .line 79
    invoke-virtual {v5, v2, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const-string v2, "Accept"

    .line 83
    .line 84
    invoke-virtual {v5, v2, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const-string v2, "Accept-Encoding"

    .line 88
    .line 89
    const-string v4, ""

    .line 90
    .line 91
    invoke-virtual {v5, v2, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    new-instance v2, Ljava/io/DataOutputStream;

    .line 95
    .line 96
    invoke-virtual {v5}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-direct {v2, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 101
    .line 102
    .line 103
    new-instance v4, Lua/a;

    .line 104
    .line 105
    const/4 v6, 0x3

    .line 106
    invoke-direct {v4, v5, v6, v2}, Lua/a;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    iget-object p1, p1, Ls2/c;->b:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 112
    .line 113
    invoke-virtual {p1, v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2, p3}, Ljava/io/OutputStream;->write([B)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    const/16 p3, 0xc8

    .line 127
    .line 128
    const/4 v2, 0x0

    .line 129
    const/4 v4, 0x0

    .line 130
    if-eq p1, p3, :cond_4

    .line 131
    .line 132
    :try_start_0
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    if-eqz v2, :cond_1

    .line 137
    .line 138
    const/16 p3, 0x100

    .line 139
    .line 140
    new-array p3, p3, [B

    .line 141
    .line 142
    invoke-virtual {v2, p3}, Ljava/io/InputStream;->read([B)I

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    if-gtz v3, :cond_0

    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_0
    new-instance v5, Ljava/io/IOException;

    .line 150
    .line 151
    new-instance v6, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    const-string v7, ", errorBody="

    .line 166
    .line 167
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    new-instance v7, Ljava/lang/String;

    .line 171
    .line 172
    invoke-direct {v7, p3, v4, v3}, Ljava/lang/String;-><init>([BII)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p3

    .line 182
    invoke-direct {v5, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    :catchall_0
    move-exception p1

    .line 187
    goto :goto_2

    .line 188
    :catch_0
    nop

    .line 189
    goto :goto_3

    .line 190
    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    .line 191
    .line 192
    :goto_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 193
    .line 194
    .line 195
    goto :goto_4

    .line 196
    :goto_2
    if-eqz v2, :cond_2

    .line 197
    .line 198
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 199
    .line 200
    .line 201
    :catch_1
    :cond_2
    throw p1

    .line 202
    :goto_3
    if-eqz v2, :cond_3

    .line 203
    .line 204
    goto :goto_1

    .line 205
    :catch_2
    :cond_3
    :goto_4
    new-instance p3, Ljava/io/IOException;

    .line 206
    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    invoke-direct {p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    throw p3

    .line 229
    :cond_4
    :try_start_3
    invoke-virtual {v5}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    .line 234
    .line 235
    invoke-virtual {v5}, Ljava/net/URLConnection;->getContentLength()I

    .line 236
    .line 237
    .line 238
    move-result p3

    .line 239
    const/16 v0, 0x200

    .line 240
    .line 241
    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    .line 242
    .line 243
    .line 244
    move-result p3

    .line 245
    invoke-direct {p1, p3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 246
    .line 247
    .line 248
    const/16 p3, 0x2000

    .line 249
    .line 250
    new-array p3, p3, [B

    .line 251
    .line 252
    const/4 v0, 0x0

    .line 253
    :goto_5
    invoke-virtual {v2, p3}, Ljava/io/InputStream;->read([B)I

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    const/4 v5, -0x1

    .line 258
    if-eq v1, v5, :cond_7

    .line 259
    .line 260
    if-nez v1, :cond_5

    .line 261
    .line 262
    goto :goto_5

    .line 263
    :cond_5
    add-int/2addr v0, v1

    .line 264
    const/high16 v5, 0x100000

    .line 265
    .line 266
    if-gt v0, v5, :cond_6

    .line 267
    .line 268
    invoke-virtual {p1, p3, v4, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 269
    .line 270
    .line 271
    goto :goto_5

    .line 272
    :catchall_1
    move-exception p1

    .line 273
    goto :goto_6

    .line 274
    :cond_6
    new-instance p1, Ljava/io/IOException;

    .line 275
    .line 276
    new-instance p3, Ljava/lang/StringBuilder;

    .line 277
    .line 278
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    .line 280
    .line 281
    const-string v1, "DoH response too large from "

    .line 282
    .line 283
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    const-string p2, ": "

    .line 290
    .line 291
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object p2

    .line 301
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    throw p1

    .line 305
    :cond_7
    if-lez v0, :cond_8

    .line 306
    .line 307
    new-instance p3, Lv7/f;

    .line 308
    .line 309
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 310
    .line 311
    .line 312
    move-result-object p1

    .line 313
    const/4 v0, 0x5

    .line 314
    invoke-direct {p3, p2, v0, v3, p1}, Lv7/f;-><init>(Ljava/lang/String;ILv7/b;[B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 315
    .line 316
    .line 317
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 318
    .line 319
    .line 320
    :catch_3
    return-object p3

    .line 321
    :cond_8
    :try_start_5
    new-instance p1, Ljava/io/IOException;

    .line 322
    .line 323
    new-instance p3, Ljava/lang/StringBuilder;

    .line 324
    .line 325
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    .line 327
    .line 328
    const-string v0, "DoH response empty from "

    .line 329
    .line 330
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object p2

    .line 340
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 344
    :goto_6
    if-eqz v2, :cond_9

    .line 345
    .line 346
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 347
    .line 348
    .line 349
    :catch_4
    :cond_9
    throw p1
.end method
