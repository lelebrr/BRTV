.class public Lka/e;
.super Lka/b;
.source "MyApplication"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final j0:Ljava/lang/String;

.field public static k0:Lorg/bitspark/android/Constants$VIDEO_TYPE;

.field public static l0:Lcom/google/android/gms/internal/cast/x0;


# instance fields
.field public U:Landroid/view/View;

.field public V:Landroid/widget/RelativeLayout;

.field public W:Landroid/widget/LinearLayout;

.field public X:Landroidx/recyclerview/widget/RecyclerView;

.field public Y:Lfa/t;

.field public Z:Landroidx/recyclerview/widget/RecyclerView;

.field public b0:Lfa/t;

.field public c0:Landroidx/recyclerview/widget/GridLayoutManager;

.field public d0:Landroid/widget/RelativeLayout;

.field public e0:Landroid/widget/RelativeLayout;

.field public f0:Z

.field public g0:Lta/a;

.field public h0:Lo8/a;

.field public i0:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "FEybfhtF6gcv\n"

    .line 2
    .line 3
    const-string v1, "Vh/TF2gxhXU=\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lka/e;->j0:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lka/b;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lka/e;->f0:Z

    .line 6
    .line 7
    new-instance v0, Lcom/google/android/gms/internal/cast/x0;

    .line 8
    .line 9
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/cast/x0;-><init>(Landroid/os/Looper;IZ)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lka/e;->l0:Lcom/google/android/gms/internal/cast/x0;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lka/e;->h0:Lo8/a;

    .line 22
    .line 23
    iput-object v0, p0, Lka/e;->i0:Landroid/widget/FrameLayout;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final B()V
    .locals 3

    .line 1
    const-string v0, "/0PM4QsSEiH7Tc8=\n"

    .line 2
    .line 3
    const-string v1, "iSyorG58Z2c=\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "GV+0QcJEGA==\n"

    .line 10
    .line 11
    const-string v2, "djHnNaM2bJU=\n"

    .line 12
    .line 13
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    sget-boolean v2, Lorg/bitspark/android/utils/m;->b:Z

    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-super {p0}, Le8/a;->B()V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lka/e;->f0:Z

    .line 27
    .line 28
    return-void
.end method

