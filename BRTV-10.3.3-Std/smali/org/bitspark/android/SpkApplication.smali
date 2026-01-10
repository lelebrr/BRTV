.class public Lorg/bitspark/android/SpkApplication;
.super Landroid/app/Application;
.source "MyApplication"


# static fields
.field public static final b:Ljava/lang/String;

.field public static c:Lorg/bitspark/android/SpkApplication;


# instance fields
.field public a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "NQVigpo=\n"

    .line 2
    .line 3
    const-string v1, "eHwj8urOVho=\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lorg/bitspark/android/SpkApplication;->b:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lorg/bitspark/android/SpkApplication;->a:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final attachBaseContext(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-static {}, Lu7/d;->s()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    :try_start_0
    const-string v1, "WzRWvFI1+mw=\n"

    .line 7
    .line 8
    const-string v2, "GWcG0DNMnx4=\n"

    .line 9
    .line 10
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "M16Cb8hFe4MhSZg=\n"

    .line 20
    .line 21
    const-string v3, "YA7dI4kLPNY=\n"

    .line 22
    .line 23
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception v1

    .line 33
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    sget-object v1, Lea/h;->H:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_0

    .line 49
    .line 50
    sget-object v0, Lea/h;->H:Ljava/lang/String;

    .line 51
    .line 52
    :cond_0
    invoke-static {p1, v0}, Lorg/bitspark/android/utils/BSContextWrapper;->wrap(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 57
    .line 58
    .line 59
    invoke-static {p0}, Lr1/a;->d(Landroid/app/Application;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final onCreate()V
    .locals 11

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lea/h;->I:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-object v0, Lea/h;->H:Ljava/lang/String;

    .line 13
    .line 14
    sput-object v0, Lea/h;->I:Ljava/lang/String;

    .line 15
    .line 16
    :cond_0
    sput-object p0, Lorg/bitspark/android/SpkApplication;->c:Lorg/bitspark/android/SpkApplication;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "7f/cizA=\n"

    .line 23
    .line 24
    const-string v2, "nZez5VXkAuY=\n"

    .line 25
    .line 26
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    const/4 v2, 0x1

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/4 v0, 0x0

    .line 49
    :goto_0
    iput-boolean v0, p0, Lorg/bitspark/android/SpkApplication;->a:Z

    .line 50
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v3, "BKLCFSZM1rAFs+Y0OnHe61c=\n"

    .line 57
    .line 58
    const-string v4, "d8e2XFUfu9E=\n"

    .line 59
    .line 60
    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    iget-boolean v3, p0, Lorg/bitspark/android/SpkApplication;->a:Z

    .line 68
    .line 69
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    sget-boolean v3, Lorg/bitspark/android/utils/m;->b:Z

    .line 77
    .line 78
    sget-object v3, Lorg/bitspark/android/SpkApplication;->b:Ljava/lang/String;

    .line 79
    .line 80
    invoke-static {v3, v0}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    const-string v3, "pekwvJSzN6bztg==\n"

    .line 88
    .line 89
    const-string v4, "l49T36SDUpI=\n"

    .line 90
    .line 91
    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-static {v0, v3, v1}, Lcom/tencent/bugly/crashreport/CrashReport;->initCrashReport(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 96
    .line 97
    .line 98
    invoke-static {p0}, Lorg/bitspark/android/utils/r;->b(Lorg/bitspark/android/SpkApplication;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    if-nez v0, :cond_2

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_2
    new-instance v0, Lcom/tencent/mars/xlog/Xlog;

    .line 106
    .line 107
    invoke-direct {v0}, Lcom/tencent/mars/xlog/Xlog;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-static {v0}, Lcom/tencent/mars/xlog/Log;->setLogImp(Lcom/tencent/mars/xlog/Log$LogImp;)V

    .line 111
    .line 112
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-static {p0}, Lorg/bitspark/android/utils/r;->b(Lorg/bitspark/android/SpkApplication;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    sget-object v3, Lorg/bitspark/android/utils/r;->b:Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v8

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    invoke-static {p0}, Lorg/bitspark/android/utils/r;->b(Lorg/bitspark/android/SpkApplication;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    sget-object v3, Lorg/bitspark/android/utils/r;->c:Ljava/lang/String;

    .line 147
    .line 148
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v7

    .line 155
    const-string v0, "JFO8sFVSKAl2COHhX1IoCnJV4eFYVSVVdQG97VoFcQoiBLfmWFMnXycB5uULVSVaJwGz4g8GdFsv\nBLXtVVInDnMD4O1eBnRaJwi14AxUIwklBuHtC1AgWyEJt+daAiMNdQSxt1gDI1kkV7ezXwFxXiBT\n5rYODycIJQi27VUFKQ8=\n"

    .line 156
    .line 157
    const-string v3, "FzGF1W02EGw=\n"

    .line 158
    .line 159
    invoke-static {v0, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v10

    .line 163
    sget-object v9, Lorg/bitspark/android/utils/r;->a:Ljava/lang/String;

    .line 164
    .line 165
    const/4 v5, 0x2

    .line 166
    const/4 v6, 0x0

    .line 167
    const/4 v4, 0x1

    .line 168
    invoke-static/range {v4 .. v10}, Lcom/tencent/mars/xlog/Xlog;->open(ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-static {v1}, Lcom/tencent/mars/xlog/Log;->setConsoleLogOpen(Z)V

    .line 172
    .line 173
    .line 174
    :goto_1
    const-string v0, "lje+\n"

    .line 175
    .line 176
    const-string v3, "90fXkReM6L4=\n"

    .line 177
    .line 178
    invoke-static {v0, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-static {v0}, Lorg/bitspark/android/utils/m;->d(Ljava/lang/String;)Lokhttp3/OkHttpClient;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-static {}, Lcom/lzy/okgo/OkGo;->getInstance()Lcom/lzy/okgo/OkGo;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    invoke-virtual {v3, p0}, Lcom/lzy/okgo/OkGo;->init(Landroid/app/Application;)Lcom/lzy/okgo/OkGo;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    invoke-virtual {v3, v0}, Lcom/lzy/okgo/OkGo;->setOkHttpClient(Lokhttp3/OkHttpClient;)Lcom/lzy/okgo/OkGo;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    sget v3, Lea/h;->j:I

    .line 199
    .line 200
    int-to-long v3, v3

    .line 201
    invoke-virtual {v0, v3, v4}, Lcom/lzy/okgo/OkGo;->setCacheTime(J)Lcom/lzy/okgo/OkGo;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-virtual {v0, v2}, Lcom/lzy/okgo/OkGo;->setRetryCount(I)Lcom/lzy/okgo/OkGo;

    .line 206
    .line 207
    .line 208
    invoke-static {p0}, Lgo/Seq;->setContext(Landroid/content/Context;)V

    .line 209
    .line 210
    .line 211
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    .line 212
    .line 213
    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    invoke-static {v2}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectFileUriExposure()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 224
    .line 225
    .line 226
    const-string v0, "Wa0GliO9B2ZLuhw=\n"

    .line 227
    .line 228
    const-string v2, "Cv1Z2mLzQDM=\n"

    .line 229
    .line 230
    invoke-static {v0, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    const-string v2, ""

    .line 235
    .line 236
    invoke-static {v0, v2}, Lorg/bitspark/android/utils/m;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    if-eqz v2, :cond_3

    .line 245
    .line 246
    sget-object v2, Lea/h;->H:Ljava/lang/String;

    .line 247
    .line 248
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 249
    .line 250
    .line 251
    move-result v2

    .line 252
    if-nez v2, :cond_3

    .line 253
    .line 254
    sget-object v0, Lea/h;->H:Ljava/lang/String;

    .line 255
    .line 256
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 257
    .line 258
    .line 259
    move-result v2

    .line 260
    if-eqz v2, :cond_4

    .line 261
    .line 262
    const-string v0, "jLQ=\n"

    .line 263
    .line 264
    const-string v2, "6dpbaZchcBA=\n"

    .line 265
    .line 266
    invoke-static {v0, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    :cond_4
    sget-object v2, Lf8/b;->c:Ljava/util/Locale;

    .line 271
    .line 272
    new-instance v2, Ljava/util/Locale;

    .line 273
    .line 274
    invoke-direct {v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    new-instance v0, La7/f;

    .line 278
    .line 279
    invoke-direct {v0, p0, v2}, La7/f;-><init>(Lorg/bitspark/android/SpkApplication;Ljava/util/Locale;)V

    .line 280
    .line 281
    .line 282
    sget-object v2, Lf8/b;->d:Lf8/b;

    .line 283
    .line 284
    if-nez v2, :cond_b

    .line 285
    .line 286
    new-instance v2, Lf8/b;

    .line 287
    .line 288
    new-instance v3, Lu6/e;

    .line 289
    .line 290
    const/16 v4, 0xd

    .line 291
    .line 292
    invoke-direct {v3, v4}, Lu6/e;-><init>(I)V

    .line 293
    .line 294
    .line 295
    invoke-direct {v2, v0, v3}, Lf8/b;-><init>(La7/f;Lu6/e;)V

    .line 296
    .line 297
    .line 298
    new-instance v3, Lf8/c;

    .line 299
    .line 300
    new-instance v4, Laa/c;

    .line 301
    .line 302
    const/4 v5, 0x2

    .line 303
    invoke-direct {v4, v5, v2}, Laa/c;-><init>(ILjava/lang/Object;)V

    .line 304
    .line 305
    .line 306
    invoke-direct {v3, v4}, Lf8/c;-><init>(Laa/c;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {p0, v3}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 310
    .line 311
    .line 312
    new-instance v3, Lf8/d;

    .line 313
    .line 314
    new-instance v4, Lf8/a;

    .line 315
    .line 316
    invoke-direct {v4, v2, p0}, Lf8/a;-><init>(Lf8/b;Lorg/bitspark/android/SpkApplication;)V

    .line 317
    .line 318
    .line 319
    invoke-direct {v3, v4}, Lf8/d;-><init>(Lf8/a;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {p0, v3}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 323
    .line 324
    .line 325
    const-string v3, "follow_system_locale_key"

    .line 326
    .line 327
    iget-object v4, v0, La7/f;->b:Ljava/lang/Object;

    .line 328
    .line 329
    check-cast v4, Landroid/content/SharedPreferences;

    .line 330
    .line 331
    invoke-interface {v4, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 332
    .line 333
    .line 334
    move-result v3

    .line 335
    if-eqz v3, :cond_5

    .line 336
    .line 337
    iget-object v0, v2, Lf8/b;->a:Ljava/util/Locale;

    .line 338
    .line 339
    goto :goto_2

    .line 340
    :cond_5
    invoke-virtual {v0}, La7/f;->B()Ljava/util/Locale;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    :goto_2
    invoke-virtual {v2, p0, v0}, Lf8/b;->a(Landroid/content/Context;Ljava/util/Locale;)V

    .line 345
    .line 346
    .line 347
    sput-object v2, Lf8/b;->d:Lf8/b;

    .line 348
    .line 349
    const-string v0, "IeJsqdr6\n"

    .line 350
    .line 351
    const-string v2, "VosCzbWNcWE=\n"

    .line 352
    .line 353
    invoke-static {v0, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    check-cast v0, Landroid/view/WindowManager;

    .line 362
    .line 363
    if-eqz v0, :cond_a

    .line 364
    .line 365
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 366
    .line 367
    .line 368
    move-result-object v2

    .line 369
    if-nez v2, :cond_6

    .line 370
    .line 371
    goto :goto_5

    .line 372
    :cond_6
    new-instance v2, Landroid/graphics/Point;

    .line 373
    .line 374
    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 375
    .line 376
    .line 377
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    invoke-virtual {v0, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 382
    .line 383
    .line 384
    iget v0, v2, Landroid/graphics/Point;->x:I

    .line 385
    .line 386
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 387
    .line 388
    if-lez v0, :cond_a

    .line 389
    .line 390
    if-gtz v2, :cond_7

    .line 391
    .line 392
    goto :goto_5

    .line 393
    :cond_7
    if-le v2, v0, :cond_8

    .line 394
    .line 395
    move v3, v2

    .line 396
    goto :goto_3

    .line 397
    :cond_8
    move v3, v0

    .line 398
    :goto_3
    if-le v2, v0, :cond_9

    .line 399
    .line 400
    goto :goto_4

    .line 401
    :cond_9
    move v0, v2

    .line 402
    :goto_4
    invoke-static {}, Lme/jessyan/autosize/AutoSizeConfig;->getInstance()Lme/jessyan/autosize/AutoSizeConfig;

    .line 403
    .line 404
    .line 405
    move-result-object v2

    .line 406
    invoke-virtual {v2, v3}, Lme/jessyan/autosize/AutoSizeConfig;->setScreenWidth(I)Lme/jessyan/autosize/AutoSizeConfig;

    .line 407
    .line 408
    .line 409
    move-result-object v2

    .line 410
    invoke-virtual {v2, v0}, Lme/jessyan/autosize/AutoSizeConfig;->setScreenHeight(I)Lme/jessyan/autosize/AutoSizeConfig;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    invoke-virtual {v0, v1}, Lme/jessyan/autosize/AutoSizeConfig;->setLog(Z)Lme/jessyan/autosize/AutoSizeConfig;

    .line 415
    .line 416
    .line 417
    :cond_a
    :goto_5
    return-void

    .line 418
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 419
    .line 420
    const-string v1, "Already initialized"

    .line 421
    .line 422
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    throw v0
.end method
