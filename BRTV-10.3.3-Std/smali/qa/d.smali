.class public final synthetic Lqa/d;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Li9/l;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Lqa/d;->a:I

    iput-object p1, p0, Lqa/d;->c:Ljava/lang/Object;

    iput-object p3, p0, Lqa/d;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lqa/g;Lorg/bitspark/android/Spark;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lqa/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqa/d;->b:Ljava/lang/Object;

    iput-object p2, p0, Lqa/d;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lqa/d;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "+5gH9x3B5KXpkBY=\n"

    .line 9
    .line 10
    const-string v1, "iP1zg3Svg+s=\n"

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
    iget-object v0, p0, Lqa/d;->c:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Lqa/o;

    .line 22
    .line 23
    const v1, 0x7f120020

    .line 24
    .line 25
    .line 26
    iget-object v0, v0, Lqa/o;->a:Landroid/app/Activity;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    iget-object v2, p0, Lqa/d;->b:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v2, Lqa/b;

    .line 39
    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    invoke-virtual {v2, p1}, Lqa/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const v1, 0x7f120024

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    invoke-virtual {v2, p1}, Lqa/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    const v1, 0x7f120008

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_2

    .line 75
    .line 76
    invoke-virtual {v2, p1}, Lqa/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    :cond_2
    :goto_0
    sget-object p1, Lw8/l;->a:Lw8/l;

    .line 80
    .line 81
    return-object p1

    .line 82
    :pswitch_0
    check-cast p1, Lorg/bitspark/android/beans/Menu;

    .line 83
    .line 84
    const-string v0, "JeE=\n"

    .line 85
    .line 86
    const-string v1, "TJXQJQ/6um4=\n"

    .line 87
    .line 88
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-static {p1, v0}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lqa/d;->b:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v0, Lqa/g;

    .line 98
    .line 99
    iget-object v1, v0, Lqa/g;->a:Lorg/bitspark/android/Spark;

    .line 100
    .line 101
    iget-object v1, v1, Lorg/bitspark/android/Spark;->K1:Landroidx/media3/ui/PlayerView;

    .line 102
    .line 103
    invoke-virtual {v1}, Landroidx/media3/ui/PlayerView;->getResizeMode()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    invoke-virtual {p1}, Lorg/bitspark/android/beans/Menu;->getName()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    iget-object v2, p0, Lqa/d;->c:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast v2, Lorg/bitspark/android/Spark;

    .line 114
    .line 115
    invoke-virtual {v2}, Lorg/bitspark/android/Spark;->getResources()Landroid/content/res/Resources;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    const v3, 0x7f1201b1

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-static {p1, v2}, Lj9/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    iget-object v2, v0, Lqa/g;->a:Lorg/bitspark/android/Spark;

    .line 131
    .line 132
    if-eqz p1, :cond_3

    .line 133
    .line 134
    const/4 p1, 0x2

    .line 135
    if-eq p1, v1, :cond_4

    .line 136
    .line 137
    iget-object v1, v2, Lorg/bitspark/android/Spark;->K1:Landroidx/media3/ui/PlayerView;

    .line 138
    .line 139
    invoke-virtual {v1, p1}, Landroidx/media3/ui/PlayerView;->setResizeMode(I)V

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_3
    const/4 p1, 0x1

    .line 144
    if-eq p1, v1, :cond_4

    .line 145
    .line 146
    iget-object v1, v2, Lorg/bitspark/android/Spark;->K1:Landroidx/media3/ui/PlayerView;

    .line 147
    .line 148
    invoke-virtual {v1, p1}, Landroidx/media3/ui/PlayerView;->setResizeMode(I)V

    .line 149
    .line 150
    .line 151
    :cond_4
    :goto_1
    invoke-virtual {v0}, Lqa/g;->a()Lqa/o;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-virtual {p1}, Lqa/o;->a()V

    .line 156
    .line 157
    .line 158
    sget-object p1, Lw8/l;->a:Lw8/l;

    .line 159
    .line 160
    return-object p1

    .line 161
    :pswitch_1
    check-cast p1, Ljava/lang/String;

    .line 162
    .line 163
    const-string v0, "c0o4jP6gDhQ=\n"

    .line 164
    .line 165
    const-string v1, "HyVb7YrJYXo=\n"

    .line 166
    .line 167
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-static {p1, v0}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    iget-object v0, p0, Lqa/d;->c:Ljava/lang/Object;

    .line 175
    .line 176
    check-cast v0, Lorg/bitspark/android/Spark;

    .line 177
    .line 178
    const v1, 0x7f120025

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    xor-int/lit8 v1, v1, 0x1

    .line 190
    .line 191
    iget-object v2, p0, Lqa/d;->b:Ljava/lang/Object;

    .line 192
    .line 193
    check-cast v2, Lqa/g;

    .line 194
    .line 195
    iget-object v3, v2, Lqa/g;->a:Lorg/bitspark/android/Spark;

    .line 196
    .line 197
    iget-object v3, v3, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 198
    .line 199
    iput v1, v3, Lta/a;->f:I

    .line 200
    .line 201
    iget-object v0, v0, Lorg/bitspark/android/Spark;->s0:Landroidx/media3/ui/SubtitleView;

    .line 202
    .line 203
    new-instance v1, Landroidx/appcompat/app/m0;

    .line 204
    .line 205
    const/16 v3, 0x10

    .line 206
    .line 207
    invoke-direct {v1, v2, v3, p1}, Landroidx/appcompat/app/m0;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 211
    .line 212
    .line 213
    invoke-virtual {v2}, Lqa/g;->a()Lqa/o;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    invoke-virtual {p1}, Lqa/o;->a()V

    .line 218
    .line 219
    .line 220
    sget-object p1, Lw8/l;->a:Lw8/l;

    .line 221
    .line 222
    return-object p1

    .line 223
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
