.class public final Lq1/b;
.super Landroid/os/Handler;
.source "MyApplication"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Ljava/util/ArrayList;

.field public final synthetic c:Lq1/h;


# direct methods
.method public constructor <init>(Lq1/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq1/b;->c:Lq1/h;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lq1/b;->a:Ljava/util/ArrayList;

    .line 12
    .line 13
    new-instance p1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lq1/b;->b:Ljava/util/ArrayList;

    .line 19
    .line 20
    return-void
.end method

.method public static a(Lq1/n0;ILjava/lang/Object;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lq1/n0;->a:Lq1/u0;

    .line 2
    .line 3
    const v1, 0xff00

    .line 4
    .line 5
    .line 6
    and-int/2addr v1, p1

    .line 7
    const/16 v2, 0x100

    .line 8
    .line 9
    iget-object v3, p0, Lq1/n0;->b:Lq1/m0;

    .line 10
    .line 11
    if-eq v1, v2, :cond_3

    .line 12
    .line 13
    const/16 p0, 0x200

    .line 14
    .line 15
    if-eq v1, p0, :cond_2

    .line 16
    .line 17
    const/16 p0, 0x300

    .line 18
    .line 19
    if-eq v1, p0, :cond_0

    .line 20
    .line 21
    goto/16 :goto_4

    .line 22
    .line 23
    :cond_0
    const/16 p0, 0x301

    .line 24
    .line 25
    if-eq p1, p0, :cond_1

    .line 26
    .line 27
    goto/16 :goto_4

    .line 28
    .line 29
    :cond_1
    check-cast p2, Lq1/x0;

    .line 30
    .line 31
    invoke-virtual {v3, p2}, Lq1/m0;->n(Lq1/x0;)V

    .line 32
    .line 33
    .line 34
    goto/16 :goto_4

    .line 35
    .line 36
    :cond_2
    check-cast p2, Lq1/r0;

    .line 37
    .line 38
    packed-switch p1, :pswitch_data_0

    .line 39
    .line 40
    .line 41
    goto/16 :goto_4

    .line 42
    .line 43
    :pswitch_0
    invoke-virtual {v3}, Lq1/m0;->b()V

    .line 44
    .line 45
    .line 46
    goto/16 :goto_4

    .line 47
    .line 48
    :pswitch_1
    invoke-virtual {v3}, Lq1/m0;->c()V

    .line 49
    .line 50
    .line 51
    goto/16 :goto_4

    .line 52
    .line 53
    :pswitch_2
    invoke-virtual {v3}, Lq1/m0;->a()V

    .line 54
    .line 55
    .line 56
    goto/16 :goto_4

    .line 57
    .line 58
    :cond_3
    const/16 v1, 0x108

    .line 59
    .line 60
    const/16 v2, 0x106

    .line 61
    .line 62
    if-eq p1, v1, :cond_6

    .line 63
    .line 64
    if-ne p1, v2, :cond_4

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_4
    const/16 v1, 0x109

    .line 68
    .line 69
    if-eq p1, v1, :cond_5

    .line 70
    .line 71
    const/16 v1, 0x10a

    .line 72
    .line 73
    if-eq p1, v1, :cond_5

    .line 74
    .line 75
    check-cast p2, Lq1/s0;

    .line 76
    .line 77
    const/4 v1, 0x0

    .line 78
    goto :goto_1

    .line 79
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    new-instance p0, Ljava/lang/ClassCastException;

    .line 83
    .line 84
    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    .line 85
    .line 86
    .line 87
    throw p0

    .line 88
    :cond_6
    :goto_0
    check-cast p2, Lq1/g;

    .line 89
    .line 90
    iget-object v1, p2, Lq1/g;->b:Lq1/s0;

    .line 91
    .line 92
    iget-object p2, p2, Lq1/g;->a:Lq1/s0;

    .line 93
    .line 94
    move-object v6, v1

    .line 95
    move-object v1, p2

    .line 96
    move-object p2, v6

    .line 97
    :goto_1
    if-eqz p2, :cond_c

    .line 98
    .line 99
    iget v4, p0, Lq1/n0;->d:I

    .line 100
    .line 101
    and-int/lit8 v4, v4, 0x2

    .line 102
    .line 103
    const/4 v5, 0x1

    .line 104
    if-nez v4, :cond_a

    .line 105
    .line 106
    iget-object p0, p0, Lq1/n0;->c:Lq1/l0;

    .line 107
    .line 108
    invoke-virtual {p2, p0}, Lq1/s0;->h(Lq1/l0;)Z

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    if-eqz p0, :cond_7

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_7
    invoke-static {}, Lq1/u0;->c()Lq1/h;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    iget-object p0, p0, Lq1/h;->u:Lq1/x0;

    .line 120
    .line 121
    const/4 v4, 0x0

    .line 122
    if-nez p0, :cond_8

    .line 123
    .line 124
    const/4 p0, 0x0

    .line 125
    goto :goto_2

    .line 126
    :cond_8
    iget-boolean p0, p0, Lq1/x0;->c:Z

    .line 127
    .line 128
    :goto_2
    if-eqz p0, :cond_9

    .line 129
    .line 130
    invoke-virtual {p2}, Lq1/s0;->d()Z

    .line 131
    .line 132
    .line 133
    move-result p0

    .line 134
    if-eqz p0, :cond_9

    .line 135
    .line 136
    if-ne p1, v2, :cond_9

    .line 137
    .line 138
    const/4 p0, 0x3

    .line 139
    if-ne p3, p0, :cond_9

    .line 140
    .line 141
    if-eqz v1, :cond_9

    .line 142
    .line 143
    invoke-virtual {v1}, Lq1/s0;->d()Z

    .line 144
    .line 145
    .line 146
    move-result p0

    .line 147
    xor-int/2addr v5, p0

    .line 148
    goto :goto_3

    .line 149
    :cond_9
    const/4 v5, 0x0

    .line 150
    :cond_a
    :goto_3
    if-nez v5, :cond_b

    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_b
    packed-switch p1, :pswitch_data_1

    .line 154
    .line 155
    .line 156
    goto :goto_4

    .line 157
    :pswitch_3
    invoke-virtual {v3, v1, p2, p3}, Lq1/m0;->g(Lq1/s0;Lq1/s0;I)V

    .line 158
    .line 159
    .line 160
    goto :goto_4

    .line 161
    :pswitch_4
    invoke-virtual {v3, v1, p2}, Lq1/m0;->f(Lq1/s0;Lq1/s0;)V

    .line 162
    .line 163
    .line 164
    goto :goto_4

    .line 165
    :pswitch_5
    invoke-virtual {v3, v0, p2, p3, v1}, Lq1/m0;->j(Lq1/u0;Lq1/s0;ILq1/s0;)V

    .line 166
    .line 167
    .line 168
    goto :goto_4

    .line 169
    :pswitch_6
    invoke-virtual {v3, v0, p2, p3}, Lq1/m0;->l(Lq1/u0;Lq1/s0;I)V

    .line 170
    .line 171
    .line 172
    goto :goto_4

    .line 173
    :pswitch_7
    invoke-virtual {v3, v0, p2, p3, p2}, Lq1/m0;->j(Lq1/u0;Lq1/s0;ILq1/s0;)V

    .line 174
    .line 175
    .line 176
    goto :goto_4

    .line 177
    :pswitch_8
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    goto :goto_4

    .line 181
    :pswitch_9
    invoke-virtual {v3, p2}, Lq1/m0;->m(Lq1/s0;)V

    .line 182
    .line 183
    .line 184
    goto :goto_4

    .line 185
    :pswitch_a
    invoke-virtual {v3, v0, p2}, Lq1/m0;->e(Lq1/u0;Lq1/s0;)V

    .line 186
    .line 187
    .line 188
    goto :goto_4

    .line 189
    :pswitch_b
    invoke-virtual {v3, v0, p2}, Lq1/m0;->h(Lq1/u0;Lq1/s0;)V

    .line 190
    .line 191
    .line 192
    goto :goto_4

    .line 193
    :pswitch_c
    invoke-virtual {v3, v0, p2}, Lq1/m0;->d(Lq1/u0;Lq1/s0;)V

    .line 194
    .line 195
    .line 196
    :cond_c
    :goto_4
    return-void

    .line 197
    :pswitch_data_0
    .packed-switch 0x201
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    :pswitch_data_1
    .packed-switch 0x101
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public final b(ILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lq1/b;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    iget v1, p1, Landroid/os/Message;->what:I

    .line 4
    .line 5
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6
    .line 7
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 8
    .line 9
    const/16 v3, 0x103

    .line 10
    .line 11
    iget-object v4, p0, Lq1/b;->c:Lq1/h;

    .line 12
    .line 13
    if-ne v1, v3, :cond_0

    .line 14
    .line 15
    invoke-virtual {v4}, Lq1/h;->g()Lq1/s0;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    iget-object v3, v3, Lq1/s0;->c:Ljava/lang/String;

    .line 20
    .line 21
    move-object v5, v2

    .line 22
    check-cast v5, Lq1/s0;

    .line 23
    .line 24
    iget-object v5, v5, Lq1/s0;->c:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    const/4 v3, 0x1

    .line 33
    invoke-virtual {v4, v3}, Lq1/h;->p(Z)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object v3, p0, Lq1/b;->b:Ljava/util/ArrayList;

    .line 37
    .line 38
    const/16 v5, 0x106

    .line 39
    .line 40
    if-eq v1, v5, :cond_2

    .line 41
    .line 42
    const/16 v5, 0x108

    .line 43
    .line 44
    if-eq v1, v5, :cond_1

    .line 45
    .line 46
    packed-switch v1, :pswitch_data_0

    .line 47
    .line 48
    .line 49
    goto/16 :goto_1

    .line 50
    .line 51
    :pswitch_0
    iget-object v3, v4, Lq1/h;->s:Lq1/e1;

    .line 52
    .line 53
    move-object v5, v2

    .line 54
    check-cast v5, Lq1/s0;

    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5}, Lq1/s0;->c()Lq1/e0;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    if-eq v6, v3, :cond_5

    .line 64
    .line 65
    invoke-virtual {v3, v5}, Lq1/e1;->k(Lq1/s0;)I

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-ltz v5, :cond_5

    .line 70
    .line 71
    iget-object v3, v3, Lq1/e1;->r:Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    check-cast v3, Lq1/d1;

    .line 78
    .line 79
    invoke-static {v3}, Lq1/e1;->t(Lq1/d1;)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :pswitch_1
    iget-object v3, v4, Lq1/h;->s:Lq1/e1;

    .line 84
    .line 85
    move-object v5, v2

    .line 86
    check-cast v5, Lq1/s0;

    .line 87
    .line 88
    invoke-virtual {v3, v5}, Lq1/e1;->p(Lq1/s0;)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :pswitch_2
    iget-object v3, v4, Lq1/h;->s:Lq1/e1;

    .line 93
    .line 94
    move-object v5, v2

    .line 95
    check-cast v5, Lq1/s0;

    .line 96
    .line 97
    invoke-virtual {v3, v5}, Lq1/e1;->o(Lq1/s0;)V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_1
    move-object v5, v2

    .line 102
    check-cast v5, Lq1/g;

    .line 103
    .line 104
    iget-object v6, v5, Lq1/g;->b:Lq1/s0;

    .line 105
    .line 106
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    iget-object v3, v4, Lq1/h;->s:Lq1/e1;

    .line 110
    .line 111
    invoke-virtual {v3, v6}, Lq1/e1;->o(Lq1/s0;)V

    .line 112
    .line 113
    .line 114
    iget-boolean v3, v5, Lq1/g;->c:Z

    .line 115
    .line 116
    if-eqz v3, :cond_5

    .line 117
    .line 118
    iget-object v3, v4, Lq1/h;->s:Lq1/e1;

    .line 119
    .line 120
    invoke-virtual {v3, v6}, Lq1/e1;->q(Lq1/s0;)V

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_2
    move-object v5, v2

    .line 125
    check-cast v5, Lq1/g;

    .line 126
    .line 127
    iget-object v6, v5, Lq1/g;->b:Lq1/s0;

    .line 128
    .line 129
    iget-boolean v5, v5, Lq1/g;->c:Z

    .line 130
    .line 131
    if-eqz v5, :cond_3

    .line 132
    .line 133
    iget-object v5, v4, Lq1/h;->s:Lq1/e1;

    .line 134
    .line 135
    invoke-virtual {v5, v6}, Lq1/e1;->q(Lq1/s0;)V

    .line 136
    .line 137
    .line 138
    :cond_3
    iget-object v5, v4, Lq1/h;->v:Lq1/s0;

    .line 139
    .line 140
    if-eqz v5, :cond_5

    .line 141
    .line 142
    invoke-virtual {v6}, Lq1/s0;->d()Z

    .line 143
    .line 144
    .line 145
    move-result v5

    .line 146
    if-eqz v5, :cond_5

    .line 147
    .line 148
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 153
    .line 154
    .line 155
    move-result v6

    .line 156
    if-eqz v6, :cond_4

    .line 157
    .line 158
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v6

    .line 162
    check-cast v6, Lq1/s0;

    .line 163
    .line 164
    iget-object v7, v4, Lq1/h;->s:Lq1/e1;

    .line 165
    .line 166
    invoke-virtual {v7, v6}, Lq1/e1;->p(Lq1/s0;)V

    .line 167
    .line 168
    .line 169
    goto :goto_0

    .line 170
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 171
    .line 172
    .line 173
    :cond_5
    :goto_1
    :try_start_0
    iget-object v3, v4, Lq1/h;->h:Ljava/util/ArrayList;

    .line 174
    .line 175
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 176
    .line 177
    .line 178
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :goto_2
    add-int/lit8 v3, v3, -0x1

    .line 180
    .line 181
    if-ltz v3, :cond_7

    .line 182
    .line 183
    iget-object v5, v4, Lq1/h;->h:Ljava/util/ArrayList;

    .line 184
    .line 185
    :try_start_1
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    check-cast v6, Ljava/lang/ref/WeakReference;

    .line 190
    .line 191
    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v6

    .line 195
    check-cast v6, Lq1/u0;

    .line 196
    .line 197
    if-nez v6, :cond_6

    .line 198
    .line 199
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    goto :goto_2

    .line 203
    :catchall_0
    move-exception p1

    .line 204
    goto :goto_4

    .line 205
    :cond_6
    iget-object v5, v6, Lq1/u0;->b:Ljava/util/ArrayList;

    .line 206
    .line 207
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 208
    .line 209
    .line 210
    goto :goto_2

    .line 211
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 216
    .line 217
    .line 218
    move-result v4

    .line 219
    if-eqz v4, :cond_8

    .line 220
    .line 221
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v4

    .line 225
    check-cast v4, Lq1/n0;

    .line 226
    .line 227
    invoke-static {v4, v1, v2, p1}, Lq1/b;->a(Lq1/n0;ILjava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    .line 229
    .line 230
    goto :goto_3

    .line 231
    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 232
    .line 233
    .line 234
    return-void

    .line 235
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 236
    .line 237
    .line 238
    throw p1

    .line 239
    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
