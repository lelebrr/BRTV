.class public final Lka/n;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lka/r;


# direct methods
.method public synthetic constructor <init>(Lka/r;I)V
    .locals 0

    .line 1
    iput p2, p0, Lka/n;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lka/n;->b:Lka/r;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;ILjava/lang/Boolean;)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lka/n;->b:Lka/r;

    .line 4
    .line 5
    iget v3, p0, Lka/n;->a:I

    .line 6
    .line 7
    packed-switch v3, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    const-string p2, "6TktnFKG\n"

    .line 11
    .line 12
    const-string v0, "q2pg+TzzZ+I=\n"

    .line 13
    .line 14
    invoke-static {p2, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v3, "lHcaAaH3K1OUdxoBofcrU5R3GU3snXwV2hdVS+G/KFDRJlZPoqBnBdQ8AwI=\n"

    .line 24
    .line 25
    const-string v4, "t1Q5IoLUCHA=\n"

    .line 26
    .line 27
    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sget-boolean v3, Lorg/bitspark/android/utils/m;->b:Z

    .line 42
    .line 43
    invoke-static {p2, v0}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Lorg/bitspark/android/beans/ChannelBean;

    .line 51
    .line 52
    iget-boolean p2, v2, Lka/r;->r0:Z

    .line 53
    .line 54
    if-eqz p2, :cond_0

    .line 55
    .line 56
    iput-boolean v1, v2, Lka/r;->r0:Z

    .line 57
    .line 58
    sget-object p2, Lorg/bitspark/android/utils/o;->f:Lorg/bitspark/android/utils/o;

    .line 59
    .line 60
    invoke-virtual {p2}, Lorg/bitspark/android/utils/o;->d()V

    .line 61
    .line 62
    .line 63
    iget-object v0, p2, Lorg/bitspark/android/utils/o;->b:Lta/a;

    .line 64
    .line 65
    invoke-virtual {v0}, Lta/a;->k()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2}, Lorg/bitspark/android/utils/o;->e()V

    .line 69
    .line 70
    .line 71
    :cond_0
    if-eqz p1, :cond_1

    .line 72
    .line 73
    invoke-virtual {v2, p3, p1}, Lka/r;->U(Ljava/lang/Boolean;Lorg/bitspark/android/beans/ChannelBean;)V

    .line 74
    .line 75
    .line 76
    :cond_1
    return-void

    .line 77
    :pswitch_0
    const-string v3, "DXKlHjaH\n"

    .line 78
    .line 79
    const-string v4, "TyHoe1jyVLg=\n"

    .line 80
    .line 81
    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v5, "sejSmm+HmKqq4/irbJuLiOSm\n"

    .line 91
    .line 92
    const-string v6, "3oaV6ADy6OM=\n"

    .line 93
    .line 94
    invoke-static {v5, v6}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p3

    .line 108
    sget-boolean v4, Lorg/bitspark/android/utils/m;->b:Z

    .line 109
    .line 110
    invoke-static {v3, p3}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    sget-object p3, Lea/d;->a:Lea/d;

    .line 114
    .line 115
    invoke-virtual {v2, p3}, Lka/r;->h0(Lea/d;)V

    .line 116
    .line 117
    .line 118
    const-string p3, "ezydxSX0\n"

    .line 119
    .line 120
    const-string v3, "OW/QoEuBTq4=\n"

    .line 121
    .line 122
    invoke-static {p3, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p3

    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string v4, "38k=\n"

    .line 143
    .line 144
    const-string v5, "o+kKFsj0OuI=\n"

    .line 145
    .line 146
    invoke-static {v4, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    invoke-static {p3, v3}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object p3

    .line 171
    if-eqz p3, :cond_4

    .line 172
    .line 173
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object p3

    .line 177
    check-cast p3, Ljava/lang/Integer;

    .line 178
    .line 179
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 180
    .line 181
    .line 182
    move-result p3

    .line 183
    iput p3, v2, Lka/r;->m0:I

    .line 184
    .line 185
    iget-object v3, v2, Lka/r;->j0:Ljava/util/HashMap;

    .line 186
    .line 187
    if-eqz v3, :cond_3

    .line 188
    .line 189
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 190
    .line 191
    .line 192
    move-result-object p3

    .line 193
    invoke-virtual {v3, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object p3

    .line 197
    if-eqz p3, :cond_3

    .line 198
    .line 199
    iget-object p3, v2, Lka/r;->j0:Ljava/util/HashMap;

    .line 200
    .line 201
    iget v3, v2, Lka/r;->m0:I

    .line 202
    .line 203
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    invoke-virtual {p3, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object p3

    .line 211
    check-cast p3, Lorg/bitspark/android/beans/Group;

    .line 212
    .line 213
    iget-boolean p3, p3, Lorg/bitspark/android/beans/Group;->restrictedAccess:Z

    .line 214
    .line 215
    if-eqz p3, :cond_3

    .line 216
    .line 217
    sget-boolean p3, Lorg/bitspark/android/Spark;->c2:Z

    .line 218
    .line 219
    if-eqz p3, :cond_2

    .line 220
    .line 221
    sput v1, Lka/r;->v0:I

    .line 222
    .line 223
    iget-object p1, v2, Lka/r;->X:Lfa/g0;

    .line 224
    .line 225
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/k0;->notifyItemChanged(I)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v2}, Lka/r;->c0()V

    .line 229
    .line 230
    .line 231
    goto :goto_0

    .line 232
    :cond_2
    iget-boolean p3, v2, Lka/r;->n0:Z

    .line 233
    .line 234
    if-nez p3, :cond_4

    .line 235
    .line 236
    iput-boolean v0, v2, Lka/r;->n0:Z

    .line 237
    .line 238
    new-instance p3, Ll6/h;

    .line 239
    .line 240
    invoke-virtual {v2}, Landroidx/fragment/app/s;->j()Landroid/content/Context;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    invoke-direct {p3, v1}, Ll6/h;-><init>(Landroid/content/Context;)V

    .line 245
    .line 246
    .line 247
    new-instance v1, Lfa/d1;

    .line 248
    .line 249
    invoke-direct {v1, p0, p1, p2, v0}, Lfa/d1;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 250
    .line 251
    .line 252
    iput-object v1, p3, Ll6/h;->c:Ljava/lang/Object;

    .line 253
    .line 254
    invoke-virtual {p3}, Ll6/h;->b()Lsa/e;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 259
    .line 260
    .line 261
    new-instance p2, Lea/t;

    .line 262
    .line 263
    const/4 p3, 0x2

    .line 264
    invoke-direct {p2, p3, p0}, Lea/t;-><init>(ILjava/lang/Object;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 268
    .line 269
    .line 270
    goto :goto_0

    .line 271
    :cond_3
    invoke-virtual {v2}, Lka/r;->c0()V

    .line 272
    .line 273
    .line 274
    :cond_4
    :goto_0
    return-void

    .line 275
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public b(Landroid/view/View;Z)V
    .locals 1

    .line 1
    iget v0, p0, Lka/n;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lorg/bitspark/android/beans/ChannelBean;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-static {p1}, Lga/h;->d(Lorg/bitspark/android/beans/ChannelBean;)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iget-object p2, p0, Lka/n;->b:Lka/r;

    .line 21
    .line 22
    invoke-virtual {p2, p1}, Lka/r;->g0(I)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void

    .line 26
    :pswitch_0
    if-eqz p1, :cond_2

    .line 27
    .line 28
    iget-object p2, p0, Lka/n;->b:Lka/r;

    .line 29
    .line 30
    iget p2, p2, Lka/r;->m0:I

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Ljava/lang/Integer;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eq p2, v0, :cond_3

    .line 43
    .line 44
    iget-object p2, p0, Lka/n;->b:Lka/r;

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Ljava/lang/Integer;

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    iput p1, p2, Lka/r;->m0:I

    .line 57
    .line 58
    sget-object p1, Lga/d;->d:Ljava/util/HashMap;

    .line 59
    .line 60
    if-eqz p1, :cond_1

    .line 61
    .line 62
    sget-object p1, Lga/d;->d:Ljava/util/HashMap;

    .line 63
    .line 64
    iget-object p2, p0, Lka/n;->b:Lka/r;

    .line 65
    .line 66
    iget p2, p2, Lka/r;->m0:I

    .line 67
    .line 68
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-eqz p1, :cond_1

    .line 77
    .line 78
    sget-object p1, Lga/d;->d:Ljava/util/HashMap;

    .line 79
    .line 80
    iget-object p2, p0, Lka/n;->b:Lka/r;

    .line 81
    .line 82
    iget p2, p2, Lka/r;->m0:I

    .line 83
    .line 84
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    check-cast p1, Lorg/bitspark/android/beans/Group;

    .line 93
    .line 94
    iget p1, p1, Lorg/bitspark/android/beans/Group;->type:I

    .line 95
    .line 96
    sput p1, Lorg/bitspark/android/Spark;->b2:I

    .line 97
    .line 98
    :cond_1
    iget-object p1, p0, Lka/n;->b:Lka/r;

    .line 99
    .line 100
    invoke-virtual {p1}, Lka/r;->c0()V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lka/n;->b:Lka/r;

    .line 104
    .line 105
    iget-object p1, p1, Lka/r;->Y:Lfa/d0;

    .line 106
    .line 107
    if-eqz p1, :cond_3

    .line 108
    .line 109
    iget-object p1, p1, Lfa/d0;->e:Landroid/view/View;

    .line 110
    .line 111
    if-eqz p1, :cond_3

    .line 112
    .line 113
    const/4 p2, 0x0

    .line 114
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Lka/n;->b:Lka/r;

    .line 118
    .line 119
    iget-object p1, p1, Lka/r;->Y:Lfa/d0;

    .line 120
    .line 121
    const/4 p2, 0x0

    .line 122
    invoke-virtual {p1, p2}, Lfa/d0;->b(Landroid/view/View;)V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_2
    const-string p1, "xVwWkwpP\n"

    .line 127
    .line 128
    const-string p2, "hw9b9mQ6idM=\n"

    .line 129
    .line 130
    invoke-static {p1, p2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    const-string p2, "TfOLWhogz0RP9sRBH2zV\n"

    .line 135
    .line 136
    const-string v0, "KoHkL2oAuS0=\n"

    .line 137
    .line 138
    invoke-static {p2, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    sget-boolean v0, Lorg/bitspark/android/utils/m;->b:Z

    .line 143
    .line 144
    invoke-static {p1, p2}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    :cond_3
    :goto_0
    return-void

    .line 148
    nop

    .line 149
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
