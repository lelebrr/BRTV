.class public final Lcom/google/android/gms/internal/cast/y0;
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
    iput p1, p0, Lcom/google/android/gms/internal/cast/y0;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/cast/y0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    move-object v6, v2

    .line 13
    move-object v8, v6

    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x0

    .line 16
    const/4 v7, 0x0

    .line 17
    const/4 v9, 0x0

    .line 18
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-ge v1, v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    int-to-char v2, v1

    .line 29
    packed-switch v2, :pswitch_data_1

    .line 30
    .line 31
    .line 32
    invoke-static {p1, v1}, Ln5/d;->T(Landroid/os/Parcel;I)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :pswitch_0
    invoke-static {p1, v1}, Ln5/d;->F(Landroid/os/Parcel;I)Z

    .line 37
    .line 38
    .line 39
    move-result v9

    .line 40
    goto :goto_0

    .line 41
    :pswitch_1
    invoke-static {p1, v1}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v8

    .line 45
    goto :goto_0

    .line 46
    :pswitch_2
    invoke-static {p1, v1}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    goto :goto_0

    .line 51
    :pswitch_3
    invoke-static {p1, v1}, Ln5/d;->n(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    goto :goto_0

    .line 56
    :pswitch_4
    invoke-static {p1, v1}, Ln5/d;->F(Landroid/os/Parcel;I)Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    goto :goto_0

    .line 61
    :pswitch_5
    invoke-static {p1, v1}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    invoke-static {p1, v0}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 67
    .line 68
    .line 69
    new-instance p1, Lcom/google/android/gms/internal/cast/zzfk;

    .line 70
    .line 71
    move-object v3, p1

    .line 72
    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/cast/zzfk;-><init>(IZLjava/util/ArrayList;ILjava/lang/String;Z)V

    .line 73
    .line 74
    .line 75
    return-object p1

    .line 76
    :pswitch_6
    invoke-static {p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    const/4 v1, 0x0

    .line 81
    const/4 v2, 0x0

    .line 82
    const/4 v3, 0x0

    .line 83
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-ge v4, v0, :cond_4

    .line 88
    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    int-to-char v5, v4

    .line 94
    const/4 v6, 0x2

    .line 95
    if-eq v5, v6, :cond_3

    .line 96
    .line 97
    const/4 v6, 0x3

    .line 98
    if-eq v5, v6, :cond_2

    .line 99
    .line 100
    const/4 v6, 0x4

    .line 101
    if-eq v5, v6, :cond_1

    .line 102
    .line 103
    invoke-static {p1, v4}, Ln5/d;->T(Landroid/os/Parcel;I)V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_1
    invoke-static {p1, v4}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    goto :goto_1

    .line 112
    :cond_2
    invoke-static {p1, v4}, Ln5/d;->F(Landroid/os/Parcel;I)Z

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    goto :goto_1

    .line 117
    :cond_3
    invoke-static {p1, v4}, Ln5/d;->F(Landroid/os/Parcel;I)Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    goto :goto_1

    .line 122
    :cond_4
    invoke-static {p1, v0}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 123
    .line 124
    .line 125
    new-instance p1, Lcom/google/android/gms/internal/cast/zzff;

    .line 126
    .line 127
    invoke-direct {p1, v3, v1, v2}, Lcom/google/android/gms/internal/cast/zzff;-><init>(IZZ)V

    .line 128
    .line 129
    .line 130
    return-object p1

    .line 131
    :pswitch_7
    invoke-static {p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    const/4 v1, 0x0

    .line 136
    const/4 v2, 0x0

    .line 137
    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    if-ge v3, v0, :cond_7

    .line 142
    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    int-to-char v4, v3

    .line 148
    const/4 v5, 0x2

    .line 149
    if-eq v4, v5, :cond_6

    .line 150
    .line 151
    const/4 v5, 0x3

    .line 152
    if-eq v4, v5, :cond_5

    .line 153
    .line 154
    invoke-static {p1, v3}, Ln5/d;->T(Landroid/os/Parcel;I)V

    .line 155
    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_5
    invoke-static {p1, v3}, Ln5/d;->K(Landroid/os/Parcel;I)I

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    goto :goto_2

    .line 163
    :cond_6
    invoke-static {p1, v3}, Ln5/d;->F(Landroid/os/Parcel;I)Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    goto :goto_2

    .line 168
    :cond_7
    invoke-static {p1, v0}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 169
    .line 170
    .line 171
    new-instance p1, Lcom/google/android/gms/internal/cast/zzey;

    .line 172
    .line 173
    invoke-direct {p1, v1, v2}, Lcom/google/android/gms/internal/cast/zzey;-><init>(ZI)V

    .line 174
    .line 175
    .line 176
    return-object p1

    .line 177
    :pswitch_8
    invoke-static {p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    const/4 v1, 0x0

    .line 182
    const/4 v2, 0x0

    .line 183
    move-object v3, v2

    .line 184
    const/4 v2, 0x0

    .line 185
    :goto_3
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 186
    .line 187
    .line 188
    move-result v4

    .line 189
    if-ge v4, v0, :cond_b

    .line 190
    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 192
    .line 193
    .line 194
    move-result v4

    .line 195
    int-to-char v5, v4

    .line 196
    const/4 v6, 0x1

    .line 197
    if-eq v5, v6, :cond_a

    .line 198
    .line 199
    const/4 v6, 0x2

    .line 200
    if-eq v5, v6, :cond_9

    .line 201
    .line 202
    const/4 v6, 0x3

    .line 203
    if-eq v5, v6, :cond_8

    .line 204
    .line 205
    invoke-static {p1, v4}, Ln5/d;->T(Landroid/os/Parcel;I)V

    .line 206
    .line 207
    .line 208
    goto :goto_3

    .line 209
    :cond_8
    invoke-static {p1, v4}, Ln5/d;->F(Landroid/os/Parcel;I)Z

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    goto :goto_3

    .line 214
    :cond_9
    invoke-static {p1, v4}, Ln5/d;->F(Landroid/os/Parcel;I)Z

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    goto :goto_3

    .line 219
    :cond_a
    sget-object v3, Lcom/google/android/gms/internal/cast/zzev;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 220
    .line 221
    invoke-static {p1, v4, v3}, Ln5/d;->p(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    goto :goto_3

    .line 226
    :cond_b
    invoke-static {p1, v0}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 227
    .line 228
    .line 229
    new-instance p1, Lcom/google/android/gms/internal/cast/zzew;

    .line 230
    .line 231
    invoke-direct {p1, v3, v1, v2}, Lcom/google/android/gms/internal/cast/zzew;-><init>(Ljava/util/ArrayList;ZZ)V

    .line 232
    .line 233
    .line 234
    return-object p1

    .line 235
    :pswitch_9
    invoke-static {p1}, Ln5/d;->V(Landroid/os/Parcel;)I

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    const/4 v1, 0x0

    .line 240
    move-object v2, v1

    .line 241
    move-object v3, v2

    .line 242
    move-object v4, v3

    .line 243
    :goto_4
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 244
    .line 245
    .line 246
    move-result v5

    .line 247
    if-ge v5, v0, :cond_11

    .line 248
    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 250
    .line 251
    .line 252
    move-result v5

    .line 253
    int-to-char v6, v5

    .line 254
    const/4 v7, 0x1

    .line 255
    if-eq v6, v7, :cond_10

    .line 256
    .line 257
    const/4 v7, 0x2

    .line 258
    if-eq v6, v7, :cond_f

    .line 259
    .line 260
    const/4 v7, 0x3

    .line 261
    if-eq v6, v7, :cond_c

    .line 262
    .line 263
    invoke-static {p1, v5}, Ln5/d;->T(Landroid/os/Parcel;I)V

    .line 264
    .line 265
    .line 266
    goto :goto_4

    .line 267
    :cond_c
    invoke-static {p1, v5}, Ln5/d;->N(Landroid/os/Parcel;I)I

    .line 268
    .line 269
    .line 270
    move-result v4

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 272
    .line 273
    .line 274
    move-result v5

    .line 275
    if-nez v4, :cond_d

    .line 276
    .line 277
    move-object v4, v1

    .line 278
    goto :goto_4

    .line 279
    :cond_d
    new-instance v6, Ljava/util/ArrayList;

    .line 280
    .line 281
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .line 283
    .line 284
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 285
    .line 286
    .line 287
    move-result v7

    .line 288
    const/4 v8, 0x0

    .line 289
    :goto_5
    if-ge v8, v7, :cond_e

    .line 290
    .line 291
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 292
    .line 293
    .line 294
    move-result v9

    .line 295
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 296
    .line 297
    .line 298
    move-result-object v9

    .line 299
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    add-int/lit8 v8, v8, 0x1

    .line 303
    .line 304
    goto :goto_5

    .line 305
    :cond_e
    add-int/2addr v5, v4

    .line 306
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 307
    .line 308
    .line 309
    move-object v4, v6

    .line 310
    goto :goto_4

    .line 311
    :cond_f
    invoke-static {p1, v5}, Ln5/d;->g(Landroid/os/Parcel;I)[B

    .line 312
    .line 313
    .line 314
    move-result-object v3

    .line 315
    goto :goto_4

    .line 316
    :cond_10
    invoke-static {p1, v5}, Ln5/d;->k(Landroid/os/Parcel;I)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v2

    .line 320
    goto :goto_4

    .line 321
    :cond_11
    invoke-static {p1, v0}, Ln5/d;->r(Landroid/os/Parcel;I)V

    .line 322
    .line 323
    .line 324
    new-instance p1, Lcom/google/android/gms/internal/cast/zzev;

    .line 325
    .line 326
    invoke-direct {p1, v2, v3, v4}, Lcom/google/android/gms/internal/cast/zzev;-><init>(Ljava/lang/String;[BLjava/util/ArrayList;)V

    .line 327
    .line 328
    .line 329
    return-object p1

    .line 330
    nop

    .line 331
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/cast/y0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-array p1, p1, [Lcom/google/android/gms/internal/cast/zzfk;

    .line 7
    .line 8
    return-object p1

    .line 9
    :pswitch_0
    new-array p1, p1, [Lcom/google/android/gms/internal/cast/zzff;

    .line 10
    .line 11
    return-object p1

    .line 12
    :pswitch_1
    new-array p1, p1, [Lcom/google/android/gms/internal/cast/zzey;

    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_2
    new-array p1, p1, [Lcom/google/android/gms/internal/cast/zzew;

    .line 16
    .line 17
    return-object p1

    .line 18
    :pswitch_3
    new-array p1, p1, [Lcom/google/android/gms/internal/cast/zzev;

    .line 19
    .line 20
    return-object p1

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
