.class public final Lfa/d0;
.super Lfa/i0;
.source "MyApplication"


# static fields
.field public static final i:Ljava/lang/String;


# instance fields
.field public c:I

.field public final d:Ljava/util/ArrayList;

.field public e:Landroid/view/View;

.field public final f:Lka/n;

.field public g:Z

.field public h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "mTjZdbhPyVK4AP58qVXCRQ==\n"

    .line 2
    .line 3
    const-string v1, "1EGaHdkhpzc=\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lfa/d0;->i:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(ILka/n;Ljava/util/ArrayList;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lfa/i0;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lfa/d0;->d:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Lfa/d0;->g:Z

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-boolean v1, p0, Lfa/d0;->h:Z

    .line 16
    .line 17
    iput p1, p0, Lfa/d0;->c:I

    .line 18
    .line 19
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 20
    .line 21
    .line 22
    iput-object p2, p0, Lfa/d0;->f:Lka/n;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 5

    .line 1
    iget v0, p0, Lfa/d0;->c:I

    .line 2
    .line 3
    invoke-static {}, Lra/f;->b()Lra/f;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v1, v1, Lra/f;->j:I

    .line 8
    .line 9
    sget-object v2, Lfa/d0;->i:Ljava/lang/String;

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lfa/d0;->d:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-static {}, Lra/f;->b()Lra/f;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v1, v1, Lra/f;->e:Lorg/bitspark/android/beans/ChannelBean;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v3, "WxC0rgkIPCFSEpCRFgAxIVMb+t4=\n"

    .line 31
    .line 32
    const-string v4, "PHXA/mVpRUg=\n"

    .line 33
    .line 34
    invoke-static {v3, v4, v1, v0}, Lea/q;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    sget-boolean v3, Lorg/bitspark/android/utils/m;->b:Z

    .line 39
    .line 40
    invoke-static {v2, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return v0

    .line 44
    :cond_0
    const-string v0, "eZM8xEcdj9P6Wd5WrOwMXpfBuw6jsXBtLttz\n"

    .line 45
    .line 46
    const-string v1, "HuFTsTdU6/M=\n"

    .line 47
    .line 48
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    sget-boolean v1, Lorg/bitspark/android/utils/m;->b:Z

    .line 53
    .line 54
    invoke-static {v2, v0}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const/4 v0, 0x0

    .line 58
    return v0
.end method

.method public final b(Landroid/view/View;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "mKYbjyjRduOfpguKJNhkuss=\n"

    .line 7
    .line 8
    const-string v2, "68Nv3E29E4A=\n"

    .line 9
    .line 10
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sget-boolean v1, Lorg/bitspark/android/utils/m;->b:Z

    .line 25
    .line 26
    sget-object v1, Lfa/d0;->i:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1, v0}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lfa/d0;->e:Landroid/view/View;

    .line 32
    .line 33
    return-void
.end method

.method public final getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lfa/d0;->d:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/p1;I)V
    .locals 11

    .line 1
    check-cast p1, Lfa/c0;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/p1;->getAbsoluteAdapterPosition()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lfa/d0;->d:Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lorg/bitspark/android/beans/ChannelBean;

    .line 14
    .line 15
    invoke-static {v1}, Lga/h;->d(Lorg/bitspark/android/beans/ChannelBean;)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {v1}, Lorg/bitspark/android/beans/ChannelBean;->getName()Lorg/bitspark/android/beans/ChannelBean$NameBean;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v3}, Lorg/bitspark/android/beans/ChannelBean$NameBean;->getInit()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-static {v2}, Lga/h;->c(I)Ljava/util/ArrayList;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const-string v4, ""

    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-nez v6, :cond_0

    .line 41
    .line 42
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Lorg/bitspark/android/beans/EpgBeans$EpgBean;

    .line 47
    .line 48
    invoke-virtual {v2}, Lorg/bitspark/android/beans/EpgBeans$EpgBean;->getName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    move-object v2, v4

    .line 54
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    sget-boolean v7, Lea/h;->K:Z

    .line 59
    .line 60
    const/16 v8, 0x8

    .line 61
    .line 62
    if-eqz v7, :cond_1

    .line 63
    .line 64
    iget-object v7, p1, Lfa/c0;->c:Landroid/widget/ImageView;

    .line 65
    .line 66
    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    iget-object v7, p1, Lfa/c0;->c:Landroid/widget/ImageView;

    .line 71
    .line 72
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    :goto_1
    iget-object v7, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 76
    .line 77
    new-instance v9, Lfa/a0;

    .line 78
    .line 79
    invoke-direct {v9, p0, v0, v1}, Lfa/a0;-><init>(Lfa/d0;ILorg/bitspark/android/beans/ChannelBean;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v7, v9}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 83
    .line 84
    .line 85
    iget-object v7, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 86
    .line 87
    new-instance v9, Lfa/q;

    .line 88
    .line 89
    const/4 v10, 0x1

    .line 90
    invoke-direct {v9, p0, p2, v10}, Lfa/q;-><init>(Landroidx/recyclerview/widget/k0;II)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v7, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    .line 95
    .line 96
    iget-object v7, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 97
    .line 98
    new-instance v9, Lfa/h;

    .line 99
    .line 100
    invoke-direct {v9, p2, v10, p0}, Lfa/h;-><init>(IILjava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v7, v9}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 104
    .line 105
    .line 106
    iget-object p2, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 107
    .line 108
    new-instance v7, Lfa/b0;

    .line 109
    .line 110
    invoke-direct {v7, p0, v0}, Lfa/b0;-><init>(Lfa/d0;I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2, v7}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 114
    .line 115
    .line 116
    iget-object p2, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 117
    .line 118
    new-instance v7, Lfa/f;

    .line 119
    .line 120
    const/4 v9, 0x1

    .line 121
    invoke-direct {v7, v0, v9, p0}, Lfa/f;-><init>(IILjava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2, v7}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1}, Lorg/bitspark/android/beans/ChannelBean;->getLogo()Lorg/bitspark/android/beans/ChannelBean$LogoBean;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    invoke-virtual {p2}, Lorg/bitspark/android/beans/ChannelBean$LogoBean;->getImage()Lorg/bitspark/android/beans/ChannelBean$LogoBean$ImageBean;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    invoke-virtual {p2}, Lorg/bitspark/android/beans/ChannelBean$LogoBean$ImageBean;->getBig()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-nez v0, :cond_2

    .line 144
    .line 145
    invoke-virtual {p2}, Lorg/bitspark/android/beans/ChannelBean$LogoBean$ImageBean;->getBig()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    goto :goto_2

    .line 150
    :cond_2
    invoke-virtual {p2}, Lorg/bitspark/android/beans/ChannelBean$LogoBean$ImageBean;->getSmall()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    :goto_2
    sget-boolean v0, Lea/h;->K:Z

    .line 155
    .line 156
    if-eqz v0, :cond_4

    .line 157
    .line 158
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    sget-object v7, Lx2/k;->c:Lx2/k;

    .line 163
    .line 164
    const/4 v9, 0x6

    .line 165
    if-nez v0, :cond_3

    .line 166
    .line 167
    iget-object v0, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 168
    .line 169
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-static {v0}, Lcom/bumptech/glide/b;->e(Landroid/content/Context;)Lcom/bumptech/glide/o;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {v0, p2}, Lcom/bumptech/glide/o;->o(Ljava/lang/String;)Lcom/bumptech/glide/l;

    .line 178
    .line 179
    .line 180
    move-result-object p2

    .line 181
    invoke-virtual {p2}, Ln3/a;->k()Ln3/a;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    check-cast p2, Lcom/bumptech/glide/l;

    .line 186
    .line 187
    new-instance v0, Le3/x;

    .line 188
    .line 189
    invoke-direct {v0, v9}, Le3/x;-><init>(I)V

    .line 190
    .line 191
    .line 192
    invoke-static {v0}, Ln3/e;->x(Le3/x;)Ln3/e;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/l;->y(Ln3/a;)Lcom/bumptech/glide/l;

    .line 197
    .line 198
    .line 199
    move-result-object p2

    .line 200
    invoke-virtual {p2, v7}, Ln3/a;->d(Lx2/k;)Ln3/a;

    .line 201
    .line 202
    .line 203
    move-result-object p2

    .line 204
    check-cast p2, Lcom/bumptech/glide/l;

    .line 205
    .line 206
    invoke-virtual {p2, v5}, Ln3/a;->r(Z)Ln3/a;

    .line 207
    .line 208
    .line 209
    move-result-object p2

    .line 210
    check-cast p2, Lcom/bumptech/glide/l;

    .line 211
    .line 212
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 213
    .line 214
    .line 215
    sget-object v0, Li3/j;->b:Lv2/g;

    .line 216
    .line 217
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 218
    .line 219
    invoke-virtual {p2, v0, v7}, Ln3/a;->p(Lv2/g;Ljava/lang/Object;)Ln3/a;

    .line 220
    .line 221
    .line 222
    move-result-object p2

    .line 223
    check-cast p2, Lcom/bumptech/glide/l;

    .line 224
    .line 225
    iget-object v0, p1, Lfa/c0;->c:Landroid/widget/ImageView;

    .line 226
    .line 227
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/l;->B(Landroid/widget/ImageView;)V

    .line 228
    .line 229
    .line 230
    goto :goto_3

    .line 231
    :cond_3
    iget-object p2, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 232
    .line 233
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 234
    .line 235
    .line 236
    move-result-object p2

    .line 237
    invoke-static {p2}, Lcom/bumptech/glide/b;->e(Landroid/content/Context;)Lcom/bumptech/glide/o;

    .line 238
    .line 239
    .line 240
    move-result-object p2

    .line 241
    const v0, 0x7f0f0005

    .line 242
    .line 243
    .line 244
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/o;->n(Ljava/lang/Integer;)Lcom/bumptech/glide/l;

    .line 249
    .line 250
    .line 251
    move-result-object p2

    .line 252
    new-instance v0, Le3/x;

    .line 253
    .line 254
    invoke-direct {v0, v9}, Le3/x;-><init>(I)V

    .line 255
    .line 256
    .line 257
    invoke-static {v0}, Ln3/e;->x(Le3/x;)Ln3/e;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/l;->y(Ln3/a;)Lcom/bumptech/glide/l;

    .line 262
    .line 263
    .line 264
    move-result-object p2

    .line 265
    invoke-virtual {p2, v7}, Ln3/a;->d(Lx2/k;)Ln3/a;

    .line 266
    .line 267
    .line 268
    move-result-object p2

    .line 269
    check-cast p2, Lcom/bumptech/glide/l;

    .line 270
    .line 271
    invoke-virtual {p2, v5}, Ln3/a;->r(Z)Ln3/a;

    .line 272
    .line 273
    .line 274
    move-result-object p2

    .line 275
    check-cast p2, Lcom/bumptech/glide/l;

    .line 276
    .line 277
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 278
    .line 279
    .line 280
    sget-object v0, Li3/j;->b:Lv2/g;

    .line 281
    .line 282
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 283
    .line 284
    invoke-virtual {p2, v0, v7}, Ln3/a;->p(Lv2/g;Ljava/lang/Object;)Ln3/a;

    .line 285
    .line 286
    .line 287
    move-result-object p2

    .line 288
    check-cast p2, Lcom/bumptech/glide/l;

    .line 289
    .line 290
    iget-object v0, p1, Lfa/c0;->c:Landroid/widget/ImageView;

    .line 291
    .line 292
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/l;->B(Landroid/widget/ImageView;)V

    .line 293
    .line 294
    .line 295
    :cond_4
    :goto_3
    iget p2, p0, Lfa/d0;->c:I

    .line 296
    .line 297
    const/4 v0, -0x3

    .line 298
    if-eq p2, v0, :cond_5

    .line 299
    .line 300
    invoke-virtual {v1}, Lorg/bitspark/android/beans/ChannelBean;->getSid()I

    .line 301
    .line 302
    .line 303
    move-result p2

    .line 304
    if-lez p2, :cond_5

    .line 305
    .line 306
    new-instance p2, Ljava/lang/StringBuilder;

    .line 307
    .line 308
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v1}, Lorg/bitspark/android/beans/ChannelBean;->getSid()I

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    const-string v0, "4w==\n"

    .line 319
    .line 320
    const-string v7, "zUfwsJQdFN8=\n"

    .line 321
    .line 322
    invoke-static {v0, v7}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v3

    .line 336
    :cond_5
    iget-object p2, p1, Lfa/c0;->a:Landroid/widget/TextView;

    .line 337
    .line 338
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    .line 340
    .line 341
    if-eqz v6, :cond_6

    .line 342
    .line 343
    iget-object p2, p1, Lfa/c0;->b:Landroid/widget/TextView;

    .line 344
    .line 345
    invoke-virtual {p2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 346
    .line 347
    .line 348
    iget-object p2, p1, Lfa/c0;->e:Landroid/widget/TextView;

    .line 349
    .line 350
    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 351
    .line 352
    .line 353
    goto :goto_4

    .line 354
    :cond_6
    iget-object p2, p1, Lfa/c0;->b:Landroid/widget/TextView;

    .line 355
    .line 356
    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 357
    .line 358
    .line 359
    iget-object p2, p1, Lfa/c0;->e:Landroid/widget/TextView;

    .line 360
    .line 361
    invoke-virtual {p2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 362
    .line 363
    .line 364
    iget-object p2, p1, Lfa/c0;->b:Landroid/widget/TextView;

    .line 365
    .line 366
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    .line 368
    .line 369
    :goto_4
    iget-object p2, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 370
    .line 371
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 372
    .line 373
    .line 374
    sget-object p2, Lga/d;->f:Ljava/util/HashSet;

    .line 375
    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    .line 377
    .line 378
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v1}, Lorg/bitspark/android/beans/ChannelBean;->getChid()I

    .line 382
    .line 383
    .line 384
    move-result v1

    .line 385
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    invoke-virtual {p2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 393
    .line 394
    .line 395
    move-result p2

    .line 396
    if-eqz p2, :cond_7

    .line 397
    .line 398
    iget-object p1, p1, Lfa/c0;->d:Landroid/widget/ImageView;

    .line 399
    .line 400
    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 401
    .line 402
    .line 403
    goto :goto_5

    .line 404
    :cond_7
    iget-object p1, p1, Lfa/c0;->d:Landroid/widget/ImageView;

    .line 405
    .line 406
    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 407
    .line 408
    .line 409
    :goto_5
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/p1;
    .locals 1

    .line 1
    const p2, 0x7f0e00f4

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-static {p1, p2, p1, v0}, La/e;->i(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance p2, Lfa/c0;

    .line 10
    .line 11
    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/p1;-><init>(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    const v0, 0x7f0b00cb

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/widget/ImageView;

    .line 22
    .line 23
    iput-object v0, p2, Lfa/c0;->d:Landroid/widget/ImageView;

    .line 24
    .line 25
    const v0, 0x7f0b00c9

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Landroid/widget/TextView;

    .line 33
    .line 34
    iput-object v0, p2, Lfa/c0;->a:Landroid/widget/TextView;

    .line 35
    .line 36
    const v0, 0x7f0b042a

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Landroid/widget/TextView;

    .line 44
    .line 45
    iput-object v0, p2, Lfa/c0;->e:Landroid/widget/TextView;

    .line 46
    .line 47
    const v0, 0x7f0b0358

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Landroid/widget/TextView;

    .line 55
    .line 56
    iput-object v0, p2, Lfa/c0;->b:Landroid/widget/TextView;

    .line 57
    .line 58
    const v0, 0x7f0b00c8

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Landroid/widget/ImageView;

    .line 66
    .line 67
    iput-object p1, p2, Lfa/c0;->c:Landroid/widget/ImageView;

    .line 68
    .line 69
    return-object p2
.end method

.method public final onViewRecycled(Landroidx/recyclerview/widget/p1;)V
    .locals 2

    .line 1
    check-cast p1, Lfa/c0;

    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/k0;->onViewRecycled(Landroidx/recyclerview/widget/p1;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/bumptech/glide/b;->e(Landroid/content/Context;)Lcom/bumptech/glide/o;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p1, Lfa/c0;->d:Landroid/widget/ImageView;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/o;->k(Landroid/widget/ImageView;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/bumptech/glide/b;->e(Landroid/content/Context;)Lcom/bumptech/glide/o;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object p1, p1, Lfa/c0;->c:Landroid/widget/ImageView;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/o;->k(Landroid/widget/ImageView;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
