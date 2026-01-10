.class public final Lra/f;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field public static final m:Ljava/lang/String;

.field public static n:Lra/f;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/HashMap;

.field public final d:Ljava/util/HashMap;

.field public e:Lorg/bitspark/android/beans/ChannelBean;

.field public f:I

.field public g:Z

.field public h:Z

.field public i:Lea/z;

.field public j:I

.field public k:Lea/k;

.field public l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "FoADseBvWukoiwe6\n"

    .line 2
    .line 3
    const-string v1, "RuxiyIUdF4g=\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lra/f;->m:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "t7eKKa7yy56IoYMOos3BiI6nghCm0Q==\n"

    .line 5
    .line 6
    const-string v1, "+sLmXcehpOs=\n"

    .line 7
    .line 8
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lra/f;->a:Ljava/lang/String;

    .line 13
    .line 14
    const-string v0, "ors4uccrlYGHpiK52T+H\n"

    .line 15
    .line 16
    const-string v1, "7tJO3JRe9/U=\n"

    .line 17
    .line 18
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lra/f;->b:Ljava/lang/String;

    .line 23
    .line 24
    new-instance v0, Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lra/f;->c:Ljava/util/HashMap;

    .line 30
    .line 31
    new-instance v0, Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lra/f;->d:Ljava/util/HashMap;

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lra/f;->e:Lorg/bitspark/android/beans/ChannelBean;

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    iput v1, p0, Lra/f;->f:I

    .line 43
    .line 44
    iput-boolean v1, p0, Lra/f;->g:Z

    .line 45
    .line 46
    const/4 v2, 0x1

    .line 47
    iput-boolean v2, p0, Lra/f;->h:Z

    .line 48
    .line 49
    iput v1, p0, Lra/f;->j:I

    .line 50
    .line 51
    iput-object v0, p0, Lra/f;->k:Lea/k;

    .line 52
    .line 53
    const-string v0, ""

    .line 54
    .line 55
    iput-object v0, p0, Lra/f;->l:Ljava/lang/String;

    .line 56
    .line 57
    return-void
.end method

.method public static b()Lra/f;
    .locals 1

    .line 1
    sget-object v0, Lra/f;->n:Lra/f;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lra/f;

    .line 6
    .line 7
    invoke-direct {v0}, Lra/f;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lra/f;->n:Lra/f;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lra/f;->n:Lra/f;

    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lra/f;->e:Lorg/bitspark/android/beans/ChannelBean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lra/f;->c:Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/bitspark/android/beans/ChannelBean;->getChid()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lra/f;->e:Lorg/bitspark/android/beans/ChannelBean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/bitspark/android/beans/ChannelBean;->getSources()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lra/f;->e:Lorg/bitspark/android/beans/ChannelBean;

    .line 12
    .line 13
    invoke-virtual {v0}, Lorg/bitspark/android/beans/ChannelBean;->getSources()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x1

    .line 22
    if-le v0, v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v1, 0x0

    .line 26
    :goto_0
    return v1
.end method

.method public final d()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lra/f;->e:Lorg/bitspark/android/beans/ChannelBean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/bitspark/android/beans/ChannelBean;->getSources()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-le v0, v1, :cond_0

    .line 13
    .line 14
    iget v0, p0, Lra/f;->f:I

    .line 15
    .line 16
    iget-object v2, p0, Lra/f;->e:Lorg/bitspark/android/beans/ChannelBean;

    .line 17
    .line 18
    invoke-virtual {v2}, Lorg/bitspark/android/beans/ChannelBean;->getSources()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    sub-int/2addr v2, v1

    .line 27
    if-ne v0, v2, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v1, 0x0

    .line 31
    :goto_0
    return v1
.end method

