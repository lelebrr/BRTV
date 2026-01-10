.class public abstract Ln3/a;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public a:I

.field public b:Lx2/k;

.field public c:Lcom/bumptech/glide/g;

.field public d:Landroid/graphics/drawable/Drawable;

.field public e:I

.field public f:Lg0/g;

.field public g:I

.field public h:Z

.field public i:I

.field public j:I

.field public k:Lv2/e;

.field public l:Z

.field public m:Lv2/h;

.field public n:Lr3/b;

.field public o:Ljava/lang/Class;

.field public p:Z

.field public q:Landroid/content/res/Resources$Theme;

.field public r:Z

.field public s:Z

.field public t:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lx2/k;->d:Lx2/k;

    .line 5
    .line 6
    iput-object v0, p0, Ln3/a;->b:Lx2/k;

    .line 7
    .line 8
    sget-object v0, Lcom/bumptech/glide/g;->c:Lcom/bumptech/glide/g;

    .line 9
    .line 10
    iput-object v0, p0, Ln3/a;->c:Lcom/bumptech/glide/g;

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Ln3/a;->h:Z

    .line 14
    .line 15
    const/4 v1, -0x1

    .line 16
    iput v1, p0, Ln3/a;->i:I

    .line 17
    .line 18
    iput v1, p0, Ln3/a;->j:I

    .line 19
    .line 20
    sget-object v1, Lq3/c;->b:Lq3/c;

    .line 21
    .line 22
    iput-object v1, p0, Ln3/a;->k:Lv2/e;

    .line 23
    .line 24
    new-instance v1, Lv2/h;

    .line 25
    .line 26
    invoke-direct {v1}, Lv2/h;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Ln3/a;->m:Lv2/h;

    .line 30
    .line 31
    new-instance v1, Lr3/b;

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-direct {v1, v2}, Lp/l;-><init>(I)V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Ln3/a;->n:Lr3/b;

    .line 38
    .line 39
    const-class v1, Ljava/lang/Object;

    .line 40
    .line 41
    iput-object v1, p0, Ln3/a;->o:Ljava/lang/Class;

    .line 42
    .line 43
    iput-boolean v0, p0, Ln3/a;->s:Z

    .line 44
    .line 45
    return-void
.end method

.method public static h(II)Z
    .locals 0

    .line 1
    and-int/2addr p0, p1

    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    const/4 p0, 0x1

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    :goto_0
    return p0
.end method


