.class public final Lka/j0;
.super Lcom/lzy/okgo/callback/StringCallback;
.source "MyApplication"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lka/m0;


# direct methods
.method public constructor <init>(Lka/m0;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lka/j0;->b:Lka/m0;

    .line 2
    .line 3
    iput p2, p0, Lka/j0;->a:I

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/lzy/okgo/callback/StringCallback;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCacheSuccess(Lcom/lzy/okgo/model/Response;)V
    .locals 2

    .line 1
    const-string p1, "rMBMt4U=\n"

    .line 2
    .line 3
    const-string v0, "7pMa2OEQqMg=\n"

    .line 4
    .line 5
    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v0, "ujBIjh7gBDi1NFLADeNAHa86UY4L7gMTuHVTxQ==\n"

    .line 10
    .line 11
    const-string v1, "3VU8rmiPYHs=\n"

    .line 12
    .line 13
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget-boolean v1, Lorg/bitspark/android/utils/m;->b:Z

    .line 18
    .line 19
    invoke-static {p1, v0}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sget-object p1, Lka/m0;->E0:Landroidx/mediarouter/app/c;

    .line 23
    .line 24
    new-instance v0, La/f;

    .line 25
    .line 26
    const/16 v1, 0x18

    .line 27
    .line 28
    invoke-direct {v0, v1, p0}, La/f;-><init>(ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final onError(Lcom/lzy/okgo/model/Response;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lka/j0;->b:Lka/m0;

    .line 2
    .line 3
    iget-object v0, v0, Lka/m0;->g0:Lorg/bitspark/android/view/CircularProgressBar;

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lorg/bitspark/android/view/CircularProgressBar;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    const-string v0, "G4XHrTg=\n"

    .line 11
    .line 12
    const-string v1, "WdaRwlynqB8=\n"

    .line 13
    .line 14
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v2, "YctwXtjFgMNuz2oQy8bE72jrdgzB2N4=\n"

    .line 24
    .line 25
    const-string v3, "Bq4Efq6q5IA=\n"

    .line 26
    .line 27
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/lzy/okgo/model/Response;->getException()Ljava/lang/Throwable;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    sget-boolean v1, Lorg/bitspark/android/utils/m;->b:Z

    .line 50
    .line 51
    invoke-static {v0, p1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final onSuccess(Lcom/lzy/okgo/model/Response;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "OVNJ/vo=\n"

    .line 3
    .line 4
    const-string v2, "ewAfkZ6rUKc=\n"

    .line 5
    .line 6
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v3, "Ta2mck+eV0xCqbw8XJ0TaVinv3JKlEF5T7ryNlafVjUK\n"

    .line 16
    .line 17
    const-string v4, "KsjSUjnxMw8=\n"

    .line 18
    .line 19
    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/lzy/okgo/model/Response;->body()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    sget-boolean v3, Lorg/bitspark/android/utils/m;->b:Z

    .line 44
    .line 45
    invoke-static {v1, v2}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lka/j0;->b:Lka/m0;

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/lzy/okgo/model/Response;->body()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Ljava/lang/String;

    .line 55
    .line 56
    iget v2, p0, Lka/j0;->a:I

    .line 57
    .line 58
    sget-object v3, Lka/m0;->B0:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    const-string v3, "YqSIZxVp1zphj75qL2TzGHyih2R7NoA=\n"

    .line 64
    .line 65
    const-string v4, "DsvpA1sMoGw=\n"

    .line 66
    .line 67
    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    const-string v3, "KUNZljYV+sIpQ1mWNhU=\n"

    .line 71
    .line 72
    const-string v4, "FH5kqwsox/8=\n"

    .line 73
    .line 74
    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    iget v3, v1, Lka/m0;->u0:I

    .line 78
    .line 79
    const/16 v4, 0x8

    .line 80
    .line 81
    if-eq v2, v3, :cond_0

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    if-eqz v3, :cond_1

    .line 89
    .line 90
    sget-object p1, Lka/m0;->C0:Landroidx/recyclerview/widget/RecyclerView;

    .line 91
    .line 92
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 93
    .line 94
    .line 95
    const/4 p1, -0x5

    .line 96
    if-ne v2, p1, :cond_5

    .line 97
    .line 98
    sget-object p1, Lka/m0;->D0:Landroid/widget/RelativeLayout;

    .line 99
    .line 100
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_1
    invoke-virtual {v1, v2}, Lka/m0;->R(I)Z

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    if-nez v3, :cond_2

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_2
    :try_start_0
    new-instance v3, Lfa/x0;

    .line 112
    .line 113
    invoke-virtual {v1}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    invoke-direct {v3, p1, v5, v2}, Lfa/x0;-><init>(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;I)V

    .line 118
    .line 119
    .line 120
    iput-object v3, v1, Lka/m0;->d0:Lfa/x0;

    .line 121
    .line 122
    sget-boolean p1, Lka/m0;->G0:Z

    .line 123
    .line 124
    if-eqz p1, :cond_3

    .line 125
    .line 126
    const/4 p1, 0x5

    .line 127
    iput p1, v3, Lfa/o;->g:I

    .line 128
    .line 129
    :cond_3
    const/4 p1, 0x3

    .line 130
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    new-instance v5, La7/f;

    .line 135
    .line 136
    const/16 v6, 0x1d

    .line 137
    .line 138
    invoke-direct {v5, v1, v6, p1}, La7/f;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    iput-object v5, v3, Lfa/o;->h:Lfa/n0;

    .line 142
    .line 143
    iget-object p1, v1, Lka/m0;->d0:Lfa/x0;

    .line 144
    .line 145
    new-instance v3, Lka/k0;

    .line 146
    .line 147
    invoke-direct {v3, v1, v2, v0}, Lka/k0;-><init>(Lka/m0;II)V

    .line 148
    .line 149
    .line 150
    iput-object v3, p1, Lfa/x0;->p:Lfa/o0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .line 152
    goto :goto_0

    .line 153
    :catch_0
    move-exception p1

    .line 154
    sget-object v2, Lka/m0;->B0:Ljava/lang/String;

    .line 155
    .line 156
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    sget-boolean v3, Lorg/bitspark/android/utils/m;->b:Z

    .line 161
    .line 162
    invoke-static {v2, p1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    :goto_0
    sget-object p1, Lka/m0;->D0:Landroid/widget/RelativeLayout;

    .line 166
    .line 167
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 168
    .line 169
    .line 170
    sget-object p1, Lka/m0;->C0:Landroidx/recyclerview/widget/RecyclerView;

    .line 171
    .line 172
    iget-object v1, v1, Lka/m0;->d0:Lfa/x0;

    .line 173
    .line 174
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/k0;)V

    .line 175
    .line 176
    .line 177
    sget-object p1, Lka/m0;->C0:Landroidx/recyclerview/widget/RecyclerView;

    .line 178
    .line 179
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    if-ne p1, v4, :cond_4

    .line 184
    .line 185
    sget-object p1, Lka/m0;->C0:Landroidx/recyclerview/widget/RecyclerView;

    .line 186
    .line 187
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 188
    .line 189
    .line 190
    :cond_4
    sget-object p1, Lka/m0;->C0:Landroidx/recyclerview/widget/RecyclerView;

    .line 191
    .line 192
    const/4 v0, 0x0

    .line 193
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/s0;)V

    .line 194
    .line 195
    .line 196
    :cond_5
    :goto_1
    iget-object p1, p0, Lka/j0;->b:Lka/m0;

    .line 197
    .line 198
    iget-object p1, p1, Lka/m0;->g0:Lorg/bitspark/android/view/CircularProgressBar;

    .line 199
    .line 200
    invoke-virtual {p1, v4}, Lorg/bitspark/android/view/CircularProgressBar;->setVisibility(I)V

    .line 201
    .line 202
    .line 203
    return-void
.end method
