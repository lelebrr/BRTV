.class public final synthetic Landroidx/mediarouter/app/b;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/mediarouter/app/b;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/mediarouter/app/b;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    .line 1
    iget p1, p0, Landroidx/mediarouter/app/b;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroidx/mediarouter/app/b;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Lqa/g;

    .line 9
    .line 10
    iget-object v0, p1, Lqa/g;->a:Lorg/bitspark/android/Spark;

    .line 11
    .line 12
    iget-object v0, v0, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 13
    .line 14
    iget-object v0, v0, Lta/a;->k:Landroidx/lifecycle/d0;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/lifecycle/d0;->d()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lorg/bitspark/android/beans/ChannelBean;

    .line 21
    .line 22
    if-eqz v0, :cond_4

    .line 23
    .line 24
    iget-object v1, p1, Lqa/g;->a:Lorg/bitspark/android/Spark;

    .line 25
    .line 26
    invoke-virtual {v1}, Lorg/bitspark/android/Spark;->T()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lqa/g;->a()Lqa/o;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0}, Lorg/bitspark/android/beans/ChannelBean;->getSources()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const/4 v2, 0x1

    .line 38
    const/4 v3, 0x0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-le v0, v2, :cond_0

    .line 46
    .line 47
    const/4 v3, 0x1

    .line 48
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    const-string v0, "SXHmkek=\n"

    .line 52
    .line 53
    const-string v4, "Kh2P8oLBubY=\n"

    .line 54
    .line 55
    invoke-static {v0, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget-object p1, p1, Lqa/g;->c:Lqa/b;

    .line 60
    .line 61
    invoke-static {p1, v0}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Lqa/o;->b()Lqa/l;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iget-object v4, v0, Lqa/l;->C:Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 71
    .line 72
    .line 73
    iget-object v5, v0, Lqa/l;->a:Landroid/app/Activity;

    .line 74
    .line 75
    if-eqz v3, :cond_1

    .line 76
    .line 77
    new-instance v3, Lorg/bitspark/android/beans/SettingBean;

    .line 78
    .line 79
    sget v6, Lorg/bitspark/android/R$drawable;->selector_setting_source:I

    .line 80
    .line 81
    const v7, 0x7f120020

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    const-string v8, "x+MIz5WVq8nHrlKyz84=\n"

    .line 89
    .line 90
    const-string v9, "oIZ8nOHnwqc=\n"

    .line 91
    .line 92
    invoke-static {v8, v9}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v8

    .line 96
    invoke-static {v7, v8}, Lj9/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-direct {v3, v6, v7}, Lorg/bitspark/android/beans/SettingBean;-><init>(ILjava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    :cond_1
    new-instance v3, Lorg/bitspark/android/beans/SettingBean;

    .line 106
    .line 107
    sget v6, Lorg/bitspark/android/R$drawable;->selector_setting_fullscreen:I

    .line 108
    .line 109
    const v7, 0x7f120008

    .line 110
    .line 111
    .line 112
    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    const-string v8, "A8MuWmeJdmUDjnQnPdI=\n"

    .line 117
    .line 118
    const-string v9, "ZKZaCRP7Hws=\n"

    .line 119
    .line 120
    invoke-static {v8, v9}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v8

    .line 124
    invoke-static {v7, v8}, Lj9/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-direct {v3, v6, v7}, Lorg/bitspark/android/beans/SettingBean;-><init>(ILjava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    const-string v3, "eniclMqrrS16YoTYiK3sIHV+hNiep+wte2Pdlp+koGNgdICdyqe+JDpvmYyZuK0xfyORlo66oypw\nI6OIi7qn\n"

    .line 134
    .line 135
    const-string v6, "FA3w+OrIzEM=\n"

    .line 136
    .line 137
    invoke-static {v3, v6}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-object v3, v5

    .line 141
    check-cast v3, Lorg/bitspark/android/Spark;

    .line 142
    .line 143
    sget v3, Lorg/bitspark/android/Spark;->m2:I

    .line 144
    .line 145
    if-ne v3, v2, :cond_2

    .line 146
    .line 147
    new-instance v2, Lorg/bitspark/android/beans/SettingBean;

    .line 148
    .line 149
    sget v3, Lorg/bitspark/android/R$drawable;->selector_setting_subtitle:I

    .line 150
    .line 151
    const v6, 0x7f120024

    .line 152
    .line 153
    .line 154
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    const-string v6, "j/fO7AIlDAyPupSRWH4=\n"

    .line 159
    .line 160
    const-string v7, "6JK6v3ZXZWI=\n"

    .line 161
    .line 162
    invoke-static {v6, v7}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    invoke-static {v5, v6}, Lj9/i;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-direct {v2, v3, v5}, Lorg/bitspark/android/beans/SettingBean;-><init>(ILjava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    :cond_2
    iget-object v2, v0, Lqa/l;->t:La1/b;

    .line 176
    .line 177
    invoke-static {v2, v4}, Lcom/bumptech/glide/d;->H(La1/b;Ljava/util/ArrayList;)V

    .line 178
    .line 179
    .line 180
    new-instance v2, Lqa/d;

    .line 181
    .line 182
    const/4 v3, 0x2

    .line 183
    invoke-direct {v2, v1, v3, p1}, Lqa/d;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    iput-object v2, v0, Lqa/l;->g:Lqa/d;

    .line 187
    .line 188
    iget-object p1, v0, Lqa/l;->d:Landroid/app/Dialog;

    .line 189
    .line 190
    if-eqz p1, :cond_3

    .line 191
    .line 192
    invoke-virtual {v0}, Lqa/l;->a()Landroid/app/Dialog;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    if-nez p1, :cond_3

    .line 201
    .line 202
    invoke-virtual {v0}, Lqa/l;->a()Landroid/app/Dialog;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 207
    .line 208
    .line 209
    :cond_3
    invoke-virtual {v0}, Lqa/l;->b()V

    .line 210
    .line 211
    .line 212
    :cond_4
    return-void

    .line 213
    :pswitch_0
    iget-object p1, p0, Landroidx/mediarouter/app/b;->b:Ljava/lang/Object;

    .line 214
    .line 215
    check-cast p1, Landroidx/mediarouter/app/f;

    .line 216
    .line 217
    invoke-virtual {p1}, Landroidx/mediarouter/app/f;->dismiss()V

    .line 218
    .line 219
    .line 220
    return-void

    .line 221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