# virtual methods
.method public a(Ln3/a;)Ln3/a;
    .locals 4

    .line 1
    iget-boolean v0, p0, Ln3/a;->r:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ln3/a;->b()Ln3/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Ln3/a;->a(Ln3/a;)Ln3/a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    iget v0, p1, Ln3/a;->a:I

    .line 15
    .line 16
    iget v0, p1, Ln3/a;->a:I

    .line 17
    .line 18
    const/high16 v1, 0x100000

    .line 19
    .line 20
    invoke-static {v0, v1}, Ln3/a;->h(II)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-boolean v0, p1, Ln3/a;->t:Z

    .line 27
    .line 28
    iput-boolean v0, p0, Ln3/a;->t:Z

    .line 29
    .line 30
    :cond_1
    iget v0, p1, Ln3/a;->a:I

    .line 31
    .line 32
    const/4 v1, 0x4

    .line 33
    invoke-static {v0, v1}, Ln3/a;->h(II)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    iget-object v0, p1, Ln3/a;->b:Lx2/k;

    .line 40
    .line 41
    iput-object v0, p0, Ln3/a;->b:Lx2/k;

    .line 42
    .line 43
    :cond_2
    iget v0, p1, Ln3/a;->a:I

    .line 44
    .line 45
    const/16 v1, 0x8

    .line 46
    .line 47
    invoke-static {v0, v1}, Ln3/a;->h(II)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    iget-object v0, p1, Ln3/a;->c:Lcom/bumptech/glide/g;

    .line 54
    .line 55
    iput-object v0, p0, Ln3/a;->c:Lcom/bumptech/glide/g;

    .line 56
    .line 57
    :cond_3
    iget v0, p1, Ln3/a;->a:I

    .line 58
    .line 59
    const/16 v1, 0x10

    .line 60
    .line 61
    invoke-static {v0, v1}, Ln3/a;->h(II)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    const/4 v1, 0x0

    .line 66
    if-eqz v0, :cond_4

    .line 67
    .line 68
    iget-object v0, p1, Ln3/a;->d:Landroid/graphics/drawable/Drawable;

    .line 69
    .line 70
    iput-object v0, p0, Ln3/a;->d:Landroid/graphics/drawable/Drawable;

    .line 71
    .line 72
    iput v1, p0, Ln3/a;->e:I

    .line 73
    .line 74
    iget v0, p0, Ln3/a;->a:I

    .line 75
    .line 76
    and-int/lit8 v0, v0, -0x21

    .line 77
    .line 78
    iput v0, p0, Ln3/a;->a:I

    .line 79
    .line 80
    :cond_4
    iget v0, p1, Ln3/a;->a:I

    .line 81
    .line 82
    const/16 v2, 0x20

    .line 83
    .line 84
    invoke-static {v0, v2}, Ln3/a;->h(II)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    const/4 v2, 0x0

    .line 89
    if-eqz v0, :cond_5

    .line 90
    .line 91
    iget v0, p1, Ln3/a;->e:I

    .line 92
    .line 93
    iput v0, p0, Ln3/a;->e:I

    .line 94
    .line 95
    iput-object v2, p0, Ln3/a;->d:Landroid/graphics/drawable/Drawable;

    .line 96
    .line 97
    iget v0, p0, Ln3/a;->a:I

    .line 98
    .line 99
    and-int/lit8 v0, v0, -0x11

    .line 100
    .line 101
    iput v0, p0, Ln3/a;->a:I

    .line 102
    .line 103
    :cond_5
    iget v0, p1, Ln3/a;->a:I

    .line 104
    .line 105
    const/16 v3, 0x40

    .line 106
    .line 107
    invoke-static {v0, v3}, Ln3/a;->h(II)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_6

    .line 112
    .line 113
    iget-object v0, p1, Ln3/a;->f:Lg0/g;

    .line 114
    .line 115
    iput-object v0, p0, Ln3/a;->f:Lg0/g;

    .line 116
    .line 117
    iput v1, p0, Ln3/a;->g:I

    .line 118
    .line 119
    iget v0, p0, Ln3/a;->a:I

    .line 120
    .line 121
    and-int/lit16 v0, v0, -0x81

    .line 122
    .line 123
    iput v0, p0, Ln3/a;->a:I

    .line 124
    .line 125
    :cond_6
    iget v0, p1, Ln3/a;->a:I

    .line 126
    .line 127
    const/16 v1, 0x80

    .line 128
    .line 129
    invoke-static {v0, v1}, Ln3/a;->h(II)Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_7

    .line 134
    .line 135
    iget v0, p1, Ln3/a;->g:I

    .line 136
    .line 137
    iput v0, p0, Ln3/a;->g:I

    .line 138
    .line 139
    iput-object v2, p0, Ln3/a;->f:Lg0/g;

    .line 140
    .line 141
    iget v0, p0, Ln3/a;->a:I

    .line 142
    .line 143
    and-int/lit8 v0, v0, -0x41

    .line 144
    .line 145
    iput v0, p0, Ln3/a;->a:I

    .line 146
    .line 147
    :cond_7
    iget v0, p1, Ln3/a;->a:I

    .line 148
    .line 149
    const/16 v1, 0x100

    .line 150
    .line 151
    invoke-static {v0, v1}, Ln3/a;->h(II)Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-eqz v0, :cond_8

    .line 156
    .line 157
    iget-boolean v0, p1, Ln3/a;->h:Z

    .line 158
    .line 159
    iput-boolean v0, p0, Ln3/a;->h:Z

    .line 160
    .line 161
    :cond_8
    iget v0, p1, Ln3/a;->a:I

    .line 162
    .line 163
    const/16 v1, 0x200

    .line 164
    .line 165
    invoke-static {v0, v1}, Ln3/a;->h(II)Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-eqz v0, :cond_9

    .line 170
    .line 171
    iget v0, p1, Ln3/a;->j:I

    .line 172
    .line 173
    iput v0, p0, Ln3/a;->j:I

    .line 174
    .line 175
    iget v0, p1, Ln3/a;->i:I

    .line 176
    .line 177
    iput v0, p0, Ln3/a;->i:I

    .line 178
    .line 179
    :cond_9
    iget v0, p1, Ln3/a;->a:I

    .line 180
    .line 181
    const/16 v1, 0x400

    .line 182
    .line 183
    invoke-static {v0, v1}, Ln3/a;->h(II)Z

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    if-eqz v0, :cond_a

    .line 188
    .line 189
    iget-object v0, p1, Ln3/a;->k:Lv2/e;

    .line 190
    .line 191
    iput-object v0, p0, Ln3/a;->k:Lv2/e;

    .line 192
    .line 193
    :cond_a
    iget v0, p1, Ln3/a;->a:I

    .line 194
    .line 195
    const/16 v1, 0x1000

    .line 196
    .line 197
    invoke-static {v0, v1}, Ln3/a;->h(II)Z

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    if-eqz v0, :cond_b

    .line 202
    .line 203
    iget-object v0, p1, Ln3/a;->o:Ljava/lang/Class;

    .line 204
    .line 205
    iput-object v0, p0, Ln3/a;->o:Ljava/lang/Class;

    .line 206
    .line 207
    :cond_b
    iget v0, p1, Ln3/a;->a:I

    .line 208
    .line 209
    const/16 v1, 0x2000

    .line 210
    .line 211
    invoke-static {v0, v1}, Ln3/a;->h(II)Z

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    if-eqz v0, :cond_c

    .line 216
    .line 217
    iget v0, p0, Ln3/a;->a:I

    .line 218
    .line 219
    and-int/lit16 v0, v0, -0x4001

    .line 220
    .line 221
    iput v0, p0, Ln3/a;->a:I

    .line 222
    .line 223
    :cond_c
    iget v0, p1, Ln3/a;->a:I

    .line 224
    .line 225
    const/16 v1, 0x4000

    .line 226
    .line 227
    invoke-static {v0, v1}, Ln3/a;->h(II)Z

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    if-eqz v0, :cond_d

    .line 232
    .line 233
    iget v0, p0, Ln3/a;->a:I

    .line 234
    .line 235
    and-int/lit16 v0, v0, -0x2001

    .line 236
    .line 237
    iput v0, p0, Ln3/a;->a:I

    .line 238
    .line 239
    :cond_d
    iget v0, p1, Ln3/a;->a:I

    .line 240
    .line 241
    const v1, 0x8000

    .line 242
    .line 243
    .line 244
    invoke-static {v0, v1}, Ln3/a;->h(II)Z

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    if-eqz v0, :cond_e

    .line 249
    .line 250
    iget-object v0, p1, Ln3/a;->q:Landroid/content/res/Resources$Theme;

    .line 251
    .line 252
    iput-object v0, p0, Ln3/a;->q:Landroid/content/res/Resources$Theme;

    .line 253
    .line 254
    :cond_e
    iget v0, p1, Ln3/a;->a:I

    .line 255
    .line 256
    const/high16 v1, 0x20000

    .line 257
    .line 258
    invoke-static {v0, v1}, Ln3/a;->h(II)Z

    .line 259
    .line 260
    .line 261
    move-result v0

    .line 262
    if-eqz v0, :cond_f

    .line 263
    .line 264
    iget-boolean v0, p1, Ln3/a;->l:Z

    .line 265
    .line 266
    iput-boolean v0, p0, Ln3/a;->l:Z

    .line 267
    .line 268
    :cond_f
    iget v0, p1, Ln3/a;->a:I

    .line 269
    .line 270
    const/16 v1, 0x800

    .line 271
    .line 272
    invoke-static {v0, v1}, Ln3/a;->h(II)Z

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    if-eqz v0, :cond_10

    .line 277
    .line 278
    iget-object v0, p0, Ln3/a;->n:Lr3/b;

    .line 279
    .line 280
    iget-object v1, p1, Ln3/a;->n:Lr3/b;

    .line 281
    .line 282
    invoke-virtual {v0, v1}, Lp/e;->putAll(Ljava/util/Map;)V

    .line 283
    .line 284
    .line 285
    iget-boolean v0, p1, Ln3/a;->s:Z

    .line 286
    .line 287
    iput-boolean v0, p0, Ln3/a;->s:Z

    .line 288
    .line 289
    :cond_10
    iget v0, p0, Ln3/a;->a:I

    .line 290
    .line 291
    iget v1, p1, Ln3/a;->a:I

    .line 292
    .line 293
    or-int/2addr v0, v1

    .line 294
    iput v0, p0, Ln3/a;->a:I

    .line 295
    .line 296
    iget-object v0, p0, Ln3/a;->m:Lv2/h;

    .line 297
    .line 298
    iget-object p1, p1, Ln3/a;->m:Lv2/h;

    .line 299
    .line 300
    iget-object v0, v0, Lv2/h;->b:Lr3/b;

    .line 301
    .line 302
    iget-object p1, p1, Lv2/h;->b:Lr3/b;

    .line 303
    .line 304
    invoke-virtual {v0, p1}, Lr3/b;->g(Lp/e;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {p0}, Ln3/a;->o()V

    .line 308
    .line 309
    .line 310
    return-object p0
.end method

.method public b()Ln3/a;
    .locals 4

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ln3/a;

    .line 6
    .line 7
    new-instance v1, Lv2/h;

    .line 8
    .line 9
    invoke-direct {v1}, Lv2/h;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, v0, Ln3/a;->m:Lv2/h;

    .line 13
    .line 14
    iget-object v2, p0, Ln3/a;->m:Lv2/h;

    .line 15
    .line 16
    iget-object v1, v1, Lv2/h;->b:Lr3/b;

    .line 17
    .line 18
    iget-object v2, v2, Lv2/h;->b:Lr3/b;

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Lr3/b;->g(Lp/e;)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Lr3/b;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-direct {v1, v2}, Lp/l;-><init>(I)V

    .line 27
    .line 28
    .line 29
    iput-object v1, v0, Ln3/a;->n:Lr3/b;

    .line 30
    .line 31
    iget-object v3, p0, Ln3/a;->n:Lr3/b;

    .line 32
    .line 33
    invoke-virtual {v1, v3}, Lp/e;->putAll(Ljava/util/Map;)V

    .line 34
    .line 35
    .line 36
    iput-boolean v2, v0, Ln3/a;->p:Z

    .line 37
    .line 38
    iput-boolean v2, v0, Ln3/a;->r:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    return-object v0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    new-instance v1, Ljava/lang/RuntimeException;

    .line 43
    .line 44
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    throw v1
.end method

.method public final c(Ljava/lang/Class;)Ln3/a;
    .locals 1

    .line 1
    iget-boolean v0, p0, Ln3/a;->r:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ln3/a;->b()Ln3/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Ln3/a;->c(Ljava/lang/Class;)Ln3/a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    iput-object p1, p0, Ln3/a;->o:Ljava/lang/Class;

    .line 15
    .line 16
    iget p1, p0, Ln3/a;->a:I

    .line 17
    .line 18
    or-int/lit16 p1, p1, 0x1000

    .line 19
    .line 20
    iput p1, p0, Ln3/a;->a:I

    .line 21
    .line 22
    invoke-virtual {p0}, Ln3/a;->o()V

    .line 23
    .line 24
    .line 25
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/a;->b()Ln3/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final d(Lx2/k;)Ln3/a;
    .locals 1

    .line 1
    iget-boolean v0, p0, Ln3/a;->r:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ln3/a;->b()Ln3/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Ln3/a;->d(Lx2/k;)Ln3/a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    iput-object p1, p0, Ln3/a;->b:Lx2/k;

    .line 15
    .line 16
    iget p1, p0, Ln3/a;->a:I

    .line 17
    .line 18
    or-int/lit8 p1, p1, 0x4

    .line 19
    .line 20
    iput p1, p0, Ln3/a;->a:I

    .line 21
    .line 22
    invoke-virtual {p0}, Ln3/a;->o()V

    .line 23
    .line 24
    .line 25
    return-object p0
.end method

.method public final e(I)Ln3/a;
    .locals 1

    .line 1
    iget-boolean v0, p0, Ln3/a;->r:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ln3/a;->b()Ln3/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Ln3/a;->e(I)Ln3/a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    iput p1, p0, Ln3/a;->e:I

    .line 15
    .line 16
    iget p1, p0, Ln3/a;->a:I

    .line 17
    .line 18
    or-int/lit8 p1, p1, 0x20

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Ln3/a;->d:Landroid/graphics/drawable/Drawable;

    .line 22
    .line 23
    and-int/lit8 p1, p1, -0x11

    .line 24
    .line 25
    iput p1, p0, Ln3/a;->a:I

    .line 26
    .line 27
    invoke-virtual {p0}, Ln3/a;->o()V

    .line 28
    .line 29
    .line 30
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Ln3/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Ln3/a;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Ln3/a;->g(Ln3/a;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    return p1
.end method

.method public final f(Landroid/graphics/drawable/Drawable;)Ln3/a;
    .locals 1

    .line 1
    iget-boolean v0, p0, Ln3/a;->r:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ln3/a;->b()Ln3/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Ln3/a;->f(Landroid/graphics/drawable/Drawable;)Ln3/a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    iput-object p1, p0, Ln3/a;->d:Landroid/graphics/drawable/Drawable;

    .line 15
    .line 16
    iget p1, p0, Ln3/a;->a:I

    .line 17
    .line 18
    or-int/lit8 p1, p1, 0x10

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput v0, p0, Ln3/a;->e:I

    .line 22
    .line 23
    and-int/lit8 p1, p1, -0x21

    .line 24
    .line 25
    iput p1, p0, Ln3/a;->a:I

    .line 26
    .line 27
    invoke-virtual {p0}, Ln3/a;->o()V

    .line 28
    .line 29
    .line 30
    return-object p0
.end method

.method public final g(Ln3/a;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    .line 6
    invoke-static {v0, v0}, Ljava/lang/Float;->compare(FF)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget v0, p0, Ln3/a;->e:I

    .line 13
    .line 14
    iget v1, p1, Ln3/a;->e:I

    .line 15
    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Ln3/a;->d:Landroid/graphics/drawable/Drawable;

    .line 19
    .line 20
    iget-object v1, p1, Ln3/a;->d:Landroid/graphics/drawable/Drawable;

    .line 21
    .line 22
    invoke-static {v0, v1}, Lr3/n;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget v0, p0, Ln3/a;->g:I

    .line 29
    .line 30
    iget v1, p1, Ln3/a;->g:I

    .line 31
    .line 32
    if-ne v0, v1, :cond_0

    .line 33
    .line 34
    iget-object v0, p0, Ln3/a;->f:Lg0/g;

    .line 35
    .line 36
    iget-object v1, p1, Ln3/a;->f:Lg0/g;

    .line 37
    .line 38
    invoke-static {v0, v1}, Lr3/n;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    invoke-static {v0, v0}, Lr3/n;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    iget-boolean v0, p0, Ln3/a;->h:Z

    .line 52
    .line 53
    iget-boolean v1, p1, Ln3/a;->h:Z

    .line 54
    .line 55
    if-ne v0, v1, :cond_0

    .line 56
    .line 57
    iget v0, p0, Ln3/a;->i:I

    .line 58
    .line 59
    iget v1, p1, Ln3/a;->i:I

    .line 60
    .line 61
    if-ne v0, v1, :cond_0

    .line 62
    .line 63
    iget v0, p0, Ln3/a;->j:I

    .line 64
    .line 65
    iget v1, p1, Ln3/a;->j:I

    .line 66
    .line 67
    if-ne v0, v1, :cond_0

    .line 68
    .line 69
    iget-boolean v0, p0, Ln3/a;->l:Z

    .line 70
    .line 71
    iget-boolean v1, p1, Ln3/a;->l:Z

    .line 72
    .line 73
    if-ne v0, v1, :cond_0

    .line 74
    .line 75
    iget-object v0, p0, Ln3/a;->b:Lx2/k;

    .line 76
    .line 77
    iget-object v1, p1, Ln3/a;->b:Lx2/k;

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_0

    .line 84
    .line 85
    iget-object v0, p0, Ln3/a;->c:Lcom/bumptech/glide/g;

    .line 86
    .line 87
    iget-object v1, p1, Ln3/a;->c:Lcom/bumptech/glide/g;

    .line 88
    .line 89
    if-ne v0, v1, :cond_0

    .line 90
    .line 91
    iget-object v0, p0, Ln3/a;->m:Lv2/h;

    .line 92
    .line 93
    iget-object v1, p1, Ln3/a;->m:Lv2/h;

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Lv2/h;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_0

    .line 100
    .line 101
    iget-object v0, p0, Ln3/a;->n:Lr3/b;

    .line 102
    .line 103
    iget-object v1, p1, Ln3/a;->n:Lr3/b;

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Lp/l;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-eqz v0, :cond_0

    .line 110
    .line 111
    iget-object v0, p0, Ln3/a;->o:Ljava/lang/Class;

    .line 112
    .line 113
    iget-object v1, p1, Ln3/a;->o:Ljava/lang/Class;

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_0

    .line 120
    .line 121
    iget-object v0, p0, Ln3/a;->k:Lv2/e;

    .line 122
    .line 123
    iget-object v1, p1, Ln3/a;->k:Lv2/e;

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_0

    .line 130
    .line 131
    iget-object v0, p0, Ln3/a;->q:Landroid/content/res/Resources$Theme;

    .line 132
    .line 133
    iget-object p1, p1, Ln3/a;->q:Landroid/content/res/Resources$Theme;

    .line 134
    .line 135
    invoke-static {v0, p1}, Lr3/n;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    if-eqz p1, :cond_0

    .line 140
    .line 141
    const/4 p1, 0x1

    .line 142
    goto :goto_0

    .line 143
    :cond_0
    const/4 p1, 0x0

    .line 144
    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    sget-object v0, Lr3/n;->a:[C

    .line 2
    .line 3
    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x11

    .line 10
    .line 11
    invoke-static {v0, v1}, Lr3/n;->g(II)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget v1, p0, Ln3/a;->e:I

    .line 16
    .line 17
    invoke-static {v1, v0}, Lr3/n;->g(II)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget-object v1, p0, Ln3/a;->d:Landroid/graphics/drawable/Drawable;

    .line 22
    .line 23
    invoke-static {v0, v1}, Lr3/n;->h(ILjava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget v1, p0, Ln3/a;->g:I

    .line 28
    .line 29
    invoke-static {v1, v0}, Lr3/n;->g(II)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iget-object v1, p0, Ln3/a;->f:Lg0/g;

    .line 34
    .line 35
    invoke-static {v0, v1}, Lr3/n;->h(ILjava/lang/Object;)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-static {v1, v0}, Lr3/n;->g(II)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    const/4 v2, 0x0

    .line 45
    invoke-static {v0, v2}, Lr3/n;->h(ILjava/lang/Object;)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    iget-boolean v2, p0, Ln3/a;->h:Z

    .line 50
    .line 51
    invoke-static {v2, v0}, Lr3/n;->g(II)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    iget v2, p0, Ln3/a;->i:I

    .line 56
    .line 57
    invoke-static {v2, v0}, Lr3/n;->g(II)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    iget v2, p0, Ln3/a;->j:I

    .line 62
    .line 63
    invoke-static {v2, v0}, Lr3/n;->g(II)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    iget-boolean v2, p0, Ln3/a;->l:Z

    .line 68
    .line 69
    invoke-static {v2, v0}, Lr3/n;->g(II)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    const/4 v2, 0x1

    .line 74
    invoke-static {v2, v0}, Lr3/n;->g(II)I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    invoke-static {v1, v0}, Lr3/n;->g(II)I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    invoke-static {v1, v0}, Lr3/n;->g(II)I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    iget-object v1, p0, Ln3/a;->b:Lx2/k;

    .line 87
    .line 88
    invoke-static {v0, v1}, Lr3/n;->h(ILjava/lang/Object;)I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    iget-object v1, p0, Ln3/a;->c:Lcom/bumptech/glide/g;

    .line 93
    .line 94
    invoke-static {v0, v1}, Lr3/n;->h(ILjava/lang/Object;)I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    iget-object v1, p0, Ln3/a;->m:Lv2/h;

    .line 99
    .line 100
    invoke-static {v0, v1}, Lr3/n;->h(ILjava/lang/Object;)I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    iget-object v1, p0, Ln3/a;->n:Lr3/b;

    .line 105
    .line 106
    invoke-static {v0, v1}, Lr3/n;->h(ILjava/lang/Object;)I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    iget-object v1, p0, Ln3/a;->o:Ljava/lang/Class;

    .line 111
    .line 112
    invoke-static {v0, v1}, Lr3/n;->h(ILjava/lang/Object;)I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    iget-object v1, p0, Ln3/a;->k:Lv2/e;

    .line 117
    .line 118
    invoke-static {v0, v1}, Lr3/n;->h(ILjava/lang/Object;)I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    iget-object v1, p0, Ln3/a;->q:Landroid/content/res/Resources$Theme;

    .line 123
    .line 124
    invoke-static {v0, v1}, Lr3/n;->h(ILjava/lang/Object;)I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    return v0
.end method

.method public final i(Le3/n;Le3/e;)Ln3/a;
    .locals 1

    .line 1
    iget-boolean v0, p0, Ln3/a;->r:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ln3/a;->b()Ln3/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1, p2}, Ln3/a;->i(Le3/n;Le3/e;)Ln3/a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    sget-object v0, Le3/n;->g:Lv2/g;

    .line 15
    .line 16
    invoke-virtual {p0, v0, p1}, Ln3/a;->p(Lv2/g;Ljava/lang/Object;)Ln3/a;

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    invoke-virtual {p0, p2, p1}, Ln3/a;->v(Lv2/l;Z)Ln3/a;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public final j(II)Ln3/a;
    .locals 1

    .line 1
    iget-boolean v0, p0, Ln3/a;->r:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ln3/a;->b()Ln3/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1, p2}, Ln3/a;->j(II)Ln3/a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    iput p1, p0, Ln3/a;->j:I

    .line 15
    .line 16
    iput p2, p0, Ln3/a;->i:I

    .line 17
    .line 18
    iget p1, p0, Ln3/a;->a:I

    .line 19
    .line 20
    or-int/lit16 p1, p1, 0x200

    .line 21
    .line 22
    iput p1, p0, Ln3/a;->a:I

    .line 23
    .line 24
    invoke-virtual {p0}, Ln3/a;->o()V

    .line 25
    .line 26
    .line 27
    return-object p0
.end method

.method public final k()Ln3/a;
    .locals 2

    .line 1
    iget-boolean v0, p0, Ln3/a;->r:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ln3/a;->b()Ln3/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ln3/a;->k()Ln3/a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    const v0, 0x7f0f0005

    .line 15
    .line 16
    .line 17
    iput v0, p0, Ln3/a;->g:I

    .line 18
    .line 19
    iget v0, p0, Ln3/a;->a:I

    .line 20
    .line 21
    or-int/lit16 v0, v0, 0x80

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    iput-object v1, p0, Ln3/a;->f:Lg0/g;

    .line 25
    .line 26
    and-int/lit8 v0, v0, -0x41

    .line 27
    .line 28
    iput v0, p0, Ln3/a;->a:I

    .line 29
    .line 30
    invoke-virtual {p0}, Ln3/a;->o()V

    .line 31
    .line 32
    .line 33
    return-object p0
.end method

.method public final l(Lg0/g;)Ln3/a;
    .locals 1

    .line 1
    iget-boolean v0, p0, Ln3/a;->r:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ln3/a;->b()Ln3/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Ln3/a;->l(Lg0/g;)Ln3/a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    iput-object p1, p0, Ln3/a;->f:Lg0/g;

    .line 15
    .line 16
    iget p1, p0, Ln3/a;->a:I

    .line 17
    .line 18
    or-int/lit8 p1, p1, 0x40

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput v0, p0, Ln3/a;->g:I

    .line 22
    .line 23
    and-int/lit16 p1, p1, -0x81

    .line 24
    .line 25
    iput p1, p0, Ln3/a;->a:I

    .line 26
    .line 27
    invoke-virtual {p0}, Ln3/a;->o()V

    .line 28
    .line 29
    .line 30
    return-object p0
.end method

.method public final m()Ln3/a;
    .locals 2

    .line 1
    sget-object v0, Lcom/bumptech/glide/g;->d:Lcom/bumptech/glide/g;

    .line 2
    .line 3
    iget-boolean v1, p0, Ln3/a;->r:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Ln3/a;->b()Ln3/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ln3/a;->m()Ln3/a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_0
    iput-object v0, p0, Ln3/a;->c:Lcom/bumptech/glide/g;

    .line 17
    .line 18
    iget v0, p0, Ln3/a;->a:I

    .line 19
    .line 20
    or-int/lit8 v0, v0, 0x8

    .line 21
    .line 22
    iput v0, p0, Ln3/a;->a:I

    .line 23
    .line 24
    invoke-virtual {p0}, Ln3/a;->o()V

    .line 25
    .line 26
    .line 27
    return-object p0
.end method

.method public final n(Lv2/g;)Ln3/a;
    .locals 1

    .line 1
    iget-boolean v0, p0, Ln3/a;->r:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ln3/a;->b()Ln3/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Ln3/a;->n(Lv2/g;)Ln3/a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    iget-object v0, p0, Ln3/a;->m:Lv2/h;

    .line 15
    .line 16
    iget-object v0, v0, Lv2/h;->b:Lr3/b;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lp/l;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Ln3/a;->o()V

    .line 22
    .line 23
    .line 24
    return-object p0
.end method

.method public final o()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Ln3/a;->p:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v1, "You cannot modify locked T, consider clone()"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public final p(Lv2/g;Ljava/lang/Object;)Ln3/a;
    .locals 1

    .line 1
    iget-boolean v0, p0, Ln3/a;->r:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ln3/a;->b()Ln3/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1, p2}, Ln3/a;->p(Lv2/g;Ljava/lang/Object;)Ln3/a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    invoke-static {p1}, Lr3/f;->b(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p2}, Lr3/f;->b(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Ln3/a;->m:Lv2/h;

    .line 21
    .line 22
    iget-object v0, v0, Lv2/h;->b:Lr3/b;

    .line 23
    .line 24
    invoke-virtual {v0, p1, p2}, Lr3/b;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Ln3/a;->o()V

    .line 28
    .line 29
    .line 30
    return-object p0
.end method

.method public final q(Lv2/e;)Ln3/a;
    .locals 1

    .line 1
    iget-boolean v0, p0, Ln3/a;->r:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ln3/a;->b()Ln3/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Ln3/a;->q(Lv2/e;)Ln3/a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    iput-object p1, p0, Ln3/a;->k:Lv2/e;

    .line 15
    .line 16
    iget p1, p0, Ln3/a;->a:I

    .line 17
    .line 18
    or-int/lit16 p1, p1, 0x400

    .line 19
    .line 20
    iput p1, p0, Ln3/a;->a:I

    .line 21
    .line 22
    invoke-virtual {p0}, Ln3/a;->o()V

    .line 23
    .line 24
    .line 25
    return-object p0
.end method

.method public final r(Z)Ln3/a;
    .locals 2

    .line 1
    iget-boolean v0, p0, Ln3/a;->r:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Ln3/a;->b()Ln3/a;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1, v1}, Ln3/a;->r(Z)Ln3/a;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :cond_0
    xor-int/2addr p1, v1

    .line 16
    iput-boolean p1, p0, Ln3/a;->h:Z

    .line 17
    .line 18
    iget p1, p0, Ln3/a;->a:I

    .line 19
    .line 20
    or-int/lit16 p1, p1, 0x100

    .line 21
    .line 22
    iput p1, p0, Ln3/a;->a:I

    .line 23
    .line 24
    invoke-virtual {p0}, Ln3/a;->o()V

    .line 25
    .line 26
    .line 27
    return-object p0
.end method

.method public final s(Landroid/content/res/Resources$Theme;)Ln3/a;
    .locals 2

    .line 1
    iget-boolean v0, p0, Ln3/a;->r:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ln3/a;->b()Ln3/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Ln3/a;->s(Landroid/content/res/Resources$Theme;)Ln3/a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    iput-object p1, p0, Ln3/a;->q:Landroid/content/res/Resources$Theme;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    iget v0, p0, Ln3/a;->a:I

    .line 19
    .line 20
    const v1, 0x8000

    .line 21
    .line 22
    .line 23
    or-int/2addr v0, v1

    .line 24
    iput v0, p0, Ln3/a;->a:I

    .line 25
    .line 26
    sget-object v0, Lg3/d;->b:Lv2/g;

    .line 27
    .line 28
    invoke-virtual {p0, v0, p1}, Ln3/a;->p(Lv2/g;Ljava/lang/Object;)Ln3/a;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1

    .line 33
    :cond_1
    iget p1, p0, Ln3/a;->a:I

    .line 34
    .line 35
    const v0, -0x8001

    .line 36
    .line 37
    .line 38
    and-int/2addr p1, v0

    .line 39
    iput p1, p0, Ln3/a;->a:I

    .line 40
    .line 41
    sget-object p1, Lg3/d;->b:Lv2/g;

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Ln3/a;->n(Lv2/g;)Ln3/a;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    return-object p1
.end method

.method public final t(Le3/n;Le3/e;)Ln3/a;
    .locals 1

    .line 1
    iget-boolean v0, p0, Ln3/a;->r:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ln3/a;->b()Ln3/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1, p2}, Ln3/a;->t(Le3/n;Le3/e;)Ln3/a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    sget-object v0, Le3/n;->g:Lv2/g;

    .line 15
    .line 16
    invoke-virtual {p0, v0, p1}, Ln3/a;->p(Lv2/g;Ljava/lang/Object;)Ln3/a;

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    invoke-virtual {p0, p2, p1}, Ln3/a;->v(Lv2/l;Z)Ln3/a;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public final u(Ljava/lang/Class;Lv2/l;Z)Ln3/a;
    .locals 1

    .line 1
    iget-boolean v0, p0, Ln3/a;->r:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ln3/a;->b()Ln3/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1, p2, p3}, Ln3/a;->u(Ljava/lang/Class;Lv2/l;Z)Ln3/a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    invoke-static {p2}, Lr3/f;->b(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Ln3/a;->n:Lr3/b;

    .line 18
    .line 19
    invoke-virtual {v0, p1, p2}, Lr3/b;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    iget p1, p0, Ln3/a;->a:I

    .line 23
    .line 24
    const p2, 0x10800

    .line 25
    .line 26
    .line 27
    or-int/2addr p2, p1

    .line 28
    iput p2, p0, Ln3/a;->a:I

    .line 29
    .line 30
    const/4 p2, 0x0

    .line 31
    iput-boolean p2, p0, Ln3/a;->s:Z

    .line 32
    .line 33
    if-eqz p3, :cond_1

    .line 34
    .line 35
    const p2, 0x30800

    .line 36
    .line 37
    .line 38
    or-int/2addr p1, p2

    .line 39
    iput p1, p0, Ln3/a;->a:I

    .line 40
    .line 41
    const/4 p1, 0x1

    .line 42
    iput-boolean p1, p0, Ln3/a;->l:Z

    .line 43
    .line 44
    :cond_1
    invoke-virtual {p0}, Ln3/a;->o()V

    .line 45
    .line 46
    .line 47
    return-object p0
.end method

.method public final v(Lv2/l;Z)Ln3/a;
    .locals 2

    .line 1
    iget-boolean v0, p0, Ln3/a;->r:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ln3/a;->b()Ln3/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1, p2}, Ln3/a;->v(Lv2/l;Z)Ln3/a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    new-instance v0, Le3/s;

    .line 15
    .line 16
    invoke-direct {v0, p1, p2}, Le3/s;-><init>(Lv2/l;Z)V

    .line 17
    .line 18
    .line 19
    const-class v1, Landroid/graphics/Bitmap;

    .line 20
    .line 21
    invoke-virtual {p0, v1, p1, p2}, Ln3/a;->u(Ljava/lang/Class;Lv2/l;Z)Ln3/a;

    .line 22
    .line 23
    .line 24
    const-class v1, Landroid/graphics/drawable/Drawable;

    .line 25
    .line 26
    invoke-virtual {p0, v1, v0, p2}, Ln3/a;->u(Ljava/lang/Class;Lv2/l;Z)Ln3/a;

    .line 27
    .line 28
    .line 29
    const-class v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 30
    .line 31
    invoke-virtual {p0, v1, v0, p2}, Ln3/a;->u(Ljava/lang/Class;Lv2/l;Z)Ln3/a;

    .line 32
    .line 33
    .line 34
    new-instance v0, Li3/e;

    .line 35
    .line 36
    invoke-direct {v0, p1}, Li3/e;-><init>(Lv2/l;)V

    .line 37
    .line 38
    .line 39
    const-class p1, Li3/d;

    .line 40
    .line 41
    invoke-virtual {p0, p1, v0, p2}, Ln3/a;->u(Ljava/lang/Class;Lv2/l;Z)Ln3/a;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Ln3/a;->o()V

    .line 45
    .line 46
    .line 47
    return-object p0
.end method

.method public final w()Ln3/a;
    .locals 2

    .line 1
    iget-boolean v0, p0, Ln3/a;->r:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ln3/a;->b()Ln3/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ln3/a;->w()Ln3/a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Ln3/a;->t:Z

    .line 16
    .line 17
    iget v0, p0, Ln3/a;->a:I

    .line 18
    .line 19
    const/high16 v1, 0x100000

    .line 20
    .line 21
    or-int/2addr v0, v1

    .line 22
    iput v0, p0, Ln3/a;->a:I

    .line 23
    .line 24
    invoke-virtual {p0}, Ln3/a;->o()V

    .line 25
    .line 26
    .line 27
    return-object p0
.end method
