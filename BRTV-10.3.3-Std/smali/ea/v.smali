.class public final Lea/v;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/bitspark/android/Spark;


# direct methods
.method public synthetic constructor <init>(Lorg/bitspark/android/Spark;I)V
    .locals 0

    .line 1
    iput p2, p0, Lea/v;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lea/v;->b:Lorg/bitspark/android/Spark;

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
    .locals 12

    .line 1
    iget-object v0, p0, Lea/v;->b:Lorg/bitspark/android/Spark;

    .line 2
    .line 3
    iget v1, p0, Lea/v;->a:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget-object v1, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 9
    .line 10
    invoke-virtual {v0}, Lorg/bitspark/android/Spark;->V()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const-wide/16 v2, 0x3e8

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    goto/16 :goto_0

    .line 19
    .line 20
    :cond_0
    iget-object v1, v0, Lorg/bitspark/android/Spark;->L1:Lra/a;

    .line 21
    .line 22
    invoke-interface {v1}, Lra/a;->getCurrentPosition()J

    .line 23
    .line 24
    .line 25
    move-result-wide v4

    .line 26
    iput-wide v4, v0, Lorg/bitspark/android/Spark;->G1:J

    .line 27
    .line 28
    iget-object v1, v0, Lorg/bitspark/android/Spark;->L1:Lra/a;

    .line 29
    .line 30
    invoke-interface {v1}, Lra/a;->getDuration()J

    .line 31
    .line 32
    .line 33
    move-result-wide v4

    .line 34
    long-to-int v1, v4

    .line 35
    iput v1, v0, Lorg/bitspark/android/Spark;->F1:I

    .line 36
    .line 37
    iget-object v1, v0, Lorg/bitspark/android/Spark;->L1:Lra/a;

    .line 38
    .line 39
    invoke-interface {v1}, Lra/a;->getBufferedPercentage()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    iget v4, v0, Lorg/bitspark/android/Spark;->F1:I

    .line 44
    .line 45
    if-lez v4, :cond_2

    .line 46
    .line 47
    int-to-long v5, v4

    .line 48
    iget-wide v7, v0, Lorg/bitspark/android/Spark;->G1:J

    .line 49
    .line 50
    cmp-long v9, v5, v7

    .line 51
    .line 52
    if-lez v9, :cond_2

    .line 53
    .line 54
    const-wide/16 v9, 0x64

    .line 55
    .line 56
    mul-long v7, v7, v9

    .line 57
    .line 58
    div-long/2addr v7, v5

    .line 59
    iget-object v5, v0, Lorg/bitspark/android/Spark;->y1:Landroid/widget/TextView;

    .line 60
    .line 61
    div-int/lit16 v4, v4, 0x3e8

    .line 62
    .line 63
    int-to-long v9, v4

    .line 64
    invoke-static {v9, v10}, Lorg/bitspark/android/utils/m;->q(J)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    iget-object v4, v0, Lorg/bitspark/android/Spark;->H1:Lea/f0;

    .line 72
    .line 73
    invoke-virtual {v4}, Lea/f0;->a()Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-nez v4, :cond_1

    .line 78
    .line 79
    iget-object v4, v0, Lorg/bitspark/android/Spark;->x1:Landroid/widget/TextView;

    .line 80
    .line 81
    iget-wide v5, v0, Lorg/bitspark/android/Spark;->G1:J

    .line 82
    .line 83
    div-long/2addr v5, v2

    .line 84
    invoke-static {v5, v6}, Lorg/bitspark/android/utils/m;->q(J)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    .line 90
    .line 91
    iget-object v4, v0, Lorg/bitspark/android/Spark;->z1:Landroid/widget/SeekBar;

    .line 92
    .line 93
    long-to-int v5, v7

    .line 94
    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 95
    .line 96
    .line 97
    iget-object v4, v0, Lorg/bitspark/android/Spark;->A1:Landroid/widget/SeekBar;

    .line 98
    .line 99
    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 100
    .line 101
    .line 102
    :cond_1
    iget-object v4, v0, Lorg/bitspark/android/Spark;->z1:Landroid/widget/SeekBar;

    .line 103
    .line 104
    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 105
    .line 106
    .line 107
    iget-object v1, v0, Lorg/bitspark/android/Spark;->Y:Landroid/os/Bundle;

    .line 108
    .line 109
    invoke-static {v1}, Lorg/bitspark/android/Spark;->b0(Landroid/os/Bundle;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    iget v4, v0, Lorg/bitspark/android/Spark;->F1:I

    .line 114
    .line 115
    const/16 v5, 0x4e20

    .line 116
    .line 117
    if-le v4, v5, :cond_2

    .line 118
    .line 119
    iget-wide v5, v0, Lorg/bitspark/android/Spark;->G1:J

    .line 120
    .line 121
    const-wide/16 v7, 0x4e20

    .line 122
    .line 123
    cmp-long v9, v5, v7

    .line 124
    .line 125
    if-lez v9, :cond_2

    .line 126
    .line 127
    int-to-long v9, v4

    .line 128
    sub-long/2addr v9, v5

    .line 129
    cmp-long v4, v9, v7

    .line 130
    .line 131
    if-gez v4, :cond_2

    .line 132
    .line 133
    if-eqz v1, :cond_2

    .line 134
    .line 135
    const v4, 0x7f1201e8

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    iget-object v5, v0, Lorg/bitspark/android/Spark;->j1:Landroid/widget/TextView;

    .line 143
    .line 144
    const-string v6, "1pvDK/9c\n"

    .line 145
    .line 146
    const-string v7, "8+j5C9ov7HE=\n"

    .line 147
    .line 148
    invoke-static {v6, v7}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    const/4 v7, 0x2

    .line 153
    new-array v7, v7, [Ljava/lang/Object;

    .line 154
    .line 155
    const/4 v8, 0x0

    .line 156
    aput-object v4, v7, v8

    .line 157
    .line 158
    const/4 v4, 0x1

    .line 159
    aput-object v1, v7, v4

    .line 160
    .line 161
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    .line 167
    .line 168
    iget-object v1, v0, Lorg/bitspark/android/Spark;->m1:Landroid/widget/RelativeLayout;

    .line 169
    .line 170
    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    if-nez v1, :cond_2

    .line 175
    .line 176
    const/16 v1, 0x5f

    .line 177
    .line 178
    invoke-virtual {v0, v1}, Lorg/bitspark/android/Spark;->z0(I)V

    .line 179
    .line 180
    .line 181
    :cond_2
    :goto_0
    iget-object v1, v0, Lorg/bitspark/android/Spark;->P1:Lea/o0;

    .line 182
    .line 183
    if-nez v1, :cond_3

    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 187
    .line 188
    .line 189
    move-result-wide v4

    .line 190
    iget-wide v6, v1, Lea/o0;->c:J

    .line 191
    .line 192
    sub-long v6, v4, v6

    .line 193
    .line 194
    cmp-long v8, v6, v2

    .line 195
    .line 196
    if-gez v8, :cond_4

    .line 197
    .line 198
    const/4 v1, -0x1

    .line 199
    goto :goto_1

    .line 200
    :cond_4
    iget-wide v8, v1, Lea/o0;->a:J

    .line 201
    .line 202
    iget-wide v10, v1, Lea/o0;->b:J

    .line 203
    .line 204
    sub-long v10, v8, v10

    .line 205
    .line 206
    iput-wide v8, v1, Lea/o0;->b:J

    .line 207
    .line 208
    iput-wide v4, v1, Lea/o0;->c:J

    .line 209
    .line 210
    mul-long v10, v10, v2

    .line 211
    .line 212
    div-long/2addr v10, v6

    .line 213
    long-to-int v1, v10

    .line 214
    :goto_1
    if-gez v1, :cond_5

    .line 215
    .line 216
    goto :goto_2

    .line 217
    :cond_5
    iget-object v4, v0, Lorg/bitspark/android/Spark;->E1:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 218
    .line 219
    sget-object v5, Lorg/bitspark/android/Constants$VIDEO_TYPE;->STATIC:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 220
    .line 221
    if-ne v4, v5, :cond_6

    .line 222
    .line 223
    int-to-long v4, v1

    .line 224
    invoke-static {v4, v5}, Lorg/bitspark/android/utils/m;->b(J)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    invoke-virtual {v0, v1}, Lorg/bitspark/android/Spark;->n0(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    :cond_6
    :goto_2
    sget-object v0, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 232
    .line 233
    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 234
    .line 235
    .line 236
    return-void

    .line 237
    :pswitch_0
    iget-object v0, v0, Lorg/bitspark/android/Spark;->y:Lorg/bitspark/android/view/MyViewPager;

    .line 238
    .line 239
    const/4 v1, 0x0

    .line 240
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 241
    .line 242
    .line 243
    return-void

    .line 244
    :pswitch_1
    iget-object v0, v0, Lorg/bitspark/android/Spark;->b0:Landroid/widget/ImageView;

    .line 245
    .line 246
    const/16 v1, 0x8

    .line 247
    .line 248
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 249
    .line 250
    .line 251
    const-string v0, "c1yPoMp7\n"

    .line 252
    .line 253
    const-string v1, "MQ/CwaMVF/s=\n"

    .line 254
    .line 255
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    const-string v1, "nbJXluVjFZO5skCH621Z1g==\n"

    .line 260
    .line 261
    const-string v2, "9dsz86kKY/Y=\n"

    .line 262
    .line 263
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    sget-boolean v2, Lorg/bitspark/android/utils/m;->b:Z

    .line 268
    .line 269
    invoke-static {v0, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    return-void

    .line 273
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
