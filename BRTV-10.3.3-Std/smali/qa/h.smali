.class public final synthetic Lqa/h;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Li9/l;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lqa/l;


# direct methods
.method public synthetic constructor <init>(Lqa/l;I)V
    .locals 0

    .line 1
    iput p2, p0, Lqa/h;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lqa/h;->b:Lqa/l;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lqa/h;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lorg/bitspark/android/beans/Menu;

    .line 7
    .line 8
    const-string v0, "hvM=\n"

    .line 9
    .line 10
    const-string v1, "74dULzLOgAQ=\n"

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
    iget-object v0, p0, Lqa/h;->b:Lqa/l;

    .line 20
    .line 21
    iget-object v0, v0, Lqa/l;->j:Lqa/d;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1}, Lorg/bitspark/android/beans/Menu;->getName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {v0, p1}, Lqa/d;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    :cond_0
    sget-object p1, Lw8/l;->a:Lw8/l;

    .line 33
    .line 34
    return-object p1

    .line 35
    :pswitch_0
    check-cast p1, Lorg/bitspark/android/beans/SubtitleMenu;

    .line 36
    .line 37
    const-string v0, "H5w=\n"

    .line 38
    .line 39
    const-string v1, "duhK3wYxqQ4=\n"

    .line 40
    .line 41
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {p1, v0}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lqa/h;->b:Lqa/l;

    .line 49
    .line 50
    iget-object v0, v0, Lqa/l;->i:Lqa/c;

    .line 51
    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Lqa/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    :cond_1
    sget-object p1, Lw8/l;->a:Lw8/l;

    .line 58
    .line 59
    return-object p1

    .line 60
    :pswitch_1
    check-cast p1, Lorg/bitspark/android/beans/SettingBean;

    .line 61
    .line 62
    const-string v0, "aO8=\n"

    .line 63
    .line 64
    const-string v1, "AZtxyhLABKU=\n"

    .line 65
    .line 66
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-static {p1, v0}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lqa/h;->b:Lqa/l;

    .line 74
    .line 75
    iget-object v0, v0, Lqa/l;->g:Lqa/d;

    .line 76
    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    invoke-virtual {p1}, Lorg/bitspark/android/beans/SettingBean;->getName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {v0, p1}, Lqa/d;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    :cond_2
    sget-object p1, Lw8/l;->a:Lw8/l;

    .line 87
    .line 88
    return-object p1

    .line 89
    :pswitch_2
    check-cast p1, Lorg/bitspark/android/beans/Source;

    .line 90
    .line 91
    const-string v0, "ppU=\n"

    .line 92
    .line 93
    const-string v1, "z+HohCLy/lo=\n"

    .line 94
    .line 95
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-static {p1, v0}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lqa/h;->b:Lqa/l;

    .line 103
    .line 104
    iget-object v0, v0, Lqa/l;->h:Lqa/c;

    .line 105
    .line 106
    if-eqz v0, :cond_3

    .line 107
    .line 108
    invoke-virtual {v0, p1}, Lqa/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    :cond_3
    sget-object p1, Lw8/l;->a:Lw8/l;

    .line 112
    .line 113
    return-object p1

    .line 114
    :pswitch_3
    check-cast p1, Lorg/bitspark/android/beans/Menu;

    .line 115
    .line 116
    const-string v0, "sxk=\n"

    .line 117
    .line 118
    const-string v1, "2m3zR6FrbbA=\n"

    .line 119
    .line 120
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-static {p1, v0}, Lj9/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Lqa/h;->b:Lqa/l;

    .line 128
    .line 129
    iget-object v1, v0, Lqa/l;->D:Ljava/util/ArrayList;

    .line 130
    .line 131
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    if-eqz v3, :cond_4

    .line 140
    .line 141
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    check-cast v3, Lorg/bitspark/android/beans/Menu;

    .line 146
    .line 147
    invoke-virtual {p1}, Lorg/bitspark/android/beans/Menu;->getName()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    invoke-virtual {v3}, Lorg/bitspark/android/beans/Menu;->getName()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    invoke-static {v4, v5}, Lj9/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    invoke-virtual {v3, v4}, Lorg/bitspark/android/beans/Menu;->setSelected(Z)V

    .line 160
    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_4
    iget-object v2, v0, Lqa/l;->w:La1/b;

    .line 164
    .line 165
    invoke-static {v2, v1}, Lcom/bumptech/glide/d;->H(La1/b;Ljava/util/ArrayList;)V

    .line 166
    .line 167
    .line 168
    iget-object v0, v0, Lqa/l;->k:Lqa/d;

    .line 169
    .line 170
    if-eqz v0, :cond_5

    .line 171
    .line 172
    invoke-virtual {v0, p1}, Lqa/d;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    :cond_5
    sget-object p1, Lw8/l;->a:Lw8/l;

    .line 176
    .line 177
    return-object p1

    .line 178
    nop

    .line 179
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
