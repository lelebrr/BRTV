.class public final synthetic Lcom/google/android/gms/internal/cast/w;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/android/gms/internal/cast/x;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/cast/x;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/google/android/gms/internal/cast/w;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/w;->b:Lcom/google/android/gms/internal/cast/x;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/w;->b:Lcom/google/android/gms/internal/cast/x;

    .line 2
    .line 3
    const/16 v1, 0x65

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x2

    .line 7
    const/4 v4, 0x0

    .line 8
    iget v5, p0, Lcom/google/android/gms/internal/cast/w;->a:I

    .line 9
    .line 10
    packed-switch v5, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    new-instance v1, Lcom/google/android/gms/internal/cast/l7;

    .line 14
    .line 15
    invoke-direct {v1, v3, v0}, Lcom/google/android/gms/internal/cast/l7;-><init>(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, v0, Lcom/google/android/gms/internal/cast/x;->f:Lq4/f;

    .line 19
    .line 20
    invoke-static {v0}, Lb5/l;->e(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lq4/f;->a(Lq4/g;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    new-array v6, v2, [Ljava/lang/Object;

    .line 35
    .line 36
    aput-object v5, v6, v4

    .line 37
    .line 38
    sget-object v7, Lcom/google/android/gms/internal/cast/x;->g:Lv4/b;

    .line 39
    .line 40
    iget-object v8, v7, Lv4/b;->a:Ljava/lang/String;

    .line 41
    .line 42
    const-string v9, "transfer with type = %d has timed out"

    .line 43
    .line 44
    invoke-virtual {v7, v9, v6}, Lv4/b;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    new-array v8, v3, [Ljava/lang/Object;

    .line 56
    .line 57
    aput-object v5, v8, v4

    .line 58
    .line 59
    aput-object v6, v8, v2

    .line 60
    .line 61
    const-string v5, "notify failed transfer with type = %d, reason = %d"

    .line 62
    .line 63
    invoke-virtual {v7, v5, v8}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    new-instance v5, Ljava/util/HashSet;

    .line 67
    .line 68
    iget-object v6, v0, Lcom/google/android/gms/internal/cast/x;->b:Ljava/util/Set;

    .line 69
    .line 70
    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    if-eqz v6, :cond_1

    .line 82
    .line 83
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    check-cast v6, Lcom/google/android/gms/internal/cast/d2;

    .line 88
    .line 89
    iget v7, v6, Lcom/google/android/gms/internal/cast/d2;->a:I

    .line 90
    .line 91
    packed-switch v7, :pswitch_data_1

    .line 92
    .line 93
    .line 94
    new-instance v7, Lcom/google/android/gms/internal/cast/e0;

    .line 95
    .line 96
    const/16 v8, 0xb

    .line 97
    .line 98
    invoke-direct {v7, v8}, Lcom/google/android/gms/internal/cast/e0;-><init>(I)V

    .line 99
    .line 100
    .line 101
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v8

    .line 105
    iput-object v8, v7, Lcom/google/android/gms/internal/cast/e0;->b:Ljava/lang/Object;

    .line 106
    .line 107
    iget-object v6, v6, Lcom/google/android/gms/internal/cast/d2;->b:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast v6, Lc2/b;

    .line 110
    .line 111
    iget-object v8, v6, Lc2/b;->c:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast v8, Lcom/google/android/gms/internal/cast/h;

    .line 114
    .line 115
    iget v8, v8, Lcom/google/android/gms/internal/cast/h;->f:I

    .line 116
    .line 117
    if-ne v8, v3, :cond_0

    .line 118
    .line 119
    const/4 v8, 0x1

    .line 120
    goto :goto_1

    .line 121
    :cond_0
    const/4 v8, 0x0

    .line 122
    :goto_1
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 123
    .line 124
    .line 125
    move-result-object v8

    .line 126
    iput-object v8, v7, Lcom/google/android/gms/internal/cast/e0;->c:Ljava/lang/Object;

    .line 127
    .line 128
    new-instance v8, Lcom/google/android/gms/internal/cast/f0;

    .line 129
    .line 130
    invoke-direct {v8, v7}, Lcom/google/android/gms/internal/cast/f0;-><init>(Lcom/google/android/gms/internal/cast/e0;)V

    .line 131
    .line 132
    .line 133
    invoke-static {v6, v8}, Lc2/b;->k(Lc2/b;Lcom/google/android/gms/internal/cast/f0;)V

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
    :pswitch_1
    sget-object v7, Lcom/google/android/gms/internal/cast/g2;->i:Lv4/b;

    .line 138
    .line 139
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object v9

    .line 147
    new-array v10, v3, [Ljava/lang/Object;

    .line 148
    .line 149
    aput-object v8, v10, v4

    .line 150
    .line 151
    aput-object v9, v10, v2

    .line 152
    .line 153
    const-string v8, "onTransferFailed with type = %d and reason = %d"

    .line 154
    .line 155
    invoke-virtual {v7, v8, v10}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    iget-object v6, v6, Lcom/google/android/gms/internal/cast/d2;->b:Ljava/lang/Object;

    .line 159
    .line 160
    check-cast v6, Lcom/google/android/gms/internal/cast/g2;

    .line 161
    .line 162
    invoke-virtual {v6}, Lcom/google/android/gms/internal/cast/g2;->c()V

    .line 163
    .line 164
    .line 165
    iget-object v7, v6, Lcom/google/android/gms/internal/cast/g2;->g:Lcom/google/android/gms/internal/cast/h2;

    .line 166
    .line 167
    iget-object v8, v6, Lcom/google/android/gms/internal/cast/g2;->c:Lcom/google/android/gms/internal/cast/j2;

    .line 168
    .line 169
    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/cast/j2;->b(Lcom/google/android/gms/internal/cast/h2;)Lcom/google/android/gms/internal/cast/b3;

    .line 170
    .line 171
    .line 172
    move-result-object v7

    .line 173
    invoke-virtual {v7}, Lcom/google/android/gms/internal/cast/b3;->d()Lcom/google/android/gms/internal/cast/w2;

    .line 174
    .line 175
    .line 176
    move-result-object v8

    .line 177
    invoke-static {v8}, Lcom/google/android/gms/internal/cast/w2;->m(Lcom/google/android/gms/internal/cast/w2;)Lcom/google/android/gms/internal/cast/v2;

    .line 178
    .line 179
    .line 180
    move-result-object v8

    .line 181
    invoke-virtual {v8}, Lcom/google/android/gms/internal/cast/b7;->c()V

    .line 182
    .line 183
    .line 184
    iget-object v9, v8, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 185
    .line 186
    check-cast v9, Lcom/google/android/gms/internal/cast/w2;

    .line 187
    .line 188
    invoke-static {v9}, Lcom/google/android/gms/internal/cast/w2;->x(Lcom/google/android/gms/internal/cast/w2;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v8}, Lcom/google/android/gms/internal/cast/b7;->c()V

    .line 192
    .line 193
    .line 194
    iget-object v9, v8, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 195
    .line 196
    check-cast v9, Lcom/google/android/gms/internal/cast/w2;

    .line 197
    .line 198
    invoke-static {v9}, Lcom/google/android/gms/internal/cast/w2;->w(Lcom/google/android/gms/internal/cast/w2;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v8}, Lcom/google/android/gms/internal/cast/b7;->a()Lcom/google/android/gms/internal/cast/c7;

    .line 202
    .line 203
    .line 204
    move-result-object v8

    .line 205
    check-cast v8, Lcom/google/android/gms/internal/cast/w2;

    .line 206
    .line 207
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/cast/b3;->e(Lcom/google/android/gms/internal/cast/w2;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v7}, Lcom/google/android/gms/internal/cast/b7;->a()Lcom/google/android/gms/internal/cast/c7;

    .line 211
    .line 212
    .line 213
    move-result-object v7

    .line 214
    check-cast v7, Lcom/google/android/gms/internal/cast/c3;

    .line 215
    .line 216
    iget-object v6, v6, Lcom/google/android/gms/internal/cast/g2;->a:Lcom/google/android/gms/internal/cast/m1;

    .line 217
    .line 218
    const/16 v8, 0xe8

    .line 219
    .line 220
    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/internal/cast/m1;->a(Lcom/google/android/gms/internal/cast/c3;I)V

    .line 221
    .line 222
    .line 223
    goto/16 :goto_0

    .line 224
    .line 225
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/x;->a()V

    .line 226
    .line 227
    .line 228
    return-void

    .line 229
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
