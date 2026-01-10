.class public final Lh4/d;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Li4/d;

.field public final c:Lh4/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Li4/d;Lh4/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lh4/d;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lh4/d;->b:Li4/d;

    .line 7
    .line 8
    iput-object p3, p0, Lh4/d;->c:Lh4/b;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(La4/j;IZ)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    const/4 v5, 0x0

    .line 8
    const/4 v6, 0x4

    .line 9
    new-instance v7, Landroid/content/ComponentName;

    .line 10
    .line 11
    iget-object v8, v1, Lh4/d;->a:Landroid/content/Context;

    .line 12
    .line 13
    const-class v9, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;

    .line 14
    .line 15
    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 16
    .line 17
    .line 18
    const-string v9, "jobscheduler"

    .line 19
    .line 20
    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v9

    .line 24
    check-cast v9, Landroid/app/job/JobScheduler;

    .line 25
    .line 26
    new-instance v10, Ljava/util/zip/Adler32;

    .line 27
    .line 28
    invoke-direct {v10}, Ljava/util/zip/Adler32;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v8

    .line 35
    const-string v11, "UTF-8"

    .line 36
    .line 37
    invoke-static {v11}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 38
    .line 39
    .line 40
    move-result-object v12

    .line 41
    invoke-virtual {v8, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 42
    .line 43
    .line 44
    move-result-object v8

    .line 45
    invoke-virtual {v10, v8}, Ljava/util/zip/Adler32;->update([B)V

    .line 46
    .line 47
    .line 48
    iget-object v8, v0, La4/j;->a:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v11}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 51
    .line 52
    .line 53
    move-result-object v11

    .line 54
    invoke-virtual {v8, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    invoke-virtual {v10, v8}, Ljava/util/zip/Adler32;->update([B)V

    .line 59
    .line 60
    .line 61
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    iget-object v11, v0, La4/j;->c:Lx3/c;

    .line 66
    .line 67
    invoke-static {v11}, Ll4/a;->a(Lx3/c;)I

    .line 68
    .line 69
    .line 70
    move-result v12

    .line 71
    invoke-virtual {v8, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    invoke-virtual {v10, v8}, Ljava/util/zip/Adler32;->update([B)V

    .line 80
    .line 81
    .line 82
    iget-object v8, v0, La4/j;->b:[B

    .line 83
    .line 84
    if-eqz v8, :cond_0

    .line 85
    .line 86
    invoke-virtual {v10, v8}, Ljava/util/zip/Adler32;->update([B)V

    .line 87
    .line 88
    .line 89
    :cond_0
    invoke-virtual {v10}, Ljava/util/zip/Adler32;->getValue()J

    .line 90
    .line 91
    .line 92
    move-result-wide v12

    .line 93
    long-to-int v10, v12

    .line 94
    const-string v12, "JobInfoScheduler"

    .line 95
    .line 96
    const-string v13, "attemptNumber"

    .line 97
    .line 98
    if-nez p3, :cond_2

    .line 99
    .line 100
    invoke-virtual {v9}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    .line 101
    .line 102
    .line 103
    move-result-object v14

    .line 104
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 105
    .line 106
    .line 107
    move-result-object v14

    .line 108
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    .line 110
    .line 111
    move-result v15

    .line 112
    if-eqz v15, :cond_2

    .line 113
    .line 114
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v15

    .line 118
    check-cast v15, Landroid/app/job/JobInfo;

    .line 119
    .line 120
    invoke-virtual {v15}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    invoke-virtual {v6, v13}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    invoke-virtual {v15}, Landroid/app/job/JobInfo;->getId()I

    .line 129
    .line 130
    .line 131
    move-result v15

    .line 132
    if-ne v15, v10, :cond_1

    .line 133
    .line 134
    if-lt v6, v2, :cond_2

    .line 135
    .line 136
    const-string v2, "Upload for context %s is already scheduled. Returning..."

    .line 137
    .line 138
    invoke-static {v12, v2, v0}, Lo9/d;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    :cond_1
    const/4 v6, 0x4

    .line 143
    goto :goto_0

    .line 144
    :cond_2
    iget-object v6, v1, Lh4/d;->b:Li4/d;

    .line 145
    .line 146
    check-cast v6, Li4/g;

    .line 147
    .line 148
    invoke-virtual {v6}, Li4/g;->a()Landroid/database/sqlite/SQLiteDatabase;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    invoke-static {v11}, Ll4/a;->a(Lx3/c;)I

    .line 153
    .line 154
    .line 155
    move-result v14

    .line 156
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v14

    .line 160
    iget-object v15, v0, La4/j;->a:Ljava/lang/String;

    .line 161
    .line 162
    filled-new-array {v15, v14}, [Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v14

    .line 166
    const-string v4, "SELECT next_request_ms FROM transport_contexts WHERE backend_name = ? and priority = ?"

    .line 167
    .line 168
    invoke-virtual {v6, v4, v14}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 173
    .line 174
    .line 175
    move-result v6

    .line 176
    if-eqz v6, :cond_3

    .line 177
    .line 178
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    .line 179
    .line 180
    .line 181
    move-result-wide v16

    .line 182
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 183
    .line 184
    .line 185
    move-result-object v6

    .line 186
    goto :goto_1

    .line 187
    :cond_3
    const-wide/16 v16, 0x0

    .line 188
    .line 189
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 190
    .line 191
    .line 192
    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 197
    .line 198
    .line 199
    move-result-wide v3

    .line 200
    new-instance v14, Landroid/app/job/JobInfo$Builder;

    .line 201
    .line 202
    invoke-direct {v14, v10, v7}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 203
    .line 204
    .line 205
    iget-object v7, v1, Lh4/d;->c:Lh4/b;

    .line 206
    .line 207
    move-object/from16 v17, v6

    .line 208
    .line 209
    invoke-virtual {v7, v11, v3, v4, v2}, Lh4/b;->a(Lx3/c;JI)J

    .line 210
    .line 211
    .line 212
    move-result-wide v5

    .line 213
    invoke-virtual {v14, v5, v6}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 214
    .line 215
    .line 216
    iget-object v5, v7, Lh4/b;->b:Ljava/util/HashMap;

    .line 217
    .line 218
    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v5

    .line 222
    check-cast v5, Lh4/c;

    .line 223
    .line 224
    iget-object v5, v5, Lh4/c;->c:Ljava/util/Set;

    .line 225
    .line 226
    sget-object v6, Lh4/e;->a:Lh4/e;

    .line 227
    .line 228
    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v6

    .line 232
    if-eqz v6, :cond_4

    .line 233
    .line 234
    const/4 v6, 0x2

    .line 235
    invoke-virtual {v14, v6}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 236
    .line 237
    .line 238
    goto :goto_2

    .line 239
    :cond_4
    const/4 v6, 0x1

    .line 240
    invoke-virtual {v14, v6}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 241
    .line 242
    .line 243
    :goto_2
    sget-object v6, Lh4/e;->c:Lh4/e;

    .line 244
    .line 245
    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result v6

    .line 249
    if-eqz v6, :cond_5

    .line 250
    .line 251
    const/4 v6, 0x1

    .line 252
    invoke-virtual {v14, v6}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 253
    .line 254
    .line 255
    :cond_5
    sget-object v6, Lh4/e;->b:Lh4/e;

    .line 256
    .line 257
    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result v5

    .line 261
    if-eqz v5, :cond_6

    .line 262
    .line 263
    const/4 v5, 0x1

    .line 264
    invoke-virtual {v14, v5}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 265
    .line 266
    .line 267
    :cond_6
    new-instance v5, Landroid/os/PersistableBundle;

    .line 268
    .line 269
    invoke-direct {v5}, Landroid/os/PersistableBundle;-><init>()V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v5, v13, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 273
    .line 274
    .line 275
    const-string v6, "backendName"

    .line 276
    .line 277
    invoke-virtual {v5, v6, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    invoke-static {v11}, Ll4/a;->a(Lx3/c;)I

    .line 281
    .line 282
    .line 283
    move-result v6

    .line 284
    const-string v13, "priority"

    .line 285
    .line 286
    invoke-virtual {v5, v13, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 287
    .line 288
    .line 289
    if-eqz v8, :cond_7

    .line 290
    .line 291
    const/4 v6, 0x0

    .line 292
    invoke-static {v8, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v8

    .line 296
    const-string v6, "extras"

    .line 297
    .line 298
    invoke-virtual {v5, v6, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    :cond_7
    invoke-virtual {v14, v5}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    .line 302
    .line 303
    .line 304
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 305
    .line 306
    .line 307
    move-result-object v5

    .line 308
    invoke-virtual {v7, v11, v3, v4, v2}, Lh4/b;->a(Lx3/c;JI)J

    .line 309
    .line 310
    .line 311
    move-result-wide v3

    .line 312
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 313
    .line 314
    .line 315
    move-result-object v3

    .line 316
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 317
    .line 318
    .line 319
    move-result-object v2

    .line 320
    const/4 v4, 0x5

    .line 321
    new-array v4, v4, [Ljava/lang/Object;

    .line 322
    .line 323
    const/4 v6, 0x0

    .line 324
    aput-object v0, v4, v6

    .line 325
    .line 326
    const/4 v0, 0x1

    .line 327
    aput-object v5, v4, v0

    .line 328
    .line 329
    const/4 v0, 0x2

    .line 330
    aput-object v3, v4, v0

    .line 331
    .line 332
    const/4 v0, 0x3

    .line 333
    aput-object v17, v4, v0

    .line 334
    .line 335
    const/4 v0, 0x4

    .line 336
    aput-object v2, v4, v0

    .line 337
    .line 338
    const-string v0, "TransportRuntime."

    .line 339
    .line 340
    invoke-virtual {v0, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    const-string v2, "Scheduling upload for context %s with jobId=%d in %dms(Backend next call timestamp %d). Attempt %d"

    .line 345
    .line 346
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v2

    .line 350
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    .line 352
    .line 353
    invoke-virtual {v14}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    invoke-virtual {v9, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 358
    .line 359
    .line 360
    return-void

    .line 361
    :catchall_0
    move-exception v0

    .line 362
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 363
    .line 364
    .line 365
    throw v0
.end method
