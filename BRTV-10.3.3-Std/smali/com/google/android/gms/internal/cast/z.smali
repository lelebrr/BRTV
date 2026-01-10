.class public final synthetic Lcom/google/android/gms/internal/cast/z;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/cast/z;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/cast/z;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/cast/z;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/z;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/gms/internal/cast/l2;

    .line 9
    .line 10
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/l2;->f:Ljava/util/HashSet;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    goto/16 :goto_3

    .line 19
    .line 20
    :cond_0
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/l2;->g:Ljava/util/HashSet;

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/4 v4, 0x1

    .line 27
    if-eq v4, v3, :cond_1

    .line 28
    .line 29
    const-wide/32 v3, 0x5265c00

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const-wide/32 v3, 0xa4cb800

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 37
    .line 38
    .line 39
    move-result-wide v5

    .line 40
    iget-wide v7, v0, Lcom/google/android/gms/internal/cast/l2;->h:J

    .line 41
    .line 42
    const-wide/16 v9, 0x0

    .line 43
    .line 44
    cmp-long v11, v7, v9

    .line 45
    .line 46
    if-eqz v11, :cond_2

    .line 47
    .line 48
    sub-long v7, v5, v7

    .line 49
    .line 50
    cmp-long v11, v7, v3

    .line 51
    .line 52
    if-ltz v11, :cond_6

    .line 53
    .line 54
    :cond_2
    const/4 v3, 0x0

    .line 55
    new-array v3, v3, [Ljava/lang/Object;

    .line 56
    .line 57
    sget-object v4, Lcom/google/android/gms/internal/cast/l2;->i:Lv4/b;

    .line 58
    .line 59
    const-string v7, "Upload the feature usage report."

    .line 60
    .line 61
    invoke-virtual {v4, v7, v3}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-static {}, Lcom/google/android/gms/internal/cast/t2;->l()Lcom/google/android/gms/internal/cast/s2;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    sget-object v4, Lcom/google/android/gms/internal/cast/l2;->j:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v3}, Lcom/google/android/gms/internal/cast/b7;->c()V

    .line 71
    .line 72
    .line 73
    iget-object v7, v3, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 74
    .line 75
    check-cast v7, Lcom/google/android/gms/internal/cast/t2;

    .line 76
    .line 77
    invoke-static {v7, v4}, Lcom/google/android/gms/internal/cast/t2;->n(Lcom/google/android/gms/internal/cast/t2;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3}, Lcom/google/android/gms/internal/cast/b7;->c()V

    .line 81
    .line 82
    .line 83
    iget-object v4, v3, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 84
    .line 85
    check-cast v4, Lcom/google/android/gms/internal/cast/t2;

    .line 86
    .line 87
    iget-object v7, v0, Lcom/google/android/gms/internal/cast/l2;->c:Ljava/lang/String;

    .line 88
    .line 89
    invoke-static {v4, v7}, Lcom/google/android/gms/internal/cast/t2;->m(Lcom/google/android/gms/internal/cast/t2;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3}, Lcom/google/android/gms/internal/cast/b7;->a()Lcom/google/android/gms/internal/cast/c7;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    check-cast v3, Lcom/google/android/gms/internal/cast/t2;

    .line 97
    .line 98
    new-instance v4, Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 104
    .line 105
    .line 106
    invoke-static {}, Lcom/google/android/gms/internal/cast/p2;->l()Lcom/google/android/gms/internal/cast/o2;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    invoke-virtual {v7}, Lcom/google/android/gms/internal/cast/b7;->c()V

    .line 111
    .line 112
    .line 113
    iget-object v8, v7, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 114
    .line 115
    check-cast v8, Lcom/google/android/gms/internal/cast/p2;

    .line 116
    .line 117
    invoke-static {v8, v4}, Lcom/google/android/gms/internal/cast/p2;->m(Lcom/google/android/gms/internal/cast/p2;Ljava/util/ArrayList;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v7}, Lcom/google/android/gms/internal/cast/b7;->c()V

    .line 121
    .line 122
    .line 123
    iget-object v4, v7, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 124
    .line 125
    check-cast v4, Lcom/google/android/gms/internal/cast/p2;

    .line 126
    .line 127
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/cast/p2;->n(Lcom/google/android/gms/internal/cast/p2;Lcom/google/android/gms/internal/cast/t2;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v7}, Lcom/google/android/gms/internal/cast/b7;->a()Lcom/google/android/gms/internal/cast/c7;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    check-cast v3, Lcom/google/android/gms/internal/cast/p2;

    .line 135
    .line 136
    invoke-static {}, Lcom/google/android/gms/internal/cast/c3;->m()Lcom/google/android/gms/internal/cast/b3;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    invoke-virtual {v4}, Lcom/google/android/gms/internal/cast/b7;->c()V

    .line 141
    .line 142
    .line 143
    iget-object v7, v4, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 144
    .line 145
    check-cast v7, Lcom/google/android/gms/internal/cast/c3;

    .line 146
    .line 147
    invoke-static {v7, v3}, Lcom/google/android/gms/internal/cast/c3;->p(Lcom/google/android/gms/internal/cast/c3;Lcom/google/android/gms/internal/cast/p2;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v4}, Lcom/google/android/gms/internal/cast/b7;->a()Lcom/google/android/gms/internal/cast/c7;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    check-cast v3, Lcom/google/android/gms/internal/cast/c3;

    .line 155
    .line 156
    iget-object v4, v0, Lcom/google/android/gms/internal/cast/l2;->a:Lcom/google/android/gms/internal/cast/m1;

    .line 157
    .line 158
    const/16 v7, 0xf3

    .line 159
    .line 160
    invoke-virtual {v4, v3, v7}, Lcom/google/android/gms/internal/cast/m1;->a(Lcom/google/android/gms/internal/cast/c3;I)V

    .line 161
    .line 162
    .line 163
    iget-object v3, v0, Lcom/google/android/gms/internal/cast/l2;->b:Landroid/content/SharedPreferences;

    .line 164
    .line 165
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v7

    .line 173
    if-nez v7, :cond_5

    .line 174
    .line 175
    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 176
    .line 177
    .line 178
    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    if-eqz v2, :cond_5

    .line 190
    .line 191
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    check-cast v2, Lcom/google/android/gms/internal/cast/m2;

    .line 196
    .line 197
    iget v2, v2, Lcom/google/android/gms/internal/cast/m2;->a:I

    .line 198
    .line 199
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    const-string v7, "feature_usage_timestamp_reported_feature_"

    .line 204
    .line 205
    invoke-static {v7, v2}, Lea/q;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v8

    .line 209
    invoke-interface {v3, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 210
    .line 211
    .line 212
    move-result v11

    .line 213
    if-eqz v11, :cond_4

    .line 214
    .line 215
    goto :goto_2

    .line 216
    :cond_4
    const-string v8, "feature_usage_timestamp_detected_feature_"

    .line 217
    .line 218
    invoke-static {v8, v2}, Lea/q;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v8

    .line 222
    :goto_2
    invoke-static {v7, v2}, Lea/q;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    invoke-static {v8, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 227
    .line 228
    .line 229
    move-result v7

    .line 230
    if-nez v7, :cond_3

    .line 231
    .line 232
    invoke-interface {v3, v8, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 233
    .line 234
    .line 235
    move-result-wide v11

    .line 236
    invoke-interface {v4, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 237
    .line 238
    .line 239
    cmp-long v7, v11, v9

    .line 240
    .line 241
    if-eqz v7, :cond_3

    .line 242
    .line 243
    invoke-interface {v4, v2, v11, v12}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 244
    .line 245
    .line 246
    goto :goto_1

    .line 247
    :cond_5
    iput-wide v5, v0, Lcom/google/android/gms/internal/cast/l2;->h:J

    .line 248
    .line 249
    const-string v0, "feature_usage_last_report_time"

    .line 250
    .line 251
    invoke-interface {v4, v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 256
    .line 257
    .line 258
    :cond_6
    :goto_3
    return-void

    .line 259
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/z;->b:Ljava/lang/Object;

    .line 260
    .line 261
    check-cast v0, Lcom/google/android/gms/internal/cast/g2;

    .line 262
    .line 263
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/g2;->g:Lcom/google/android/gms/internal/cast/h2;

    .line 264
    .line 265
    if-eqz v1, :cond_7

    .line 266
    .line 267
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/g2;->c:Lcom/google/android/gms/internal/cast/j2;

    .line 268
    .line 269
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/cast/j2;->b(Lcom/google/android/gms/internal/cast/h2;)Lcom/google/android/gms/internal/cast/b3;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/b7;->a()Lcom/google/android/gms/internal/cast/c7;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    check-cast v1, Lcom/google/android/gms/internal/cast/c3;

    .line 278
    .line 279
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/g2;->a:Lcom/google/android/gms/internal/cast/m1;

    .line 280
    .line 281
    const/16 v3, 0xdf

    .line 282
    .line 283
    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/cast/m1;->a(Lcom/google/android/gms/internal/cast/c3;I)V

    .line 284
    .line 285
    .line 286
    :cond_7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/g2;->e()V

    .line 287
    .line 288
    .line 289
    return-void

    .line 290
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/z;->b:Ljava/lang/Object;

    .line 291
    .line 292
    check-cast v0, Lcom/google/android/gms/internal/cast/r0;

    .line 293
    .line 294
    iget-object v0, v0, Lcom/google/android/gms/internal/cast/r0;->e:Ljava/util/List;

    .line 295
    .line 296
    if-eqz v0, :cond_8

    .line 297
    .line 298
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 299
    .line 300
    .line 301
    :cond_8
    const/4 v0, 0x0

    .line 302
    throw v0

    .line 303
    :pswitch_2
    const/4 v0, 0x0

    .line 304
    new-array v0, v0, [Ljava/lang/Object;

    .line 305
    .line 306
    sget-object v1, Lcom/google/android/gms/internal/cast/a0;->d:Lv4/b;

    .line 307
    .line 308
    const-string v2, "get checkbox consent timed out"

    .line 309
    .line 310
    invoke-virtual {v1, v2, v0}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    .line 312
    .line 313
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 314
    .line 315
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/z;->b:Ljava/lang/Object;

    .line 316
    .line 317
    check-cast v1, Lw5/d;

    .line 318
    .line 319
    invoke-virtual {v1, v0}, Lw5/d;->d(Ljava/lang/Boolean;)V

    .line 320
    .line 321
    .line 322
    return-void

    .line 323
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
