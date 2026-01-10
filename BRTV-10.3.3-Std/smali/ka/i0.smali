.class public Lka/i0;
.super Lka/b;
.source "MyApplication"


# static fields
.field public static final i0:Ljava/lang/String;


# instance fields
.field public U:Lta/a;

.field public V:Landroid/view/ViewStub;

.field public W:Lfa/q0;

.field public X:Lorg/bitspark/android/view/LeanbackTabLayout;

.field public Y:I

.field public Z:Landroid/widget/ImageView;

.field public b0:Landroid/view/View;

.field public c0:Lorg/bitspark/android/view/MyProcessRelativeLayout;

.field public final d0:Landroid/os/Handler;

.field public e0:Landroidx/viewpager2/widget/ViewPager2;

.field public f0:Landroid/widget/RelativeLayout;

.field public g0:Landroidx/recyclerview/widget/RecyclerView;

.field public h0:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "IBmK39Y/8/QaMJz61Cb38wI=\n"

    .line 2
    .line 3
    const-string v1, "dnbum7NLkp0=\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    const-string v0, "IsE6pT8DZw==\n"

    .line 9
    .line 10
    const-string v1, "SqhJ0VBxHjQ=\n"

    .line 11
    .line 12
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lka/i0;->i0:Ljava/lang/String;

    .line 17
    .line 18
    const-string v0, "CVJ4Hw==\n"

    .line 19
    .line 20
    const-string v1, "YT0VelOynv0=\n"

    .line 21
    .line 22
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lka/b;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lka/i0;->W:Lfa/q0;

    .line 6
    .line 7
    const/4 v0, 0x7

    .line 8
    iput v0, p0, Lka/i0;->Y:I

    .line 9
    .line 10
    new-instance v0, Landroid/os/Handler;

    .line 11
    .line 12
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lka/i0;->d0:Landroid/os/Handler;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lka/i0;->h0:Z

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final Q()V
    .locals 5

    .line 1
    iget-object v0, p0, Lka/i0;->U:Lta/a;

    .line 2
    .line 3
    iget v0, v0, Lta/a;->s:I

    .line 4
    .line 5
    iget-object v1, p0, Lka/i0;->e0:Landroidx/viewpager2/widget/ViewPager2;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v3, "iw==\n"

    .line 17
    .line 18
    const-string v4, "7aLLekYKds4=\n"

    .line 19
    .line 20
    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v3, p0, Lka/i0;->U:Lta/a;

    .line 28
    .line 29
    iget v3, v3, Lta/a;->s:I

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {p0}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->k()Landroidx/fragment/app/k0;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v3, v2}, Landroidx/fragment/app/j0;->z(Ljava/lang/String;)Landroidx/fragment/app/s;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Lsa/l;

    .line 51
    .line 52
    if-eqz v3, :cond_0

    .line 53
    .line 54
    if-ne v0, v1, :cond_0

    .line 55
    .line 56
    invoke-virtual {p0, v2}, Lka/i0;->R(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    const/4 v1, 0x1

    .line 61
    iput-boolean v1, p0, Lka/i0;->h0:Z

    .line 62
    .line 63
    iget-object v2, p0, Lka/i0;->X:Lorg/bitspark/android/view/LeanbackTabLayout;

    .line 64
    .line 65
    invoke-virtual {v2, v0}, Lcom/google/android/material/tabs/TabLayout;->h(I)Lx6/h;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v2, v0, v1}, Lcom/google/android/material/tabs/TabLayout;->l(Lx6/h;Z)V

    .line 70
    .line 71
    .line 72
    :goto_0
    return-void
.end method

