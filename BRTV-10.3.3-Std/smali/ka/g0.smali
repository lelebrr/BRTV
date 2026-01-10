.class public final Lka/g0;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lorg/bitspark/android/beans/ChannelBean;

.field public final synthetic b:Lka/i0;


# direct methods
.method public constructor <init>(Lka/i0;Lorg/bitspark/android/beans/ChannelBean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lka/g0;->b:Lka/i0;

    .line 5
    .line 6
    iput-object p2, p0, Lka/g0;->a:Lorg/bitspark/android/beans/ChannelBean;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lka/g0;->b:Lka/i0;

    .line 2
    .line 3
    iget-object v0, p1, Lka/i0;->U:Lta/a;

    .line 4
    .line 5
    iget-boolean v1, v0, Lta/a;->v:Z

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Landroidx/fragment/app/s;->j()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p1}, Landroidx/fragment/app/s;->m()Landroid/content/res/Resources;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const v1, 0x7f120046

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {v0, v2, p1}, Lba/d;->a(Landroid/content/Context;ILjava/lang/String;)Lba/d;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Lba/d;->show()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    iget-object v1, p0, Lka/g0;->a:Lorg/bitspark/android/beans/ChannelBean;

    .line 34
    .line 35
    invoke-virtual {v1}, Lorg/bitspark/android/beans/ChannelBean;->getSources()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Lorg/bitspark/android/beans/ChannelBean$SourcesBean;

    .line 44
    .line 45
    iput-object v3, v0, Lta/a;->r:Lorg/bitspark/android/beans/ChannelBean$SourcesBean;

    .line 46
    .line 47
    iget-object p1, p1, Lka/i0;->U:Lta/a;

    .line 48
    .line 49
    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p1, Lta/a;->G:Z

    .line 51
    .line 52
    new-instance v0, Landroid/os/Message;

    .line 53
    .line 54
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 55
    .line 56
    .line 57
    const/16 v3, 0x50

    .line 58
    .line 59
    iput v3, v0, Landroid/os/Message;->what:I

    .line 60
    .line 61
    invoke-virtual {v1}, Lorg/bitspark/android/beans/ChannelBean;->getSources()Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    check-cast v2, Lorg/bitspark/android/beans/ChannelBean$SourcesBean;

    .line 70
    .line 71
    invoke-virtual {v2}, Lorg/bitspark/android/beans/ChannelBean$SourcesBean;->getAddress()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-eqz v4, :cond_1

    .line 80
    .line 81
    goto/16 :goto_3

    .line 82
    .line 83
    :cond_1
    new-instance v4, Landroid/os/Bundle;

    .line 84
    .line 85
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string v5, "5twp\n"

    .line 89
    .line 90
    const-string v6, "k65FWJKJkuk=\n"

    .line 91
    .line 92
    invoke-static {v5, v6}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-virtual {v4, v5, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    const-string v5, "2DRzjg==\n"

    .line 100
    .line 101
    const-string v6, "u1wa6v/wzWc=\n"

    .line 102
    .line 103
    invoke-static {v5, v6}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    invoke-virtual {v1}, Lorg/bitspark/android/beans/ChannelBean;->getChid()I

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    invoke-virtual {v4, v5, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 112
    .line 113
    .line 114
    const-string v5, "dfCwsPQ=\n"

    .line 115
    .line 116
    const-string v6, "GZXG1ZhnCjQ=\n"

    .line 117
    .line 118
    invoke-static {v5, v6}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    invoke-virtual {v1}, Lorg/bitspark/android/beans/ChannelBean;->getLevel()I

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    invoke-virtual {v4, v5, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 127
    .line 128
    .line 129
    const-string v5, "EsaRwg==\n"

    .line 130
    .line 131
    const-string v6, "fKf8p6yRl7w=\n"

    .line 132
    .line 133
    invoke-static {v5, v6}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    invoke-virtual {v1}, Lorg/bitspark/android/beans/ChannelBean;->getName()Lorg/bitspark/android/beans/ChannelBean$NameBean;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-virtual {v1}, Lorg/bitspark/android/beans/ChannelBean$NameBean;->getInit()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {v4, v5, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    const-string v1, "j066V0I=\n"

    .line 149
    .line 150
    const-string v5, "/DvYHiY7NNM=\n"

    .line 151
    .line 152
    invoke-static {v1, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {v2}, Lorg/bitspark/android/beans/ChannelBean$SourcesBean;->getId()I

    .line 157
    .line 158
    .line 159
    move-result v5

    .line 160
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    invoke-virtual {v4, v1, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    const-string v1, "ypVuVudXpZ4=\n"

    .line 168
    .line 169
    const-string v5, "ueAMIo4jyfs=\n"

    .line 170
    .line 171
    invoke-static {v1, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {v2}, Lorg/bitspark/android/beans/ChannelBean$SourcesBean;->getSubTitle()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-virtual {v4, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    const-string v1, "oqq9/X3BBdM=\n"

    .line 183
    .line 184
    const-string v2, "z8/TiCm4dbY=\n"

    .line 185
    .line 186
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    iget-object p1, p1, Lta/a;->p:Lea/d;

    .line 191
    .line 192
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-virtual {v4, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    const-string p1, "ItVLSA==\n"

    .line 200
    .line 201
    const-string v1, "Vqw7LQCPSyE=\n"

    .line 202
    .line 203
    invoke-static {p1, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    const-string v1, "9zRtvFbg0Qc=\n"

    .line 208
    .line 209
    const-string v2, "g0IO3STa/ig=\n"

    .line 210
    .line 211
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    if-nez v1, :cond_3

    .line 220
    .line 221
    const-string v1, "AqPEIcqZ1GFZ\n"

    .line 222
    .line 223
    const-string v2, "dtWnQLjq7k4=\n"

    .line 224
    .line 225
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    if-eqz v1, :cond_2

    .line 234
    .line 235
    goto :goto_1

    .line 236
    :cond_2
    sget-object v1, Lorg/bitspark/android/Constants$VIDEO_TYPE;->STATIC:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 237
    .line 238
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    goto :goto_2

    .line 243
    :cond_3
    :goto_1
    sget-object v1, Lorg/bitspark/android/Constants$VIDEO_TYPE;->BSVOD:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 244
    .line 245
    goto :goto_0

    .line 246
    :goto_2
    invoke-virtual {v4, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 250
    .line 251
    .line 252
    sget-object p1, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 253
    .line 254
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 255
    .line 256
    .line 257
    :goto_3
    return-void
.end method
