.class public final synthetic Lqa/c;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Li9/l;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lqa/g;

.field public final synthetic c:Lorg/bitspark/android/Spark;

.field public final synthetic d:Ljava/io/Serializable;


# direct methods
.method public synthetic constructor <init>(Lorg/bitspark/android/Spark;Ljava/util/ArrayList;Lqa/g;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lqa/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqa/c;->c:Lorg/bitspark/android/Spark;

    iput-object p2, p0, Lqa/c;->d:Ljava/io/Serializable;

    iput-object p3, p0, Lqa/c;->b:Lqa/g;

    return-void
.end method

.method public synthetic constructor <init>(Lqa/g;Lorg/bitspark/android/Spark;Lorg/bitspark/android/beans/ChannelBean;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lqa/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqa/c;->b:Lqa/g;

    iput-object p2, p0, Lqa/c;->c:Lorg/bitspark/android/Spark;

    iput-object p3, p0, Lqa/c;->d:Ljava/io/Serializable;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lqa/c;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lorg/bitspark/android/beans/SubtitleMenu;

    .line 7
    .line 8
    const-string v0, "TclXJLUDo/N82VQ+\n"

    .line 9
    .line 10
    const-string v1, "Prw1UNx3z5Y=\n"

    .line 11
    .line 12
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {p1, v0}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lqa/c;->b:Lqa/g;

    .line 20
    .line 21
    iget-object v1, v0, Lqa/g;->a:Lorg/bitspark/android/Spark;

    .line 22
    .line 23
    iget-object v1, v1, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 24
    .line 25
    iget-object v1, v1, Lta/a;->C:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/4 v2, 0x0

    .line 32
    :goto_0
    iget-object v3, v0, Lqa/g;->a:Lorg/bitspark/android/Spark;

    .line 33
    .line 34
    if-ge v2, v1, :cond_1

    .line 35
    .line 36
    iget-object v4, v3, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 37
    .line 38
    iget-object v4, v4, Lta/a;->C:Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    check-cast v4, Lorg/bitspark/android/beans/SubtitleMenu;

    .line 45
    .line 46
    invoke-virtual {p1}, Lorg/bitspark/android/beans/SubtitleMenu;->getLanguage()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    invoke-virtual {v4}, Lorg/bitspark/android/beans/SubtitleMenu;->getLanguage()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-static {v5, v6}, Lj9/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    invoke-virtual {v4, v5}, Lorg/bitspark/android/beans/SubtitleMenu;->setSelected(Z)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4}, Lorg/bitspark/android/beans/SubtitleMenu;->isSelected()Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-eqz v4, :cond_0

    .line 66
    .line 67
    iget-object v3, v3, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 68
    .line 69
    iput v2, v3, Lta/a;->g:I

    .line 70
    .line 71
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    iget-object v1, p0, Lqa/c;->c:Lorg/bitspark/android/Spark;

    .line 75
    .line 76
    invoke-static {v1}, Landroidx/lifecycle/o0;->d(Landroidx/lifecycle/w;)Landroidx/lifecycle/r;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    new-instance v2, Lqa/e;

    .line 81
    .line 82
    iget-object v4, p0, Lqa/c;->d:Ljava/io/Serializable;

    .line 83
    .line 84
    check-cast v4, Lorg/bitspark/android/beans/ChannelBean;

    .line 85
    .line 86
    const/4 v5, 0x0

    .line 87
    invoke-direct {v2, v4, p1, v5}, Lqa/e;-><init>(Lorg/bitspark/android/beans/ChannelBean;Lorg/bitspark/android/beans/SubtitleMenu;La9/d;)V

    .line 88
    .line 89
    .line 90
    const/4 p1, 0x3

    .line 91
    invoke-static {v1, v5, v2, p1}, Lt9/u;->k(Lt9/s;Lt9/p;Li9/p;I)Lt9/x;

    .line 92
    .line 93
    .line 94
    iget-object p1, v3, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 95
    .line 96
    iget v1, p1, Lta/a;->g:I

    .line 97
    .line 98
    iget-object p1, p1, Lta/a;->C:Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-virtual {v3, v1, p1}, Lorg/bitspark/android/Spark;->k0(ILjava/util/ArrayList;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Lqa/g;->a()Lqa/o;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p1}, Lqa/o;->a()V

    .line 108
    .line 109
    .line 110
    sget-object p1, Lw8/l;->a:Lw8/l;

    .line 111
    .line 112
    return-object p1

    .line 113
    :pswitch_0
    check-cast p1, Lorg/bitspark/android/beans/Source;

    .line 114
    .line 115
    const-string v0, "0ptAezaS\n"

    .line 116
    .line 117
    const-string v1, "ofQ1CVX38qg=\n"

    .line 118
    .line 119
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-static {p1, v0}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lqa/c;->c:Lorg/bitspark/android/Spark;

    .line 127
    .line 128
    const/4 v1, 0x0

    .line 129
    iput-boolean v1, v0, Lorg/bitspark/android/Spark;->G0:Z

    .line 130
    .line 131
    iget-object v0, v0, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 132
    .line 133
    iget-object v0, v0, Lta/a;->C:Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 136
    .line 137
    .line 138
    invoke-static {}, Lra/f;->b()Lra/f;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {v0}, Lra/f;->a()V

    .line 143
    .line 144
    .line 145
    invoke-static {}, Lra/f;->b()Lra/f;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    iput-boolean v1, v0, Lra/f;->h:Z

    .line 150
    .line 151
    iget-object v0, p0, Lqa/c;->d:Ljava/io/Serializable;

    .line 152
    .line 153
    check-cast v0, Ljava/util/ArrayList;

    .line 154
    .line 155
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    invoke-static {}, Lra/f;->b()Lra/f;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    iget-object v4, v3, Lra/f;->e:Lorg/bitspark/android/beans/ChannelBean;

    .line 164
    .line 165
    if-nez v4, :cond_2

    .line 166
    .line 167
    goto :goto_1

    .line 168
    :cond_2
    iget-boolean v5, v3, Lra/f;->g:Z

    .line 169
    .line 170
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    iget-object v6, v3, Lra/f;->l:Ljava/lang/String;

    .line 175
    .line 176
    invoke-virtual {v3, v4, v5, v2, v6}, Lra/f;->e(Lorg/bitspark/android/beans/ChannelBean;Ljava/lang/Boolean;ILjava/lang/String;)V

    .line 177
    .line 178
    .line 179
    :goto_1
    invoke-virtual {p1}, Lorg/bitspark/android/beans/Source;->getShort_title()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    iget-object p1, p0, Lqa/c;->b:Lqa/g;

    .line 183
    .line 184
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    const/4 v3, 0x0

    .line 192
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    if-eqz v4, :cond_5

    .line 197
    .line 198
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    add-int/lit8 v5, v3, 0x1

    .line 203
    .line 204
    if-ltz v3, :cond_4

    .line 205
    .line 206
    check-cast v4, Lorg/bitspark/android/beans/Source;

    .line 207
    .line 208
    if-ne v3, v2, :cond_3

    .line 209
    .line 210
    const/4 v3, 0x1

    .line 211
    goto :goto_3

    .line 212
    :cond_3
    const/4 v3, 0x0

    .line 213
    :goto_3
    invoke-virtual {v4, v3}, Lorg/bitspark/android/beans/Source;->setSelected(Z)V

    .line 214
    .line 215
    .line 216
    move v3, v5

    .line 217
    goto :goto_2

    .line 218
    :cond_4
    invoke-static {}, Lx8/k;->P()V

    .line 219
    .line 220
    .line 221
    const/4 p1, 0x0

    .line 222
    throw p1

    .line 223
    :cond_5
    invoke-virtual {p1}, Lqa/g;->a()Lqa/o;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    invoke-virtual {p1}, Lqa/o;->a()V

    .line 228
    .line 229
    .line 230
    sget-object p1, Lw8/l;->a:Lw8/l;

    .line 231
    .line 232
    return-object p1

    .line 233
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