.method public final e(Lorg/bitspark/android/beans/ChannelBean;Ljava/lang/Boolean;ILjava/lang/String;)V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    .line 6
    .line 7
    const-string v2, "EZvPWOix40cOzY4=\n"

    .line 8
    .line 9
    const-string v3, "YfeuIb7YhyI=\n"

    .line 10
    .line 11
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    new-instance v2, Ll7/k;

    .line 19
    .line 20
    invoke-direct {v2}, Ll7/k;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, p1}, Ll7/k;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    sget-boolean v2, Lorg/bitspark/android/utils/m;->b:Z

    .line 35
    .line 36
    sget-object v2, Lra/f;->m:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v2, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iput p3, p0, Lra/f;->f:I

    .line 42
    .line 43
    new-instance p3, Landroid/os/Message;

    .line 44
    .line 45
    invoke-direct {p3}, Landroid/os/Message;-><init>()V

    .line 46
    .line 47
    .line 48
    const/16 v1, 0x50

    .line 49
    .line 50
    iput v1, p3, Landroid/os/Message;->what:I

    .line 51
    .line 52
    new-instance v1, Landroid/os/Bundle;

    .line 53
    .line 54
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v3, "4K9gfA==\n"

    .line 58
    .line 59
    const-string v4, "g8cJGFxuXkA=\n"

    .line 60
    .line 61
    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {p1}, Lorg/bitspark/android/beans/ChannelBean;->getChid()I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-eqz v3, :cond_0

    .line 77
    .line 78
    const-string v3, "n+9b1k0=\n"

    .line 79
    .line 80
    const-string v4, "84otsyGoFJI=\n"

    .line 81
    .line 82
    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-virtual {p1}, Lorg/bitspark/android/beans/ChannelBean;->getLevel()I

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 91
    .line 92
    .line 93
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string v4, "QmGVZSQAxVldLZ1yFgzZBg==\n"

    .line 99
    .line 100
    const-string v5, "Mg30HHJpoTw=\n"

    .line 101
    .line 102
    invoke-static {v4, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    iget v4, p0, Lra/f;->f:I

    .line 110
    .line 111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-static {v2, v3}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 122
    .line 123
    .line 124
    move-result p2

    .line 125
    iput-boolean p2, p0, Lra/f;->g:Z

    .line 126
    .line 127
    iget-object p2, p0, Lra/f;->e:Lorg/bitspark/android/beans/ChannelBean;

    .line 128
    .line 129
    if-eqz p2, :cond_1

    .line 130
    .line 131
    invoke-virtual {p1}, Lorg/bitspark/android/beans/ChannelBean;->getChid()I

    .line 132
    .line 133
    .line 134
    move-result p2

    .line 135
    iget-object v3, p0, Lra/f;->e:Lorg/bitspark/android/beans/ChannelBean;

    .line 136
    .line 137
    invoke-virtual {v3}, Lorg/bitspark/android/beans/ChannelBean;->getChid()I

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    if-eq p2, v3, :cond_1

    .line 142
    .line 143
    iget-object p2, p0, Lra/f;->k:Lea/k;

    .line 144
    .line 145
    if-eqz p2, :cond_1

    .line 146
    .line 147
    iget-object p2, p2, Lea/k;->b:Lorg/bitspark/android/Spark;

    .line 148
    .line 149
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    :cond_1
    iput-object p1, p0, Lra/f;->e:Lorg/bitspark/android/beans/ChannelBean;

    .line 153
    .line 154
    iget-object p2, p0, Lra/f;->i:Lea/z;

    .line 155
    .line 156
    if-eqz p2, :cond_3

    .line 157
    .line 158
    invoke-virtual {p1}, Lorg/bitspark/android/beans/ChannelBean;->getName()Lorg/bitspark/android/beans/ChannelBean$NameBean;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    iget-object p2, p2, Lea/z;->a:Lorg/bitspark/android/Spark;

    .line 163
    .line 164
    if-eqz v3, :cond_2

    .line 165
    .line 166
    invoke-virtual {p1}, Lorg/bitspark/android/beans/ChannelBean;->getName()Lorg/bitspark/android/beans/ChannelBean$NameBean;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    invoke-virtual {v3}, Lorg/bitspark/android/beans/ChannelBean$NameBean;->getInit()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    if-eqz v3, :cond_2

    .line 175
    .line 176
    const-string v3, "qavGDeXL\n"

    .line 177
    .line 178
    const-string v4, "6/iLbIylMkk=\n"

    .line 179
    .line 180
    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    new-instance v4, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .line 188
    .line 189
    const-string v5, "5Yp4TlEmWus=\n"

    .line 190
    .line 191
    const-string v6, "iuQoIjBfYMs=\n"

    .line 192
    .line 193
    invoke-static {v5, v6}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v5

    .line 197
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1}, Lorg/bitspark/android/beans/ChannelBean;->getName()Lorg/bitspark/android/beans/ChannelBean$NameBean;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    invoke-virtual {v5}, Lorg/bitspark/android/beans/ChannelBean$NameBean;->getInit()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    invoke-static {v3, v4}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    iget-object v3, p2, Lorg/bitspark/android/Spark;->m0:Landroid/widget/TextView;

    .line 219
    .line 220
    invoke-virtual {p1}, Lorg/bitspark/android/beans/ChannelBean;->getName()Lorg/bitspark/android/beans/ChannelBean$NameBean;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    invoke-virtual {v4}, Lorg/bitspark/android/beans/ChannelBean$NameBean;->getInit()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v4

    .line 228
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    .line 230
    .line 231
    :cond_2
    invoke-static {}, Lra/f;->b()Lra/f;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    iget-object p2, p2, Lorg/bitspark/android/Spark;->I:Lka/r;

    .line 236
    .line 237
    iget p2, p2, Lka/r;->m0:I

    .line 238
    .line 239
    iput p2, v3, Lra/f;->j:I

    .line 240
    .line 241
    :cond_3
    iget-object p2, p0, Lra/f;->c:Ljava/util/HashMap;

    .line 242
    .line 243
    iget-object v3, p0, Lra/f;->e:Lorg/bitspark/android/beans/ChannelBean;

    .line 244
    .line 245
    invoke-virtual {v3}, Lorg/bitspark/android/beans/ChannelBean;->getChid()I

    .line 246
    .line 247
    .line 248
    move-result v3

    .line 249
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    check-cast v3, Ljava/lang/String;

    .line 258
    .line 259
    if-nez v3, :cond_4

    .line 260
    .line 261
    iget-boolean v4, p0, Lra/f;->h:Z

    .line 262
    .line 263
    if-eqz v4, :cond_4

    .line 264
    .line 265
    sget-object v3, Lea/h;->P:Ljava/lang/String;

    .line 266
    .line 267
    goto :goto_0

    .line 268
    :cond_4
    iput-boolean v0, p0, Lra/f;->h:Z

    .line 269
    .line 270
    :goto_0
    invoke-virtual {p1}, Lorg/bitspark/android/beans/ChannelBean;->getSources()Ljava/util/List;

    .line 271
    .line 272
    .line 273
    move-result-object v4

    .line 274
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 275
    .line 276
    .line 277
    move-result v4

    .line 278
    if-nez v4, :cond_5

    .line 279
    .line 280
    return-void

    .line 281
    :cond_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 282
    .line 283
    .line 284
    move-result v5

    .line 285
    const/4 v6, 0x0

    .line 286
    if-nez v5, :cond_8

    .line 287
    .line 288
    iget v5, p0, Lra/f;->f:I

    .line 289
    .line 290
    if-nez v5, :cond_8

    .line 291
    .line 292
    const/4 v5, 0x0

    .line 293
    :goto_1
    if-ge v5, v4, :cond_7

    .line 294
    .line 295
    invoke-virtual {p1}, Lorg/bitspark/android/beans/ChannelBean;->getSources()Ljava/util/List;

    .line 296
    .line 297
    .line 298
    move-result-object v7

    .line 299
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v7

    .line 303
    check-cast v7, Lorg/bitspark/android/beans/ChannelBean$SourcesBean;

    .line 304
    .line 305
    invoke-virtual {v7}, Lorg/bitspark/android/beans/ChannelBean$SourcesBean;->getSubTitle()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v8

    .line 309
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    move-result v8

    .line 313
    if-eqz v8, :cond_6

    .line 314
    .line 315
    iput v5, p0, Lra/f;->f:I

    .line 316
    .line 317
    const-string v0, "zdKQ\n"

    .line 318
    .line 319
    const-string v3, "uKD8Ceoe6Bk=\n"

    .line 320
    .line 321
    invoke-static {v0, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    invoke-virtual {v7}, Lorg/bitspark/android/beans/ChannelBean$SourcesBean;->getAddress()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v3

    .line 329
    invoke-virtual {v1, v0, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    goto :goto_2

    .line 333
    :cond_6
    add-int/2addr v5, v0

    .line 334
    goto :goto_1

    .line 335
    :cond_7
    iget v0, p0, Lra/f;->f:I

    .line 336
    .line 337
    if-ge v0, v4, :cond_9

    .line 338
    .line 339
    const-string v0, "XQxU\n"

    .line 340
    .line 341
    const-string v3, "KH44IRLU3g4=\n"

    .line 342
    .line 343
    invoke-static {v0, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    invoke-virtual {p1}, Lorg/bitspark/android/beans/ChannelBean;->getSources()Ljava/util/List;

    .line 348
    .line 349
    .line 350
    move-result-object v3

    .line 351
    iget v5, p0, Lra/f;->f:I

    .line 352
    .line 353
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v3

    .line 357
    check-cast v3, Lorg/bitspark/android/beans/ChannelBean$SourcesBean;

    .line 358
    .line 359
    invoke-virtual {v3}, Lorg/bitspark/android/beans/ChannelBean$SourcesBean;->getAddress()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v3

    .line 363
    invoke-virtual {v1, v0, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    goto :goto_2

    .line 367
    :cond_8
    iget v0, p0, Lra/f;->f:I

    .line 368
    .line 369
    if-ge v0, v4, :cond_9

    .line 370
    .line 371
    const-string v0, "W6u8\n"

    .line 372
    .line 373
    const-string v3, "LtnQJQecih4=\n"

    .line 374
    .line 375
    invoke-static {v0, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    invoke-virtual {p1}, Lorg/bitspark/android/beans/ChannelBean;->getSources()Ljava/util/List;

    .line 380
    .line 381
    .line 382
    move-result-object v3

    .line 383
    iget v5, p0, Lra/f;->f:I

    .line 384
    .line 385
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object v3

    .line 389
    check-cast v3, Lorg/bitspark/android/beans/ChannelBean$SourcesBean;

    .line 390
    .line 391
    invoke-virtual {v3}, Lorg/bitspark/android/beans/ChannelBean$SourcesBean;->getAddress()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v3

    .line 395
    invoke-virtual {v1, v0, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    :cond_9
    :goto_2
    iget v0, p0, Lra/f;->f:I

    .line 399
    .line 400
    if-lt v0, v4, :cond_a

    .line 401
    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    .line 403
    .line 404
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 405
    .line 406
    .line 407
    const-string v3, "7UlET3Hbq+zyHwXQsgIoMhnNgqTBEkhhK6/Co6s=\n"

    .line 408
    .line 409
    const-string v5, "nSUlNieyz4k=\n"

    .line 410
    .line 411
    invoke-static {v3, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v3

    .line 415
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    iget v3, p0, Lra/f;->f:I

    .line 419
    .line 420
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    const-string v3, "Sf4NvQ==\n"

    .line 424
    .line 425
    const-string v5, "ZNMgkFapT3E=\n"

    .line 426
    .line 427
    invoke-static {v3, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v3

    .line 431
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    invoke-static {v2, v0}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    iput v6, p0, Lra/f;->f:I

    .line 445
    .line 446
    const-string v0, "9F/S\n"

    .line 447
    .line 448
    const-string v2, "gS2+v3o1tIU=\n"

    .line 449
    .line 450
    invoke-static {v0, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    invoke-virtual {p1}, Lorg/bitspark/android/beans/ChannelBean;->getSources()Ljava/util/List;

    .line 455
    .line 456
    .line 457
    move-result-object v2

    .line 458
    iget v3, p0, Lra/f;->f:I

    .line 459
    .line 460
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object v2

    .line 464
    check-cast v2, Lorg/bitspark/android/beans/ChannelBean$SourcesBean;

    .line 465
    .line 466
    invoke-virtual {v2}, Lorg/bitspark/android/beans/ChannelBean$SourcesBean;->getAddress()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v2

    .line 470
    invoke-virtual {v1, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    :cond_a
    iget-object v0, p0, Lra/f;->e:Lorg/bitspark/android/beans/ChannelBean;

    .line 474
    .line 475
    invoke-virtual {v0}, Lorg/bitspark/android/beans/ChannelBean;->getChid()I

    .line 476
    .line 477
    .line 478
    move-result v0

    .line 479
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    invoke-virtual {p1}, Lorg/bitspark/android/beans/ChannelBean;->getSources()Ljava/util/List;

    .line 484
    .line 485
    .line 486
    move-result-object v2

    .line 487
    iget v3, p0, Lra/f;->f:I

    .line 488
    .line 489
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 490
    .line 491
    .line 492
    move-result-object v2

    .line 493
    check-cast v2, Lorg/bitspark/android/beans/ChannelBean$SourcesBean;

    .line 494
    .line 495
    invoke-virtual {v2}, Lorg/bitspark/android/beans/ChannelBean$SourcesBean;->getSubTitle()Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v2

    .line 499
    invoke-virtual {p2, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    .line 501
    .line 502
    invoke-virtual {p1}, Lorg/bitspark/android/beans/ChannelBean;->getSid()I

    .line 503
    .line 504
    .line 505
    move-result p2

    .line 506
    if-lez p2, :cond_b

    .line 507
    .line 508
    const-string p2, "EkLw7Q==\n"

    .line 509
    .line 510
    const-string v0, "fCOdiAcl4xQ=\n"

    .line 511
    .line 512
    invoke-static {p2, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object p2

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    .line 517
    .line 518
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 519
    .line 520
    .line 521
    invoke-virtual {p1}, Lorg/bitspark/android/beans/ChannelBean;->getSid()I

    .line 522
    .line 523
    .line 524
    move-result v2

    .line 525
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 526
    .line 527
    .line 528
    const-string v2, "mg==\n"

    .line 529
    .line 530
    const-string v3, "tK6caDhLe4c=\n"

    .line 531
    .line 532
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v2

    .line 536
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    .line 538
    .line 539
    invoke-virtual {p1}, Lorg/bitspark/android/beans/ChannelBean;->getName()Lorg/bitspark/android/beans/ChannelBean$NameBean;

    .line 540
    .line 541
    .line 542
    move-result-object p1

    .line 543
    invoke-virtual {p1}, Lorg/bitspark/android/beans/ChannelBean$NameBean;->getInit()Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object p1

    .line 547
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object p1

    .line 554
    invoke-virtual {v1, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    .line 556
    .line 557
    goto :goto_3

    .line 558
    :cond_b
    const-string p2, "Ys2PeQ==\n"

    .line 559
    .line 560
    const-string v0, "DKziHGqV9o8=\n"

    .line 561
    .line 562
    invoke-static {p2, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object p2

    .line 566
    invoke-virtual {p1}, Lorg/bitspark/android/beans/ChannelBean;->getName()Lorg/bitspark/android/beans/ChannelBean$NameBean;

    .line 567
    .line 568
    .line 569
    move-result-object p1

    .line 570
    invoke-virtual {p1}, Lorg/bitspark/android/beans/ChannelBean$NameBean;->getInit()Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object p1

    .line 574
    invoke-virtual {v1, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    .line 576
    .line 577
    :goto_3
    const-string p1, "ZnjChAc=\n"

    .line 578
    .line 579
    const-string p2, "FQ2gzWNUwMU=\n"

    .line 580
    .line 581
    invoke-static {p1, p2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 582
    .line 583
    .line 584
    move-result-object p1

    .line 585
    const-string p2, ""

    .line 586
    .line 587
    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    .line 589
    .line 590
    const-string p1, "+EIv6a3RXjw=\n"

    .line 591
    .line 592
    const-string v0, "izdNncSlMlk=\n"

    .line 593
    .line 594
    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object p1

    .line 598
    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    .line 600
    .line 601
    const-string p1, "ZQuigg==\n"

    .line 602
    .line 603
    const-string p2, "EXLS50LVgbs=\n"

    .line 604
    .line 605
    invoke-static {p1, p2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 606
    .line 607
    .line 608
    move-result-object p1

    .line 609
    sget-object p2, Lorg/bitspark/android/Constants$VIDEO_TYPE;->BSLIVE:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 610
    .line 611
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object p2

    .line 615
    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    .line 617
    .line 618
    const-string p1, "aigAxFMXf44=\n"

    .line 619
    .line 620
    const-string p2, "B01usQduD+s=\n"

    .line 621
    .line 622
    invoke-static {p1, p2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 623
    .line 624
    .line 625
    move-result-object p1

    .line 626
    invoke-virtual {v1, p1, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    .line 628
    .line 629
    iput-object p4, p0, Lra/f;->l:Ljava/lang/String;

    .line 630
    .line 631
    invoke-virtual {p3, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 632
    .line 633
    .line 634
    sget-object p1, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 635
    .line 636
    invoke-virtual {p1, p3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 637
    .line 638
    .line 639
    return-void
.end method
