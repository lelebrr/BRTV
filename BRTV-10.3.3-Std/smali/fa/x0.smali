.class public final Lfa/x0;
.super Lfa/o;
.source "MyApplication"

# interfaces
.implements Landroid/widget/Filterable;


# instance fields
.field public j:Ljava/util/ArrayList;

.field public k:Landroidx/fragment/app/FragmentActivity;

.field public l:I

.field public final m:Landroid/os/AsyncTask;

.field public n:Lg0/g;

.field public o:Lg0/g;

.field public p:Lfa/o0;

.field public q:[I

.field public r:Landroidx/media3/common/x;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "TYLWTeB2LZ9+gfNq6Wc3lGk=\n"

    .line 2
    .line 3
    const-string v1, "G+2yDogXQ/E=\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;I)V
    .locals 2

    .line 1
    sget-object v0, Lea/d;->e:Lea/d;

    .line 2
    .line 3
    invoke-direct {p0, p2, v0}, Lfa/o;-><init>(Landroid/content/Context;Lea/d;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lfa/x0;->j:Ljava/util/ArrayList;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iput-object v1, p0, Lfa/x0;->p:Lfa/o0;

    .line 15
    .line 16
    iput-object v1, p0, Lfa/x0;->q:[I

    .line 17
    .line 18
    iput-object v1, p0, Lfa/x0;->r:Landroidx/media3/common/x;

    .line 19
    .line 20
    iput-object p2, p0, Lfa/x0;->k:Landroidx/fragment/app/FragmentActivity;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 23
    .line 24
    .line 25
    iput p3, p0, Lfa/x0;->l:I

    .line 26
    .line 27
    invoke-virtual {p0}, Lfa/x0;->b()V

    .line 28
    .line 29
    .line 30
    const-string p2, "jP7OBxl1FOe//esgEGQO7Kg=\n"

    .line 31
    .line 32
    const-string p3, "2pGqRHEUeok=\n"

    .line 33
    .line 34
    invoke-static {p2, p3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    const-string p2, "B3avQHPj/dEFeJhnOvXx5DJsn2kyoKA=\n"

    .line 38
    .line 39
    const-string p3, "URnrDBqQiYE=\n"

    .line 40
    .line 41
    invoke-static {p2, p3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    new-instance p2, Landroidx/core/app/h;

    .line 45
    .line 46
    invoke-direct {p2, p0}, Landroidx/core/app/h;-><init>(Lfa/x0;)V

    .line 47
    .line 48
    .line 49
    filled-new-array {p1}, [Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p2, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iput-object p1, p0, Lfa/x0;->m:Landroid/os/AsyncTask;

    .line 58
    .line 59
    const-string p1, "xYl/xPx9h1P2ilrj9WydWOE=\n"

    .line 60
    .line 61
    const-string p2, "k+Ybh5Qc6T0=\n"

    .line 62
    .line 63
    invoke-static {p1, p2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    const-string p1, "NTyYDWSraiY3Mq8qLb1mEwAmqCQl6Tc=\n"

    .line 67
    .line 68
    const-string p2, "Y1PcQQ3YHnY=\n"

    .line 69
    .line 70
    invoke-static {p1, p2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 5

    .line 1
    iget-object v0, p0, Lfa/x0;->k:Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const v2, 0x7f0f003c

    .line 8
    .line 9
    .line 10
    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    new-instance v3, Lg0/g;

    .line 19
    .line 20
    invoke-direct {v3, v2, v1}, Lg0/g;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 21
    .line 22
    .line 23
    iput-object v3, p0, Lfa/x0;->n:Lg0/g;

    .line 24
    .line 25
    const/16 v1, 0x9

    .line 26
    .line 27
    invoke-static {v0, v1}, Ln5/d;->q(Landroid/content/Context;I)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    iget-object v2, p0, Lfa/x0;->n:Lg0/g;

    .line 32
    .line 33
    int-to-float v1, v1

    .line 34
    invoke-virtual {v2, v1}, Lg0/g;->a(F)V

    .line 35
    .line 36
    .line 37
    iget-object v2, p0, Lfa/x0;->n:Lg0/g;

    .line 38
    .line 39
    iget-object v3, v2, Lg0/g;->d:Landroid/graphics/Paint;

    .line 40
    .line 41
    const/4 v4, 0x1

    .line 42
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    const v3, 0x7f0f003b

    .line 53
    .line 54
    .line 55
    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    new-instance v3, Lg0/g;

    .line 64
    .line 65
    invoke-direct {v3, v0, v2}, Lg0/g;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 66
    .line 67
    .line 68
    iput-object v3, p0, Lfa/x0;->o:Lg0/g;

    .line 69
    .line 70
    invoke-virtual {v3, v1}, Lg0/g;->a(F)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lfa/x0;->o:Lg0/g;

    .line 74
    .line 75
    iget-object v1, v0, Lg0/g;->d:Landroid/graphics/Paint;

    .line 76
    .line 77
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public final getFilter()Landroid/widget/Filter;
    .locals 1

    .line 1
    new-instance v0, Lfa/v0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lfa/v0;-><init>(Lfa/x0;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lfa/x0;->j:Ljava/util/ArrayList;

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
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    check-cast v2, Lfa/w0;

    .line 8
    .line 9
    const-string v3, "LImJBkRKZlpmxg==\n"

    .line 10
    .line 11
    const-string v4, "XOb6bzAjCTQ=\n"

    .line 12
    .line 13
    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    const-string v3, "G/Ry//cueslfzmP2/3cu\n"

    .line 17
    .line 18
    const-string v4, "O4cXk5JNDqw=\n"

    .line 19
    .line 20
    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    const-string v3, "+0MgjuNZJbq+TjG/428t7Ps=\n"

    .line 24
    .line 25
    const-string v4, "2y1F9pcKQNY=\n"

    .line 26
    .line 27
    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    iget v3, v0, Lfa/o;->d:I

    .line 31
    .line 32
    iget v4, v0, Lfa/o;->b:I

    .line 33
    .line 34
    const/4 v5, 0x1

    .line 35
    if-ne v1, v4, :cond_0

    .line 36
    .line 37
    if-ltz v3, :cond_0

    .line 38
    .line 39
    const/4 v3, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v3, 0x0

    .line 42
    :goto_0
    iget-object v4, v0, Lfa/x0;->j:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-nez v4, :cond_1

    .line 49
    .line 50
    goto/16 :goto_6

    .line 51
    .line 52
    :cond_1
    iget-object v4, v0, Lfa/x0;->j:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-lt v1, v4, :cond_2

    .line 59
    .line 60
    iget-object v4, v0, Lfa/x0;->j:Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    sub-int/2addr v4, v5

    .line 67
    goto :goto_1

    .line 68
    :cond_2
    move v4, v1

    .line 69
    :goto_1
    sget-object v7, Lga/o;->e:Ljava/util/HashSet;

    .line 70
    .line 71
    if-nez v7, :cond_3

    .line 72
    .line 73
    goto/16 :goto_6

    .line 74
    .line 75
    :cond_3
    iget-object v7, v0, Lfa/x0;->j:Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    check-cast v7, Lorg/bitspark/android/beans/ChannelBean;

    .line 82
    .line 83
    invoke-virtual {v7}, Lorg/bitspark/android/beans/ChannelBean;->getName()Lorg/bitspark/android/beans/ChannelBean$NameBean;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    invoke-virtual {v8}, Lorg/bitspark/android/beans/ChannelBean$NameBean;->getInit()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v8

    .line 91
    invoke-virtual {v7}, Lorg/bitspark/android/beans/ChannelBean;->getLogo()Lorg/bitspark/android/beans/ChannelBean$LogoBean;

    .line 92
    .line 93
    .line 94
    move-result-object v9

    .line 95
    invoke-virtual {v9}, Lorg/bitspark/android/beans/ChannelBean$LogoBean;->getImage()Lorg/bitspark/android/beans/ChannelBean$LogoBean$ImageBean;

    .line 96
    .line 97
    .line 98
    move-result-object v9

    .line 99
    invoke-virtual {v9}, Lorg/bitspark/android/beans/ChannelBean$LogoBean$ImageBean;->getBig()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v9

    .line 103
    if-eqz v9, :cond_4

    .line 104
    .line 105
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 106
    .line 107
    .line 108
    move-result v10

    .line 109
    if-eqz v10, :cond_5

    .line 110
    .line 111
    :cond_4
    invoke-virtual {v7}, Lorg/bitspark/android/beans/ChannelBean;->getLogo()Lorg/bitspark/android/beans/ChannelBean$LogoBean;

    .line 112
    .line 113
    .line 114
    move-result-object v9

    .line 115
    invoke-virtual {v9}, Lorg/bitspark/android/beans/ChannelBean$LogoBean;->getImage()Lorg/bitspark/android/beans/ChannelBean$LogoBean$ImageBean;

    .line 116
    .line 117
    .line 118
    move-result-object v9

    .line 119
    invoke-virtual {v9}, Lorg/bitspark/android/beans/ChannelBean$LogoBean$ImageBean;->getSmall()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v9

    .line 123
    :cond_5
    sget-object v10, Lga/o;->e:Ljava/util/HashSet;

    .line 124
    .line 125
    new-instance v11, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    const-string v12, ""

    .line 128
    .line 129
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    iget-object v13, v0, Lfa/x0;->j:Ljava/util/ArrayList;

    .line 133
    .line 134
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    check-cast v4, Lorg/bitspark/android/beans/ChannelBean;

    .line 139
    .line 140
    invoke-virtual {v4}, Lorg/bitspark/android/beans/ChannelBean;->getChid()I

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    invoke-virtual {v10, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    if-eqz v4, :cond_6

    .line 156
    .line 157
    new-instance v4, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .line 161
    .line 162
    const-string v10, "lVat\n"

    .line 163
    .line 164
    const-string v11, "d84oq2/wm7E=\n"

    .line 165
    .line 166
    invoke-static {v10, v11, v4, v8}, Lea/q;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v8

    .line 170
    :cond_6
    iget-object v4, v2, Lfa/w0;->b:Landroid/widget/TextView;

    .line 171
    .line 172
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    .line 174
    .line 175
    if-eqz v3, :cond_d

    .line 176
    .line 177
    iget-object v4, v2, Lfa/w0;->e:Lorg/bitspark/android/view/GradientBorderView;

    .line 178
    .line 179
    iget-object v8, v0, Lfa/x0;->q:[I

    .line 180
    .line 181
    if-nez v8, :cond_b

    .line 182
    .line 183
    new-instance v8, Ljava/util/ArrayList;

    .line 184
    .line 185
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .line 187
    .line 188
    const-string v10, "vo+MNTb37uatkrcJO/Tz8JeTnAsm7A==\n"

    .line 189
    .line 190
    const-string v11, "yODoalSYnII=\n"

    .line 191
    .line 192
    invoke-static {v10, v11}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v10

    .line 196
    const-string v11, "z4ez0qtBpEfcmojupkK5UeaFvumtQrM=\n"

    .line 197
    .line 198
    const-string v13, "uejXjcku1iM=\n"

    .line 199
    .line 200
    invoke-static {v11, v13}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v11

    .line 204
    const-string v13, "GTXjoeNfwS0KKNid7lzcOzA/6Zo=\n"

    .line 205
    .line 206
    const-string v14, "b1qH/oEws0k=\n"

    .line 207
    .line 208
    invoke-static {v13, v14}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v13

    .line 212
    const-string v14, "xrPdw9Kq00zVrub/36nOWu+51/iC\n"

    .line 213
    .line 214
    const-string v15, "sNy5nLDFoSg=\n"

    .line 215
    .line 216
    invoke-static {v14, v15}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v14

    .line 220
    filled-new-array {v10, v11, v13, v14}, [Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v10

    .line 224
    const/4 v11, 0x0

    .line 225
    :goto_2
    const/4 v13, 0x4

    .line 226
    if-ge v11, v13, :cond_8

    .line 227
    .line 228
    aget-object v13, v10, v11

    .line 229
    .line 230
    iget-object v14, v0, Lfa/x0;->k:Landroidx/fragment/app/FragmentActivity;

    .line 231
    .line 232
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 233
    .line 234
    .line 235
    move-result-object v15

    .line 236
    const-string v6, "d7DbRp8=\n"

    .line 237
    .line 238
    const-string v5, "FN+3Ke0JpeY=\n"

    .line 239
    .line 240
    invoke-static {v6, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v5

    .line 244
    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v6

    .line 248
    invoke-virtual {v15, v13, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    .line 250
    .line 251
    move-result v5

    .line 252
    if-eqz v5, :cond_7

    .line 253
    .line 254
    invoke-static {v14, v5}, Lu7/d;->i(Landroid/content/Context;I)I

    .line 255
    .line 256
    .line 257
    move-result v5

    .line 258
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 259
    .line 260
    .line 261
    move-result-object v5

    .line 262
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    :cond_7
    add-int/lit8 v11, v11, 0x1

    .line 266
    .line 267
    const/4 v5, 0x1

    .line 268
    goto :goto_2

    .line 269
    :cond_8
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 270
    .line 271
    .line 272
    move-result v5

    .line 273
    const/4 v6, 0x1

    .line 274
    if-ne v5, v6, :cond_9

    .line 275
    .line 276
    const/4 v5, 0x0

    .line 277
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v6

    .line 281
    check-cast v6, Ljava/lang/Integer;

    .line 282
    .line 283
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    :cond_9
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 287
    .line 288
    .line 289
    move-result v5

    .line 290
    new-array v5, v5, [I

    .line 291
    .line 292
    const/4 v6, 0x0

    .line 293
    :goto_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 294
    .line 295
    .line 296
    move-result v10

    .line 297
    if-ge v6, v10, :cond_a

    .line 298
    .line 299
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v10

    .line 303
    check-cast v10, Ljava/lang/Integer;

    .line 304
    .line 305
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 306
    .line 307
    .line 308
    move-result v10

    .line 309
    aput v10, v5, v6

    .line 310
    .line 311
    add-int/lit8 v6, v6, 0x1

    .line 312
    .line 313
    goto :goto_3

    .line 314
    :cond_a
    iput-object v5, v0, Lfa/x0;->q:[I

    .line 315
    .line 316
    :cond_b
    iget-object v5, v0, Lfa/x0;->q:[I

    .line 317
    .line 318
    invoke-virtual {v4, v5}, Lorg/bitspark/android/view/GradientBorderView;->setColor([I)V

    .line 319
    .line 320
    .line 321
    iget v4, v0, Lfa/o;->b:I

    .line 322
    .line 323
    iget v5, v0, Lfa/o;->c:I

    .line 324
    .line 325
    if-eq v4, v5, :cond_c

    .line 326
    .line 327
    iput v4, v0, Lfa/o;->c:I

    .line 328
    .line 329
    :cond_c
    iget-object v4, v2, Lfa/w0;->b:Landroid/widget/TextView;

    .line 330
    .line 331
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 332
    .line 333
    .line 334
    move-result-object v4

    .line 335
    const/4 v5, 0x1

    .line 336
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 337
    .line 338
    .line 339
    goto :goto_4

    .line 340
    :cond_d
    iget-object v4, v2, Lfa/w0;->e:Lorg/bitspark/android/view/GradientBorderView;

    .line 341
    .line 342
    const/4 v5, 0x0

    .line 343
    invoke-virtual {v4, v5}, Lorg/bitspark/android/view/GradientBorderView;->setColor(I)V

    .line 344
    .line 345
    .line 346
    iget-object v4, v2, Lfa/w0;->b:Landroid/widget/TextView;

    .line 347
    .line 348
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 349
    .line 350
    .line 351
    move-result-object v4

    .line 352
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 353
    .line 354
    .line 355
    :goto_4
    iget-object v4, v2, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 356
    .line 357
    invoke-virtual {v4, v3}, Landroid/view/View;->setSelected(Z)V

    .line 358
    .line 359
    .line 360
    iget-object v3, v2, Lfa/w0;->c:Landroid/view/View;

    .line 361
    .line 362
    new-instance v4, Lfa/h0;

    .line 363
    .line 364
    invoke-direct {v4}, Lfa/h0;-><init>()V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v7}, Lorg/bitspark/android/beans/ChannelBean;->getChid()I

    .line 371
    .line 372
    .line 373
    move-result v3

    .line 374
    sget-object v4, Lga/o;->e:Ljava/util/HashSet;

    .line 375
    .line 376
    new-instance v5, Ljava/lang/StringBuilder;

    .line 377
    .line 378
    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v5

    .line 388
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 389
    .line 390
    .line 391
    move-result v4

    .line 392
    if-eqz v4, :cond_e

    .line 393
    .line 394
    iget-object v4, v2, Lfa/w0;->d:Landroid/widget/ImageView;

    .line 395
    .line 396
    const/4 v5, 0x0

    .line 397
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 398
    .line 399
    .line 400
    goto :goto_5

    .line 401
    :cond_e
    iget-object v4, v2, Lfa/w0;->d:Landroid/widget/ImageView;

    .line 402
    .line 403
    const/16 v5, 0x8

    .line 404
    .line 405
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 406
    .line 407
    .line 408
    :goto_5
    iget-object v4, v0, Lfa/x0;->k:Landroidx/fragment/app/FragmentActivity;

    .line 409
    .line 410
    const/16 v5, 0x9

    .line 411
    .line 412
    invoke-static {v4, v5}, Ln5/d;->q(Landroid/content/Context;I)I

    .line 413
    .line 414
    .line 415
    move-result v4

    .line 416
    iget-object v5, v0, Lfa/x0;->k:Landroidx/fragment/app/FragmentActivity;

    .line 417
    .line 418
    invoke-static {v5}, Lcom/bumptech/glide/b;->e(Landroid/content/Context;)Lcom/bumptech/glide/o;

    .line 419
    .line 420
    .line 421
    move-result-object v5

    .line 422
    invoke-virtual {v5, v9}, Lcom/bumptech/glide/o;->o(Ljava/lang/String;)Lcom/bumptech/glide/l;

    .line 423
    .line 424
    .line 425
    move-result-object v5

    .line 426
    iget-object v6, v0, Lfa/x0;->n:Lg0/g;

    .line 427
    .line 428
    invoke-virtual {v5, v6}, Ln3/a;->l(Lg0/g;)Ln3/a;

    .line 429
    .line 430
    .line 431
    move-result-object v5

    .line 432
    check-cast v5, Lcom/bumptech/glide/l;

    .line 433
    .line 434
    iget-object v6, v0, Lfa/x0;->o:Lg0/g;

    .line 435
    .line 436
    invoke-virtual {v5, v6}, Ln3/a;->f(Landroid/graphics/drawable/Drawable;)Ln3/a;

    .line 437
    .line 438
    .line 439
    move-result-object v5

    .line 440
    check-cast v5, Lcom/bumptech/glide/l;

    .line 441
    .line 442
    sget-object v6, Lx2/k;->d:Lx2/k;

    .line 443
    .line 444
    invoke-virtual {v5, v6}, Ln3/a;->d(Lx2/k;)Ln3/a;

    .line 445
    .line 446
    .line 447
    move-result-object v5

    .line 448
    check-cast v5, Lcom/bumptech/glide/l;

    .line 449
    .line 450
    const/4 v6, 0x0

    .line 451
    invoke-virtual {v5, v6}, Ln3/a;->r(Z)Ln3/a;

    .line 452
    .line 453
    .line 454
    move-result-object v5

    .line 455
    check-cast v5, Lcom/bumptech/glide/l;

    .line 456
    .line 457
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 458
    .line 459
    .line 460
    sget-object v6, Le3/n;->d:Le3/n;

    .line 461
    .line 462
    new-instance v8, Le3/h;

    .line 463
    .line 464
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 465
    .line 466
    .line 467
    invoke-virtual {v5, v6, v8}, Ln3/a;->t(Le3/n;Le3/e;)Ln3/a;

    .line 468
    .line 469
    .line 470
    move-result-object v5

    .line 471
    check-cast v5, Lcom/bumptech/glide/l;

    .line 472
    .line 473
    new-instance v6, Ln3/e;

    .line 474
    .line 475
    invoke-direct {v6}, Ln3/a;-><init>()V

    .line 476
    .line 477
    .line 478
    sget-object v8, Lv2/a;->b:Lv2/a;

    .line 479
    .line 480
    sget-object v9, Le3/p;->f:Lv2/g;

    .line 481
    .line 482
    invoke-virtual {v6, v9, v8}, Ln3/a;->p(Lv2/g;Ljava/lang/Object;)Ln3/a;

    .line 483
    .line 484
    .line 485
    move-result-object v6

    .line 486
    sget-object v9, Li3/j;->a:Lv2/g;

    .line 487
    .line 488
    invoke-virtual {v6, v9, v8}, Ln3/a;->p(Lv2/g;Ljava/lang/Object;)Ln3/a;

    .line 489
    .line 490
    .line 491
    move-result-object v6

    .line 492
    check-cast v6, Ln3/e;

    .line 493
    .line 494
    new-instance v6, Le3/x;

    .line 495
    .line 496
    invoke-direct {v6, v4}, Le3/x;-><init>(I)V

    .line 497
    .line 498
    .line 499
    invoke-static {v6}, Ln3/e;->x(Le3/x;)Ln3/e;

    .line 500
    .line 501
    .line 502
    move-result-object v4

    .line 503
    invoke-virtual {v5, v4}, Lcom/bumptech/glide/l;->y(Ln3/a;)Lcom/bumptech/glide/l;

    .line 504
    .line 505
    .line 506
    move-result-object v4

    .line 507
    iget-object v5, v2, Lfa/w0;->a:Landroid/widget/ImageView;

    .line 508
    .line 509
    invoke-virtual {v4, v5}, Lcom/bumptech/glide/l;->B(Landroid/widget/ImageView;)V

    .line 510
    .line 511
    .line 512
    iget-object v4, v2, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 513
    .line 514
    new-instance v5, Lfa/t0;

    .line 515
    .line 516
    invoke-direct {v5, v0, v7, v3, v1}, Lfa/t0;-><init>(Lfa/x0;Lorg/bitspark/android/beans/ChannelBean;II)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 520
    .line 521
    .line 522
    iget-object v3, v2, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 523
    .line 524
    new-instance v4, Lfa/u0;

    .line 525
    .line 526
    invoke-direct {v4, v0, v1, v2, v7}, Lfa/u0;-><init>(Lfa/x0;ILfa/w0;Lorg/bitspark/android/beans/ChannelBean;)V

    .line 527
    .line 528
    .line 529
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 530
    .line 531
    .line 532
    :goto_6
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/p1;
    .locals 1

    .line 1
    const p2, 0x7f0e0128

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
    new-instance p2, Lfa/w0;

    .line 10
    .line 11
    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/p1;-><init>(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    const v0, 0x7f0b00be

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p2, Lfa/w0;->c:Landroid/view/View;

    .line 22
    .line 23
    const v0, 0x7f0b0203

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/widget/ImageView;

    .line 31
    .line 32
    iput-object v0, p2, Lfa/w0;->a:Landroid/widget/ImageView;

    .line 33
    .line 34
    const v0, 0x7f0b00c9

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroid/widget/TextView;

    .line 42
    .line 43
    iput-object v0, p2, Lfa/w0;->b:Landroid/widget/TextView;

    .line 44
    .line 45
    const v0, 0x7f0b0205

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lorg/bitspark/android/view/GradientBorderView;

    .line 53
    .line 54
    iput-object v0, p2, Lfa/w0;->e:Lorg/bitspark/android/view/GradientBorderView;

    .line 55
    .line 56
    const v0, 0x7f0b00df

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Landroid/widget/ImageView;

    .line 64
    .line 65
    iput-object p1, p2, Lfa/w0;->d:Landroid/widget/ImageView;

    .line 66
    .line 67
    return-object p2
.end method

.method public final onViewRecycled(Landroidx/recyclerview/widget/p1;)V
    .locals 1

    .line 1
    check-cast p1, Lfa/w0;

    .line 2
    .line 3
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/k0;->onViewRecycled(Landroidx/recyclerview/widget/p1;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lfa/w0;->a:Landroid/widget/ImageView;

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
    iget-object p1, p1, Lfa/w0;->a:Landroid/widget/ImageView;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/o;->k(Landroid/widget/ImageView;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
