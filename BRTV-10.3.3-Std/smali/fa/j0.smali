.class public final Lfa/j0;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Landroidx/recyclerview/widget/p1;

.field public final synthetic d:Landroidx/recyclerview/widget/k0;


# direct methods
.method public synthetic constructor <init>(Landroidx/recyclerview/widget/k0;Landroidx/recyclerview/widget/p1;II)V
    .locals 0

    .line 1
    iput p4, p0, Lfa/j0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lfa/j0;->d:Landroidx/recyclerview/widget/k0;

    .line 4
    .line 5
    iput-object p2, p0, Lfa/j0;->c:Landroidx/recyclerview/widget/p1;

    .line 6
    .line 7
    iput p3, p0, Lfa/j0;->b:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    iget v0, p0, Lfa/j0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-object v2, p0, Lfa/j0;->d:Landroidx/recyclerview/widget/k0;

    .line 11
    .line 12
    check-cast v2, Lma/a;

    .line 13
    .line 14
    iput-wide v0, v2, Lma/a;->i:J

    .line 15
    .line 16
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget-object v1, p0, Lfa/j0;->c:Landroidx/recyclerview/widget/p1;

    .line 21
    .line 22
    check-cast v1, Lt3/d;

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    if-eqz v0, :cond_4

    .line 26
    .line 27
    iget p2, p0, Lfa/j0;->b:I

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    const/4 v5, 0x0

    .line 31
    if-eq v0, v3, :cond_2

    .line 32
    .line 33
    const/4 v6, 0x3

    .line 34
    if-eq v0, v6, :cond_2

    .line 35
    .line 36
    iget-boolean v0, v2, Lma/a;->k:Z

    .line 37
    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    iget-wide v0, v2, Lma/a;->i:J

    .line 41
    .line 42
    iget-wide v6, v2, Lma/a;->h:J

    .line 43
    .line 44
    sub-long/2addr v0, v6

    .line 45
    iget-wide v6, v2, Lma/a;->j:J

    .line 46
    .line 47
    cmp-long v8, v0, v6

    .line 48
    .line 49
    if-ltz v8, :cond_0

    .line 50
    .line 51
    const/4 v5, 0x1

    .line 52
    :cond_0
    iput-boolean v5, v2, Lma/a;->k:Z

    .line 53
    .line 54
    :cond_1
    iget-boolean v0, v2, Lma/a;->k:Z

    .line 55
    .line 56
    if-eqz v0, :cond_6

    .line 57
    .line 58
    iget-boolean v0, v2, Lma/a;->l:Z

    .line 59
    .line 60
    if-nez v0, :cond_6

    .line 61
    .line 62
    iget-object v0, v2, Lma/a;->n:Landroid/os/Handler;

    .line 63
    .line 64
    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    iput-boolean v3, v2, Lma/a;->l:Z

    .line 68
    .line 69
    iget-object v0, v2, Lma/a;->f:Lna/a;

    .line 70
    .line 71
    if-eqz v0, :cond_6

    .line 72
    .line 73
    invoke-virtual {v0, p1, p2, v3}, Lna/a;->a(Landroid/view/View;IZ)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    iget-object v0, v2, Lma/a;->n:Landroid/os/Handler;

    .line 78
    .line 79
    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    iget-boolean v0, v2, Lma/a;->k:Z

    .line 83
    .line 84
    if-eqz v0, :cond_3

    .line 85
    .line 86
    iput-boolean v5, v2, Lma/a;->k:Z

    .line 87
    .line 88
    iput-boolean v5, v2, Lma/a;->l:Z

    .line 89
    .line 90
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    invoke-virtual {v1, v0}, Lt3/d;->b(I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    const v1, 0x7f060330

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 102
    .line 103
    .line 104
    iget-object v0, v2, Lma/a;->f:Lna/a;

    .line 105
    .line 106
    if-eqz v0, :cond_6

    .line 107
    .line 108
    invoke-virtual {v0, p1, p2, v5}, Lna/a;->a(Landroid/view/View;IZ)V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    .line 113
    .line 114
    .line 115
    move-result-wide v4

    .line 116
    iput-wide v4, v2, Lma/a;->h:J

    .line 117
    .line 118
    iget-object p2, v2, Lma/a;->e:Lna/a;

    .line 119
    .line 120
    if-eqz p2, :cond_5

    .line 121
    .line 122
    invoke-virtual {v1}, Landroidx/recyclerview/widget/p1;->getLayoutPosition()I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    iget-object p2, p2, Lna/a;->a:Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;

    .line 127
    .line 128
    invoke-static {p2, p1, v0}, Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;->a(Lorg/bitspark/android/keyboard/custom/MyKeyBoardView;Landroid/view/View;I)V

    .line 129
    .line 130
    .line 131
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 132
    .line 133
    .line 134
    move-result p2

    .line 135
    invoke-virtual {v1, p2}, Lt3/d;->b(I)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    const v0, 0x7f0600b8

    .line 140
    .line 141
    .line 142
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 143
    .line 144
    .line 145
    iget-object p2, v2, Lma/a;->n:Landroid/os/Handler;

    .line 146
    .line 147
    new-instance v0, La3/c;

    .line 148
    .line 149
    const/16 v1, 0x17

    .line 150
    .line 151
    invoke-direct {v0, p0, v1, p1}, La3/c;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    const-wide/16 v1, 0x1f4

    .line 155
    .line 156
    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 157
    .line 158
    .line 159
    :cond_6
    :goto_0
    return v3

    .line 160
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    const/4 p2, 0x1

    .line 165
    const/4 v0, 0x0

    .line 166
    if-ne p1, p2, :cond_7

    .line 167
    .line 168
    iget-object p1, p0, Lfa/j0;->d:Landroidx/recyclerview/widget/k0;

    .line 169
    .line 170
    check-cast p1, Lfa/o1;

    .line 171
    .line 172
    iget-object p1, p1, Lfa/c;->g:Lfa/o0;

    .line 173
    .line 174
    if-eqz p1, :cond_7

    .line 175
    .line 176
    iget-object p2, p0, Lfa/j0;->c:Landroidx/recyclerview/widget/p1;

    .line 177
    .line 178
    check-cast p2, Lfa/p1;

    .line 179
    .line 180
    iget-object p2, p2, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 181
    .line 182
    iget v1, p0, Lfa/j0;->b:I

    .line 183
    .line 184
    invoke-interface {p1, v1, p2}, Lfa/o0;->a(ILandroid/view/View;)V

    .line 185
    .line 186
    .line 187
    :cond_7
    return v0

    .line 188
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 189
    .line 190
    .line 191
    move-result p1

    .line 192
    const/4 p2, 0x1

    .line 193
    const/4 v0, 0x0

    .line 194
    if-ne p1, p2, :cond_8

    .line 195
    .line 196
    iget-object p1, p0, Lfa/j0;->d:Landroidx/recyclerview/widget/k0;

    .line 197
    .line 198
    check-cast p1, Lfa/m1;

    .line 199
    .line 200
    iget-object p1, p1, Lfa/c;->g:Lfa/o0;

    .line 201
    .line 202
    if-eqz p1, :cond_8

    .line 203
    .line 204
    iget-object p2, p0, Lfa/j0;->c:Landroidx/recyclerview/widget/p1;

    .line 205
    .line 206
    check-cast p2, Lfa/l1;

    .line 207
    .line 208
    iget-object p2, p2, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 209
    .line 210
    iget v1, p0, Lfa/j0;->b:I

    .line 211
    .line 212
    invoke-interface {p1, v1, p2}, Lfa/o0;->a(ILandroid/view/View;)V

    .line 213
    .line 214
    .line 215
    :cond_8
    return v0

    .line 216
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 217
    .line 218
    .line 219
    move-result p1

    .line 220
    const/4 p2, 0x1

    .line 221
    const/4 v0, 0x0

    .line 222
    if-ne p1, p2, :cond_9

    .line 223
    .line 224
    iget-object p1, p0, Lfa/j0;->d:Landroidx/recyclerview/widget/k0;

    .line 225
    .line 226
    check-cast p1, Lfa/b1;

    .line 227
    .line 228
    iget-object p1, p1, Lfa/c;->g:Lfa/o0;

    .line 229
    .line 230
    if-eqz p1, :cond_9

    .line 231
    .line 232
    iget-object p2, p0, Lfa/j0;->c:Landroidx/recyclerview/widget/p1;

    .line 233
    .line 234
    check-cast p2, Lfa/a1;

    .line 235
    .line 236
    iget-object p2, p2, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 237
    .line 238
    iget v1, p0, Lfa/j0;->b:I

    .line 239
    .line 240
    invoke-interface {p1, v1, p2}, Lfa/o0;->a(ILandroid/view/View;)V

    .line 241
    .line 242
    .line 243
    :cond_9
    return v0

    .line 244
    :pswitch_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 245
    .line 246
    .line 247
    move-result p1

    .line 248
    const/4 p2, 0x1

    .line 249
    const/4 v0, 0x0

    .line 250
    if-ne p1, p2, :cond_a

    .line 251
    .line 252
    iget-object p1, p0, Lfa/j0;->d:Landroidx/recyclerview/widget/k0;

    .line 253
    .line 254
    check-cast p1, Lfa/m0;

    .line 255
    .line 256
    iget-object p1, p1, Lfa/m0;->a:Lfa/o0;

    .line 257
    .line 258
    if-eqz p1, :cond_a

    .line 259
    .line 260
    iget-object p2, p0, Lfa/j0;->c:Landroidx/recyclerview/widget/p1;

    .line 261
    .line 262
    check-cast p2, Lfa/l0;

    .line 263
    .line 264
    iget-object p2, p2, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 265
    .line 266
    iget v1, p0, Lfa/j0;->b:I

    .line 267
    .line 268
    invoke-interface {p1, v1, p2}, Lfa/o0;->a(ILandroid/view/View;)V

    .line 269
    .line 270
    .line 271
    :cond_a
    return v0

    .line 272
    nop

    .line 273
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
