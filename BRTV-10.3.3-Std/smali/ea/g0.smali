.class public final Lea/g0;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# instance fields
.field public final synthetic a:Lea/h0;


# direct methods
.method public constructor <init>(Lea/h0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lea/g0;->a:Lea/h0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 7

    .line 1
    const-string p1, "9PH4PSdz\n"

    .line 2
    .line 3
    const-string v0, "tqK1XE4dX6Y=\n"

    .line 4
    .line 5
    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "Ak5dyeBr3b0DB1bCzUjSvhFVUMLoaMS8FVNcjPlU0L0bc0Dc6geU\n"

    .line 15
    .line 16
    const-string v2, "dCc5rI89tNg=\n"

    .line 17
    .line 18
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lea/g0;->a:Lea/h0;

    .line 26
    .line 27
    iget-object v2, v1, Lea/h0;->a:Lorg/bitspark/android/Spark;

    .line 28
    .line 29
    iget-object v2, v2, Lorg/bitspark/android/Spark;->E1:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, "y4OxVWtNaDiOgvZWa1Z6JJmUrFhhTBZ4\n"

    .line 35
    .line 36
    const-string v3, "6/XYMQ4iPlE=\n"

    .line 37
    .line 38
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    sget-object v2, Lorg/bitspark/android/Spark;->k2:Landroid/widget/VideoView;

    .line 46
    .line 47
    invoke-virtual {v2}, Landroid/widget/VideoView;->getDuration()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    sget-boolean v2, Lorg/bitspark/android/utils/m;->b:Z

    .line 59
    .line 60
    invoke-static {p1, v0}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object p1, v1, Lea/h0;->a:Lorg/bitspark/android/Spark;

    .line 64
    .line 65
    iget-object v0, p1, Lorg/bitspark/android/Spark;->E1:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 66
    .line 67
    sget-object v1, Lorg/bitspark/android/Constants$VIDEO_TYPE;->BSPALYBACK:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 68
    .line 69
    if-eq v0, v1, :cond_0

    .line 70
    .line 71
    sget-object v1, Lorg/bitspark/android/Constants$VIDEO_TYPE;->BSVOD:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 72
    .line 73
    if-eq v0, v1, :cond_0

    .line 74
    .line 75
    sget-object v1, Lorg/bitspark/android/Constants$VIDEO_TYPE;->STATIC:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 76
    .line 77
    if-ne v0, v1, :cond_2

    .line 78
    .line 79
    :cond_0
    sget-object v0, Lorg/bitspark/android/Spark;->k2:Landroid/widget/VideoView;

    .line 80
    .line 81
    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    int-to-long v0, v0

    .line 86
    iput-wide v0, p1, Lorg/bitspark/android/Spark;->G1:J

    .line 87
    .line 88
    sget-object v0, Lorg/bitspark/android/Spark;->k2:Landroid/widget/VideoView;

    .line 89
    .line 90
    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    iput v0, p1, Lorg/bitspark/android/Spark;->F1:I

    .line 95
    .line 96
    const-string v0, "NR0m0anw\n"

    .line 97
    .line 98
    const-string v1, "d05rsMCelIA=\n"

    .line 99
    .line 100
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    const-string v2, "y2UFs8NIWFjKLAKj3mxUU8lcDqXFalhS0yw=\n"

    .line 110
    .line 111
    const-string v3, "vQxh1qweMT0=\n"

    .line 112
    .line 113
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    iget-wide v2, p1, Lorg/bitspark/android/Spark;->G1:J

    .line 121
    .line 122
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v2, "JtNb2bSf24Jolw==\n"

    .line 126
    .line 127
    const-string v3, "Brcuq9Xrsu0=\n"

    .line 128
    .line 129
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    iget v2, p1, Lorg/bitspark/android/Spark;->F1:I

    .line 137
    .line 138
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string v2, "jzg3x/WmkNjKKCHE/bfC\n"

    .line 142
    .line 143
    const-string v3, "r1pCoZPD4og=\n"

    .line 144
    .line 145
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-static {v0, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    iget v0, p1, Lorg/bitspark/android/Spark;->F1:I

    .line 163
    .line 164
    if-lez v0, :cond_2

    .line 165
    .line 166
    iget-wide v1, p1, Lorg/bitspark/android/Spark;->G1:J

    .line 167
    .line 168
    const-wide/16 v3, 0x64

    .line 169
    .line 170
    mul-long v3, v3, v1

    .line 171
    .line 172
    int-to-long v5, v0

    .line 173
    div-long/2addr v3, v5

    .line 174
    iget-object v0, p1, Lorg/bitspark/android/Spark;->x1:Landroid/widget/TextView;

    .line 175
    .line 176
    const-wide/16 v5, 0x3e8

    .line 177
    .line 178
    div-long/2addr v1, v5

    .line 179
    invoke-static {v1, v2}, Lorg/bitspark/android/utils/m;->q(J)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    .line 185
    .line 186
    iget-object v0, p1, Lorg/bitspark/android/Spark;->y1:Landroid/widget/TextView;

    .line 187
    .line 188
    iget v1, p1, Lorg/bitspark/android/Spark;->F1:I

    .line 189
    .line 190
    div-int/lit16 v1, v1, 0x3e8

    .line 191
    .line 192
    int-to-long v1, v1

    .line 193
    invoke-static {v1, v2}, Lorg/bitspark/android/utils/m;->q(J)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    .line 199
    .line 200
    iget-object v0, p1, Lorg/bitspark/android/Spark;->H1:Lea/f0;

    .line 201
    .line 202
    invoke-virtual {v0}, Lea/f0;->a()Z

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    if-nez v0, :cond_1

    .line 207
    .line 208
    iget-object v0, p1, Lorg/bitspark/android/Spark;->z1:Landroid/widget/SeekBar;

    .line 209
    .line 210
    long-to-int v1, v3

    .line 211
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 212
    .line 213
    .line 214
    iget-object v0, p1, Lorg/bitspark/android/Spark;->A1:Landroid/widget/SeekBar;

    .line 215
    .line 216
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 217
    .line 218
    .line 219
    :cond_1
    iget-object v0, p1, Lorg/bitspark/android/Spark;->z1:Landroid/widget/SeekBar;

    .line 220
    .line 221
    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 222
    .line 223
    .line 224
    iget-object v0, p1, Lorg/bitspark/android/Spark;->A1:Landroid/widget/SeekBar;

    .line 225
    .line 226
    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 227
    .line 228
    .line 229
    const-string v0, "jS+KswI/\n"

    .line 230
    .line 231
    const-string v1, "z3zH0mtRHGk=\n"

    .line 232
    .line 233
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    .line 241
    .line 242
    const-string v2, "mVDJ/YmrUmA=\n"

    .line 243
    .line 244
    const-string v3, "+yWvm+zZaEA=\n"

    .line 245
    .line 246
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object p2

    .line 260
    invoke-static {v0, p2}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    iget-object p2, p1, Lorg/bitspark/android/Spark;->Y:Landroid/os/Bundle;

    .line 264
    .line 265
    invoke-static {p2}, Lorg/bitspark/android/Spark;->b0(Landroid/os/Bundle;)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object p2

    .line 269
    iget v0, p1, Lorg/bitspark/android/Spark;->F1:I

    .line 270
    .line 271
    int-to-long v0, v0

    .line 272
    iget-wide v2, p1, Lorg/bitspark/android/Spark;->G1:J

    .line 273
    .line 274
    sub-long/2addr v0, v2

    .line 275
    const-wide/16 v2, 0x4e20

    .line 276
    .line 277
    cmp-long v4, v0, v2

    .line 278
    .line 279
    if-gez v4, :cond_2

    .line 280
    .line 281
    if-eqz p2, :cond_2

    .line 282
    .line 283
    const v0, 0x7f1201e8

    .line 284
    .line 285
    .line 286
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    iget-object v1, p1, Lorg/bitspark/android/Spark;->j1:Landroid/widget/TextView;

    .line 291
    .line 292
    const-string v2, "aNCPRpxZ\n"

    .line 293
    .line 294
    const-string v3, "TaO1ZrkqgJs=\n"

    .line 295
    .line 296
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    const/4 v3, 0x2

    .line 301
    new-array v3, v3, [Ljava/lang/Object;

    .line 302
    .line 303
    const/4 v4, 0x0

    .line 304
    aput-object v0, v3, v4

    .line 305
    .line 306
    const/4 v0, 0x1

    .line 307
    aput-object p2, v3, v0

    .line 308
    .line 309
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object p2

    .line 313
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    .line 315
    .line 316
    const/16 p2, 0x7d0

    .line 317
    .line 318
    invoke-virtual {p1, p2}, Lorg/bitspark/android/Spark;->z0(I)V

    .line 319
    .line 320
    .line 321
    :cond_2
    return-void
.end method