.method public final R(Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->k()Landroidx/fragment/app/k0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Landroidx/fragment/app/j0;->z(Ljava/lang/String;)Landroidx/fragment/app/s;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lsa/l;

    .line 14
    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    iget-object v0, v0, Lsa/l;->T:Lfa/m0;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v2, v0, Lfa/m0;->d:Ljava/util/ArrayList;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v2, v1

    .line 26
    :goto_0
    if-eqz v2, :cond_3

    .line 27
    .line 28
    iget-object v2, p0, Lka/i0;->U:Lta/a;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v1, v0, Lfa/m0;->d:Ljava/util/ArrayList;

    .line 33
    .line 34
    :cond_1
    invoke-virtual {v2, v1}, Lta/a;->e(Ljava/util/ArrayList;)I

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    const/4 v0, -0x1

    .line 39
    if-eq v6, v0, :cond_2

    .line 40
    .line 41
    iget-object v0, p0, Lka/i0;->d0:Landroid/os/Handler;

    .line 42
    .line 43
    new-instance v1, Landroidx/appcompat/widget/r0;

    .line 44
    .line 45
    const/4 v7, 0x7

    .line 46
    const/4 v8, 0x0

    .line 47
    move-object v3, v1

    .line 48
    move-object v4, p0

    .line 49
    move-object v5, p1

    .line 50
    invoke-direct/range {v3 .. v8}, Landroidx/appcompat/widget/r0;-><init>(Ljava/lang/Object;Ljava/lang/Object;IIZ)V

    .line 51
    .line 52
    .line 53
    const-wide/16 v2, 0xc8

    .line 54
    .line 55
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    iget-object p1, p0, Lka/i0;->X:Lorg/bitspark/android/view/LeanbackTabLayout;

    .line 60
    .line 61
    iget-object v0, p0, Lka/i0;->U:Lta/a;

    .line 62
    .line 63
    iget v0, v0, Lta/a;->s:I

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->h(I)Lx6/h;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-eqz p1, :cond_3

    .line 70
    .line 71
    iget-object p1, p1, Lx6/h;->g:Lx6/k;

    .line 72
    .line 73
    invoke-static {p1}, Lo9/d;->y(Landroid/view/View;)Z

    .line 74
    .line 75
    .line 76
    :cond_3
    :goto_1
    return-void
.end method

.method public final S(Lorg/bitspark/android/beans/ChannelBean;Ljava/lang/String;)V
    .locals 11

    .line 1
    sget-object v0, Lorg/bitspark/android/utils/o;->f:Lorg/bitspark/android/utils/o;

    .line 2
    .line 3
    iget-boolean v0, v0, Lorg/bitspark/android/utils/o;->e:Z

    .line 4
    .line 5
    if-eqz v0, :cond_a

    .line 6
    .line 7
    invoke-virtual {p1}, Lorg/bitspark/android/beans/ChannelBean;->getSeasons()I

    .line 8
    .line 9
    .line 10
    move-result v6

    .line 11
    const/4 v0, 0x1

    .line 12
    sget-object v7, Lka/i0;->i0:Ljava/lang/String;

    .line 13
    .line 14
    const/4 v8, 0x0

    .line 15
    if-gt v6, v0, :cond_4

    .line 16
    .line 17
    invoke-virtual {p1}, Lorg/bitspark/android/beans/ChannelBean;->getSources()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_3

    .line 22
    .line 23
    invoke-virtual {p1}, Lorg/bitspark/android/beans/ChannelBean;->getSources()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    goto/16 :goto_0

    .line 34
    .line 35
    :cond_0
    invoke-virtual {p1}, Lorg/bitspark/android/beans/ChannelBean;->getSources()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    invoke-virtual {p1}, Lorg/bitspark/android/beans/ChannelBean;->getSources()Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-ne v1, v0, :cond_1

    .line 50
    .line 51
    invoke-virtual {p0}, Lka/i0;->T()V

    .line 52
    .line 53
    .line 54
    iget-object p2, p0, Lka/i0;->c0:Lorg/bitspark/android/view/MyProcessRelativeLayout;

    .line 55
    .line 56
    invoke-virtual {p2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    iget-object p2, p0, Lka/i0;->c0:Lorg/bitspark/android/view/MyProcessRelativeLayout;

    .line 60
    .line 61
    new-instance v0, Lka/g0;

    .line 62
    .line 63
    invoke-direct {v0, p0, p1}, Lka/g0;-><init>(Lka/i0;Lorg/bitspark/android/beans/ChannelBean;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lka/i0;->c0:Lorg/bitspark/android/view/MyProcessRelativeLayout;

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 72
    .line 73
    .line 74
    goto/16 :goto_2

    .line 75
    .line 76
    :cond_1
    new-instance v0, Lfa/m0;

    .line 77
    .line 78
    invoke-direct {v0}, Landroidx/recyclerview/widget/k0;-><init>()V

    .line 79
    .line 80
    .line 81
    const/4 v1, 0x7

    .line 82
    iput v1, v0, Lfa/m0;->c:I

    .line 83
    .line 84
    new-instance v1, Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .line 88
    .line 89
    iput-object v1, v0, Lfa/m0;->d:Ljava/util/ArrayList;

    .line 90
    .line 91
    iput-object p1, v0, Lfa/m0;->e:Lorg/bitspark/android/beans/ChannelBean;

    .line 92
    .line 93
    invoke-virtual {p1}, Lorg/bitspark/android/beans/ChannelBean;->getSources()Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 98
    .line 99
    .line 100
    new-instance v1, Lka/a0;

    .line 101
    .line 102
    const/4 v2, 0x0

    .line 103
    invoke-direct {v1, p0, v2}, Lka/a0;-><init>(Lka/i0;I)V

    .line 104
    .line 105
    .line 106
    iput-object v1, v0, Lfa/m0;->b:Landroid/view/View$OnKeyListener;

    .line 107
    .line 108
    new-instance v1, Lka/h0;

    .line 109
    .line 110
    invoke-direct {v1, p0, v0, p1}, Lka/h0;-><init>(Lka/i0;Lfa/m0;Lorg/bitspark/android/beans/ChannelBean;)V

    .line 111
    .line 112
    .line 113
    iput-object v1, v0, Lfa/m0;->a:Lfa/o0;

    .line 114
    .line 115
    iget p1, p0, Lka/i0;->Y:I

    .line 116
    .line 117
    iput p1, v0, Lfa/m0;->c:I

    .line 118
    .line 119
    iget-object p1, p0, Lka/i0;->g0:Landroidx/recyclerview/widget/RecyclerView;

    .line 120
    .line 121
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/k0;)V

    .line 122
    .line 123
    .line 124
    iget-object p1, p0, Lka/i0;->g0:Landroidx/recyclerview/widget/RecyclerView;

    .line 125
    .line 126
    invoke-virtual {p1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    if-eqz p1, :cond_2

    .line 134
    .line 135
    iget-object p1, p0, Lka/i0;->g0:Landroidx/recyclerview/widget/RecyclerView;

    .line 136
    .line 137
    if-eqz p1, :cond_a

    .line 138
    .line 139
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/k0;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    check-cast p1, Lfa/m0;

    .line 144
    .line 145
    invoke-virtual {p1}, Landroidx/recyclerview/widget/k0;->notifyDataSetChanged()V

    .line 146
    .line 147
    .line 148
    iget-object p2, p0, Lka/i0;->d0:Landroid/os/Handler;

    .line 149
    .line 150
    new-instance v0, La3/c;

    .line 151
    .line 152
    const/16 v1, 0x15

    .line 153
    .line 154
    invoke-direct {v0, p0, v1, p1}, La3/c;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    const-wide/16 v1, 0xc8

    .line 158
    .line 159
    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 160
    .line 161
    .line 162
    goto/16 :goto_2

    .line 163
    .line 164
    :cond_2
    iget-object p1, p0, Lka/i0;->g0:Landroidx/recyclerview/widget/RecyclerView;

    .line 165
    .line 166
    invoke-static {p1}, Lo9/d;->y(Landroid/view/View;)Z

    .line 167
    .line 168
    .line 169
    goto/16 :goto_2

    .line 170
    .line 171
    :cond_3
    :goto_0
    iget-object p1, p0, Lka/i0;->c0:Lorg/bitspark/android/view/MyProcessRelativeLayout;

    .line 172
    .line 173
    invoke-virtual {p1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 174
    .line 175
    .line 176
    iget-object p1, p0, Lka/i0;->c0:Lorg/bitspark/android/view/MyProcessRelativeLayout;

    .line 177
    .line 178
    new-instance p2, Lka/e0;

    .line 179
    .line 180
    const/4 v0, 0x1

    .line 181
    invoke-direct {p2, p0, v0}, Lka/e0;-><init>(Lka/i0;I)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    .line 186
    .line 187
    iget-object p1, p0, Lka/i0;->c0:Lorg/bitspark/android/view/MyProcessRelativeLayout;

    .line 188
    .line 189
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 190
    .line 191
    .line 192
    goto/16 :goto_2

    .line 193
    .line 194
    :cond_4
    iget-object v1, p0, Lka/i0;->g0:Landroidx/recyclerview/widget/RecyclerView;

    .line 195
    .line 196
    const/16 v2, 0x8

    .line 197
    .line 198
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 199
    .line 200
    .line 201
    iget-object v1, p0, Lka/i0;->f0:Landroid/widget/RelativeLayout;

    .line 202
    .line 203
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 204
    .line 205
    .line 206
    iget-object v1, p0, Lka/i0;->X:Lorg/bitspark/android/view/LeanbackTabLayout;

    .line 207
    .line 208
    iget-object v2, p0, Lka/i0;->e0:Landroidx/viewpager2/widget/ViewPager2;

    .line 209
    .line 210
    invoke-virtual {v1, v2}, Lorg/bitspark/android/view/LeanbackTabLayout;->setupWithViewPager(Landroidx/viewpager2/widget/ViewPager2;)V

    .line 211
    .line 212
    .line 213
    iget-object v9, p0, Lka/i0;->e0:Landroidx/viewpager2/widget/ViewPager2;

    .line 214
    .line 215
    invoke-virtual {p0}, Landroidx/fragment/app/s;->j()Landroid/content/Context;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    new-instance v10, Lka/d0;

    .line 220
    .line 221
    move-object v3, v1

    .line 222
    check-cast v3, Landroidx/fragment/app/FragmentActivity;

    .line 223
    .line 224
    move-object v1, v10

    .line 225
    move-object v2, p0

    .line 226
    move-object v4, p1

    .line 227
    move-object v5, v9

    .line 228
    invoke-direct/range {v1 .. v6}, Lka/d0;-><init>(Lka/i0;Landroidx/fragment/app/FragmentActivity;Lorg/bitspark/android/beans/ChannelBean;Landroidx/viewpager2/widget/ViewPager2;I)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v9, v10}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/k0;)V

    .line 232
    .line 233
    .line 234
    iget-object p1, p0, Lka/i0;->X:Lorg/bitspark/android/view/LeanbackTabLayout;

    .line 235
    .line 236
    new-instance v1, Lka/b0;

    .line 237
    .line 238
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 239
    .line 240
    .line 241
    invoke-virtual {p1, v1}, Lcom/google/android/material/tabs/TabLayout;->a(Lx6/c;)V

    .line 242
    .line 243
    .line 244
    new-instance p1, Lx6/o;

    .line 245
    .line 246
    iget-object v1, p0, Lka/i0;->X:Lorg/bitspark/android/view/LeanbackTabLayout;

    .line 247
    .line 248
    iget-object v2, p0, Lka/i0;->e0:Landroidx/viewpager2/widget/ViewPager2;

    .line 249
    .line 250
    new-instance v3, Lj7/c;

    .line 251
    .line 252
    const/4 v4, 0x7

    .line 253
    invoke-direct {v3, v4, p0}, Lj7/c;-><init>(ILjava/lang/Object;)V

    .line 254
    .line 255
    .line 256
    invoke-direct {p1, v1, v2, v3}, Lx6/o;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lj7/c;)V

    .line 257
    .line 258
    .line 259
    iget-boolean v3, p1, Lx6/o;->e:Z

    .line 260
    .line 261
    if-nez v3, :cond_9

    .line 262
    .line 263
    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/k0;

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    iput-object v3, p1, Lx6/o;->d:Landroidx/recyclerview/widget/k0;

    .line 268
    .line 269
    if-eqz v3, :cond_8

    .line 270
    .line 271
    iput-boolean v0, p1, Lx6/o;->e:Z

    .line 272
    .line 273
    new-instance v3, Lx6/n;

    .line 274
    .line 275
    invoke-direct {v3, v1}, Lx6/n;-><init>(Lcom/google/android/material/tabs/TabLayout;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v2, v3}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 279
    .line 280
    .line 281
    new-instance v3, Lx6/l;

    .line 282
    .line 283
    const/4 v4, 0x1

    .line 284
    invoke-direct {v3, v2, v4}, Lx6/l;-><init>(Landroid/view/ViewGroup;I)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v1, v3}, Lcom/google/android/material/tabs/TabLayout;->a(Lx6/c;)V

    .line 288
    .line 289
    .line 290
    new-instance v3, Lx6/m;

    .line 291
    .line 292
    invoke-direct {v3, p1}, Lx6/m;-><init>(Lx6/o;)V

    .line 293
    .line 294
    .line 295
    iget-object v4, p1, Lx6/o;->d:Landroidx/recyclerview/widget/k0;

    .line 296
    .line 297
    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/k0;->registerAdapterDataObserver(Landroidx/recyclerview/widget/m0;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {p1}, Lx6/o;->a()V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 304
    .line 305
    .line 306
    move-result p1

    .line 307
    const/4 v2, 0x0

    .line 308
    invoke-virtual {v1, p1, v2, v0, v0}, Lcom/google/android/material/tabs/TabLayout;->n(IFZZ)V

    .line 309
    .line 310
    .line 311
    const/4 p1, 0x0

    .line 312
    :goto_1
    iget-object v0, p0, Lka/i0;->X:Lorg/bitspark/android/view/LeanbackTabLayout;

    .line 313
    .line 314
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    .line 315
    .line 316
    .line 317
    move-result v0

    .line 318
    if-ge p1, v0, :cond_6

    .line 319
    .line 320
    iget-object v0, p0, Lka/i0;->X:Lorg/bitspark/android/view/LeanbackTabLayout;

    .line 321
    .line 322
    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->h(I)Lx6/h;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    if-eqz v0, :cond_5

    .line 327
    .line 328
    iget-object v1, v0, Lx6/h;->g:Lx6/k;

    .line 329
    .line 330
    const v2, 0x7f0b0153

    .line 331
    .line 332
    .line 333
    invoke-virtual {v1, v2}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 334
    .line 335
    .line 336
    iget-object v1, v0, Lx6/h;->g:Lx6/k;

    .line 337
    .line 338
    new-instance v2, Lfa/l;

    .line 339
    .line 340
    const/4 v3, 0x3

    .line 341
    invoke-direct {v2, p0, v3, v0}, Lfa/l;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 345
    .line 346
    .line 347
    :cond_5
    add-int/lit8 p1, p1, 0x1

    .line 348
    .line 349
    goto :goto_1

    .line 350
    :cond_6
    iget-object p1, p0, Lka/i0;->X:Lorg/bitspark/android/view/LeanbackTabLayout;

    .line 351
    .line 352
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 353
    .line 354
    .line 355
    move-result p1

    .line 356
    if-nez p1, :cond_a

    .line 357
    .line 358
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 359
    .line 360
    .line 361
    move-result p1

    .line 362
    if-eqz p1, :cond_7

    .line 363
    .line 364
    iget-object p1, p0, Lka/i0;->e0:Landroidx/viewpager2/widget/ViewPager2;

    .line 365
    .line 366
    if-eqz p1, :cond_a

    .line 367
    .line 368
    new-instance p2, La/f;

    .line 369
    .line 370
    const/16 v0, 0x16

    .line 371
    .line 372
    invoke-direct {p2, v0, p0}, La/f;-><init>(ILjava/lang/Object;)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 376
    .line 377
    .line 378
    goto :goto_2

    .line 379
    :cond_7
    iget-object p1, p0, Lka/i0;->X:Lorg/bitspark/android/view/LeanbackTabLayout;

    .line 380
    .line 381
    invoke-virtual {p1, v8}, Lcom/google/android/material/tabs/TabLayout;->h(I)Lx6/h;

    .line 382
    .line 383
    .line 384
    move-result-object p1

    .line 385
    if-eqz p1, :cond_a

    .line 386
    .line 387
    iget-object p1, p1, Lx6/h;->g:Lx6/k;

    .line 388
    .line 389
    invoke-static {p1}, Lo9/d;->y(Landroid/view/View;)Z

    .line 390
    .line 391
    .line 392
    goto :goto_2

    .line 393
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 394
    .line 395
    const-string p2, "TabLayoutMediator attached before ViewPager2 has an adapter"

    .line 396
    .line 397
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    throw p1

    .line 401
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 402
    .line 403
    const-string p2, "TabLayoutMediator is already attached"

    .line 404
    .line 405
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    throw p1

    .line 409
    :cond_a
    :goto_2
    return-void
.end method

.method public final T()V
    .locals 7

    .line 1
    iget-object v0, p0, Lka/i0;->U:Lta/a;

    .line 2
    .line 3
    iget-object v0, v0, Lta/a;->q:Lorg/bitspark/android/beans/ChannelBean;

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-object v1, p0, Lka/i0;->b0:Landroid/view/View;

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    iget-object v1, p0, Lka/i0;->c0:Lorg/bitspark/android/view/MyProcessRelativeLayout;

    .line 12
    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    invoke-virtual {v0}, Lorg/bitspark/android/beans/ChannelBean;->getSources()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lorg/bitspark/android/beans/ChannelBean$SourcesBean;

    .line 25
    .line 26
    invoke-virtual {v0}, Lorg/bitspark/android/beans/ChannelBean;->getChid()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v4, ""

    .line 33
    .line 34
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Lorg/bitspark/android/beans/ChannelBean$SourcesBean;->getId()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {v0, v1}, Lga/i;->a(ILjava/lang/String;)Lorg/bitspark/android/beans/HistoryBean;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const-wide/16 v3, 0x0

    .line 53
    .line 54
    if-eqz v0, :cond_0

    .line 55
    .line 56
    iget-wide v5, v0, Lorg/bitspark/android/beans/HistoryBean;->lastPosition:J

    .line 57
    .line 58
    cmp-long v1, v5, v3

    .line 59
    .line 60
    if-lez v1, :cond_0

    .line 61
    .line 62
    move-wide v3, v5

    .line 63
    :cond_0
    if-eqz v0, :cond_1

    .line 64
    .line 65
    iget v0, v0, Lorg/bitspark/android/beans/HistoryBean;->duration:I

    .line 66
    .line 67
    if-lez v0, :cond_1

    .line 68
    .line 69
    long-to-int v1, v3

    .line 70
    mul-int/lit8 v1, v1, 0x64

    .line 71
    .line 72
    div-int v2, v1, v0

    .line 73
    .line 74
    :cond_1
    iget-object v0, p0, Lka/i0;->c0:Lorg/bitspark/android/view/MyProcessRelativeLayout;

    .line 75
    .line 76
    invoke-virtual {v0, v2}, Lorg/bitspark/android/view/MyProcessRelativeLayout;->setProgress(I)V

    .line 77
    .line 78
    .line 79
    :cond_2
    return-void
.end method

.method public final U(Lorg/bitspark/android/beans/ChannelBean;Ljava/lang/String;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lka/i0;->U:Lta/a;

    .line 6
    .line 7
    iput-object v1, v2, Lta/a;->q:Lorg/bitspark/android/beans/ChannelBean;

    .line 8
    .line 9
    iget-object v2, v0, Lka/i0;->b0:Landroid/view/View;

    .line 10
    .line 11
    if-eqz v2, :cond_8

    .line 12
    .line 13
    if-eqz v1, :cond_8

    .line 14
    .line 15
    const v3, 0x7f0b048f

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Landroid/widget/ImageView;

    .line 23
    .line 24
    iget-object v3, v0, Lka/i0;->b0:Landroid/view/View;

    .line 25
    .line 26
    const v4, 0x7f0b022b

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Landroid/widget/ImageView;

    .line 34
    .line 35
    iget-object v4, v0, Lka/i0;->b0:Landroid/view/View;

    .line 36
    .line 37
    const v5, 0x7f0b0488

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    check-cast v4, Lorg/bitspark/android/view/AlwaysMarqueeTextView;

    .line 45
    .line 46
    iget-object v5, v0, Lka/i0;->c0:Lorg/bitspark/android/view/MyProcessRelativeLayout;

    .line 47
    .line 48
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/s;->j()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    const v7, 0x7f060330

    .line 57
    .line 58
    .line 59
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    invoke-virtual {v5, v6}, Lorg/bitspark/android/view/MyProcessRelativeLayout;->setBackgroundPaintColor(I)V

    .line 64
    .line 65
    .line 66
    iget-object v5, v0, Lka/i0;->b0:Landroid/view/View;

    .line 67
    .line 68
    const v6, 0x7f0b0447

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    check-cast v5, Landroid/widget/TextView;

    .line 76
    .line 77
    iget-object v6, v0, Lka/i0;->b0:Landroid/view/View;

    .line 78
    .line 79
    const v7, 0x7f0b026e

    .line 80
    .line 81
    .line 82
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    check-cast v6, Landroid/widget/LinearLayout;

    .line 87
    .line 88
    iget-object v7, v0, Lka/i0;->b0:Landroid/view/View;

    .line 89
    .line 90
    const v8, 0x7f0b049a

    .line 91
    .line 92
    .line 93
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v7

    .line 97
    check-cast v7, Landroid/widget/TextView;

    .line 98
    .line 99
    move-object/from16 v8, p2

    .line 100
    .line 101
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    .line 103
    .line 104
    const/4 v8, 0x0

    .line 105
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 106
    .line 107
    .line 108
    iget-object v7, v0, Lka/i0;->b0:Landroid/view/View;

    .line 109
    .line 110
    const v9, 0x7f0b0486

    .line 111
    .line 112
    .line 113
    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    check-cast v7, Landroid/widget/TextView;

    .line 118
    .line 119
    iget-object v9, v0, Lka/i0;->b0:Landroid/view/View;

    .line 120
    .line 121
    const v10, 0x7f0b0496

    .line 122
    .line 123
    .line 124
    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object v9

    .line 128
    check-cast v9, Landroid/widget/RelativeLayout;

    .line 129
    .line 130
    iput-object v9, v0, Lka/i0;->f0:Landroid/widget/RelativeLayout;

    .line 131
    .line 132
    iget-object v9, v0, Lka/i0;->g0:Landroidx/recyclerview/widget/RecyclerView;

    .line 133
    .line 134
    const/16 v10, 0x8

    .line 135
    .line 136
    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 137
    .line 138
    .line 139
    iget-object v9, v0, Lka/i0;->f0:Landroid/widget/RelativeLayout;

    .line 140
    .line 141
    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 142
    .line 143
    .line 144
    invoke-virtual/range {p1 .. p1}, Lorg/bitspark/android/beans/ChannelBean;->getLogo()Lorg/bitspark/android/beans/ChannelBean$LogoBean;

    .line 145
    .line 146
    .line 147
    move-result-object v9

    .line 148
    if-eqz v9, :cond_3

    .line 149
    .line 150
    invoke-virtual/range {p1 .. p1}, Lorg/bitspark/android/beans/ChannelBean;->getLogo()Lorg/bitspark/android/beans/ChannelBean$LogoBean;

    .line 151
    .line 152
    .line 153
    move-result-object v9

    .line 154
    invoke-virtual {v9}, Lorg/bitspark/android/beans/ChannelBean$LogoBean;->getImage()Lorg/bitspark/android/beans/ChannelBean$LogoBean$ImageBean;

    .line 155
    .line 156
    .line 157
    move-result-object v9

    .line 158
    if-eqz v9, :cond_3

    .line 159
    .line 160
    invoke-virtual/range {p1 .. p1}, Lorg/bitspark/android/beans/ChannelBean;->getLogo()Lorg/bitspark/android/beans/ChannelBean$LogoBean;

    .line 161
    .line 162
    .line 163
    move-result-object v9

    .line 164
    invoke-virtual {v9}, Lorg/bitspark/android/beans/ChannelBean$LogoBean;->getImage()Lorg/bitspark/android/beans/ChannelBean$LogoBean$ImageBean;

    .line 165
    .line 166
    .line 167
    move-result-object v9

    .line 168
    invoke-virtual {v9}, Lorg/bitspark/android/beans/ChannelBean$LogoBean$ImageBean;->getBig()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v9

    .line 172
    if-eqz v9, :cond_3

    .line 173
    .line 174
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/s;->j()Landroid/content/Context;

    .line 175
    .line 176
    .line 177
    move-result-object v9

    .line 178
    invoke-virtual/range {p1 .. p1}, Lorg/bitspark/android/beans/ChannelBean;->getLogo()Lorg/bitspark/android/beans/ChannelBean$LogoBean;

    .line 179
    .line 180
    .line 181
    move-result-object v11

    .line 182
    invoke-virtual {v11}, Lorg/bitspark/android/beans/ChannelBean$LogoBean;->getImage()Lorg/bitspark/android/beans/ChannelBean$LogoBean$ImageBean;

    .line 183
    .line 184
    .line 185
    move-result-object v11

    .line 186
    invoke-virtual {v11}, Lorg/bitspark/android/beans/ChannelBean$LogoBean$ImageBean;->getBig()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v11

    .line 190
    if-eqz v11, :cond_0

    .line 191
    .line 192
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    .line 193
    .line 194
    .line 195
    move-result v12

    .line 196
    if-eqz v12, :cond_1

    .line 197
    .line 198
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/bitspark/android/beans/ChannelBean;->getLogo()Lorg/bitspark/android/beans/ChannelBean$LogoBean;

    .line 199
    .line 200
    .line 201
    move-result-object v11

    .line 202
    invoke-virtual {v11}, Lorg/bitspark/android/beans/ChannelBean$LogoBean;->getImage()Lorg/bitspark/android/beans/ChannelBean$LogoBean$ImageBean;

    .line 203
    .line 204
    .line 205
    move-result-object v11

    .line 206
    invoke-virtual {v11}, Lorg/bitspark/android/beans/ChannelBean$LogoBean$ImageBean;->getSmall()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v11

    .line 210
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/bumptech/glide/b;->f(Lka/i0;)Lcom/bumptech/glide/o;

    .line 211
    .line 212
    .line 213
    move-result-object v12

    .line 214
    invoke-virtual {v12, v11}, Lcom/bumptech/glide/o;->o(Ljava/lang/String;)Lcom/bumptech/glide/l;

    .line 215
    .line 216
    .line 217
    move-result-object v12

    .line 218
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/s;->m()Landroid/content/res/Resources;

    .line 219
    .line 220
    .line 221
    move-result-object v13

    .line 222
    sget v14, Lorg/bitspark/android/R$drawable;->shape_leftbg:I

    .line 223
    .line 224
    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 225
    .line 226
    .line 227
    move-result-object v13

    .line 228
    invoke-virtual {v12, v13}, Ln3/a;->f(Landroid/graphics/drawable/Drawable;)Ln3/a;

    .line 229
    .line 230
    .line 231
    move-result-object v12

    .line 232
    check-cast v12, Lcom/bumptech/glide/l;

    .line 233
    .line 234
    sget-object v13, Lx2/k;->d:Lx2/k;

    .line 235
    .line 236
    invoke-virtual {v12, v13}, Ln3/a;->d(Lx2/k;)Ln3/a;

    .line 237
    .line 238
    .line 239
    move-result-object v12

    .line 240
    check-cast v12, Lcom/bumptech/glide/l;

    .line 241
    .line 242
    invoke-virtual {v12, v8}, Ln3/a;->r(Z)Ln3/a;

    .line 243
    .line 244
    .line 245
    move-result-object v12

    .line 246
    check-cast v12, Lcom/bumptech/glide/l;

    .line 247
    .line 248
    new-instance v14, Ln3/e;

    .line 249
    .line 250
    invoke-direct {v14}, Ln3/a;-><init>()V

    .line 251
    .line 252
    .line 253
    sget-object v15, Lv2/a;->b:Lv2/a;

    .line 254
    .line 255
    sget-object v10, Le3/p;->f:Lv2/g;

    .line 256
    .line 257
    invoke-virtual {v14, v10, v15}, Ln3/a;->p(Lv2/g;Ljava/lang/Object;)Ln3/a;

    .line 258
    .line 259
    .line 260
    move-result-object v14

    .line 261
    sget-object v8, Li3/j;->a:Lv2/g;

    .line 262
    .line 263
    invoke-virtual {v14, v8, v15}, Ln3/a;->p(Lv2/g;Ljava/lang/Object;)Ln3/a;

    .line 264
    .line 265
    .line 266
    move-result-object v14

    .line 267
    invoke-virtual {v12, v14}, Lcom/bumptech/glide/l;->y(Ln3/a;)Lcom/bumptech/glide/l;

    .line 268
    .line 269
    .line 270
    move-result-object v12

    .line 271
    new-instance v14, Lg3/b;

    .line 272
    .line 273
    invoke-direct {v14}, Lcom/bumptech/glide/p;-><init>()V

    .line 274
    .line 275
    .line 276
    new-instance v1, Lj7/c;

    .line 277
    .line 278
    move-object/from16 v16, v7

    .line 279
    .line 280
    const/16 v7, 0x15

    .line 281
    .line 282
    move-object/from16 v17, v4

    .line 283
    .line 284
    const/4 v4, 0x0

    .line 285
    invoke-direct {v1, v7, v4}, Lj7/c;-><init>(IZ)V

    .line 286
    .line 287
    .line 288
    iput-object v1, v14, Lcom/bumptech/glide/p;->a:Lp3/d;

    .line 289
    .line 290
    invoke-virtual {v12, v14}, Lcom/bumptech/glide/l;->E(Lg3/b;)Lcom/bumptech/glide/l;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/l;->B(Landroid/widget/ImageView;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    const v3, 0x7f0f003c

    .line 302
    .line 303
    .line 304
    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    new-instance v4, Lg0/g;

    .line 313
    .line 314
    invoke-direct {v4, v3, v1}, Lg0/g;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    const/4 v3, 0x4

    .line 322
    invoke-static {v1, v3}, Ln5/d;->q(Landroid/content/Context;I)I

    .line 323
    .line 324
    .line 325
    move-result v1

    .line 326
    int-to-float v1, v1

    .line 327
    invoke-virtual {v4, v1}, Lg0/g;->a(F)V

    .line 328
    .line 329
    .line 330
    iget-object v3, v4, Lg0/g;->d:Landroid/graphics/Paint;

    .line 331
    .line 332
    const/4 v7, 0x1

    .line 333
    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 340
    .line 341
    .line 342
    move-result-object v3

    .line 343
    const v4, 0x7f0f003b

    .line 344
    .line 345
    .line 346
    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 347
    .line 348
    .line 349
    move-result-object v3

    .line 350
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 351
    .line 352
    .line 353
    move-result-object v4

    .line 354
    new-instance v9, Lg0/g;

    .line 355
    .line 356
    invoke-direct {v9, v4, v3}, Lg0/g;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v9, v1}, Lg0/g;->a(F)V

    .line 360
    .line 361
    .line 362
    iget-object v1, v9, Lg0/g;->d:Landroid/graphics/Paint;

    .line 363
    .line 364
    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 368
    .line 369
    .line 370
    iget-object v1, v0, Lka/i0;->U:Lta/a;

    .line 371
    .line 372
    invoke-virtual {v1}, Lta/a;->h()Z

    .line 373
    .line 374
    .line 375
    move-result v1

    .line 376
    if-eqz v1, :cond_2

    .line 377
    .line 378
    invoke-static {}, Lorg/bitspark/android/utils/b;->c()Lorg/bitspark/android/utils/b;

    .line 379
    .line 380
    .line 381
    move-result-object v1

    .line 382
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 383
    .line 384
    .line 385
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/s;->j()Landroid/content/Context;

    .line 386
    .line 387
    .line 388
    move-result-object v1

    .line 389
    invoke-static {v1}, Lcom/bumptech/glide/b;->e(Landroid/content/Context;)Lcom/bumptech/glide/o;

    .line 390
    .line 391
    .line 392
    move-result-object v1

    .line 393
    invoke-virtual {v1, v11}, Lcom/bumptech/glide/o;->o(Ljava/lang/String;)Lcom/bumptech/glide/l;

    .line 394
    .line 395
    .line 396
    move-result-object v1

    .line 397
    invoke-virtual {v1, v9}, Ln3/a;->f(Landroid/graphics/drawable/Drawable;)Ln3/a;

    .line 398
    .line 399
    .line 400
    move-result-object v1

    .line 401
    check-cast v1, Lcom/bumptech/glide/l;

    .line 402
    .line 403
    invoke-virtual {v1, v13}, Ln3/a;->d(Lx2/k;)Ln3/a;

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    check-cast v1, Lcom/bumptech/glide/l;

    .line 408
    .line 409
    const/4 v3, 0x0

    .line 410
    invoke-virtual {v1, v3}, Ln3/a;->r(Z)Ln3/a;

    .line 411
    .line 412
    .line 413
    move-result-object v1

    .line 414
    check-cast v1, Lcom/bumptech/glide/l;

    .line 415
    .line 416
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 417
    .line 418
    .line 419
    sget-object v3, Le3/n;->d:Le3/n;

    .line 420
    .line 421
    new-instance v4, Le3/h;

    .line 422
    .line 423
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v1, v3, v4}, Ln3/a;->t(Le3/n;Le3/e;)Ln3/a;

    .line 427
    .line 428
    .line 429
    move-result-object v1

    .line 430
    check-cast v1, Lcom/bumptech/glide/l;

    .line 431
    .line 432
    new-instance v3, Ln3/e;

    .line 433
    .line 434
    invoke-direct {v3}, Ln3/a;-><init>()V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v3, v10, v15}, Ln3/a;->p(Lv2/g;Ljava/lang/Object;)Ln3/a;

    .line 438
    .line 439
    .line 440
    move-result-object v3

    .line 441
    invoke-virtual {v3, v8, v15}, Ln3/a;->p(Lv2/g;Ljava/lang/Object;)Ln3/a;

    .line 442
    .line 443
    .line 444
    move-result-object v3

    .line 445
    check-cast v3, Ln3/e;

    .line 446
    .line 447
    new-instance v3, Le3/x;

    .line 448
    .line 449
    const/16 v4, 0x8

    .line 450
    .line 451
    invoke-direct {v3, v4}, Le3/x;-><init>(I)V

    .line 452
    .line 453
    .line 454
    invoke-static {v3}, Ln3/e;->x(Le3/x;)Ln3/e;

    .line 455
    .line 456
    .line 457
    move-result-object v3

    .line 458
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/l;->y(Ln3/a;)Lcom/bumptech/glide/l;

    .line 459
    .line 460
    .line 461
    move-result-object v1

    .line 462
    new-instance v3, Lg3/b;

    .line 463
    .line 464
    invoke-direct {v3}, Lcom/bumptech/glide/p;-><init>()V

    .line 465
    .line 466
    .line 467
    new-instance v4, Lj7/c;

    .line 468
    .line 469
    const/16 v7, 0x15

    .line 470
    .line 471
    const/4 v8, 0x0

    .line 472
    invoke-direct {v4, v7, v8}, Lj7/c;-><init>(IZ)V

    .line 473
    .line 474
    .line 475
    iput-object v4, v3, Lcom/bumptech/glide/p;->a:Lp3/d;

    .line 476
    .line 477
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/l;->E(Lg3/b;)Lcom/bumptech/glide/l;

    .line 478
    .line 479
    .line 480
    move-result-object v1

    .line 481
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/l;->B(Landroid/widget/ImageView;)V

    .line 482
    .line 483
    .line 484
    goto :goto_0

    .line 485
    :cond_3
    move-object/from16 v17, v4

    .line 486
    .line 487
    move-object/from16 v16, v7

    .line 488
    .line 489
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/bitspark/android/beans/ChannelBean;->getRating()F

    .line 490
    .line 491
    .line 492
    move-result v1

    .line 493
    const/4 v2, 0x0

    .line 494
    const-string v3, ""

    .line 495
    .line 496
    cmpl-float v1, v1, v2

    .line 497
    .line 498
    if-lez v1, :cond_4

    .line 499
    .line 500
    iget-object v1, v0, Lka/i0;->W:Lfa/q0;

    .line 501
    .line 502
    invoke-virtual/range {p1 .. p1}, Lorg/bitspark/android/beans/ChannelBean;->getRating()F

    .line 503
    .line 504
    .line 505
    move-result v2

    .line 506
    const/high16 v4, 0x40000000    # 2.0f

    .line 507
    .line 508
    div-float/2addr v2, v4

    .line 509
    iput v2, v1, Lfa/q0;->a:F

    .line 510
    .line 511
    iget-object v1, v0, Lka/i0;->W:Lfa/q0;

    .line 512
    .line 513
    invoke-virtual {v1}, Landroidx/recyclerview/widget/k0;->notifyDataSetChanged()V

    .line 514
    .line 515
    .line 516
    new-instance v1, Ljava/lang/StringBuilder;

    .line 517
    .line 518
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 519
    .line 520
    .line 521
    invoke-virtual/range {p1 .. p1}, Lorg/bitspark/android/beans/ChannelBean;->getRating()F

    .line 522
    .line 523
    .line 524
    move-result v2

    .line 525
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 526
    .line 527
    .line 528
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v1

    .line 535
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    .line 537
    .line 538
    const/4 v1, 0x0

    .line 539
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 540
    .line 541
    .line 542
    goto :goto_1

    .line 543
    :cond_4
    const/16 v1, 0x8

    .line 544
    .line 545
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 546
    .line 547
    .line 548
    :goto_1
    iget-object v1, v0, Lka/i0;->b0:Landroid/view/View;

    .line 549
    .line 550
    const v2, 0x7f0b0452

    .line 551
    .line 552
    .line 553
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 554
    .line 555
    .line 556
    move-result-object v1

    .line 557
    check-cast v1, Landroid/widget/TextView;

    .line 558
    .line 559
    invoke-virtual/range {p1 .. p1}, Lorg/bitspark/android/beans/ChannelBean;->getYear()I

    .line 560
    .line 561
    .line 562
    move-result v2

    .line 563
    if-eqz v2, :cond_5

    .line 564
    .line 565
    new-instance v2, Ljava/lang/StringBuilder;

    .line 566
    .line 567
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 568
    .line 569
    .line 570
    invoke-virtual/range {p1 .. p1}, Lorg/bitspark/android/beans/ChannelBean;->getYear()I

    .line 571
    .line 572
    .line 573
    move-result v4

    .line 574
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 575
    .line 576
    .line 577
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    .line 579
    .line 580
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 581
    .line 582
    .line 583
    move-result-object v2

    .line 584
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 585
    .line 586
    .line 587
    const/4 v2, 0x0

    .line 588
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 589
    .line 590
    .line 591
    goto :goto_2

    .line 592
    :cond_5
    const/16 v2, 0x8

    .line 593
    .line 594
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 595
    .line 596
    .line 597
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lorg/bitspark/android/beans/ChannelBean;->getName()Lorg/bitspark/android/beans/ChannelBean$NameBean;

    .line 598
    .line 599
    .line 600
    move-result-object v1

    .line 601
    if-eqz v1, :cond_6

    .line 602
    .line 603
    invoke-virtual/range {p1 .. p1}, Lorg/bitspark/android/beans/ChannelBean;->getName()Lorg/bitspark/android/beans/ChannelBean$NameBean;

    .line 604
    .line 605
    .line 606
    move-result-object v1

    .line 607
    invoke-virtual {v1}, Lorg/bitspark/android/beans/ChannelBean$NameBean;->getInit()Ljava/lang/String;

    .line 608
    .line 609
    .line 610
    move-result-object v1

    .line 611
    if-eqz v1, :cond_6

    .line 612
    .line 613
    invoke-virtual/range {p1 .. p1}, Lorg/bitspark/android/beans/ChannelBean;->getName()Lorg/bitspark/android/beans/ChannelBean$NameBean;

    .line 614
    .line 615
    .line 616
    move-result-object v1

    .line 617
    invoke-virtual {v1}, Lorg/bitspark/android/beans/ChannelBean$NameBean;->getInit()Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object v1

    .line 621
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 622
    .line 623
    .line 624
    move-result v1

    .line 625
    if-nez v1, :cond_6

    .line 626
    .line 627
    invoke-virtual/range {p1 .. p1}, Lorg/bitspark/android/beans/ChannelBean;->getName()Lorg/bitspark/android/beans/ChannelBean$NameBean;

    .line 628
    .line 629
    .line 630
    move-result-object v1

    .line 631
    invoke-virtual {v1}, Lorg/bitspark/android/beans/ChannelBean$NameBean;->getInit()Ljava/lang/String;

    .line 632
    .line 633
    .line 634
    move-result-object v1

    .line 635
    move-object/from16 v4, v17

    .line 636
    .line 637
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 638
    .line 639
    .line 640
    const/4 v1, 0x0

    .line 641
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 642
    .line 643
    .line 644
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lorg/bitspark/android/beans/ChannelBean;->getDescription()Ljava/lang/String;

    .line 645
    .line 646
    .line 647
    move-result-object v1

    .line 648
    if-eqz v1, :cond_7

    .line 649
    .line 650
    invoke-virtual/range {p1 .. p1}, Lorg/bitspark/android/beans/ChannelBean;->getDescription()Ljava/lang/String;

    .line 651
    .line 652
    .line 653
    move-result-object v1

    .line 654
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 655
    .line 656
    .line 657
    move-result v1

    .line 658
    if-nez v1, :cond_7

    .line 659
    .line 660
    move-object/from16 v7, v16

    .line 661
    .line 662
    const/16 v1, 0x8

    .line 663
    .line 664
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 665
    .line 666
    .line 667
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 668
    .line 669
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 670
    .line 671
    .line 672
    invoke-virtual/range {p1 .. p1}, Lorg/bitspark/android/beans/ChannelBean;->getDescription()Ljava/lang/String;

    .line 673
    .line 674
    .line 675
    move-result-object v1

    .line 676
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 677
    .line 678
    .line 679
    const/4 v1, 0x0

    .line 680
    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    .line 681
    .line 682
    .line 683
    goto :goto_3

    .line 684
    :cond_7
    move-object/from16 v7, v16

    .line 685
    .line 686
    const/16 v1, 0x8

    .line 687
    .line 688
    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    .line 689
    .line 690
    .line 691
    :cond_8
    :goto_3
    return-void