.method public final Q()V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "jJg35MHb2dGQszf054eYig==\n"

    .line 4
    .line 5
    const-string v3, "4PdWgIaptqQ=\n"

    .line 6
    .line 7
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    sget-boolean v3, Lorg/bitspark/android/utils/m;->b:Z

    .line 12
    .line 13
    sget-object v3, Lka/e;->j0:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v3, v2}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-boolean v2, p0, Lka/e;->f0:Z

    .line 19
    .line 20
    if-eqz v2, :cond_6

    .line 21
    .line 22
    sget-object v2, Lorg/bitspark/android/Spark;->Y1:Lga/i;

    .line 23
    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    goto/16 :goto_5

    .line 27
    .line 28
    :cond_0
    iget-object v2, p0, Lka/e;->X:Landroidx/recyclerview/widget/RecyclerView;

    .line 29
    .line 30
    const/16 v4, 0x8

    .line 31
    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    sget-object v2, Lga/i;->e:Lorg/bitspark/android/utils/LimitQueue;

    .line 35
    .line 36
    invoke-virtual {v2}, Lorg/bitspark/android/utils/LimitQueue;->toArray()[Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {v2}, Lga/i;->c([Ljava/lang/Object;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-lez v2, :cond_2

    .line 49
    .line 50
    :try_start_0
    new-instance v2, Lfa/t;

    .line 51
    .line 52
    sget-object v5, Lorg/bitspark/android/Spark;->Y1:Lga/i;

    .line 53
    .line 54
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    sget-object v5, Lga/i;->e:Lorg/bitspark/android/utils/LimitQueue;

    .line 58
    .line 59
    invoke-virtual {v5}, Lorg/bitspark/android/utils/LimitQueue;->toArray()[Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-static {v5}, Lga/i;->c([Ljava/lang/Object;)Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    sget-object v6, Lorg/bitspark/android/Constants$VIDEO_TYPE;->BSLIVE:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 68
    .line 69
    invoke-direct {v2, v5, v6}, Lfa/t;-><init>(Ljava/util/List;Lorg/bitspark/android/Constants$VIDEO_TYPE;)V

    .line 70
    .line 71
    .line 72
    iput-object v2, p0, Lka/e;->Y:Lfa/t;

    .line 73
    .line 74
    new-instance v5, Lka/d;

    .line 75
    .line 76
    invoke-direct {v5, p0, v1}, Lka/d;-><init>(Lka/e;I)V

    .line 77
    .line 78
    .line 79
    iput-object v5, v2, Lfa/t;->h:Lfa/o0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catch_0
    move-exception v2

    .line 83
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 84
    .line 85
    .line 86
    :goto_0
    iget-object v2, p0, Lka/e;->X:Landroidx/recyclerview/widget/RecyclerView;

    .line 87
    .line 88
    iget-object v5, p0, Lka/e;->Y:Lfa/t;

    .line 89
    .line 90
    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/k0;)V

    .line 91
    .line 92
    .line 93
    sget-object v2, Lka/e;->k0:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 94
    .line 95
    if-nez v2, :cond_1

    .line 96
    .line 97
    sget-object v2, Lorg/bitspark/android/Constants$VIDEO_TYPE;->BSLIVE:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 98
    .line 99
    sput-object v2, Lka/e;->k0:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 100
    .line 101
    :cond_1
    iget-object v2, p0, Lka/e;->X:Landroidx/recyclerview/widget/RecyclerView;

    .line 102
    .line 103
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 104
    .line 105
    .line 106
    iget-object v2, p0, Lka/e;->d0:Landroid/widget/RelativeLayout;

    .line 107
    .line 108
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_2
    iget-object v2, p0, Lka/e;->X:Landroidx/recyclerview/widget/RecyclerView;

    .line 113
    .line 114
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 115
    .line 116
    .line 117
    iget-object v2, p0, Lka/e;->d0:Landroid/widget/RelativeLayout;

    .line 118
    .line 119
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 120
    .line 121
    .line 122
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    const-string v5, "N8a+/dHz5y8z0Ijj0eXkYGCU+tvN7P8=\n"

    .line 128
    .line 129
    const-string v6, "QanatbiAk0A=\n"

    .line 130
    .line 131
    invoke-static {v5, v6}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    iget-object v5, p0, Lka/e;->Z:Landroidx/recyclerview/widget/RecyclerView;

    .line 139
    .line 140
    if-eqz v5, :cond_3

    .line 141
    .line 142
    const/4 v5, 0x1

    .line 143
    goto :goto_2

    .line 144
    :cond_3
    const/4 v5, 0x0

    .line 145
    :goto_2
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-static {v3, v2}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    iget-object v2, p0, Lka/e;->Z:Landroidx/recyclerview/widget/RecyclerView;

    .line 156
    .line 157
    if-eqz v2, :cond_5

    .line 158
    .line 159
    sget-object v2, Lorg/bitspark/android/Spark;->Y1:Lga/i;

    .line 160
    .line 161
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    sget-object v2, Lga/i;->f:Lorg/bitspark/android/utils/LimitQueue;

    .line 165
    .line 166
    invoke-virtual {v2}, Lorg/bitspark/android/utils/LimitQueue;->toArray()[Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-static {v2}, Lga/i;->c([Ljava/lang/Object;)Ljava/util/List;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    if-lez v2, :cond_5

    .line 179
    .line 180
    :try_start_1
    new-instance v2, Lfa/t;

    .line 181
    .line 182
    sget-object v3, Lorg/bitspark/android/Spark;->Y1:Lga/i;

    .line 183
    .line 184
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    .line 186
    .line 187
    sget-object v3, Lga/i;->f:Lorg/bitspark/android/utils/LimitQueue;

    .line 188
    .line 189
    invoke-virtual {v3}, Lorg/bitspark/android/utils/LimitQueue;->toArray()[Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    invoke-static {v3}, Lga/i;->c([Ljava/lang/Object;)Ljava/util/List;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    sget-object v5, Lorg/bitspark/android/Constants$VIDEO_TYPE;->BSVOD:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 198
    .line 199
    invoke-direct {v2, v3, v5}, Lfa/t;-><init>(Ljava/util/List;Lorg/bitspark/android/Constants$VIDEO_TYPE;)V

    .line 200
    .line 201
    .line 202
    iput-object v2, p0, Lka/e;->b0:Lfa/t;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 203
    .line 204
    goto :goto_3

    .line 205
    :catch_1
    move-exception v2

    .line 206
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 207
    .line 208
    .line 209
    :goto_3
    iget-object v2, p0, Lka/e;->Z:Landroidx/recyclerview/widget/RecyclerView;

    .line 210
    .line 211
    iget-object v3, p0, Lka/e;->b0:Lfa/t;

    .line 212
    .line 213
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/k0;)V

    .line 214
    .line 215
    .line 216
    iget-object v2, p0, Lka/e;->b0:Lfa/t;

    .line 217
    .line 218
    new-instance v3, Lka/d;

    .line 219
    .line 220
    invoke-direct {v3, p0, v0}, Lka/d;-><init>(Lka/e;I)V

    .line 221
    .line 222
    .line 223
    iput-object v3, v2, Lfa/t;->h:Lfa/o0;

    .line 224
    .line 225
    sget-object v0, Lka/e;->k0:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 226
    .line 227
    if-nez v0, :cond_4

    .line 228
    .line 229
    sget-object v0, Lorg/bitspark/android/Constants$VIDEO_TYPE;->BSVOD:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 230
    .line 231
    sput-object v0, Lka/e;->k0:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 232
    .line 233
    :cond_4
    iget-object v0, p0, Lka/e;->Z:Landroidx/recyclerview/widget/RecyclerView;

    .line 234
    .line 235
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 236
    .line 237
    .line 238
    iget-object v0, p0, Lka/e;->e0:Landroid/widget/RelativeLayout;

    .line 239
    .line 240
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 241
    .line 242
    .line 243
    goto :goto_4

    .line 244
    :cond_5
    iget-object v0, p0, Lka/e;->Z:Landroidx/recyclerview/widget/RecyclerView;

    .line 245
    .line 246
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 247
    .line 248
    .line 249
    iget-object v0, p0, Lka/e;->e0:Landroid/widget/RelativeLayout;

    .line 250
    .line 251
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 252
    .line 253
    .line 254
    :goto_4
    sget-object v0, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 255
    .line 256
    const/16 v1, 0x72

    .line 257
    .line 258
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 259
    .line 260
    .line 261
    return-void

    .line 262
    :cond_6
    :goto_5
    const-string v0, "C9xKsGHrhxQD3lChKK/VFxbHUao=\n"

    .line 263
    .line 264
    const-string v1, "YrIjxASPp3I=\n"

    .line 265
    .line 266
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    invoke-static {v3, v0}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    return-void
.end method

.method public final R(Lorg/bitspark/android/beans/HistoryBean;)V
    .locals 7

    .line 1
    iget-object v0, p1, Lorg/bitspark/android/beans/HistoryBean;->type:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 2
    .line 3
    sget-object v1, Lorg/bitspark/android/Constants$VIDEO_TYPE;->BSLIVE:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    sget-object v0, Lga/d;->c:Ljava/util/HashMap;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lga/d;->c:Ljava/util/HashMap;

    .line 12
    .line 13
    iget p1, p1, Lorg/bitspark/android/beans/HistoryBean;->chid:I

    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lorg/bitspark/android/beans/ChannelBean;

    .line 24
    .line 25
    if-eqz p1, :cond_5

    .line 26
    .line 27
    invoke-static {}, Lra/f;->b()Lra/f;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 32
    .line 33
    sget-object v3, Lea/d;->f:Lea/d;

    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    const/4 v4, 0x0

    .line 40
    invoke-virtual {v0, p1, v2, v4, v3}, Lra/f;->e(Lorg/bitspark/android/beans/ChannelBean;Ljava/lang/Boolean;ILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    sput-object v1, Lka/e;->k0:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 44
    .line 45
    goto/16 :goto_0

    .line 46
    .line 47
    :cond_0
    iget-object v0, p1, Lorg/bitspark/android/beans/HistoryBean;->type:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 48
    .line 49
    sget-object v1, Lorg/bitspark/android/Constants$VIDEO_TYPE;->BSPALYBACK:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 50
    .line 51
    if-ne v0, v1, :cond_3

    .line 52
    .line 53
    sget-object v0, Lga/d;->c:Ljava/util/HashMap;

    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    sget-object v0, Lga/d;->c:Ljava/util/HashMap;

    .line 58
    .line 59
    iget v2, p1, Lorg/bitspark/android/beans/HistoryBean;->chid:I

    .line 60
    .line 61
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Lorg/bitspark/android/beans/ChannelBean;

    .line 70
    .line 71
    if-nez v0, :cond_1

    .line 72
    .line 73
    return-void

    .line 74
    :cond_1
    iget v2, p1, Lorg/bitspark/android/beans/HistoryBean;->chid:I

    .line 75
    .line 76
    iget-object v3, p1, Lorg/bitspark/android/beans/HistoryBean;->subId:Ljava/lang/String;

    .line 77
    .line 78
    invoke-static {v2, v3}, Lga/h;->b(ILjava/lang/String;)Lorg/bitspark/android/beans/EpgBeans$EpgBean;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    if-nez v2, :cond_2

    .line 83
    .line 84
    return-void

    .line 85
    :cond_2
    new-instance v3, Landroid/os/Message;

    .line 86
    .line 87
    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 88
    .line 89
    .line 90
    const/16 v4, 0x50

    .line 91
    .line 92
    iput v4, v3, Landroid/os/Message;->what:I

    .line 93
    .line 94
    new-instance v4, Landroid/os/Bundle;

    .line 95
    .line 96
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string v5, "rhClSA==\n"

    .line 100
    .line 101
    const-string v6, "zXjMLCFhVUA=\n"

    .line 102
    .line 103
    invoke-static {v5, v6}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    invoke-virtual {v0}, Lorg/bitspark/android/beans/ChannelBean;->getChid()I

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    invoke-virtual {v4, v5, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 112
    .line 113
    .line 114
    const-string v5, "ucG490U=\n"

    .line 115
    .line 116
    const-string v6, "yrTaviEzA2M=\n"

    .line 117
    .line 118
    invoke-static {v5, v6}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    iget-object p1, p1, Lorg/bitspark/android/beans/HistoryBean;->subId:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {v4, v5, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    const-string p1, "uHfG\n"

    .line 128
    .line 129
    const-string v5, "zQWqsS2iPP0=\n"

    .line 130
    .line 131
    invoke-static {p1, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {v2}, Lorg/bitspark/android/beans/EpgBeans$EpgBean;->getPlaybackUrl()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    invoke-virtual {v4, p1, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    const-string p1, "4RoIHA==\n"

    .line 143
    .line 144
    const-string v5, "j3tleZxr/88=\n"

    .line 145
    .line 146
    invoke-static {p1, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {v0}, Lorg/bitspark/android/beans/ChannelBean;->getName()Lorg/bitspark/android/beans/ChannelBean$NameBean;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {v0}, Lorg/bitspark/android/beans/ChannelBean$NameBean;->getInit()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {v4, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    const-string p1, "Uy29TbwVUxQ=\n"

    .line 162
    .line 163
    const-string v0, "IFjfOdVhP3E=\n"

    .line 164
    .line 165
    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-virtual {v2}, Lorg/bitspark/android/beans/EpgBeans$EpgBean;->getName()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {v4, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    const-string p1, "QkxNUQ==\n"

    .line 177
    .line 178
    const-string v0, "NjU9NCOmcQM=\n"

    .line 179
    .line 180
    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {v4, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    const-string p1, "56hrttikh3k=\n"

    .line 192
    .line 193
    const-string v0, "is0Fw4zd9xw=\n"

    .line 194
    .line 195
    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    sget-object v0, Lea/d;->f:Lea/d;

    .line 200
    .line 201
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-virtual {v4, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v3, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 209
    .line 210
    .line 211
    sget-object p1, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 212
    .line 213
    invoke-virtual {p1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 214
    .line 215
    .line 216
    sget-object p1, Lorg/bitspark/android/Constants$VIDEO_TYPE;->BSVOD:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 217
    .line 218
    sput-object p1, Lka/e;->k0:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 219
    .line 220
    goto/16 :goto_0

    .line 221
    .line 222
    :cond_3
    iget-object v0, p1, Lorg/bitspark/android/beans/HistoryBean;->type:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 223
    .line 224
    sget-object v1, Lorg/bitspark/android/Constants$VIDEO_TYPE;->BSVOD:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 225
    .line 226
    if-eq v0, v1, :cond_4

    .line 227
    .line 228
    sget-object v2, Lorg/bitspark/android/Constants$VIDEO_TYPE;->STATIC:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 229
    .line 230
    if-ne v0, v2, :cond_5

    .line 231
    .line 232
    :cond_4
    new-instance v0, Landroid/os/Message;

    .line 233
    .line 234
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 235
    .line 236
    .line 237
    const/16 v2, 0x56

    .line 238
    .line 239
    iput v2, v0, Landroid/os/Message;->what:I

    .line 240
    .line 241
    new-instance v2, Landroid/os/Bundle;

    .line 242
    .line 243
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 244
    .line 245
    .line 246
    const-string v3, "X/xc8HDHW3M=\n"

    .line 247
    .line 248
    const-string v4, "MpkyhSS+KxY=\n"

    .line 249
    .line 250
    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    sget-object v4, Lea/d;->f:Lea/d;

    .line 255
    .line 256
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 264
    .line 265
    .line 266
    sget-object v2, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 267
    .line 268
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 269
    .line 270
    .line 271
    sput-object v1, Lka/e;->k0:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 272
    .line 273
    iget-object v0, p0, Lka/e;->g0:Lta/a;

    .line 274
    .line 275
    const/4 v1, 0x1

    .line 276
    iput-boolean v1, v0, Lta/a;->v:Z

    .line 277
    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    .line 279
    .line 280
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    .line 282
    .line 283
    sget-object v1, Lga/l;->h:Lga/l;

    .line 284
    .line 285
    invoke-static {v1}, Lga/m;->g(Lga/l;)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    const-string v1, "4Pk=\n"

    .line 293
    .line 294
    const-string v2, "z7nwBFzWlWc=\n"

    .line 295
    .line 296
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    iget v1, p1, Lorg/bitspark/android/beans/HistoryBean;->chid:I

    .line 304
    .line 305
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    invoke-static {v0}, Lga/m;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    :try_start_0
    invoke-static {}, Lcom/lzy/okgo/OkGo;->getInstance()Lcom/lzy/okgo/OkGo;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    invoke-virtual {v1, p0}, Lcom/lzy/okgo/OkGo;->cancelTag(Ljava/lang/Object;)V

    .line 321
    .line 322
    .line 323
    invoke-static {v0}, Lcom/lzy/okgo/OkGo;->get(Ljava/lang/String;)Lcom/lzy/okgo/request/GetRequest;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    const-string v1, "s3j1j2CS9yuIfw==\n"

    .line 328
    .line 329
    const-string v2, "5guQ/U3TkE4=\n"

    .line 330
    .line 331
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    invoke-virtual {v0, v1}, Lcom/lzy/okgo/request/base/Request;->removeHeader(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    check-cast v0, Lcom/lzy/okgo/request/GetRequest;

    .line 340
    .line 341
    const-string v1, "rAXLMN+g0vuXAg==\n"

    .line 342
    .line 343
    const-string v2, "+XauQvLhtZ4=\n"

    .line 344
    .line 345
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    sget-object v2, Lea/a;->m:Ljava/lang/String;

    .line 350
    .line 351
    invoke-virtual {v0, v1, v2}, Lcom/lzy/okgo/request/base/Request;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    check-cast v0, Lcom/lzy/okgo/request/GetRequest;

    .line 356
    .line 357
    invoke-virtual {v0, p0}, Lcom/lzy/okgo/request/base/Request;->tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    check-cast v0, Lcom/lzy/okgo/request/GetRequest;

    .line 362
    .line 363
    sget-object v1, Lcom/lzy/okgo/cache/CacheMode;->NO_CACHE:Lcom/lzy/okgo/cache/CacheMode;

    .line 364
    .line 365
    invoke-virtual {v0, v1}, Lcom/lzy/okgo/request/base/Request;->cacheMode(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/request/base/Request;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    check-cast v0, Lcom/lzy/okgo/request/GetRequest;

    .line 370
    .line 371
    new-instance v1, Lka/c;

    .line 372
    .line 373
    invoke-direct {v1, p0, p1}, Lka/c;-><init>(Lka/e;Lorg/bitspark/android/beans/HistoryBean;)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v0, v1}, Lcom/lzy/okgo/request/base/Request;->execute(Lcom/lzy/okgo/callback/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    .line 378
    .line 379
    goto :goto_0

    .line 380
    :catch_0
    const-string p1, "CY2U2mErpCcGiY6UcijgBR6BwJ9lNq8WTw==\n"

    .line 381
    .line 382
    const-string v0, "bujg+hdEwGQ=\n"

    .line 383
    .line 384
    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object p1

    .line 388
    sget-boolean v0, Lorg/bitspark/android/utils/m;->b:Z

    .line 389
    .line 390
    sget-object v0, Lka/e;->j0:Ljava/lang/String;

    .line 391
    .line 392
    invoke-static {v0, p1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    :cond_5
    :goto_0
    return-void
.end method

.method public final S()V
    .locals 2

    .line 1
    const-string v0, "5YrhJ8va/lPkm9Yjy5+UHL4=\n"

    .line 2
    .line 3
    const-string v1, "kPqFRr+/ujI=\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-boolean v1, Lorg/bitspark/android/utils/m;->b:Z

    .line 10
    .line 11
    sget-object v1, Lka/e;->j0:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v1, v0}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lka/e;->Y:Lfa/t;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/recyclerview/widget/k0;->notifyDataSetChanged()V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lka/e;->b0:Lfa/t;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0}, Landroidx/recyclerview/widget/k0;->notifyDataSetChanged()V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    sget-object v0, Lka/e;->j0:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lka/e;->X:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-ne p1, v1, :cond_0

    .line 16
    .line 17
    const-string p1, "K4CDaVa8BeIom4xeSLwT4WeGm0pxtgPl\n"

    .line 18
    .line 19
    const-string p2, "R+n1DB7VdpY=\n"

    .line 20
    .line 21
    invoke-static {p1, p2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    sget-boolean p2, Lorg/bitspark/android/utils/m;->b:Z

    .line 26
    .line 27
    invoke-static {v0, p1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lka/e;->X:Landroidx/recyclerview/widget/RecyclerView;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lka/e;->X:Landroidx/recyclerview/widget/RecyclerView;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/view/View;->requestFocusFromTouch()Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    if-eqz p2, :cond_1

    .line 42
    .line 43
    iget-object p2, p0, Lka/e;->Z:Landroidx/recyclerview/widget/RecyclerView;

    .line 44
    .line 45
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    if-ne p1, p2, :cond_1

    .line 50
    .line 51
    const-string p1, "DvLxKHHk2NwK5Mc2cfLbkxfz0w974t8=\n"

    .line 52
    .line 53
    const-string p2, "eJ2VYBiXrLM=\n"

    .line 54
    .line 55
    invoke-static {p1, p2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    sget-boolean p2, Lorg/bitspark/android/utils/m;->b:Z

    .line 60
    .line 61
    invoke-static {v0, p1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lka/e;->Z:Landroidx/recyclerview/widget/RecyclerView;

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lka/e;->Z:Landroidx/recyclerview/widget/RecyclerView;

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/view/View;->requestFocusFromTouch()Z

    .line 72
    .line 73
    .line 74
    :cond_1
    :goto_0
    return-void
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v4, "X4T9C5hy\n"

    .line 27
    .line 28
    const-string v5, "MOqWbuFSkYU=\n"

    .line 29
    .line 30
    invoke-static {v4, v5, v3, p2}, Lea/q;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    sget-boolean v4, Lorg/bitspark/android/utils/m;->b:Z

    .line 35
    .line 36
    sget-object v4, Lka/e;->j0:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v4, v3}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    iget-object v1, p0, Lka/e;->d0:Landroid/widget/RelativeLayout;

    .line 44
    .line 45
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-ne v0, v1, :cond_3

    .line 50
    .line 51
    const/4 p1, 0x4

    .line 52
    if-eq p2, p1, :cond_1

    .line 53
    .line 54
    const/16 p1, 0x15

    .line 55
    .line 56
    if-ne p2, p1, :cond_2

    .line 57
    .line 58
    :cond_1
    sget-object p1, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 59
    .line 60
    const/16 p2, 0x70

    .line 61
    .line 62
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 63
    .line 64
    .line 65
    :cond_2
    return v2

    .line 66
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lka/b;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    return p1
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "hPGAtPmzvg==\n"

    .line 14
    .line 15
    const-string v3, "65/U24zQ1qo=\n"

    .line 16
    .line 17
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    sget-boolean v0, Lorg/bitspark/android/utils/m;->b:Z

    .line 32
    .line 33
    sget-object v0, Lka/e;->j0:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v0, p2}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    .line 39
    .line 40
    .line 41
    :cond_0
    return v1
.end method

.method public final t(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    const p2, 0x7f0e004b

    .line 2
    .line 3
    .line 4
    const/4 p3, 0x0

    .line 5
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lka/e;->U:Landroid/view/View;

    .line 10
    .line 11
    new-instance p1, La1/b;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-direct {p1, p2}, La1/b;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 18
    .line 19
    .line 20
    const-class p2, Lta/a;

    .line 21
    .line 22
    invoke-virtual {p1, p2}, La1/b;->n(Ljava/lang/Class;)Landroidx/lifecycle/v0;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lta/a;

    .line 27
    .line 28
    iput-object p1, p0, Lka/e;->g0:Lta/a;

    .line 29
    .line 30
    iget-object p1, p0, Lka/e;->U:Landroid/view/View;

    .line 31
    .line 32
    const p2, 0x7f0b01e9

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 40
    .line 41
    iput-object p1, p0, Lka/e;->V:Landroid/widget/RelativeLayout;

    .line 42
    .line 43
    iget-object p1, p0, Lka/e;->U:Landroid/view/View;

    .line 44
    .line 45
    const p2, 0x7f0b01e7

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Landroid/widget/LinearLayout;

    .line 53
    .line 54
    iput-object p1, p0, Lka/e;->W:Landroid/widget/LinearLayout;

    .line 55
    .line 56
    iget-object p1, p0, Lka/e;->V:Landroid/widget/RelativeLayout;

    .line 57
    .line 58
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lka/e;->U:Landroid/view/View;

    .line 62
    .line 63
    const p2, 0x7f0b0487

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Landroid/widget/FrameLayout;

    .line 71
    .line 72
    iput-object p1, p0, Lka/e;->i0:Landroid/widget/FrameLayout;

    .line 73
    .line 74
    new-instance p1, Lsa/b;

    .line 75
    .line 76
    const/16 p2, 0xf

    .line 77
    .line 78
    invoke-direct {p1, p2, p2, p2, p2}, Lsa/b;-><init>(IIII)V

    .line 79
    .line 80
    .line 81
    iget-object p2, p0, Lka/e;->U:Landroid/view/View;

    .line 82
    .line 83
    const p3, 0x7f0b01e8

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 91
    .line 92
    iput-object p2, p0, Lka/e;->X:Landroidx/recyclerview/widget/RecyclerView;

    .line 93
    .line 94
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 95
    .line 96
    const/4 p3, 0x1

    .line 97
    invoke-direct {p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 98
    .line 99
    .line 100
    const/4 p3, 0x0

    .line 101
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lka/e;->X:Landroidx/recyclerview/widget/RecyclerView;

    .line 105
    .line 106
    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/x0;)V

    .line 107
    .line 108
    .line 109
    iget-object p2, p0, Lka/e;->X:Landroidx/recyclerview/widget/RecyclerView;

    .line 110
    .line 111
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/t0;)V

    .line 112
    .line 113
    .line 114
    iget-object p2, p0, Lka/e;->X:Landroidx/recyclerview/widget/RecyclerView;

    .line 115
    .line 116
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 117
    .line 118
    .line 119
    iget-object p2, p0, Lka/e;->X:Landroidx/recyclerview/widget/RecyclerView;

    .line 120
    .line 121
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 122
    .line 123
    .line 124
    iget-object p2, p0, Lka/e;->U:Landroid/view/View;

    .line 125
    .line 126
    const v0, 0x7f0b01eb

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 134
    .line 135
    iput-object p2, p0, Lka/e;->Z:Landroidx/recyclerview/widget/RecyclerView;

    .line 136
    .line 137
    new-instance p2, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 138
    .line 139
    sget v0, Lea/h;->u:I

    .line 140
    .line 141
    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(I)V

    .line 142
    .line 143
    .line 144
    iput-object p2, p0, Lka/e;->c0:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 145
    .line 146
    iget-object p2, p0, Lka/e;->Z:Landroidx/recyclerview/widget/RecyclerView;

    .line 147
    .line 148
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/t0;)V

    .line 149
    .line 150
    .line 151
    iget-object p1, p0, Lka/e;->Z:Landroidx/recyclerview/widget/RecyclerView;

    .line 152
    .line 153
    iget-object p2, p0, Lka/e;->c0:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 154
    .line 155
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/x0;)V

    .line 156
    .line 157
    .line 158
    iget-object p1, p0, Lka/e;->Z:Landroidx/recyclerview/widget/RecyclerView;

    .line 159
    .line 160
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 161
    .line 162
    .line 163
    iget-object p1, p0, Lka/e;->Z:Landroidx/recyclerview/widget/RecyclerView;

    .line 164
    .line 165
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 166
    .line 167
    .line 168
    iget-object p1, p0, Lka/e;->U:Landroid/view/View;

    .line 169
    .line 170
    const p2, 0x7f0b0265

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 178
    .line 179
    iput-object p1, p0, Lka/e;->d0:Landroid/widget/RelativeLayout;

    .line 180
    .line 181
    iget-object p1, p0, Lka/e;->U:Landroid/view/View;

    .line 182
    .line 183
    const p2, 0x7f0b048e

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 191
    .line 192
    iput-object p1, p0, Lka/e;->e0:Landroid/widget/RelativeLayout;

    .line 193
    .line 194
    iget-object p1, p0, Lka/e;->d0:Landroid/widget/RelativeLayout;

    .line 195
    .line 196
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 197
    .line 198
    .line 199
    iget-object p1, p0, Lka/e;->e0:Landroid/widget/RelativeLayout;

    .line 200
    .line 201
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0}, Lka/e;->Q()V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p0}, Lka/e;->Q()V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    invoke-virtual {p1, p3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 215
    .line 216
    .line 217
    iget-object p1, p0, Lka/e;->U:Landroid/view/View;

    .line 218
    .line 219
    return-object p1
.end method

.method public final z()V
    .locals 3

    .line 1
    const-string v0, "2dv0KEeEutzd1fc=\n"

    .line 2
    .line 3
    const-string v1, "r7SQZSLqz5o=\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "Qt7Ta+ToxAo=\n"

    .line 10
    .line 11
    const-string v2, "LbCBDpedqW8=\n"

    .line 12
    .line 13
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    sget-boolean v2, Lorg/bitspark/android/utils/m;->b:Z

    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-super {p0}, Le8/a;->z()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lka/e;->Q()V

    .line 26
    .line 27
    .line 28
    return-void
.end method
