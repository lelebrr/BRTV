.class public final Lcom/google/android/gms/internal/cast/d1;
.super Ll5/a;
.source "MyApplication"


# instance fields
.field public final synthetic r:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/cast/d1;->r:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Landroid/content/Context;Landroid/os/Looper;La4/h;Ljava/lang/Object;Ly4/h;Ly4/i;)Ly4/c;
    .locals 20

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    iget v0, v7, Lcom/google/android/gms/internal/cast/d1;->r:I

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    :pswitch_0
    invoke-super/range {p0 .. p6}, Ll5/a;->c(Landroid/content/Context;Landroid/os/Looper;La4/h;Ljava/lang/Object;Ly4/h;Ly4/i;)Ly4/c;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0

    .line 13
    :pswitch_1
    move-object/from16 v0, p4

    .line 14
    .line 15
    check-cast v0, Ly4/a;

    .line 16
    .line 17
    new-instance v8, Lv4/s;

    .line 18
    .line 19
    const/16 v3, 0xa1

    .line 20
    .line 21
    move-object v0, v8

    .line 22
    move-object/from16 v1, p1

    .line 23
    .line 24
    move-object/from16 v2, p2

    .line 25
    .line 26
    move-object/from16 v4, p3

    .line 27
    .line 28
    move-object/from16 v5, p5

    .line 29
    .line 30
    move-object/from16 v6, p6

    .line 31
    .line 32
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/a;-><init>(Landroid/content/Context;Landroid/os/Looper;ILa4/h;Ly4/h;Ly4/i;)V

    .line 33
    .line 34
    .line 35
    return-object v8

    .line 36
    :pswitch_2
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    new-instance v0, Ljava/lang/ClassCastException;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 42
    .line 43
    .line 44
    throw v0

    .line 45
    :pswitch_3
    move-object/from16 v0, p4

    .line 46
    .line 47
    check-cast v0, Lu5/a;

    .line 48
    .line 49
    new-instance v8, Lv5/a;

    .line 50
    .line 51
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    move-object/from16 v4, p3

    .line 55
    .line 56
    iget-object v0, v4, La4/h;->b:Ljava/io/Serializable;

    .line 57
    .line 58
    check-cast v0, Ljava/lang/Integer;

    .line 59
    .line 60
    new-instance v5, Landroid/os/Bundle;

    .line 61
    .line 62
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string v1, "com.google.android.gms.signin.internal.clientRequestedAccount"

    .line 66
    .line 67
    const/4 v2, 0x0

    .line 68
    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 69
    .line 70
    .line 71
    if-eqz v0, :cond_0

    .line 72
    .line 73
    const-string v1, "com.google.android.gms.common.internal.ClientSettings.sessionId"

    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    invoke-virtual {v5, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 80
    .line 81
    .line 82
    :cond_0
    const-string v0, "com.google.android.gms.signin.internal.offlineAccessRequested"

    .line 83
    .line 84
    const/4 v1, 0x0

    .line 85
    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 86
    .line 87
    .line 88
    const-string v0, "com.google.android.gms.signin.internal.idTokenRequested"

    .line 89
    .line 90
    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 91
    .line 92
    .line 93
    const-string v0, "com.google.android.gms.signin.internal.serverClientId"

    .line 94
    .line 95
    invoke-virtual {v5, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const-string v0, "com.google.android.gms.signin.internal.usePromptModeForAuthCode"

    .line 99
    .line 100
    const/4 v3, 0x1

    .line 101
    invoke-virtual {v5, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 102
    .line 103
    .line 104
    const-string v0, "com.google.android.gms.signin.internal.forceCodeForRefreshToken"

    .line 105
    .line 106
    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 107
    .line 108
    .line 109
    const-string v0, "com.google.android.gms.signin.internal.hostedDomain"

    .line 110
    .line 111
    invoke-virtual {v5, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    const-string v0, "com.google.android.gms.signin.internal.logSessionId"

    .line 115
    .line 116
    invoke-virtual {v5, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    const-string v0, "com.google.android.gms.signin.internal.waitForAccessTokenRefresh"

    .line 120
    .line 121
    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 122
    .line 123
    .line 124
    move-object v0, v8

    .line 125
    move-object/from16 v1, p1

    .line 126
    .line 127
    move-object/from16 v2, p2

    .line 128
    .line 129
    move-object/from16 v3, p3

    .line 130
    .line 131
    move-object v4, v5

    .line 132
    move-object/from16 v5, p5

    .line 133
    .line 134
    move-object/from16 v6, p6

    .line 135
    .line 136
    invoke-direct/range {v0 .. v6}, Lv5/a;-><init>(Landroid/content/Context;Landroid/os/Looper;La4/h;Landroid/os/Bundle;Ly4/h;Ly4/i;)V

    .line 137
    .line 138
    .line 139
    return-object v8

    .line 140
    :pswitch_4
    if-nez p4, :cond_1

    .line 141
    .line 142
    new-instance v0, Landroid/os/Bundle;

    .line 143
    .line 144
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 145
    .line 146
    .line 147
    const/4 v0, 0x0

    .line 148
    throw v0

    .line 149
    :cond_1
    new-instance v0, Ljava/lang/ClassCastException;

    .line 150
    .line 151
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 152
    .line 153
    .line 154
    throw v0

    .line 155
    :pswitch_5
    move-object/from16 v4, p3

    .line 156
    .line 157
    move-object/from16 v0, p4

    .line 158
    .line 159
    check-cast v0, Lp4/a;

    .line 160
    .line 161
    const-string v1, "Setting the API options is required."

    .line 162
    .line 163
    invoke-static {v0, v1}, Lb5/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    new-instance v1, Lv4/v;

    .line 167
    .line 168
    const/4 v2, 0x0

    .line 169
    int-to-long v14, v2

    .line 170
    move-object/from16 v18, p5

    .line 171
    .line 172
    check-cast v18, Lz4/n;

    .line 173
    .line 174
    move-object/from16 v19, p6

    .line 175
    .line 176
    check-cast v19, Lz4/n;

    .line 177
    .line 178
    iget-object v13, v0, Lp4/a;->a:Lcom/google/android/gms/cast/CastDevice;

    .line 179
    .line 180
    iget-object v2, v0, Lp4/a;->b:Lcom/google/android/gms/internal/cast/j0;

    .line 181
    .line 182
    iget-object v0, v0, Lp4/a;->c:Landroid/os/Bundle;

    .line 183
    .line 184
    move-object v9, v1

    .line 185
    move-object/from16 v10, p1

    .line 186
    .line 187
    move-object/from16 v11, p2

    .line 188
    .line 189
    move-object/from16 v12, p3

    .line 190
    .line 191
    move-object/from16 v16, v2

    .line 192
    .line 193
    move-object/from16 v17, v0

    .line 194
    .line 195
    invoke-direct/range {v9 .. v19}, Lv4/v;-><init>(Landroid/content/Context;Landroid/os/Looper;La4/h;Lcom/google/android/gms/cast/CastDevice;JLcom/google/android/gms/internal/cast/j0;Landroid/os/Bundle;Lz4/n;Lz4/n;)V

    .line 196
    .line 197
    .line 198
    return-object v1

    .line 199
    :pswitch_6
    move-object/from16 v4, p3

    .line 200
    .line 201
    move-object/from16 v0, p4

    .line 202
    .line 203
    check-cast v0, Lp4/a;

    .line 204
    .line 205
    const-string v1, "Setting the API options is required."

    .line 206
    .line 207
    invoke-static {v0, v1}, Lb5/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    new-instance v1, Lv4/w;

    .line 211
    .line 212
    const/4 v2, 0x0

    .line 213
    int-to-long v14, v2

    .line 214
    move-object/from16 v18, p5

    .line 215
    .line 216
    check-cast v18, Lz4/n;

    .line 217
    .line 218
    move-object/from16 v19, p6

    .line 219
    .line 220
    check-cast v19, Lz4/n;

    .line 221
    .line 222
    iget-object v13, v0, Lp4/a;->a:Lcom/google/android/gms/cast/CastDevice;

    .line 223
    .line 224
    iget-object v2, v0, Lp4/a;->c:Landroid/os/Bundle;

    .line 225
    .line 226
    iget-object v0, v0, Lp4/a;->d:Ljava/lang/String;

    .line 227
    .line 228
    move-object v9, v1

    .line 229
    move-object/from16 v10, p1

    .line 230
    .line 231
    move-object/from16 v11, p2

    .line 232
    .line 233
    move-object/from16 v12, p3

    .line 234
    .line 235
    move-object/from16 v16, v2

    .line 236
    .line 237
    move-object/from16 v17, v0

    .line 238
    .line 239
    invoke-direct/range {v9 .. v19}, Lv4/w;-><init>(Landroid/content/Context;Landroid/os/Looper;La4/h;Lcom/google/android/gms/cast/CastDevice;JLandroid/os/Bundle;Ljava/lang/String;Lz4/n;Lz4/n;)V

    .line 240
    .line 241
    .line 242
    return-object v1

    .line 243
    :pswitch_7
    move-object/from16 v4, p3

    .line 244
    .line 245
    move-object/from16 v0, p4

    .line 246
    .line 247
    check-cast v0, Ly4/a;

    .line 248
    .line 249
    new-instance v8, Lcom/google/android/gms/internal/cast/u0;

    .line 250
    .line 251
    const/16 v3, 0x53

    .line 252
    .line 253
    move-object v0, v8

    .line 254
    move-object/from16 v1, p1

    .line 255
    .line 256
    move-object/from16 v2, p2

    .line 257
    .line 258
    move-object/from16 v4, p3

    .line 259
    .line 260
    move-object/from16 v5, p5

    .line 261
    .line 262
    move-object/from16 v6, p6

    .line 263
    .line 264
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/a;-><init>(Landroid/content/Context;Landroid/os/Looper;ILa4/h;Ly4/h;Ly4/i;)V

    .line 265
    .line 266
    .line 267
    return-object v8

    .line 268
    :pswitch_8
    move-object/from16 v4, p3

    .line 269
    .line 270
    move-object/from16 v0, p4

    .line 271
    .line 272
    check-cast v0, Lcom/google/android/gms/internal/cast/e1;

    .line 273
    .line 274
    new-instance v6, Lcom/google/android/gms/internal/cast/i1;

    .line 275
    .line 276
    move-object/from16 v5, p5

    .line 277
    .line 278
    check-cast v5, Lz4/n;

    .line 279
    .line 280
    move-object/from16 v8, p6

    .line 281
    .line 282
    check-cast v8, Lz4/n;

    .line 283
    .line 284
    move-object v0, v6

    .line 285
    move-object/from16 v1, p1

    .line 286
    .line 287
    move-object/from16 v2, p2

    .line 288
    .line 289
    move-object/from16 v3, p3

    .line 290
    .line 291
    move-object v4, v5

    .line 292
    move-object v5, v8

    .line 293
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/cast/i1;-><init>(Landroid/content/Context;Landroid/os/Looper;La4/h;Lz4/n;Lz4/n;)V

    .line 294
    .line 295
    .line 296
    return-object v6

    .line 297
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public synthetic d(Landroid/content/Context;Landroid/os/Looper;La4/h;Ljava/lang/Object;Lz4/n;Lz4/n;)Ly4/c;
    .locals 7

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/cast/d1;->r:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super/range {p0 .. p6}, Ll5/a;->d(Landroid/content/Context;Landroid/os/Looper;La4/h;Ljava/lang/Object;Lz4/n;Lz4/n;)Ly4/c;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1

    .line 11
    :pswitch_0
    move-object v4, p4

    .line 12
    check-cast v4, Lb5/e;

    .line 13
    .line 14
    new-instance p4, Ld5/c;

    .line 15
    .line 16
    move-object v0, p4

    .line 17
    move-object v1, p1

    .line 18
    move-object v2, p2

    .line 19
    move-object v3, p3

    .line 20
    move-object v5, p5

    .line 21
    move-object v6, p6

    .line 22
    invoke-direct/range {v0 .. v6}, Ld5/c;-><init>(Landroid/content/Context;Landroid/os/Looper;La4/h;Lb5/e;Lz4/n;Lz4/n;)V

    .line 23
    .line 24
    .line 25
    return-object p4

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