.end method

.method public final t(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 1
    new-instance p2, La1/b;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/s;->J()Landroidx/fragment/app/FragmentActivity;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    invoke-direct {p2, p3}, La1/b;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 8
    .line 9
    .line 10
    const-class p3, Lta/a;

    .line 11
    .line 12
    invoke-virtual {p2, p3}, La1/b;->n(Ljava/lang/Class;)Landroidx/lifecycle/v0;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    check-cast p2, Lta/a;

    .line 17
    .line 18
    iput-object p2, p0, Lka/i0;->U:Lta/a;

    .line 19
    .line 20
    const p2, 0x7f0e0052

    .line 21
    .line 22
    .line 23
    const/4 p3, 0x0

    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lka/i0;->b0:Landroid/view/View;

    .line 30
    .line 31
    const p2, 0x7f0b049b

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Landroid/view/ViewStub;

    .line 39
    .line 40
    iput-object p1, p0, Lka/i0;->V:Landroid/view/ViewStub;

    .line 41
    .line 42
    iget-object p1, p0, Lka/i0;->b0:Landroid/view/View;

    .line 43
    .line 44
    const p2, 0x7f0b0076

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Landroid/widget/ImageView;

    .line 52
    .line 53
    iput-object p1, p0, Lka/i0;->Z:Landroid/widget/ImageView;

    .line 54
    .line 55
    invoke-virtual {p0}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const/4 p2, 0x5

    .line 60
    invoke-static {p1, p2}, Ln5/d;->q(Landroid/content/Context;I)I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    invoke-virtual {p0}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    const/16 p3, 0xb

    .line 69
    .line 70
    invoke-static {p2, p3}, Ln5/d;->q(Landroid/content/Context;I)I

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    new-instance p3, Lsa/b;

    .line 75
    .line 76
    invoke-direct {p3, v0, v0, p1, p2}, Lsa/b;-><init>(IIII)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lka/i0;->U:Lta/a;

    .line 80
    .line 81
    invoke-virtual {p1}, Lta/a;->h()Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_0

    .line 86
    .line 87
    iget-object p1, p0, Lka/i0;->Z:Landroid/widget/ImageView;

    .line 88
    .line 89
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lka/i0;->V:Landroid/view/ViewStub;

    .line 93
    .line 94
    const p2, 0x7f0e0077

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, p2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lka/i0;->V:Landroid/view/ViewStub;

    .line 101
    .line 102
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lka/i0;->b0:Landroid/view/View;

    .line 106
    .line 107
    const p2, 0x7f0b0495

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 115
    .line 116
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/t0;)V

    .line 117
    .line 118
    .line 119
    iput-object p1, p0, Lka/i0;->g0:Landroidx/recyclerview/widget/RecyclerView;

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_0
    iget-object p1, p0, Lka/i0;->Z:Landroid/widget/ImageView;

    .line 123
    .line 124
    const/16 p2, 0x8

    .line 125
    .line 126
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    .line 128
    .line 129
    iget-object p1, p0, Lka/i0;->V:Landroid/view/ViewStub;

    .line 130
    .line 131
    const p2, 0x7f0e0076

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, p2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 135
    .line 136
    .line 137
    iget-object p1, p0, Lka/i0;->V:Landroid/view/ViewStub;

    .line 138
    .line 139
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 140
    .line 141
    .line 142
    iget-object p1, p0, Lka/i0;->b0:Landroid/view/View;

    .line 143
    .line 144
    const p2, 0x7f0b049c

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    check-cast p1, Landroidx/leanback/widget/VerticalGridView;

    .line 152
    .line 153
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/t0;)V

    .line 154
    .line 155
    .line 156
    iput-object p1, p0, Lka/i0;->g0:Landroidx/recyclerview/widget/RecyclerView;

    .line 157
    .line 158
    :goto_0
    iget-object p1, p0, Lka/i0;->U:Lta/a;

    .line 159
    .line 160
    iget-object p2, p1, Lta/a;->o:Ljava/lang/String;

    .line 161
    .line 162
    iget-object p1, p1, Lta/a;->q:Lorg/bitspark/android/beans/ChannelBean;

    .line 163
    .line 164
    if-eqz p2, :cond_1

    .line 165
    .line 166
    sget-object p3, Lka/i0;->i0:Ljava/lang/String;

    .line 167
    .line 168
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result p3

    .line 172
    if-eqz p3, :cond_1

    .line 173
    .line 174
    iget-object p3, p0, Lka/i0;->U:Lta/a;

    .line 175
    .line 176
    sget-object v1, Lea/d;->f:Lea/d;

    .line 177
    .line 178
    iput-object v1, p3, Lta/a;->p:Lea/d;

    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_1
    iget-object p3, p0, Lka/i0;->U:Lta/a;

    .line 182
    .line 183
    sget-object v1, Lea/d;->e:Lea/d;

    .line 184
    .line 185
    iput-object v1, p3, Lta/a;->p:Lea/d;

    .line 186
    .line 187
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/s;->j()Landroid/content/Context;

    .line 188
    .line 189
    .line 190
    move-result-object p3

    .line 191
    iget-object v1, p0, Lka/i0;->Z:Landroid/widget/ImageView;

    .line 192
    .line 193
    new-instance v2, Lka/e0;

    .line 194
    .line 195
    const/4 v3, 0x0

    .line 196
    invoke-direct {v2, p0, v3}, Lka/e0;-><init>(Lka/i0;I)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    .line 201
    .line 202
    iget-object v1, p0, Lka/i0;->b0:Landroid/view/View;

    .line 203
    .line 204
    const v2, 0x7f0b03f1

    .line 205
    .line 206
    .line 207
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    check-cast v1, Lorg/bitspark/android/view/LeanbackTabLayout;

    .line 212
    .line 213
    iput-object v1, p0, Lka/i0;->X:Lorg/bitspark/android/view/LeanbackTabLayout;

    .line 214
    .line 215
    iget-object v1, p0, Lka/i0;->b0:Landroid/view/View;

    .line 216
    .line 217
    const v2, 0x7f0b0492

    .line 218
    .line 219
    .line 220
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    check-cast v1, Lorg/bitspark/android/view/MyProcessRelativeLayout;

    .line 225
    .line 226
    iput-object v1, p0, Lka/i0;->c0:Lorg/bitspark/android/view/MyProcessRelativeLayout;

    .line 227
    .line 228
    iget-object v1, p0, Lka/i0;->b0:Landroid/view/View;

    .line 229
    .line 230
    const v2, 0x7f0b0478

    .line 231
    .line 232
    .line 233
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    check-cast v1, Landroidx/viewpager2/widget/ViewPager2;

    .line 238
    .line 239
    iput-object v1, p0, Lka/i0;->e0:Landroidx/viewpager2/widget/ViewPager2;

    .line 240
    .line 241
    new-instance v2, Lka/f0;

    .line 242
    .line 243
    invoke-direct {v2, p0}, Lka/f0;-><init>(Lka/i0;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 247
    .line 248
    .line 249
    iget-object v1, p0, Lka/i0;->c0:Lorg/bitspark/android/view/MyProcessRelativeLayout;

    .line 250
    .line 251
    new-instance v2, Lka/a0;

    .line 252
    .line 253
    const/4 v3, 0x1

    .line 254
    invoke-direct {v2, p0, v3}, Lka/a0;-><init>(Lka/i0;I)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 258
    .line 259
    .line 260
    iget-object v1, p0, Lka/i0;->b0:Landroid/view/View;

    .line 261
    .line 262
    const v2, 0x7f0b01e0

    .line 263
    .line 264
    .line 265
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 270
    .line 271
    new-instance v2, Lfa/q0;

    .line 272
    .line 273
    invoke-direct {v2}, Landroidx/recyclerview/widget/k0;-><init>()V

    .line 274
    .line 275
    .line 276
    const/4 v3, 0x0

    .line 277
    iput v3, v2, Lfa/q0;->a:F

    .line 278
    .line 279
    iput-object v2, p0, Lka/i0;->W:Lfa/q0;

    .line 280
    .line 281
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/k0;)V

    .line 282
    .line 283
    .line 284
    new-instance v2, Landroidx/recyclerview/widget/l;

    .line 285
    .line 286
    invoke-direct {v2, p3}, Landroidx/recyclerview/widget/l;-><init>(Landroid/content/Context;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 290
    .line 291
    .line 292
    move-result-object p3

    .line 293
    sget v3, Lorg/bitspark/android/R$drawable;->shape_rating_bar_divider:I

    .line 294
    .line 295
    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 296
    .line 297
    .line 298
    move-result-object p3

    .line 299
    if-eqz p3, :cond_2

    .line 300
    .line 301
    iput-object p3, v2, Landroidx/recyclerview/widget/l;->a:Landroid/graphics/drawable/Drawable;

    .line 302
    .line 303
    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 304
    .line 305
    invoke-direct {p3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/x0;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/t0;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {p0, p1, p2}, Lka/i0;->U(Lorg/bitspark/android/beans/ChannelBean;Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    iget-object p3, p0, Lka/i0;->b0:Landroid/view/View;

    .line 318
    .line 319
    const v0, 0x7f0b0112

    .line 320
    .line 321
    .line 322
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 323
    .line 324
    .line 325
    move-result-object p3

    .line 326
    new-instance v0, Landroidx/media3/exoplayer/hls/b;

    .line 327
    .line 328
    const/16 v1, 0x8

    .line 329
    .line 330
    invoke-direct {v0, p0, p1, p2, v1}, Landroidx/media3/exoplayer/hls/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 331
    .line 332
    .line 333
    new-instance p1, Landroidx/appcompat/app/c;

    .line 334
    .line 335
    const/4 p2, 0x4

    .line 336
    invoke-direct {p1, p0, p3, v0, p2}, Landroidx/appcompat/app/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {p3, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 340
    .line 341
    .line 342
    iget-object p1, p0, Lka/i0;->b0:Landroid/view/View;

    .line 343
    .line 344
    return-object p1

    .line 345
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 346
    .line 347
    const-string p2, "Drawable cannot be null."

    .line 348
    .line 349
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    throw p1
.end method

.method public final v()V
    .locals 3

    .line 1
    invoke-super {p0}, Le8/a;->v()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lka/i0;->b0:Landroid/view/View;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const v1, 0x7f0b048f

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/ImageView;

    .line 16
    .line 17
    iget-object v1, p0, Lka/i0;->b0:Landroid/view/View;

    .line 18
    .line 19
    const v2, 0x7f0b022b

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Landroid/widget/ImageView;

    .line 27
    .line 28
    invoke-static {p0}, Lcom/bumptech/glide/b;->f(Lka/i0;)Lcom/bumptech/glide/o;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2, v0}, Lcom/bumptech/glide/o;->k(Landroid/widget/ImageView;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p0}, Lcom/bumptech/glide/b;->f(Lka/i0;)Lcom/bumptech/glide/o;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/o;->k(Landroid/widget/ImageView;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method
