.class public final Lw0/d;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lw0/d;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static a(Lcom/google/android/gms/common/internal/GetServiceRequest;Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    const/16 v0, 0x4f45

    .line 2
    .line 3
    invoke-static {p1, v0}, Lo9/d;->V(Landroid/os/Parcel;I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->a:I

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x4

    .line 11
    invoke-static {p1, v2, v3}, Lo9/d;->X(Landroid/os/Parcel;II)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    invoke-static {p1, v1, v3}, Lo9/d;->X(Landroid/os/Parcel;II)V

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->b:I

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x3

    .line 27
    invoke-static {p1, v1, v3}, Lo9/d;->X(Landroid/os/Parcel;II)V

    .line 28
    .line 29
    .line 30
    iget v1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->c:I

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->d:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {p1, v3, v1}, Lo9/d;->R(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const/4 v1, 0x5

    .line 41
    iget-object v2, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->e:Landroid/os/IBinder;

    .line 42
    .line 43
    invoke-static {p1, v1, v2}, Lo9/d;->N(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    .line 44
    .line 45
    .line 46
    const/4 v1, 0x6

    .line 47
    iget-object v2, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->f:[Lcom/google/android/gms/common/api/Scope;

    .line 48
    .line 49
    invoke-static {p1, v1, v2, p2}, Lo9/d;->T(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    .line 50
    .line 51
    .line 52
    const/4 v1, 0x7

    .line 53
    iget-object v2, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->g:Landroid/os/Bundle;

    .line 54
    .line 55
    invoke-static {p1, v1, v2}, Lo9/d;->M(Landroid/os/Parcel;ILandroid/os/Bundle;)V

    .line 56
    .line 57
    .line 58
    const/16 v1, 0x8

    .line 59
    .line 60
    iget-object v2, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->h:Landroid/accounts/Account;

    .line 61
    .line 62
    invoke-static {p1, v1, v2, p2}, Lo9/d;->Q(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 63
    .line 64
    .line 65
    const/16 v1, 0xa

    .line 66
    .line 67
    iget-object v2, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->i:[Lcom/google/android/gms/common/Feature;

    .line 68
    .line 69
    invoke-static {p1, v1, v2, p2}, Lo9/d;->T(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    .line 70
    .line 71
    .line 72
    const/16 v1, 0xb

    .line 73
    .line 74
    iget-object v2, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->j:[Lcom/google/android/gms/common/Feature;

    .line 75
    .line 76
    invoke-static {p1, v1, v2, p2}, Lo9/d;->T(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    .line 77
    .line 78
    .line 79
    const/16 p2, 0xc

    .line 80
    .line 81
    invoke-static {p1, p2, v3}, Lo9/d;->X(Landroid/os/Parcel;II)V

    .line 82
    .line 83
    .line 84
    iget-boolean p2, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->k:Z

    .line 85
    .line 86
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    .line 88
    .line 89
    const/16 p2, 0xd

    .line 90
    .line 91
    invoke-static {p1, p2, v3}, Lo9/d;->X(Landroid/os/Parcel;II)V

    .line 92
    .line 93
    .line 94
    iget p2, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->l:I

    .line 95
    .line 96
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    .line 98
    .line 99
    iget-boolean p2, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->m:Z

    .line 100
    .line 101
    const/16 v1, 0xe

    .line 102
    .line 103
    invoke-static {p1, v1, v3}, Lo9/d;->X(Landroid/os/Parcel;II)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    .line 108
    .line 109
    const/16 p2, 0xf

    .line 110
    .line 111
    iget-object p0, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->n:Ljava/lang/String;

    .line 112
    .line 113
    invoke-static {p1, p2, p0}, Lo9/d;->R(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-static {p1, v0}, Lo9/d;->W(Landroid/os/Parcel;I)V

    .line 117
    .line 118
    .line 119
    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, Lw0/d;->a:I

    .line 6
    .line 7
    packed-switch v2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    if-ge v5, v2, :cond_2

    .line 21
    .line 22
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    int-to-char v6, v5

    .line 27
    const/4 v7, 0x1

    .line 28
    if-eq v6, v7, :cond_1

    .line 29
    .line 30
    const/4 v7, 0x2

    .line 31
    if-eq v6, v7, :cond_0

    .line 32
    .line 33
    invoke-static {v1, v5}, Ln5/d;->T(Landroid/os/Parcel;I)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    sget-object v3, Lcom/google/android/gms/common/server/converter/StringToIntConverter;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 38
    .line 39
    invoke-static {v1, v5, v3}, Ln5/d;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-static {v1, v5}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 52
    .line 53
    .line 54
    new-instance v1, Lcom/google/android/gms/common/server/converter/zaa;

    .line 55
    .line 56
    invoke-direct {v1, v4, v3}, Lcom/google/android/gms/common/server/converter/zaa;-><init>(ILcom/google/android/gms/common/server/converter/StringToIntConverter;)V

    .line 57
    .line 58
    .line 59
    return-object v1

    .line 60
    :pswitch_0
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    const/4 v3, 0x0

    .line 65
    const/4 v4, 0x0

    .line 66
    move-object v5, v4

    .line 67
    const/4 v4, 0x0

    .line 68
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    if-ge v6, v2, :cond_6

    .line 73
    .line 74
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    int-to-char v7, v6

    .line 79
    const/4 v8, 0x1

    .line 80
    if-eq v7, v8, :cond_5

    .line 81
    .line 82
    const/4 v8, 0x2

    .line 83
    if-eq v7, v8, :cond_4

    .line 84
    .line 85
    const/4 v8, 0x3

    .line 86
    if-eq v7, v8, :cond_3

    .line 87
    .line 88
    invoke-static {v1, v6}, Ln5/d;->T(Landroid/os/Parcel;I)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_3
    invoke-static {v1, v6}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    goto :goto_1

    .line 97
    :cond_4
    invoke-static {v1, v6}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    goto :goto_1

    .line 102
    :cond_5
    invoke-static {v1, v6}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    goto :goto_1

    .line 107
    :cond_6
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 108
    .line 109
    .line 110
    new-instance v1, Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;

    .line 111
    .line 112
    invoke-direct {v1, v3, v4, v5}, Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;-><init>(IILjava/lang/String;)V

    .line 113
    .line 114
    .line 115
    return-object v1

    .line 116
    :pswitch_1
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    const/4 v3, 0x0

    .line 121
    const/4 v4, 0x0

    .line 122
    move-object v4, v3

    .line 123
    move-object v5, v4

    .line 124
    const/4 v6, 0x0

    .line 125
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 126
    .line 127
    .line 128
    move-result v7

    .line 129
    if-ge v7, v2, :cond_b

    .line 130
    .line 131
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 132
    .line 133
    .line 134
    move-result v7

    .line 135
    int-to-char v8, v7

    .line 136
    const/4 v9, 0x1

    .line 137
    if-eq v8, v9, :cond_a

    .line 138
    .line 139
    const/4 v9, 0x2

    .line 140
    if-eq v8, v9, :cond_9

    .line 141
    .line 142
    const/4 v9, 0x3

    .line 143
    if-eq v8, v9, :cond_8

    .line 144
    .line 145
    const/4 v9, 0x4

    .line 146
    if-eq v8, v9, :cond_7

    .line 147
    .line 148
    invoke-static {v1, v7}, Ln5/d;->T(Landroid/os/Parcel;I)V

    .line 149
    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_7
    invoke-static {v1, v7}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    goto :goto_2

    .line 157
    :cond_8
    invoke-static {v1, v7}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    goto :goto_2

    .line 162
    :cond_9
    invoke-static {v1, v7}, Ln5/d;->F(Landroid/os/Parcel;I)Z

    .line 163
    .line 164
    .line 165
    move-result v6

    .line 166
    goto :goto_2

    .line 167
    :cond_a
    sget-object v3, Lcom/google/android/gms/common/Feature;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 168
    .line 169
    invoke-static {v1, v7, v3}, Ln5/d;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    goto :goto_2

    .line 174
    :cond_b
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 175
    .line 176
    .line 177
    new-instance v1, Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;

    .line 178
    .line 179
    invoke-direct {v1, v3, v6, v4, v5}, Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;-><init>(Ljava/util/ArrayList;ZLjava/lang/String;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    return-object v1

    .line 183
    :pswitch_2
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    .line 184
    .line 185
    .line 186
    move-result v2

    .line 187
    const/4 v3, 0x0

    .line 188
    const/4 v4, 0x0

    .line 189
    move-object v8, v4

    .line 190
    move-object v9, v8

    .line 191
    const/4 v6, 0x0

    .line 192
    const/4 v7, 0x0

    .line 193
    const/4 v10, 0x0

    .line 194
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    if-ge v3, v2, :cond_13

    .line 199
    .line 200
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 201
    .line 202
    .line 203
    move-result v3

    .line 204
    int-to-char v5, v3

    .line 205
    const/4 v11, 0x1

    .line 206
    if-eq v5, v11, :cond_12

    .line 207
    .line 208
    const/4 v11, 0x2

    .line 209
    if-eq v5, v11, :cond_11

    .line 210
    .line 211
    const/4 v11, 0x3

    .line 212
    const/16 v12, 0x8

    .line 213
    .line 214
    if-eq v5, v11, :cond_f

    .line 215
    .line 216
    const/4 v11, 0x4

    .line 217
    if-eq v5, v11, :cond_d

    .line 218
    .line 219
    const/4 v11, 0x5

    .line 220
    if-eq v5, v11, :cond_c

    .line 221
    .line 222
    invoke-static {v1, v3}, Ln5/d;->T(Landroid/os/Parcel;I)V

    .line 223
    .line 224
    .line 225
    goto :goto_3

    .line 226
    :cond_c
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 227
    .line 228
    .line 229
    move-result v10

    .line 230
    goto :goto_3

    .line 231
    :cond_d
    invoke-static {v1, v3}, Ln5/d;->N(Landroid/os/Parcel;I)I

    .line 232
    .line 233
    .line 234
    move-result v3

    .line 235
    if-nez v3, :cond_e

    .line 236
    .line 237
    move-object v9, v4

    .line 238
    goto :goto_3

    .line 239
    :cond_e
    invoke-static {v1, v3, v12}, Ln5/d;->Z(Landroid/os/Parcel;II)V

    .line 240
    .line 241
    .line 242
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 243
    .line 244
    .line 245
    move-result-wide v11

    .line 246
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 247
    .line 248
    .line 249
    move-result-object v3

    .line 250
    move-object v9, v3

    .line 251
    goto :goto_3

    .line 252
    :cond_f
    invoke-static {v1, v3}, Ln5/d;->N(Landroid/os/Parcel;I)I

    .line 253
    .line 254
    .line 255
    move-result v3

    .line 256
    if-nez v3, :cond_10

    .line 257
    .line 258
    move-object v8, v4

    .line 259
    goto :goto_3

    .line 260
    :cond_10
    invoke-static {v1, v3, v12}, Ln5/d;->Z(Landroid/os/Parcel;II)V

    .line 261
    .line 262
    .line 263
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 264
    .line 265
    .line 266
    move-result-wide v11

    .line 267
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    move-object v8, v3

    .line 272
    goto :goto_3

    .line 273
    :cond_11
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 274
    .line 275
    .line 276
    move-result v7

    .line 277
    goto :goto_3

    .line 278
    :cond_12
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 279
    .line 280
    .line 281
    move-result v6

    .line 282
    goto :goto_3

    .line 283
    :cond_13
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 284
    .line 285
    .line 286
    new-instance v1, Lcom/google/android/gms/common/moduleinstall/ModuleInstallStatusUpdate;

    .line 287
    .line 288
    move-object v5, v1

    .line 289
    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/common/moduleinstall/ModuleInstallStatusUpdate;-><init>(IILjava/lang/Long;Ljava/lang/Long;I)V

    .line 290
    .line 291
    .line 292
    return-object v1

    .line 293
    :pswitch_3
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    .line 294
    .line 295
    .line 296
    move-result v2

    .line 297
    const/4 v3, 0x0

    .line 298
    const/4 v4, 0x0

    .line 299
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 300
    .line 301
    .line 302
    move-result v5

    .line 303
    if-ge v5, v2, :cond_16

    .line 304
    .line 305
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 306
    .line 307
    .line 308
    move-result v5

    .line 309
    int-to-char v6, v5

    .line 310
    const/4 v7, 0x1

    .line 311
    if-eq v6, v7, :cond_15

    .line 312
    .line 313
    const/4 v7, 0x2

    .line 314
    if-eq v6, v7, :cond_14

    .line 315
    .line 316
    invoke-static {v1, v5}, Ln5/d;->T(Landroid/os/Parcel;I)V

    .line 317
    .line 318
    .line 319
    goto :goto_4

    .line 320
    :cond_14
    invoke-static {v1, v5}, Ln5/d;->F(Landroid/os/Parcel;I)Z

    .line 321
    .line 322
    .line 323
    move-result v4

    .line 324
    goto :goto_4

    .line 325
    :cond_15
    invoke-static {v1, v5}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 326
    .line 327
    .line 328
    move-result v3

    .line 329
    goto :goto_4

    .line 330
    :cond_16
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 331
    .line 332
    .line 333
    new-instance v1, Lcom/google/android/gms/common/moduleinstall/ModuleInstallResponse;

    .line 334
    .line 335
    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/common/moduleinstall/ModuleInstallResponse;-><init>(IZ)V

    .line 336
    .line 337
    .line 338
    return-object v1

    .line 339
    :pswitch_4
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    .line 340
    .line 341
    .line 342
    move-result v2

    .line 343
    const/4 v3, 0x0

    .line 344
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 345
    .line 346
    .line 347
    move-result v4

    .line 348
    if-ge v4, v2, :cond_18

    .line 349
    .line 350
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 351
    .line 352
    .line 353
    move-result v4

    .line 354
    int-to-char v5, v4

    .line 355
    const/4 v6, 0x1

    .line 356
    if-eq v5, v6, :cond_17

    .line 357
    .line 358
    invoke-static {v1, v4}, Ln5/d;->T(Landroid/os/Parcel;I)V

    .line 359
    .line 360
    .line 361
    goto :goto_5

    .line 362
    :cond_17
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 363
    .line 364
    invoke-static {v1, v4, v3}, Ln5/d;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 365
    .line 366
    .line 367
    move-result-object v3

    .line 368
    check-cast v3, Landroid/app/PendingIntent;

    .line 369
    .line 370
    goto :goto_5

    .line 371
    :cond_18
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 372
    .line 373
    .line 374
    new-instance v1, Lcom/google/android/gms/common/moduleinstall/ModuleInstallIntentResponse;

    .line 375
    .line 376
    invoke-direct {v1, v3}, Lcom/google/android/gms/common/moduleinstall/ModuleInstallIntentResponse;-><init>(Landroid/app/PendingIntent;)V

    .line 377
    .line 378
    .line 379
    return-object v1

    .line 380
    :pswitch_5
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    .line 381
    .line 382
    .line 383
    move-result v2

    .line 384
    const/4 v3, 0x0

    .line 385
    const/4 v4, 0x0

    .line 386
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 387
    .line 388
    .line 389
    move-result v5

    .line 390
    if-ge v5, v2, :cond_1b

    .line 391
    .line 392
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 393
    .line 394
    .line 395
    move-result v5

    .line 396
    int-to-char v6, v5

    .line 397
    const/4 v7, 0x1

    .line 398
    if-eq v6, v7, :cond_1a

    .line 399
    .line 400
    const/4 v7, 0x2

    .line 401
    if-eq v6, v7, :cond_19

    .line 402
    .line 403
    invoke-static {v1, v5}, Ln5/d;->T(Landroid/os/Parcel;I)V

    .line 404
    .line 405
    .line 406
    goto :goto_6

    .line 407
    :cond_19
    invoke-static {v1, v5}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 408
    .line 409
    .line 410
    move-result v4

    .line 411
    goto :goto_6

    .line 412
    :cond_1a
    invoke-static {v1, v5}, Ln5/d;->F(Landroid/os/Parcel;I)Z

    .line 413
    .line 414
    .line 415
    move-result v3

    .line 416
    goto :goto_6

    .line 417
    :cond_1b
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 418
    .line 419
    .line 420
    new-instance v1, Lcom/google/android/gms/common/moduleinstall/ModuleAvailabilityResponse;

    .line 421
    .line 422
    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/common/moduleinstall/ModuleAvailabilityResponse;-><init>(ZI)V

    .line 423
    .line 424
    .line 425
    return-object v1

    .line 426
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 427
    .line 428
    .line 429
    move-result v2

    .line 430
    new-instance v3, Lcom/google/android/material/internal/ParcelableSparseIntArray;

    .line 431
    .line 432
    invoke-direct {v3, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 433
    .line 434
    .line 435
    new-array v4, v2, [I

    .line 436
    .line 437
    new-array v5, v2, [I

    .line 438
    .line 439
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->readIntArray([I)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readIntArray([I)V

    .line 443
    .line 444
    .line 445
    const/4 v1, 0x0

    .line 446
    :goto_7
    if-ge v1, v2, :cond_1c

    .line 447
    .line 448
    aget v6, v4, v1

    .line 449
    .line 450
    aget v7, v5, v1

    .line 451
    .line 452
    invoke-virtual {v3, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 453
    .line 454
    .line 455
    add-int/lit8 v1, v1, 0x1

    .line 456
    .line 457
    goto :goto_7

    .line 458
    :cond_1c
    return-object v3

    .line 459
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 460
    .line 461
    .line 462
    move-result v2

    .line 463
    new-instance v3, Lcom/google/android/material/internal/ParcelableSparseBooleanArray;

    .line 464
    .line 465
    invoke-direct {v3, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 466
    .line 467
    .line 468
    new-array v4, v2, [I

    .line 469
    .line 470
    new-array v5, v2, [Z

    .line 471
    .line 472
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->readIntArray([I)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 476
    .line 477
    .line 478
    const/4 v1, 0x0

    .line 479
    :goto_8
    if-ge v1, v2, :cond_1d

    .line 480
    .line 481
    aget v6, v4, v1

    .line 482
    .line 483
    aget-boolean v7, v5, v1

    .line 484
    .line 485
    invoke-virtual {v3, v6, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 486
    .line 487
    .line 488
    add-int/lit8 v1, v1, 0x1

    .line 489
    .line 490
    goto :goto_8

    .line 491
    :cond_1d
    return-object v3

    .line 492
    :pswitch_8
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    .line 493
    .line 494
    .line 495
    move-result v2

    .line 496
    const/4 v3, 0x0

    .line 497
    const/4 v4, 0x0

    .line 498
    move-object v6, v4

    .line 499
    const/4 v4, 0x0

    .line 500
    const/4 v5, 0x0

    .line 501
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 502
    .line 503
    .line 504
    move-result v7

    .line 505
    if-ge v7, v2, :cond_22

    .line 506
    .line 507
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 508
    .line 509
    .line 510
    move-result v7

    .line 511
    int-to-char v8, v7

    .line 512
    const/4 v9, 0x1

    .line 513
    if-eq v8, v9, :cond_21

    .line 514
    .line 515
    const/4 v9, 0x2

    .line 516
    if-eq v8, v9, :cond_20

    .line 517
    .line 518
    const/4 v9, 0x3

    .line 519
    if-eq v8, v9, :cond_1f

    .line 520
    .line 521
    const/4 v9, 0x4

    .line 522
    if-eq v8, v9, :cond_1e

    .line 523
    .line 524
    invoke-static {v1, v7}, Ln5/d;->T(Landroid/os/Parcel;I)V

    .line 525
    .line 526
    .line 527
    goto :goto_9

    .line 528
    :cond_1e
    invoke-static {v1, v7}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 529
    .line 530
    .line 531
    move-result v5

    .line 532
    goto :goto_9

    .line 533
    :cond_1f
    invoke-static {v1, v7}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 534
    .line 535
    .line 536
    move-result v4

    .line 537
    goto :goto_9

    .line 538
    :cond_20
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 539
    .line 540
    invoke-static {v1, v7, v6}, Ln5/d;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 541
    .line 542
    .line 543
    move-result-object v6

    .line 544
    check-cast v6, Landroid/net/Uri;

    .line 545
    .line 546
    goto :goto_9

    .line 547
    :cond_21
    invoke-static {v1, v7}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 548
    .line 549
    .line 550
    move-result v3

    .line 551
    goto :goto_9

    .line 552
    :cond_22
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 553
    .line 554
    .line 555
    new-instance v1, Lcom/google/android/gms/common/images/WebImage;

    .line 556
    .line 557
    invoke-direct {v1, v3, v6, v4, v5}, Lcom/google/android/gms/common/images/WebImage;-><init>(ILandroid/net/Uri;II)V

    .line 558
    .line 559
    .line 560
    return-object v1

    .line 561
    :pswitch_9
    new-instance v2, Landroidx/activity/result/IntentSenderRequest;

    .line 562
    .line 563
    invoke-direct {v2, v1}, Landroidx/activity/result/IntentSenderRequest;-><init>(Landroid/os/Parcel;)V

    .line 564
    .line 565
    .line 566
    return-object v2

    .line 567
    :pswitch_a
    new-instance v2, Landroidx/activity/result/ActivityResult;

    .line 568
    .line 569
    invoke-direct {v2, v1}, Landroidx/activity/result/ActivityResult;-><init>(Landroid/os/Parcel;)V

    .line 570
    .line 571
    .line 572
    return-object v2

    .line 573
    :pswitch_b
    new-instance v2, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    .line 574
    .line 575
    invoke-direct {v2, v1}, Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;-><init>(Landroid/os/Parcel;)V

    .line 576
    .line 577
    .line 578
    return-object v2

    .line 579
    :pswitch_c
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    .line 580
    .line 581
    .line 582
    move-result v2

    .line 583
    sget-object v3, Lcom/google/android/gms/common/internal/GetServiceRequest;->o:[Lcom/google/android/gms/common/api/Scope;

    .line 584
    .line 585
    new-instance v4, Landroid/os/Bundle;

    .line 586
    .line 587
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 588
    .line 589
    .line 590
    sget-object v5, Lcom/google/android/gms/common/internal/GetServiceRequest;->p:[Lcom/google/android/gms/common/Feature;

    .line 591
    .line 592
    const/4 v6, 0x0

    .line 593
    const/4 v7, 0x0

    .line 594
    move-object v14, v3

    .line 595
    move-object v15, v4

    .line 596
    move-object/from16 v17, v5

    .line 597
    .line 598
    move-object/from16 v18, v17

    .line 599
    .line 600
    move-object v12, v6

    .line 601
    move-object v13, v12

    .line 602
    move-object/from16 v16, v13

    .line 603
    .line 604
    move-object/from16 v22, v16

    .line 605
    .line 606
    const/4 v9, 0x0

    .line 607
    const/4 v10, 0x0

    .line 608
    const/4 v11, 0x0

    .line 609
    const/16 v19, 0x0

    .line 610
    .line 611
    const/16 v20, 0x0

    .line 612
    .line 613
    const/16 v21, 0x0

    .line 614
    .line 615
    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 616
    .line 617
    .line 618
    move-result v3

    .line 619
    if-ge v3, v2, :cond_23

    .line 620
    .line 621
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 622
    .line 623
    .line 624
    move-result v3

    .line 625
    int-to-char v4, v3

    .line 626
    packed-switch v4, :pswitch_data_1

    .line 627
    .line 628
    .line 629
    :pswitch_d
    invoke-static {v1, v3}, Ln5/d;->T(Landroid/os/Parcel;I)V

    .line 630
    .line 631
    .line 632
    goto :goto_a

    .line 633
    :pswitch_e
    invoke-static {v1, v3}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 634
    .line 635
    .line 636
    move-result-object v22

    .line 637
    goto :goto_a

    .line 638
    :pswitch_f
    invoke-static {v1, v3}, Ln5/d;->F(Landroid/os/Parcel;I)Z

    .line 639
    .line 640
    .line 641
    move-result v21

    .line 642
    goto :goto_a

    .line 643
    :pswitch_10
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 644
    .line 645
    .line 646
    move-result v20

    .line 647
    goto :goto_a

    .line 648
    :pswitch_11
    invoke-static {v1, v3}, Ln5/d;->F(Landroid/os/Parcel;I)Z

    .line 649
    .line 650
    .line 651
    move-result v19

    .line 652
    goto :goto_a

    .line 653
    :pswitch_12
    sget-object v4, Lcom/google/android/gms/common/Feature;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 654
    .line 655
    invoke-static {v1, v3, v4}, Ln5/d;->o(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 656
    .line 657
    .line 658
    move-result-object v3

    .line 659
    move-object/from16 v18, v3

    .line 660
    .line 661
    check-cast v18, [Lcom/google/android/gms/common/Feature;

    .line 662
    .line 663
    goto :goto_a

    .line 664
    :pswitch_13
    sget-object v4, Lcom/google/android/gms/common/Feature;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 665
    .line 666
    invoke-static {v1, v3, v4}, Ln5/d;->o(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 667
    .line 668
    .line 669
    move-result-object v3

    .line 670
    move-object/from16 v17, v3

    .line 671
    .line 672
    check-cast v17, [Lcom/google/android/gms/common/Feature;

    .line 673
    .line 674
    goto :goto_a

    .line 675
    :pswitch_14
    sget-object v4, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 676
    .line 677
    invoke-static {v1, v3, v4}, Ln5/d;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 678
    .line 679
    .line 680
    move-result-object v3

    .line 681
    move-object/from16 v16, v3

    .line 682
    .line 683
    check-cast v16, Landroid/accounts/Account;

    .line 684
    .line 685
    goto :goto_a

    .line 686
    :pswitch_15
    invoke-static {v1, v3}, Ln5/d;->f(Landroid/os/Parcel;I)Landroid/os/Bundle;

    .line 687
    .line 688
    .line 689
    move-result-object v15

    .line 690
    goto :goto_a

    .line 691
    :pswitch_16
    sget-object v4, Lcom/google/android/gms/common/api/Scope;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 692
    .line 693
    invoke-static {v1, v3, v4}, Ln5/d;->o(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 694
    .line 695
    .line 696
    move-result-object v3

    .line 697
    move-object v14, v3

    .line 698
    check-cast v14, [Lcom/google/android/gms/common/api/Scope;

    .line 699
    .line 700
    goto :goto_a

    .line 701
    :pswitch_17
    invoke-static {v1, v3}, Ln5/d;->J(Landroid/os/Parcel;I)Landroid/os/IBinder;

    .line 702
    .line 703
    .line 704
    move-result-object v13

    .line 705
    goto :goto_a

    .line 706
    :pswitch_18
    invoke-static {v1, v3}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 707
    .line 708
    .line 709
    move-result-object v12

    .line 710
    goto :goto_a

    .line 711
    :pswitch_19
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 712
    .line 713
    .line 714
    move-result v11

    .line 715
    goto :goto_a

    .line 716
    :pswitch_1a
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 717
    .line 718
    .line 719
    move-result v10

    .line 720
    goto :goto_a

    .line 721
    :pswitch_1b
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 722
    .line 723
    .line 724
    move-result v9

    .line 725
    goto :goto_a

    .line 726
    :cond_23
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 727
    .line 728
    .line 729
    new-instance v1, Lcom/google/android/gms/common/internal/GetServiceRequest;

    .line 730
    .line 731
    move-object v8, v1

    .line 732
    invoke-direct/range {v8 .. v22}, Lcom/google/android/gms/common/internal/GetServiceRequest;-><init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;[Lcom/google/android/gms/common/Feature;[Lcom/google/android/gms/common/Feature;ZIZLjava/lang/String;)V

    .line 733
    .line 734
    .line 735
    return-object v1

    .line 736
    :pswitch_1c
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    .line 737
    .line 738
    .line 739
    move-result v2

    .line 740
    const/4 v3, 0x0

    .line 741
    const/4 v4, 0x0

    .line 742
    move-object v6, v3

    .line 743
    move-object v9, v6

    .line 744
    move-object v11, v9

    .line 745
    const/4 v7, 0x0

    .line 746
    const/4 v8, 0x0

    .line 747
    const/4 v10, 0x0

    .line 748
    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 749
    .line 750
    .line 751
    move-result v3

    .line 752
    if-ge v3, v2, :cond_24

    .line 753
    .line 754
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 755
    .line 756
    .line 757
    move-result v3

    .line 758
    int-to-char v4, v3

    .line 759
    packed-switch v4, :pswitch_data_2

    .line 760
    .line 761
    .line 762
    invoke-static {v1, v3}, Ln5/d;->T(Landroid/os/Parcel;I)V

    .line 763
    .line 764
    .line 765
    goto :goto_b

    .line 766
    :pswitch_1d
    invoke-static {v1, v3}, Ln5/d;->h(Landroid/os/Parcel;I)[I

    .line 767
    .line 768
    .line 769
    move-result-object v11

    .line 770
    goto :goto_b

    .line 771
    :pswitch_1e
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 772
    .line 773
    .line 774
    move-result v10

    .line 775
    goto :goto_b

    .line 776
    :pswitch_1f
    invoke-static {v1, v3}, Ln5/d;->h(Landroid/os/Parcel;I)[I

    .line 777
    .line 778
    .line 779
    move-result-object v9

    .line 780
    goto :goto_b

    .line 781
    :pswitch_20
    invoke-static {v1, v3}, Ln5/d;->F(Landroid/os/Parcel;I)Z

    .line 782
    .line 783
    .line 784
    move-result v8

    .line 785
    goto :goto_b

    .line 786
    :pswitch_21
    invoke-static {v1, v3}, Ln5/d;->F(Landroid/os/Parcel;I)Z

    .line 787
    .line 788
    .line 789
    move-result v7

    .line 790
    goto :goto_b

    .line 791
    :pswitch_22
    sget-object v4, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 792
    .line 793
    invoke-static {v1, v3, v4}, Ln5/d;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 794
    .line 795
    .line 796
    move-result-object v3

    .line 797
    move-object v6, v3

    .line 798
    check-cast v6, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    .line 799
    .line 800
    goto :goto_b

    .line 801
    :cond_24
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 802
    .line 803
    .line 804
    new-instance v1, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;

    .line 805
    .line 806
    move-object v5, v1

    .line 807
    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;-><init>(Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;ZZ[II[I)V

    .line 808
    .line 809
    .line 810
    return-object v1

    .line 811
    :pswitch_23
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    .line 812
    .line 813
    .line 814
    move-result v2

    .line 815
    const/4 v3, 0x0

    .line 816
    const/4 v4, 0x0

    .line 817
    move-object v4, v3

    .line 818
    move-object v5, v4

    .line 819
    const/4 v6, 0x0

    .line 820
    :goto_c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 821
    .line 822
    .line 823
    move-result v7

    .line 824
    if-ge v7, v2, :cond_29

    .line 825
    .line 826
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 827
    .line 828
    .line 829
    move-result v7

    .line 830
    int-to-char v8, v7

    .line 831
    const/4 v9, 0x1

    .line 832
    if-eq v8, v9, :cond_28

    .line 833
    .line 834
    const/4 v9, 0x2

    .line 835
    if-eq v8, v9, :cond_27

    .line 836
    .line 837
    const/4 v9, 0x3

    .line 838
    if-eq v8, v9, :cond_26

    .line 839
    .line 840
    const/4 v9, 0x4

    .line 841
    if-eq v8, v9, :cond_25

    .line 842
    .line 843
    invoke-static {v1, v7}, Ln5/d;->T(Landroid/os/Parcel;I)V

    .line 844
    .line 845
    .line 846
    goto :goto_c

    .line 847
    :cond_25
    sget-object v5, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 848
    .line 849
    invoke-static {v1, v7, v5}, Ln5/d;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 850
    .line 851
    .line 852
    move-result-object v5

    .line 853
    check-cast v5, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;

    .line 854
    .line 855
    goto :goto_c

    .line 856
    :cond_26
    invoke-static {v1, v7}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 857
    .line 858
    .line 859
    move-result v6

    .line 860
    goto :goto_c

    .line 861
    :cond_27
    sget-object v4, Lcom/google/android/gms/common/Feature;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 862
    .line 863
    invoke-static {v1, v7, v4}, Ln5/d;->o(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 864
    .line 865
    .line 866
    move-result-object v4

    .line 867
    check-cast v4, [Lcom/google/android/gms/common/Feature;

    .line 868
    .line 869
    goto :goto_c

    .line 870
    :cond_28
    invoke-static {v1, v7}, Ln5/d;->f(Landroid/os/Parcel;I)Landroid/os/Bundle;

    .line 871
    .line 872
    .line 873
    move-result-object v3

    .line 874
    goto :goto_c

    .line 875
    :cond_29
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 876
    .line 877
    .line 878
    new-instance v1, Lcom/google/android/gms/common/internal/zzk;

    .line 879
    .line 880
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 881
    .line 882
    .line 883
    iput-object v3, v1, Lcom/google/android/gms/common/internal/zzk;->a:Landroid/os/Bundle;

    .line 884
    .line 885
    iput-object v4, v1, Lcom/google/android/gms/common/internal/zzk;->b:[Lcom/google/android/gms/common/Feature;

    .line 886
    .line 887
    iput v6, v1, Lcom/google/android/gms/common/internal/zzk;->c:I

    .line 888
    .line 889
    iput-object v5, v1, Lcom/google/android/gms/common/internal/zzk;->d:Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;

    .line 890
    .line 891
    return-object v1

    .line 892
    :pswitch_24
    new-instance v2, Lcom/google/android/gms/common/internal/BinderWrapper;

    .line 893
    .line 894
    invoke-direct {v2, v1}, Lcom/google/android/gms/common/internal/BinderWrapper;-><init>(Landroid/os/Parcel;)V

    .line 895
    .line 896
    .line 897
    return-object v2

    .line 898
    :pswitch_25
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    .line 899
    .line 900
    .line 901
    move-result v2

    .line 902
    const/4 v3, 0x0

    .line 903
    :goto_d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 904
    .line 905
    .line 906
    move-result v4

    .line 907
    if-ge v4, v2, :cond_2b

    .line 908
    .line 909
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 910
    .line 911
    .line 912
    move-result v4

    .line 913
    int-to-char v5, v4

    .line 914
    const/4 v6, 0x1

    .line 915
    if-eq v5, v6, :cond_2a

    .line 916
    .line 917
    invoke-static {v1, v4}, Ln5/d;->T(Landroid/os/Parcel;I)V

    .line 918
    .line 919
    .line 920
    goto :goto_d

    .line 921
    :cond_2a
    invoke-static {v1, v4}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 922
    .line 923
    .line 924
    move-result v3

    .line 925
    goto :goto_d

    .line 926
    :cond_2b
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 927
    .line 928
    .line 929
    new-instance v1, Lcom/google/android/gms/common/internal/zzal;

    .line 930
    .line 931
    invoke-direct {v1, v3}, Lcom/google/android/gms/common/internal/zzal;-><init>(I)V

    .line 932
    .line 933
    .line 934
    return-object v1

    .line 935
    :pswitch_26
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    .line 936
    .line 937
    .line 938
    move-result v2

    .line 939
    const/4 v3, 0x0

    .line 940
    const/4 v5, 0x0

    .line 941
    const/4 v6, 0x0

    .line 942
    const/4 v7, 0x0

    .line 943
    const/4 v8, 0x0

    .line 944
    const/4 v9, 0x0

    .line 945
    :goto_e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 946
    .line 947
    .line 948
    move-result v3

    .line 949
    if-ge v3, v2, :cond_31

    .line 950
    .line 951
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 952
    .line 953
    .line 954
    move-result v3

    .line 955
    int-to-char v4, v3

    .line 956
    const/4 v10, 0x1

    .line 957
    if-eq v4, v10, :cond_30

    .line 958
    .line 959
    const/4 v10, 0x2

    .line 960
    if-eq v4, v10, :cond_2f

    .line 961
    .line 962
    const/4 v10, 0x3

    .line 963
    if-eq v4, v10, :cond_2e

    .line 964
    .line 965
    const/4 v10, 0x4

    .line 966
    if-eq v4, v10, :cond_2d

    .line 967
    .line 968
    const/4 v10, 0x5

    .line 969
    if-eq v4, v10, :cond_2c

    .line 970
    .line 971
    invoke-static {v1, v3}, Ln5/d;->T(Landroid/os/Parcel;I)V

    .line 972
    .line 973
    .line 974
    goto :goto_e

    .line 975
    :cond_2c
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 976
    .line 977
    .line 978
    move-result v9

    .line 979
    goto :goto_e

    .line 980
    :cond_2d
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 981
    .line 982
    .line 983
    move-result v8

    .line 984
    goto :goto_e

    .line 985
    :cond_2e
    invoke-static {v1, v3}, Ln5/d;->F(Landroid/os/Parcel;I)Z

    .line 986
    .line 987
    .line 988
    move-result v7

    .line 989
    goto :goto_e

    .line 990
    :cond_2f
    invoke-static {v1, v3}, Ln5/d;->F(Landroid/os/Parcel;I)Z

    .line 991
    .line 992
    .line 993
    move-result v6

    .line 994
    goto :goto_e

    .line 995
    :cond_30
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 996
    .line 997
    .line 998
    move-result v5

    .line 999
    goto :goto_e

    .line 1000
    :cond_31
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 1001
    .line 1002
    .line 1003
    new-instance v1, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    .line 1004
    .line 1005
    move-object v4, v1

    .line 1006
    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;-><init>(IZZII)V

    .line 1007
    .line 1008
    .line 1009
    return-object v1

    .line 1010
    :pswitch_27
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    .line 1011
    .line 1012
    .line 1013
    move-result v2

    .line 1014
    const/4 v3, 0x0

    .line 1015
    const/4 v4, 0x0

    .line 1016
    const/4 v5, 0x0

    .line 1017
    const/4 v6, 0x0

    .line 1018
    :goto_f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 1019
    .line 1020
    .line 1021
    move-result v7

    .line 1022
    if-ge v7, v2, :cond_36

    .line 1023
    .line 1024
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 1025
    .line 1026
    .line 1027
    move-result v7

    .line 1028
    int-to-char v8, v7

    .line 1029
    const/4 v9, 0x1

    .line 1030
    if-eq v8, v9, :cond_35

    .line 1031
    .line 1032
    const/4 v9, 0x2

    .line 1033
    if-eq v8, v9, :cond_34

    .line 1034
    .line 1035
    const/4 v9, 0x3

    .line 1036
    if-eq v8, v9, :cond_33

    .line 1037
    .line 1038
    const/4 v9, 0x4

    .line 1039
    if-eq v8, v9, :cond_32

    .line 1040
    .line 1041
    invoke-static {v1, v7}, Ln5/d;->T(Landroid/os/Parcel;I)V

    .line 1042
    .line 1043
    .line 1044
    goto :goto_f

    .line 1045
    :cond_32
    sget-object v3, Lcom/google/android/gms/common/api/Scope;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1046
    .line 1047
    invoke-static {v1, v7, v3}, Ln5/d;->o(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 1048
    .line 1049
    .line 1050
    move-result-object v3

    .line 1051
    check-cast v3, [Lcom/google/android/gms/common/api/Scope;

    .line 1052
    .line 1053
    goto :goto_f

    .line 1054
    :cond_33
    invoke-static {v1, v7}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 1055
    .line 1056
    .line 1057
    move-result v6

    .line 1058
    goto :goto_f

    .line 1059
    :cond_34
    invoke-static {v1, v7}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 1060
    .line 1061
    .line 1062
    move-result v5

    .line 1063
    goto :goto_f

    .line 1064
    :cond_35
    invoke-static {v1, v7}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 1065
    .line 1066
    .line 1067
    move-result v4

    .line 1068
    goto :goto_f

    .line 1069
    :cond_36
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 1070
    .line 1071
    .line 1072
    new-instance v1, Lcom/google/android/gms/common/internal/zax;

    .line 1073
    .line 1074
    invoke-direct {v1, v4, v5, v6, v3}, Lcom/google/android/gms/common/internal/zax;-><init>(III[Lcom/google/android/gms/common/api/Scope;)V

    .line 1075
    .line 1076
    .line 1077
    return-object v1

    .line 1078
    :pswitch_28
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    .line 1079
    .line 1080
    .line 1081
    move-result v2

    .line 1082
    const/4 v3, 0x0

    .line 1083
    const/4 v4, 0x0

    .line 1084
    move-object v7, v4

    .line 1085
    move-object v8, v7

    .line 1086
    const/4 v6, 0x0

    .line 1087
    const/4 v9, 0x0

    .line 1088
    const/4 v10, 0x0

    .line 1089
    :goto_10
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 1090
    .line 1091
    .line 1092
    move-result v3

    .line 1093
    if-ge v3, v2, :cond_3c

    .line 1094
    .line 1095
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 1096
    .line 1097
    .line 1098
    move-result v3

    .line 1099
    int-to-char v4, v3

    .line 1100
    const/4 v5, 0x1

    .line 1101
    if-eq v4, v5, :cond_3b

    .line 1102
    .line 1103
    const/4 v5, 0x2

    .line 1104
    if-eq v4, v5, :cond_3a

    .line 1105
    .line 1106
    const/4 v5, 0x3

    .line 1107
    if-eq v4, v5, :cond_39

    .line 1108
    .line 1109
    const/4 v5, 0x4

    .line 1110
    if-eq v4, v5, :cond_38

    .line 1111
    .line 1112
    const/4 v5, 0x5

    .line 1113
    if-eq v4, v5, :cond_37

    .line 1114
    .line 1115
    invoke-static {v1, v3}, Ln5/d;->T(Landroid/os/Parcel;I)V

    .line 1116
    .line 1117
    .line 1118
    goto :goto_10

    .line 1119
    :cond_37
    invoke-static {v1, v3}, Ln5/d;->F(Landroid/os/Parcel;I)Z

    .line 1120
    .line 1121
    .line 1122
    move-result v10

    .line 1123
    goto :goto_10

    .line 1124
    :cond_38
    invoke-static {v1, v3}, Ln5/d;->F(Landroid/os/Parcel;I)Z

    .line 1125
    .line 1126
    .line 1127
    move-result v9

    .line 1128
    goto :goto_10

    .line 1129
    :cond_39
    sget-object v4, Lcom/google/android/gms/common/ConnectionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1130
    .line 1131
    invoke-static {v1, v3, v4}, Ln5/d;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 1132
    .line 1133
    .line 1134
    move-result-object v3

    .line 1135
    move-object v8, v3

    .line 1136
    check-cast v8, Lcom/google/android/gms/common/ConnectionResult;

    .line 1137
    .line 1138
    goto :goto_10

    .line 1139
    :cond_3a
    invoke-static {v1, v3}, Ln5/d;->J(Landroid/os/Parcel;I)Landroid/os/IBinder;

    .line 1140
    .line 1141
    .line 1142
    move-result-object v7

    .line 1143
    goto :goto_10

    .line 1144
    :cond_3b
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 1145
    .line 1146
    .line 1147
    move-result v6

    .line 1148
    goto :goto_10

    .line 1149
    :cond_3c
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 1150
    .line 1151
    .line 1152
    new-instance v1, Lcom/google/android/gms/common/internal/zav;

    .line 1153
    .line 1154
    move-object v5, v1

    .line 1155
    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/common/internal/zav;-><init>(ILandroid/os/IBinder;Lcom/google/android/gms/common/ConnectionResult;ZZ)V

    .line 1156
    .line 1157
    .line 1158
    return-object v1

    .line 1159
    :pswitch_29
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    .line 1160
    .line 1161
    .line 1162
    move-result v2

    .line 1163
    const/4 v3, 0x0

    .line 1164
    const/4 v4, 0x0

    .line 1165
    move-object v4, v3

    .line 1166
    const/4 v5, 0x0

    .line 1167
    const/4 v6, 0x0

    .line 1168
    :goto_11
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 1169
    .line 1170
    .line 1171
    move-result v7

    .line 1172
    if-ge v7, v2, :cond_41

    .line 1173
    .line 1174
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 1175
    .line 1176
    .line 1177
    move-result v7

    .line 1178
    int-to-char v8, v7

    .line 1179
    const/4 v9, 0x1

    .line 1180
    if-eq v8, v9, :cond_40

    .line 1181
    .line 1182
    const/4 v9, 0x2

    .line 1183
    if-eq v8, v9, :cond_3f

    .line 1184
    .line 1185
    const/4 v9, 0x3

    .line 1186
    if-eq v8, v9, :cond_3e

    .line 1187
    .line 1188
    const/4 v9, 0x4

    .line 1189
    if-eq v8, v9, :cond_3d

    .line 1190
    .line 1191
    invoke-static {v1, v7}, Ln5/d;->T(Landroid/os/Parcel;I)V

    .line 1192
    .line 1193
    .line 1194
    goto :goto_11

    .line 1195
    :cond_3d
    sget-object v4, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1196
    .line 1197
    invoke-static {v1, v7, v4}, Ln5/d;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 1198
    .line 1199
    .line 1200
    move-result-object v4

    .line 1201
    check-cast v4, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 1202
    .line 1203
    goto :goto_11

    .line 1204
    :cond_3e
    invoke-static {v1, v7}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 1205
    .line 1206
    .line 1207
    move-result v6

    .line 1208
    goto :goto_11

    .line 1209
    :cond_3f
    sget-object v3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1210
    .line 1211
    invoke-static {v1, v7, v3}, Ln5/d;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 1212
    .line 1213
    .line 1214
    move-result-object v3

    .line 1215
    check-cast v3, Landroid/accounts/Account;

    .line 1216
    .line 1217
    goto :goto_11

    .line 1218
    :cond_40
    invoke-static {v1, v7}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 1219
    .line 1220
    .line 1221
    move-result v5

    .line 1222
    goto :goto_11

    .line 1223
    :cond_41
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 1224
    .line 1225
    .line 1226
    new-instance v1, Lcom/google/android/gms/common/internal/zat;

    .line 1227
    .line 1228
    invoke-direct {v1, v5, v3, v6, v4}, Lcom/google/android/gms/common/internal/zat;-><init>(ILandroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    .line 1229
    .line 1230
    .line 1231
    return-object v1

    .line 1232
    :pswitch_2a
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    .line 1233
    .line 1234
    .line 1235
    move-result v2

    .line 1236
    const/4 v3, -0x1

    .line 1237
    const/4 v4, 0x0

    .line 1238
    const/4 v5, 0x0

    .line 1239
    const-wide/16 v6, 0x0

    .line 1240
    .line 1241
    move-object/from16 v16, v5

    .line 1242
    .line 1243
    move-object/from16 v17, v16

    .line 1244
    .line 1245
    move-wide v12, v6

    .line 1246
    move-wide v14, v12

    .line 1247
    const/4 v9, 0x0

    .line 1248
    const/4 v10, 0x0

    .line 1249
    const/4 v11, 0x0

    .line 1250
    const/16 v18, 0x0

    .line 1251
    .line 1252
    const/16 v19, -0x1

    .line 1253
    .line 1254
    :goto_12
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 1255
    .line 1256
    .line 1257
    move-result v3

    .line 1258
    if-ge v3, v2, :cond_42

    .line 1259
    .line 1260
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 1261
    .line 1262
    .line 1263
    move-result v3

    .line 1264
    int-to-char v4, v3

    .line 1265
    packed-switch v4, :pswitch_data_3

    .line 1266
    .line 1267
    .line 1268
    invoke-static {v1, v3}, Ln5/d;->T(Landroid/os/Parcel;I)V

    .line 1269
    .line 1270
    .line 1271
    goto :goto_12

    .line 1272
    :pswitch_2b
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 1273
    .line 1274
    .line 1275
    move-result v3

    .line 1276
    move/from16 v19, v3

    .line 1277
    .line 1278
    goto :goto_12

    .line 1279
    :pswitch_2c
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 1280
    .line 1281
    .line 1282
    move-result v3

    .line 1283
    move/from16 v18, v3

    .line 1284
    .line 1285
    goto :goto_12

    .line 1286
    :pswitch_2d
    invoke-static {v1, v3}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 1287
    .line 1288
    .line 1289
    move-result-object v3

    .line 1290
    move-object/from16 v17, v3

    .line 1291
    .line 1292
    goto :goto_12

    .line 1293
    :pswitch_2e
    invoke-static {v1, v3}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 1294
    .line 1295
    .line 1296
    move-result-object v3

    .line 1297
    move-object/from16 v16, v3

    .line 1298
    .line 1299
    goto :goto_12

    .line 1300
    :pswitch_2f
    invoke-static {v1, v3}, Ln5/d;->M(Landroid/os/Parcel;I)J

    .line 1301
    .line 1302
    .line 1303
    move-result-wide v3

    .line 1304
    move-wide v14, v3

    .line 1305
    goto :goto_12

    .line 1306
    :pswitch_30
    invoke-static {v1, v3}, Ln5/d;->M(Landroid/os/Parcel;I)J

    .line 1307
    .line 1308
    .line 1309
    move-result-wide v3

    .line 1310
    move-wide v12, v3

    .line 1311
    goto :goto_12

    .line 1312
    :pswitch_31
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 1313
    .line 1314
    .line 1315
    move-result v3

    .line 1316
    move v11, v3

    .line 1317
    goto :goto_12

    .line 1318
    :pswitch_32
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 1319
    .line 1320
    .line 1321
    move-result v3

    .line 1322
    move v10, v3

    .line 1323
    goto :goto_12

    .line 1324
    :pswitch_33
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 1325
    .line 1326
    .line 1327
    move-result v3

    .line 1328
    move v9, v3

    .line 1329
    goto :goto_12

    .line 1330
    :cond_42
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 1331
    .line 1332
    .line 1333
    new-instance v1, Lcom/google/android/gms/common/internal/MethodInvocation;

    .line 1334
    .line 1335
    move-object v8, v1

    .line 1336
    invoke-direct/range {v8 .. v19}, Lcom/google/android/gms/common/internal/MethodInvocation;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;II)V

    .line 1337
    .line 1338
    .line 1339
    return-object v1

    .line 1340
    :pswitch_34
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    .line 1341
    .line 1342
    .line 1343
    move-result v2

    .line 1344
    const/4 v3, 0x0

    .line 1345
    const/4 v4, 0x0

    .line 1346
    :goto_13
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 1347
    .line 1348
    .line 1349
    move-result v5

    .line 1350
    if-ge v5, v2, :cond_45

    .line 1351
    .line 1352
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 1353
    .line 1354
    .line 1355
    move-result v5

    .line 1356
    int-to-char v6, v5

    .line 1357
    const/4 v7, 0x1

    .line 1358
    if-eq v6, v7, :cond_44

    .line 1359
    .line 1360
    const/4 v7, 0x2

    .line 1361
    if-eq v6, v7, :cond_43

    .line 1362
    .line 1363
    invoke-static {v1, v5}, Ln5/d;->T(Landroid/os/Parcel;I)V

    .line 1364
    .line 1365
    .line 1366
    goto :goto_13

    .line 1367
    :cond_43
    sget-object v3, Lcom/google/android/gms/common/internal/MethodInvocation;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1368
    .line 1369
    invoke-static {v1, v5, v3}, Ln5/d;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 1370
    .line 1371
    .line 1372
    move-result-object v3

    .line 1373
    goto :goto_13

    .line 1374
    :cond_44
    invoke-static {v1, v5}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 1375
    .line 1376
    .line 1377
    move-result v4

    .line 1378
    goto :goto_13

    .line 1379
    :cond_45
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 1380
    .line 1381
    .line 1382
    new-instance v1, Lcom/google/android/gms/common/internal/TelemetryData;

    .line 1383
    .line 1384
    invoke-direct {v1, v4, v3}, Lcom/google/android/gms/common/internal/TelemetryData;-><init>(ILjava/util/List;)V

    .line 1385
    .line 1386
    .line 1387
    return-object v1

    .line 1388
    :pswitch_35
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    .line 1389
    .line 1390
    .line 1391
    move-result v2

    .line 1392
    const/4 v3, 0x0

    .line 1393
    const/4 v4, 0x0

    .line 1394
    :goto_14
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 1395
    .line 1396
    .line 1397
    move-result v5

    .line 1398
    if-ge v5, v2, :cond_48

    .line 1399
    .line 1400
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 1401
    .line 1402
    .line 1403
    move-result v5

    .line 1404
    int-to-char v6, v5

    .line 1405
    const/4 v7, 0x1

    .line 1406
    if-eq v6, v7, :cond_47

    .line 1407
    .line 1408
    const/4 v7, 0x2

    .line 1409
    if-eq v6, v7, :cond_46

    .line 1410
    .line 1411
    invoke-static {v1, v5}, Ln5/d;->T(Landroid/os/Parcel;I)V

    .line 1412
    .line 1413
    .line 1414
    goto :goto_14

    .line 1415
    :cond_46
    invoke-static {v1, v5}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 1416
    .line 1417
    .line 1418
    move-result-object v3

    .line 1419
    goto :goto_14

    .line 1420
    :cond_47
    invoke-static {v1, v5}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 1421
    .line 1422
    .line 1423
    move-result v4

    .line 1424
    goto :goto_14

    .line 1425
    :cond_48
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 1426
    .line 1427
    .line 1428
    new-instance v1, Lcom/google/android/gms/common/internal/ClientIdentity;

    .line 1429
    .line 1430
    invoke-direct {v1, v4, v3}, Lcom/google/android/gms/common/internal/ClientIdentity;-><init>(ILjava/lang/String;)V

    .line 1431
    .line 1432
    .line 1433
    return-object v1

    .line 1434
    :pswitch_36
    new-instance v2, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    .line 1435
    .line 1436
    invoke-direct {v2, v1}, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;-><init>(Landroid/os/Parcel;)V

    .line 1437
    .line 1438
    .line 1439
    return-object v2

    .line 1440
    :pswitch_37
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    .line 1441
    .line 1442
    .line 1443
    move-result v2

    .line 1444
    const/4 v3, 0x0

    .line 1445
    const/4 v4, 0x0

    .line 1446
    move-object v7, v3

    .line 1447
    move-object v8, v7

    .line 1448
    move-object v10, v8

    .line 1449
    const/4 v6, 0x0

    .line 1450
    const/4 v9, 0x0

    .line 1451
    :goto_15
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 1452
    .line 1453
    .line 1454
    move-result v3

    .line 1455
    if-ge v3, v2, :cond_4e

    .line 1456
    .line 1457
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 1458
    .line 1459
    .line 1460
    move-result v3

    .line 1461
    int-to-char v5, v3

    .line 1462
    const/4 v11, 0x1

    .line 1463
    if-eq v5, v11, :cond_4d

    .line 1464
    .line 1465
    const/4 v11, 0x2

    .line 1466
    if-eq v5, v11, :cond_4c

    .line 1467
    .line 1468
    const/4 v11, 0x3

    .line 1469
    if-eq v5, v11, :cond_4b

    .line 1470
    .line 1471
    const/4 v11, 0x4

    .line 1472
    if-eq v5, v11, :cond_4a

    .line 1473
    .line 1474
    const/16 v11, 0x3e8

    .line 1475
    .line 1476
    if-eq v5, v11, :cond_49

    .line 1477
    .line 1478
    invoke-static {v1, v3}, Ln5/d;->T(Landroid/os/Parcel;I)V

    .line 1479
    .line 1480
    .line 1481
    goto :goto_15

    .line 1482
    :cond_49
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 1483
    .line 1484
    .line 1485
    move-result v6

    .line 1486
    goto :goto_15

    .line 1487
    :cond_4a
    invoke-static {v1, v3}, Ln5/d;->f(Landroid/os/Parcel;I)Landroid/os/Bundle;

    .line 1488
    .line 1489
    .line 1490
    move-result-object v10

    .line 1491
    goto :goto_15

    .line 1492
    :cond_4b
    invoke-static {v1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 1493
    .line 1494
    .line 1495
    move-result v9

    .line 1496
    goto :goto_15

    .line 1497
    :cond_4c
    sget-object v5, Landroid/database/CursorWindow;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1498
    .line 1499
    invoke-static {v1, v3, v5}, Ln5/d;->o(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 1500
    .line 1501
    .line 1502
    move-result-object v3

    .line 1503
    move-object v8, v3

    .line 1504
    check-cast v8, [Landroid/database/CursorWindow;

    .line 1505
    .line 1506
    goto :goto_15

    .line 1507
    :cond_4d
    invoke-static {v1, v3}, Ln5/d;->l(Landroid/os/Parcel;I)[Ljava/lang/String;

    .line 1508
    .line 1509
    .line 1510
    move-result-object v7

    .line 1511
    goto :goto_15

    .line 1512
    :cond_4e
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 1513
    .line 1514
    .line 1515
    new-instance v1, Lcom/google/android/gms/common/data/DataHolder;

    .line 1516
    .line 1517
    move-object v5, v1

    .line 1518
    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/common/data/DataHolder;-><init>(I[Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V

    .line 1519
    .line 1520
    .line 1521
    new-instance v2, Landroid/os/Bundle;

    .line 1522
    .line 1523
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1524
    .line 1525
    .line 1526
    iput-object v2, v1, Lcom/google/android/gms/common/data/DataHolder;->c:Landroid/os/Bundle;

    .line 1527
    .line 1528
    const/4 v2, 0x0

    .line 1529
    :goto_16
    iget-object v3, v1, Lcom/google/android/gms/common/data/DataHolder;->b:[Ljava/lang/String;

    .line 1530
    .line 1531
    array-length v5, v3

    .line 1532
    if-ge v2, v5, :cond_4f

    .line 1533
    .line 1534
    iget-object v5, v1, Lcom/google/android/gms/common/data/DataHolder;->c:Landroid/os/Bundle;

    .line 1535
    .line 1536
    aget-object v3, v3, v2

    .line 1537
    .line 1538
    invoke-virtual {v5, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1539
    .line 1540
    .line 1541
    add-int/lit8 v2, v2, 0x1

    .line 1542
    .line 1543
    goto :goto_16

    .line 1544
    :cond_4f
    iget-object v2, v1, Lcom/google/android/gms/common/data/DataHolder;->d:[Landroid/database/CursorWindow;

    .line 1545
    .line 1546
    array-length v3, v2

    .line 1547
    new-array v3, v3, [I

    .line 1548
    .line 1549
    iput-object v3, v1, Lcom/google/android/gms/common/data/DataHolder;->g:[I

    .line 1550
    .line 1551
    const/4 v3, 0x0

    .line 1552
    :goto_17
    array-length v5, v2

    .line 1553
    if-ge v4, v5, :cond_50

    .line 1554
    .line 1555
    iget-object v5, v1, Lcom/google/android/gms/common/data/DataHolder;->g:[I

    .line 1556
    .line 1557
    aput v3, v5, v4

    .line 1558
    .line 1559
    aget-object v5, v2, v4

    .line 1560
    .line 1561
    invoke-virtual {v5}, Landroid/database/CursorWindow;->getStartPosition()I

    .line 1562
    .line 1563
    .line 1564
    move-result v5

    .line 1565
    sub-int v5, v3, v5

    .line 1566
    .line 1567
    aget-object v6, v2, v4

    .line 1568
    .line 1569
    invoke-virtual {v6}, Landroid/database/CursorWindow;->getNumRows()I

    .line 1570
    .line 1571
    .line 1572
    move-result v6

    .line 1573
    sub-int/2addr v6, v5

    .line 1574
    add-int/2addr v3, v6

    .line 1575
    add-int/lit8 v4, v4, 0x1

    .line 1576
    .line 1577
    goto :goto_17

    .line 1578
    :cond_50
    return-object v1

    .line 1579
    :pswitch_38
    invoke-static/range {p1 .. p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    .line 1580
    .line 1581
    .line 1582
    move-result v2

    .line 1583
    const/4 v3, 0x0

    .line 1584
    const/4 v4, 0x0

    .line 1585
    move-object v5, v4

    .line 1586
    const/4 v4, 0x0

    .line 1587
    :goto_18
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 1588
    .line 1589
    .line 1590
    move-result v6

    .line 1591
    if-ge v6, v2, :cond_54

    .line 1592
    .line 1593
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 1594
    .line 1595
    .line 1596
    move-result v6

    .line 1597
    int-to-char v7, v6

    .line 1598
    const/4 v8, 0x1

    .line 1599
    if-eq v7, v8, :cond_53

    .line 1600
    .line 1601
    const/4 v8, 0x2

    .line 1602
    if-eq v7, v8, :cond_52

    .line 1603
    .line 1604
    const/4 v8, 0x3

    .line 1605
    if-eq v7, v8, :cond_51

    .line 1606
    .line 1607
    invoke-static {v1, v6}, Ln5/d;->T(Landroid/os/Parcel;I)V

    .line 1608
    .line 1609
    .line 1610
    goto :goto_18

    .line 1611
    :cond_51
    invoke-static {v1, v6}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 1612
    .line 1613
    .line 1614
    move-result v4

    .line 1615
    goto :goto_18

    .line 1616
    :cond_52
    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1617
    .line 1618
    invoke-static {v1, v6, v5}, Ln5/d;->j(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 1619
    .line 1620
    .line 1621
    move-result-object v5

    .line 1622
    check-cast v5, Landroid/os/ParcelFileDescriptor;

    .line 1623
    .line 1624
    goto :goto_18

    .line 1625
    :cond_53
    invoke-static {v1, v6}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 1626
    .line 1627
    .line 1628
    move-result v3

    .line 1629
    goto :goto_18

    .line 1630
    :cond_54
    invoke-static {v1, v2}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 1631
    .line 1632
    .line 1633
    new-instance v1, Lcom/google/android/gms/common/data/BitmapTeleporter;

    .line 1634
    .line 1635
    invoke-direct {v1, v3, v5, v4}, Lcom/google/android/gms/common/data/BitmapTeleporter;-><init>(ILandroid/os/ParcelFileDescriptor;I)V

    .line 1636
    .line 1637
    .line 1638
    return-object v1

    .line 1639
    :pswitch_39
    new-instance v2, Landroidx/versionedparcelable/ParcelImpl;

    .line 1640
    .line 1641
    invoke-direct {v2, v1}, Landroidx/versionedparcelable/ParcelImpl;-><init>(Landroid/os/Parcel;)V

    .line 1642
    .line 1643
    .line 1644
    return-object v2

    .line 1645
    :pswitch_3a
    new-instance v2, Landroidx/databinding/ObservableParcelable;

    .line 1646
    .line 1647
    const-class v3, Lw0/d;

    .line 1648
    .line 1649
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 1650
    .line 1651
    .line 1652
    move-result-object v3

    .line 1653
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 1654
    .line 1655
    .line 1656
    move-result-object v1

    .line 1657
    invoke-direct {v2}, Lw0/a;-><init>()V

    .line 1658
    .line 1659
    .line 1660
    iput-object v1, v2, Landroidx/databinding/ObservableParcelable;->b:Landroid/os/Parcelable;

    .line 1661
    .line 1662
    return-object v2

    .line 1663
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_1c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1664
    .line 1665
    .line 1666
    .line 1667
    .line 1668
    .line 1669
    .line 1670
    .line 1671
    .line 1672
    .line 1673
    .line 1674
    .line 1675
    .line 1676
    .line 1677
    .line 1678
    .line 1679
    .line 1680
    .line 1681
    .line 1682
    .line 1683
    .line 1684
    .line 1685
    .line 1686
    .line 1687
    .line 1688
    .line 1689
    .line 1690
    .line 1691
    .line 1692
    .line 1693
    .line 1694
    .line 1695
    .line 1696
    .line 1697
    .line 1698
    .line 1699
    .line 1700
    .line 1701
    .line 1702
    .line 1703
    .line 1704
    .line 1705
    .line 1706
    .line 1707
    .line 1708
    .line 1709
    .line 1710
    .line 1711
    .line 1712
    .line 1713
    .line 1714
    .line 1715
    .line 1716
    .line 1717
    .line 1718
    .line 1719
    .line 1720
    .line 1721
    .line 1722
    .line 1723
    .line 1724
    .line 1725
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_d
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    .line 1726
    .line 1727
    .line 1728
    .line 1729
    .line 1730
    .line 1731
    .line 1732
    .line 1733
    .line 1734
    .line 1735
    .line 1736
    .line 1737
    .line 1738
    .line 1739
    .line 1740
    .line 1741
    .line 1742
    .line 1743
    .line 1744
    .line 1745
    .line 1746
    .line 1747
    .line 1748
    .line 1749
    .line 1750
    .line 1751
    .line 1752
    .line 1753
    .line 1754
    .line 1755
    .line 1756
    .line 1757
    .line 1758
    .line 1759
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
    .end packed-switch

    .line 1760
    .line 1761
    .line 1762
    .line 1763
    .line 1764
    .line 1765
    .line 1766
    .line 1767
    .line 1768
    .line 1769
    .line 1770
    .line 1771
    .line 1772
    .line 1773
    .line 1774
    .line 1775
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
    .end packed-switch
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lw0/d;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-array p1, p1, [Lcom/google/android/gms/common/server/converter/zaa;

    .line 7
    .line 8
    return-object p1

    .line 9
    :pswitch_0
    new-array p1, p1, [Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;

    .line 10
    .line 11
    return-object p1

    .line 12
    :pswitch_1
    new-array p1, p1, [Lcom/google/android/gms/common/moduleinstall/internal/ApiFeatureRequest;

    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_2
    new-array p1, p1, [Lcom/google/android/gms/common/moduleinstall/ModuleInstallStatusUpdate;

    .line 16
    .line 17
    return-object p1

    .line 18
    :pswitch_3
    new-array p1, p1, [Lcom/google/android/gms/common/moduleinstall/ModuleInstallResponse;

    .line 19
    .line 20
    return-object p1

    .line 21
    :pswitch_4
    new-array p1, p1, [Lcom/google/android/gms/common/moduleinstall/ModuleInstallIntentResponse;

    .line 22
    .line 23
    return-object p1

    .line 24
    :pswitch_5
    new-array p1, p1, [Lcom/google/android/gms/common/moduleinstall/ModuleAvailabilityResponse;

    .line 25
    .line 26
    return-object p1

    .line 27
    :pswitch_6
    new-array p1, p1, [Lcom/google/android/material/internal/ParcelableSparseIntArray;

    .line 28
    .line 29
    return-object p1

    .line 30
    :pswitch_7
    new-array p1, p1, [Lcom/google/android/material/internal/ParcelableSparseBooleanArray;

    .line 31
    .line 32
    return-object p1

    .line 33
    :pswitch_8
    new-array p1, p1, [Lcom/google/android/gms/common/images/WebImage;

    .line 34
    .line 35
    return-object p1

    .line 36
    :pswitch_9
    new-array p1, p1, [Landroidx/activity/result/IntentSenderRequest;

    .line 37
    .line 38
    return-object p1

    .line 39
    :pswitch_a
    new-array p1, p1, [Landroidx/activity/result/ActivityResult;

    .line 40
    .line 41
    return-object p1

    .line 42
    :pswitch_b
    new-array p1, p1, [Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;

    .line 43
    .line 44
    return-object p1

    .line 45
    :pswitch_c
    new-array p1, p1, [Lcom/google/android/gms/common/internal/GetServiceRequest;

    .line 46
    .line 47
    return-object p1

    .line 48
    :pswitch_d
    new-array p1, p1, [Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;

    .line 49
    .line 50
    return-object p1

    .line 51
    :pswitch_e
    new-array p1, p1, [Lcom/google/android/gms/common/internal/zzk;

    .line 52
    .line 53
    return-object p1

    .line 54
    :pswitch_f
    new-array p1, p1, [Lcom/google/android/gms/common/internal/BinderWrapper;

    .line 55
    .line 56
    return-object p1

    .line 57
    :pswitch_10
    new-array p1, p1, [Lcom/google/android/gms/common/internal/zzal;

    .line 58
    .line 59
    return-object p1

    .line 60
    :pswitch_11
    new-array p1, p1, [Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    .line 61
    .line 62
    return-object p1

    .line 63
    :pswitch_12
    new-array p1, p1, [Lcom/google/android/gms/common/internal/zax;

    .line 64
    .line 65
    return-object p1

    .line 66
    :pswitch_13
    new-array p1, p1, [Lcom/google/android/gms/common/internal/zav;

    .line 67
    .line 68
    return-object p1

    .line 69
    :pswitch_14
    new-array p1, p1, [Lcom/google/android/gms/common/internal/zat;

    .line 70
    .line 71
    return-object p1

    .line 72
    :pswitch_15
    new-array p1, p1, [Lcom/google/android/gms/common/internal/MethodInvocation;

    .line 73
    .line 74
    return-object p1

    .line 75
    :pswitch_16
    new-array p1, p1, [Lcom/google/android/gms/common/internal/TelemetryData;

    .line 76
    .line 77
    return-object p1

    .line 78
    :pswitch_17
    new-array p1, p1, [Lcom/google/android/gms/common/internal/ClientIdentity;

    .line 79
    .line 80
    return-object p1

    .line 81
    :pswitch_18
    new-array p1, p1, [Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    .line 82
    .line 83
    return-object p1

    .line 84
    :pswitch_19
    new-array p1, p1, [Lcom/google/android/gms/common/data/DataHolder;

    .line 85
    .line 86
    return-object p1

    .line 87
    :pswitch_1a
    new-array p1, p1, [Lcom/google/android/gms/common/data/BitmapTeleporter;

    .line 88
    .line 89
    return-object p1

    .line 90
    :pswitch_1b
    new-array p1, p1, [Landroidx/versionedparcelable/ParcelImpl;

    .line 91
    .line 92
    return-object p1

    .line 93
    :pswitch_1c
    new-array p1, p1, [Landroidx/databinding/ObservableParcelable;

    .line 94
    .line 95
    return-object p1

    .line 96
    nop

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
