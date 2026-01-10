.class public Lka/r;
.super Lka/b;
.source "MyApplication"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# static fields
.field public static final s0:Ljava/lang/String;

.field public static t0:Landroidx/mediarouter/app/c;

.field public static u0:I

.field public static v0:I

.field public static w0:I


# instance fields
.field public U:Landroid/view/View;

.field public V:Landroidx/leanback/widget/VerticalGridView;

.field public W:Landroidx/leanback/widget/VerticalGridView;

.field public X:Lfa/g0;

.field public Y:Lfa/d0;

.field public Z:Landroid/widget/ExpandableListView;

.field public b0:Lfa/k;

.field public c0:Landroid/widget/RelativeLayout;

.field public d0:Landroid/widget/EditText;

.field public e0:Landroid/view/View;

.field public f0:Lea/d;

.field public final g0:Z

.field public h0:Landroid/view/View;

.field public i0:Z

.field public final j0:Ljava/util/HashMap;

.field public k0:Lta/a;

.field public l0:Z

.field public m0:I

.field public n0:Z

.field public final o0:Ljava/util/ArrayList;

.field public p0:I

.field public q0:Ljava/lang/Boolean;

.field public r0:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "kJRYfGaG\n"

    .line 2
    .line 3
    const-string v1, "0scVGQjzcIQ=\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lka/r;->s0:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    sput v0, Lka/r;->u0:I

    .line 13
    .line 14
    sput v0, Lka/r;->v0:I

    .line 15
    .line 16
    sput v0, Lka/r;->w0:I

    .line 17
    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lka/b;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lea/h;->a:Ljava/lang/String;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lka/r;->g0:Z

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lka/r;->h0:Landroid/view/View;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lka/r;->i0:Z

    .line 14
    .line 15
    new-instance v1, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lka/r;->j0:Ljava/util/HashMap;

    .line 21
    .line 22
    new-instance v1, Landroidx/mediarouter/app/c;

    .line 23
    .line 24
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const/4 v3, 0x3

    .line 29
    invoke-direct {v1, p0, v2, v3}, Landroidx/mediarouter/app/c;-><init>(Lka/b;Landroid/os/Looper;I)V

    .line 30
    .line 31
    .line 32
    sput-object v1, Lka/r;->t0:Landroidx/mediarouter/app/c;

    .line 33
    .line 34
    iput-boolean v0, p0, Lka/r;->l0:Z

    .line 35
    .line 36
    iput v0, p0, Lka/r;->m0:I

    .line 37
    .line 38
    iput-boolean v0, p0, Lka/r;->n0:Z

    .line 39
    .line 40
    new-instance v1, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v1, p0, Lka/r;->o0:Ljava/util/ArrayList;

    .line 46
    .line 47
    iput v0, p0, Lka/r;->p0:I

    .line 48
    .line 49
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 50
    .line 51
    iput-object v1, p0, Lka/r;->q0:Ljava/lang/Boolean;

    .line 52
    .line 53
    iput-boolean v0, p0, Lka/r;->r0:Z

    .line 54
    .line 55
    return-void
.end method

.method public static Q(Lka/r;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lga/d;->b:Ljava/util/List;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_5

    .line 19
    .line 20
    sget-object v1, Lga/d;->b:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_5

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lorg/bitspark/android/beans/ChannelBean;

    .line 37
    .line 38
    invoke-virtual {v2}, Lorg/bitspark/android/beans/ChannelBean;->getName()Lorg/bitspark/android/beans/ChannelBean$NameBean;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v3}, Lorg/bitspark/android/beans/ChannelBean$NameBean;->getInit()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-nez v3, :cond_1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {v2}, Lorg/bitspark/android/beans/ChannelBean;->getLevel()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    const/16 v4, 0x12

    .line 66
    .line 67
    if-ne v3, v4, :cond_2

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {v2}, Lorg/bitspark/android/beans/ChannelBean;->getTags()Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    if-eqz v4, :cond_4

    .line 83
    .line 84
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    check-cast v4, Lorg/bitspark/android/beans/ChannelBean$TagsBean;

    .line 89
    .line 90
    invoke-virtual {v4}, Lorg/bitspark/android/beans/ChannelBean$TagsBean;->isRestrictedAccess()Z

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-eqz v4, :cond_3

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_5
    new-instance p1, Lka/q;

    .line 102
    .line 103
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 107
    .line 108
    .line 109
    const/16 p1, -0x3e8

    .line 110
    .line 111
    iput p1, p0, Lka/r;->m0:I

    .line 112
    .line 113
    invoke-virtual {p0, v0}, Lka/r;->d0(Ljava/util/List;)V

    .line 114
    .line 115
    .line 116
    :goto_1
    return-void
.end method

.method public static R(Lka/r;Landroid/widget/ExpandableListView;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lka/r;->b0:Lfa/k;

    .line 2
    .line 3
    iget v0, v0, Lfa/k;->e:I

    .line 4
    .line 5
    if-ne p2, v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    iget-object p2, p0, Lka/r;->b0:Lfa/k;

    .line 14
    .line 15
    iget p2, p2, Lfa/k;->e:I

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lka/r;->b0:Lfa/k;

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    iput-boolean p1, p0, Lfa/k;->f:Z

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object p2, p0, Lka/r;->b0:Lfa/k;

    .line 27
    .line 28
    iget p2, p2, Lfa/k;->e:I

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lka/r;->b0:Lfa/k;

    .line 34
    .line 35
    const/4 p1, 0x1

    .line 36
    iput-boolean p1, p0, Lfa/k;->f:Z

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-eqz p0, :cond_2

    .line 44
    .line 45
    invoke-virtual {p1, p2}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {p1, p2}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void
.end method

.method public static S(Lka/r;Landroid/view/View;III)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lka/r;->Z:Landroid/widget/ExpandableListView;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_5

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    goto/16 :goto_2

    .line 9
    .line 10
    :cond_0
    iput-boolean v1, p0, Lka/r;->r0:Z

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lorg/bitspark/android/beans/EpgBeans$EpgBean;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    goto/16 :goto_2

    .line 21
    .line 22
    :cond_1
    invoke-virtual {v0}, Lorg/bitspark/android/beans/EpgBeans$EpgBean;->getPlaybackUrl()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-eqz v2, :cond_5

    .line 27
    .line 28
    const-string v3, ""

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_2

    .line 35
    .line 36
    goto/16 :goto_2

    .line 37
    .line 38
    :cond_2
    sget-object v3, Lorg/bitspark/android/utils/o;->f:Lorg/bitspark/android/utils/o;

    .line 39
    .line 40
    invoke-virtual {v3}, Lorg/bitspark/android/utils/o;->d()V

    .line 41
    .line 42
    .line 43
    iget-object v4, v3, Lorg/bitspark/android/utils/o;->b:Lta/a;

    .line 44
    .line 45
    invoke-virtual {v4}, Lta/a;->k()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Lorg/bitspark/android/utils/o;->e()V

    .line 49
    .line 50
    .line 51
    iget-object v3, p0, Lka/r;->Z:Landroid/widget/ExpandableListView;

    .line 52
    .line 53
    invoke-virtual {v3, p2, p3, v1}, Landroid/widget/ExpandableListView;->setSelectedChild(IIZ)Z

    .line 54
    .line 55
    .line 56
    new-instance p2, Landroid/os/Message;

    .line 57
    .line 58
    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    .line 59
    .line 60
    .line 61
    const/16 p3, 0x50

    .line 62
    .line 63
    iput p3, p2, Landroid/os/Message;->what:I

    .line 64
    .line 65
    new-instance p3, Landroid/os/Bundle;

    .line 66
    .line 67
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 68
    .line 69
    .line 70
    const v1, 0x7f0b00ce

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Ljava/lang/Integer;

    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    sget-object v3, Lga/d;->c:Ljava/util/HashMap;

    .line 84
    .line 85
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object p4

    .line 89
    invoke-virtual {v3, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p4

    .line 93
    check-cast p4, Lorg/bitspark/android/beans/ChannelBean;

    .line 94
    .line 95
    if-nez p4, :cond_3

    .line 96
    .line 97
    const-string v3, "lQIUOViCfg==\n"

    .line 98
    .line 99
    const-string v4, "1mp1VzbnEgY=\n"

    .line 100
    .line 101
    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    goto :goto_0

    .line 106
    :cond_3
    invoke-virtual {p4}, Lorg/bitspark/android/beans/ChannelBean;->getName()Lorg/bitspark/android/beans/ChannelBean$NameBean;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-virtual {v3}, Lorg/bitspark/android/beans/ChannelBean$NameBean;->getInit()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    :goto_0
    const/4 v4, 0x0

    .line 115
    if-nez p4, :cond_4

    .line 116
    .line 117
    const/4 p4, 0x0

    .line 118
    goto :goto_1

    .line 119
    :cond_4
    invoke-virtual {p4}, Lorg/bitspark/android/beans/ChannelBean;->getLevel()I

    .line 120
    .line 121
    .line 122
    move-result p4

    .line 123
    :goto_1
    const-string v5, "FL0HJA==\n"

    .line 124
    .line 125
    const-string v6, "d9VuQFk4XiM=\n"

    .line 126
    .line 127
    invoke-static {v5, v6}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    invoke-virtual {p3, v5, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 132
    .line 133
    .line 134
    const-string v1, "hvJuT5k=\n"

    .line 135
    .line 136
    const-string v5, "6pcYKvXw4Bc=\n"

    .line 137
    .line 138
    invoke-static {v1, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {p3, v1, p4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 143
    .line 144
    .line 145
    const-string p4, "O6X1m+k=\n"

    .line 146
    .line 147
    const-string v1, "SNCX0o0nE7Q=\n"

    .line 148
    .line 149
    invoke-static {p4, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p4

    .line 153
    invoke-virtual {v0}, Lorg/bitspark/android/beans/EpgBeans$EpgBean;->getId()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-virtual {p3, p4, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    const-string p4, "5fAn\n"

    .line 161
    .line 162
    const-string v1, "kIJLEBtZTRw=\n"

    .line 163
    .line 164
    invoke-static {p4, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p4

    .line 168
    invoke-virtual {p3, p4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    const-string p4, "0dNVoQ==\n"

    .line 172
    .line 173
    const-string v1, "v7I4xO6lfyg=\n"

    .line 174
    .line 175
    invoke-static {p4, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p4

    .line 179
    invoke-virtual {p3, p4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    const-string p4, "WMUISA5YcDw=\n"

    .line 183
    .line 184
    const-string v1, "K7BqPGcsHFk=\n"

    .line 185
    .line 186
    invoke-static {p4, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p4

    .line 190
    invoke-virtual {v0}, Lorg/bitspark/android/beans/EpgBeans$EpgBean;->getName()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    invoke-virtual {p3, p4, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    const-string p4, "pWKQFA==\n"

    .line 198
    .line 199
    const-string v1, "0RvgcVPdWAY=\n"

    .line 200
    .line 201
    invoke-static {p4, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p4

    .line 205
    sget-object v1, Lorg/bitspark/android/Constants$VIDEO_TYPE;->BSPALYBACK:Lorg/bitspark/android/Constants$VIDEO_TYPE;

    .line 206
    .line 207
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    invoke-virtual {p3, p4, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    const-string p4, "kAaeajfhtWg=\n"

    .line 215
    .line 216
    const-string v1, "/WPwH2OYxQ0=\n"

    .line 217
    .line 218
    invoke-static {p4, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p4

    .line 222
    sget-object v1, Lea/d;->b:Lea/d;

    .line 223
    .line 224
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    invoke-virtual {p3, p4, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p2, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 232
    .line 233
    .line 234
    sget-object p3, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 235
    .line 236
    invoke-virtual {p3, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0}, Lorg/bitspark/android/beans/EpgBeans$EpgBean;->getId()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object p2

    .line 243
    sput-object p2, Lfa/k;->n:Ljava/lang/String;

    .line 244
    .line 245
    iget-object p2, p0, Lka/r;->b0:Lfa/k;

    .line 246
    .line 247
    invoke-virtual {p2}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    .line 248
    .line 249
    .line 250
    sget-object p2, Lea/d;->c:Lea/d;

    .line 251
    .line 252
    invoke-virtual {p0, p2}, Lka/r;->h0(Lea/d;)V

    .line 253
    .line 254
    .line 255
    iput-object p1, p0, Lka/r;->h0:Landroid/view/View;

    .line 256
    .line 257
    const/4 v1, 0x0

    .line 258
    :cond_5
    :goto_2
    return v1
.end method


# virtual methods
.method public final B()V
    .locals 3

    .line 1
    const-string v0, "N0jmbqxk7Rs=\n"

    .line 2
    .line 3
    const-string v1, "ei2IG+oWjHw=\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "Pf+6xqIYCw==\n"

    .line 10
    .line 11
    const-string v2, "UpHpssNqfzM=\n"

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
    iput-boolean v0, p0, Lka/r;->i0:Z

    .line 27
    .line 28
    return-void
.end method

.method public final T(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lka/r;->X:Lfa/g0;

    .line 2
    .line 3
    iget-object v0, v0, Lfa/g0;->d:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput v0, p0, Lka/r;->m0:I

    .line 16
    .line 17
    iget-object v0, p0, Lka/r;->X:Lfa/g0;

    .line 18
    .line 19
    iget-object v0, v0, Lfa/g0;->e:Landroid/view/View;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lka/r;->X:Lfa/g0;

    .line 29
    .line 30
    iget v2, p0, Lka/r;->m0:I

    .line 31
    .line 32
    invoke-virtual {v0, v2, v1}, Lfa/g0;->a(ILandroid/view/View;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Lka/r;->V:Landroidx/leanback/widget/VerticalGridView;

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Landroidx/leanback/widget/j;->smoothScrollToPosition(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/p1;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    iget-object v1, v0, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 47
    .line 48
    :cond_1
    sget-object v0, Lka/r;->s0:Ljava/lang/String;

    .line 49
    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v3, "22oVbwf8zkjNciRtAcL/T9lsGmQMgZw=\n"

    .line 56
    .line 57
    const-string v4, "uAJ0AWC7vCc=\n"

    .line 58
    .line 59
    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v3, "MeJggZCtxr1jqi31yQ==\n"

    .line 70
    .line 71
    const-string v4, "DN9dvK2Qoc8=\n"

    .line 72
    .line 73
    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    iget v3, p0, Lka/r;->m0:I

    .line 81
    .line 82
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v3, "XS9wieh/\n"

    .line 86
    .line 87
    const-string v4, "YBJNtNVCsJA=\n"

    .line 88
    .line 89
    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    sget-boolean v2, Lorg/bitspark/android/utils/m;->b:Z

    .line 104
    .line 105
    invoke-static {v0, p1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    if-eqz v1, :cond_2

    .line 109
    .line 110
    const/4 p1, 0x1

    .line 111
    invoke-virtual {v1, p1}, Landroid/view/View;->setSelected(Z)V

    .line 112
    .line 113
    .line 114
    iget-object p1, p0, Lka/r;->X:Lfa/g0;

    .line 115
    .line 116
    iget v0, p0, Lka/r;->m0:I

    .line 117
    .line 118
    invoke-virtual {p1, v0, v1}, Lfa/g0;->a(ILandroid/view/View;)V

    .line 119
    .line 120
    .line 121
    :cond_2
    sget-object p1, Lga/d;->d:Ljava/util/HashMap;

    .line 122
    .line 123
    if-eqz p1, :cond_3

    .line 124
    .line 125
    sget-object p1, Lga/d;->d:Ljava/util/HashMap;

    .line 126
    .line 127
    iget v0, p0, Lka/r;->m0:I

    .line 128
    .line 129
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    if-eqz p1, :cond_3

    .line 138
    .line 139
    sget-object p1, Lga/d;->d:Ljava/util/HashMap;

    .line 140
    .line 141
    iget v0, p0, Lka/r;->m0:I

    .line 142
    .line 143
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    check-cast p1, Lorg/bitspark/android/beans/Group;

    .line 152
    .line 153
    iget p1, p1, Lorg/bitspark/android/beans/Group;->type:I

    .line 154
    .line 155
    sput p1, Lorg/bitspark/android/Spark;->b2:I

    .line 156
    .line 157
    :cond_3
    invoke-virtual {p0}, Lka/r;->c0()V

    .line 158
    .line 159
    .line 160
    return-void
.end method

.method public final U(Ljava/lang/Boolean;Lorg/bitspark/android/beans/ChannelBean;)V
    .locals 5

    .line 1
    invoke-static {p2}, Lga/h;->d(Lorg/bitspark/android/beans/ChannelBean;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const-string v1, ""

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    sget p1, Lka/r;->w0:I

    .line 15
    .line 16
    invoke-virtual {p2}, Lorg/bitspark/android/beans/ChannelBean;->getChid()I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eq p1, v3, :cond_0

    .line 21
    .line 22
    invoke-virtual {p2}, Lorg/bitspark/android/beans/ChannelBean;->getChid()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    sput p1, Lka/r;->w0:I

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lka/r;->g0(I)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p2}, Lorg/bitspark/android/beans/ChannelBean;->getSources()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_8

    .line 37
    .line 38
    invoke-virtual {p2}, Lorg/bitspark/android/beans/ChannelBean;->getSources()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-nez p1, :cond_8

    .line 47
    .line 48
    invoke-virtual {p2}, Lorg/bitspark/android/beans/ChannelBean;->getSources()Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Lorg/bitspark/android/beans/ChannelBean$SourcesBean;

    .line 57
    .line 58
    invoke-virtual {p1}, Lorg/bitspark/android/beans/ChannelBean$SourcesBean;->getAddress()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-nez p1, :cond_1

    .line 63
    .line 64
    goto/16 :goto_3

    .line 65
    .line 66
    :cond_1
    iget-object p1, p0, Lka/r;->b0:Lfa/k;

    .line 67
    .line 68
    if-eqz p1, :cond_2

    .line 69
    .line 70
    sput-object v1, Lfa/k;->n:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    .line 73
    .line 74
    .line 75
    :cond_2
    :goto_0
    invoke-static {v0}, Lga/h;->a(I)Ljava/util/HashMap;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    const/4 v3, 0x0

    .line 80
    if-eqz p1, :cond_5

    .line 81
    .line 82
    invoke-static {v0}, Lga/h;->c(I)Ljava/util/ArrayList;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    if-eqz p1, :cond_4

    .line 87
    .line 88
    iget-object v0, p0, Lka/r;->k0:Lta/a;

    .line 89
    .line 90
    iget-object v0, v0, Lta/a;->l:Landroidx/lifecycle/d0;

    .line 91
    .line 92
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    check-cast v4, Lorg/bitspark/android/beans/EpgBeans$EpgBean;

    .line 97
    .line 98
    invoke-virtual {v0, v4}, Landroidx/lifecycle/d0;->h(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    const/4 v4, 0x1

    .line 106
    if-le v0, v4, :cond_3

    .line 107
    .line 108
    iget-object v0, p0, Lka/r;->k0:Lta/a;

    .line 109
    .line 110
    iget-object v0, v0, Lta/a;->m:Landroidx/lifecycle/d0;

    .line 111
    .line 112
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    check-cast p1, Lorg/bitspark/android/beans/EpgBeans$EpgBean;

    .line 117
    .line 118
    invoke-virtual {v0, p1}, Landroidx/lifecycle/d0;->h(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_3
    iget-object p1, p0, Lka/r;->k0:Lta/a;

    .line 123
    .line 124
    iget-object p1, p1, Lta/a;->m:Landroidx/lifecycle/d0;

    .line 125
    .line 126
    invoke-virtual {p1, v3}, Landroidx/lifecycle/d0;->h(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_4
    iget-object p1, p0, Lka/r;->k0:Lta/a;

    .line 131
    .line 132
    iget-object p1, p1, Lta/a;->l:Landroidx/lifecycle/d0;

    .line 133
    .line 134
    invoke-virtual {p1, v3}, Landroidx/lifecycle/d0;->h(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_5
    iget-object p1, p0, Lka/r;->k0:Lta/a;

    .line 139
    .line 140
    iget-object p1, p1, Lta/a;->l:Landroidx/lifecycle/d0;

    .line 141
    .line 142
    invoke-virtual {p1, v3}, Landroidx/lifecycle/d0;->h(Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    iget-object p1, p0, Lka/r;->k0:Lta/a;

    .line 146
    .line 147
    iget-object p1, p1, Lta/a;->m:Landroidx/lifecycle/d0;

    .line 148
    .line 149
    invoke-virtual {p1, v3}, Landroidx/lifecycle/d0;->h(Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    :goto_1
    invoke-virtual {p2}, Lorg/bitspark/android/beans/ChannelBean;->getSources()Ljava/util/List;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    check-cast p1, Lorg/bitspark/android/beans/ChannelBean$SourcesBean;

    .line 161
    .line 162
    invoke-virtual {p1}, Lorg/bitspark/android/beans/ChannelBean$SourcesBean;->getAddress()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    if-eqz p1, :cond_7

    .line 167
    .line 168
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    if-eqz p1, :cond_6

    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_6
    invoke-virtual {p0, p2}, Lka/r;->b0(Lorg/bitspark/android/beans/ChannelBean;)V

    .line 176
    .line 177
    .line 178
    sget-object p1, Lea/d;->b:Lea/d;

    .line 179
    .line 180
    invoke-virtual {p0, p1}, Lka/r;->h0(Lea/d;)V

    .line 181
    .line 182
    .line 183
    :cond_7
    :goto_2
    iget-object p1, p0, Lka/r;->k0:Lta/a;

    .line 184
    .line 185
    iget-object p1, p1, Lta/a;->k:Landroidx/lifecycle/d0;

    .line 186
    .line 187
    invoke-virtual {p1, p2}, Landroidx/lifecycle/d0;->h(Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    :cond_8
    :goto_3
    return-void
.end method

.method public final V(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lka/r;->V:Landroidx/leanback/widget/VerticalGridView;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_6

    .line 10
    .line 11
    iget-object v0, p0, Lka/r;->j0:Ljava/util/HashMap;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x0

    .line 21
    new-array v2, v1, [Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, [Ljava/lang/Integer;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    :goto_0
    array-length v3, v0

    .line 31
    if-ge v2, v3, :cond_2

    .line 32
    .line 33
    aget-object v3, v0, v2

    .line 34
    .line 35
    if-nez v3, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    :goto_1
    array-length v2, v0

    .line 45
    const/4 v3, 0x0

    .line 46
    const/4 v4, 0x0

    .line 47
    :goto_2
    if-ge v3, v2, :cond_4

    .line 48
    .line 49
    aget-object v5, v0, v3

    .line 50
    .line 51
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-ne v5, p1, :cond_3

    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 59
    .line 60
    add-int/lit8 v3, v3, 0x1

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_4
    :goto_3
    iget-object p1, p0, Lka/r;->X:Lfa/g0;

    .line 64
    .line 65
    iget-object p1, p1, Lfa/g0;->e:Landroid/view/View;

    .line 66
    .line 67
    if-eqz p1, :cond_5

    .line 68
    .line 69
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 70
    .line 71
    .line 72
    :cond_5
    iget-object p1, p0, Lka/r;->X:Lfa/g0;

    .line 73
    .line 74
    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p1, Lfa/g0;->g:Z

    .line 76
    .line 77
    iget-object v0, p0, Lka/r;->V:Landroidx/leanback/widget/VerticalGridView;

    .line 78
    .line 79
    invoke-static {v0, p1, v4}, Lo9/d;->A(Landroidx/recyclerview/widget/RecyclerView;Lfa/i0;I)V

    .line 80
    .line 81
    .line 82
    :cond_6
    return-void
.end method

.method public final W()I
    .locals 2

    .line 1
    iget-object v0, p0, Lka/r;->X:Lfa/g0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lfa/g0;->e:Landroid/view/View;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lka/r;->V:Landroidx/leanback/widget/VerticalGridView;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/p1;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroidx/recyclerview/widget/p1;->getAbsoluteAdapterPosition()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return v0
.end method

.method public final X(I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lka/r;->X:Lfa/g0;

    .line 2
    .line 3
    iget-object v0, v0, Lfa/g0;->d:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sget-object v1, Lka/r;->s0:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v3, "9oIowB3tID7ztAbYCPp0e/iDBN0Myiph\n"

    .line 23
    .line 24
    const-string v4, "n/FrqHyDTls=\n"

    .line 25
    .line 26
    invoke-static {v3, v4, v2, v0}, Lea/q;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    sget-boolean v3, Lorg/bitspark/android/utils/m;->b:Z

    .line 31
    .line 32
    invoke-static {v1, v2}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 v2, -0x3

    .line 36
    const/4 v3, 0x1

    .line 37
    if-ne v0, v2, :cond_0

    .line 38
    .line 39
    return v3

    .line 40
    :cond_0
    sget-object v2, Lga/d;->d:Ljava/util/HashMap;

    .line 41
    .line 42
    if-nez v2, :cond_1

    .line 43
    .line 44
    const-string p1, "RyqL02CQVVNCHKXLdYcBFm0xqdVvm1cYSSunznG9U1dAN63XTJ9L\n"

    .line 45
    .line 46
    const-string v0, "LlnIuwH+OzY=\n"

    .line 47
    .line 48
    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {v1, p1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return v3

    .line 56
    :cond_1
    iget-object v2, p0, Lka/r;->j0:Ljava/util/HashMap;

    .line 57
    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    if-eqz v2, :cond_2

    .line 65
    .line 66
    iget-object v2, p0, Lka/r;->j0:Ljava/util/HashMap;

    .line 67
    .line 68
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Lorg/bitspark/android/beans/Group;

    .line 73
    .line 74
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    iget-boolean v2, v2, Lorg/bitspark/android/beans/Group;->restrictedAccess:Z

    .line 78
    .line 79
    if-eqz v2, :cond_2

    .line 80
    .line 81
    return v3

    .line 82
    :cond_2
    sget-object v2, Lga/d;->d:Ljava/util/HashMap;

    .line 83
    .line 84
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Lorg/bitspark/android/beans/Group;

    .line 89
    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string v4, "UtBLQuBlD0ZQ2kZVmS0=\n"

    .line 96
    .line 97
    const-string v5, "Pr8qJqMNbig=\n"

    .line 98
    .line 99
    invoke-static {v4, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-static {v1, v2}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    if-nez p1, :cond_3

    .line 117
    .line 118
    return v3

    .line 119
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    const-string v4, "YHS3FdJ63tpifroCqzI=\n"

    .line 125
    .line 126
    const-string v5, "DBvWcZESv7Q=\n"

    .line 127
    .line 128
    invoke-static {v4, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    iget-object v4, p1, Lorg/bitspark/android/beans/Group;->channnels:Ljava/util/List;

    .line 136
    .line 137
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-static {v1, v2}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    iget-object p1, p1, Lorg/bitspark/android/beans/Group;->channnels:Ljava/util/List;

    .line 148
    .line 149
    if-eqz p1, :cond_5

    .line 150
    .line 151
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    if-eqz p1, :cond_4

    .line 156
    .line 157
    goto :goto_0

    .line 158
    :cond_4
    iput v0, p0, Lka/r;->m0:I

    .line 159
    .line 160
    const-string p1, "CpPlw+GoMYkPpcvb9L9lzAqThsXvsn+pDpDS0g==\n"

    .line 161
    .line 162
    const-string v0, "Y+Cmq4DGX+w=\n"

    .line 163
    .line 164
    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-static {v1, p1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    const/4 p1, 0x0

    .line 172
    return p1

    .line 173
    :cond_5
    :goto_0
    return v3
.end method

.method public final Y(I)V
    .locals 2

    .line 1
    sget-object v0, Lga/d;->d:Ljava/util/HashMap;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lga/d;->d:Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lorg/bitspark/android/beans/Group;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, v0, Lorg/bitspark/android/beans/Group;->channnels:Ljava/util/List;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iput p1, p0, Lka/r;->m0:I

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lka/r;->d0(Ljava/util/List;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 30
    .line 31
    iput-object p1, p0, Lka/r;->q0:Ljava/lang/Boolean;

    .line 32
    .line 33
    return-void
.end method

.method public final Z()V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-boolean v1, p0, Lka/r;->i0:Z

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    sget-object v0, Lka/r;->s0:Ljava/lang/String;

    .line 7
    .line 8
    const-string v1, "4EvgYS9aqY7oSfpwZh77jf1Q+3s=\n"

    .line 9
    .line 10
    const-string v2, "iSWJFUo+ieg=\n"

    .line 11
    .line 12
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    sget-boolean v2, Lorg/bitspark/android/utils/m;->b:Z

    .line 17
    .line 18
    invoke-static {v0, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v1, p0, Lka/r;->V:Landroidx/leanback/widget/VerticalGridView;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/k0;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    iget-object v1, p0, Lka/r;->j0:Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 34
    .line 35
    .line 36
    sget-object v1, Lga/d;->d:Ljava/util/HashMap;

    .line 37
    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    iget-object v1, p0, Lka/r;->j0:Ljava/util/HashMap;

    .line 41
    .line 42
    sget-object v2, Lga/d;->d:Ljava/util/HashMap;

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    new-instance v1, Lfa/g0;

    .line 48
    .line 49
    iget-object v2, p0, Lka/r;->j0:Ljava/util/HashMap;

    .line 50
    .line 51
    new-instance v3, Lka/n;

    .line 52
    .line 53
    invoke-direct {v3, p0, v0}, Lka/n;-><init>(Lka/r;I)V

    .line 54
    .line 55
    .line 56
    invoke-direct {v1}, Lfa/i0;-><init>()V

    .line 57
    .line 58
    .line 59
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 60
    .line 61
    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object v4, v1, Lfa/g0;->c:Ljava/util/LinkedHashMap;

    .line 65
    .line 66
    new-instance v5, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object v5, v1, Lfa/g0;->d:Ljava/util/ArrayList;

    .line 72
    .line 73
    iput-boolean v0, v1, Lfa/g0;->g:Z

    .line 74
    .line 75
    const/4 v6, 0x0

    .line 76
    iput-boolean v6, v1, Lfa/g0;->h:Z

    .line 77
    .line 78
    iput-object v3, v1, Lfa/g0;->f:Lka/n;

    .line 79
    .line 80
    invoke-interface {v4, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    new-instance v3, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 93
    .line 94
    .line 95
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 96
    .line 97
    .line 98
    iput-object v1, p0, Lka/r;->X:Lfa/g0;

    .line 99
    .line 100
    iget-object v2, p0, Lka/r;->V:Landroidx/leanback/widget/VerticalGridView;

    .line 101
    .line 102
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/k0;)V

    .line 103
    .line 104
    .line 105
    iget-object v1, p0, Lka/r;->j0:Ljava/util/HashMap;

    .line 106
    .line 107
    if-eqz v1, :cond_8

    .line 108
    .line 109
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-nez v1, :cond_3

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_3
    iget-object v1, p0, Lka/r;->V:Landroidx/leanback/widget/VerticalGridView;

    .line 117
    .line 118
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    const/16 v2, 0x8

    .line 123
    .line 124
    if-ne v1, v2, :cond_4

    .line 125
    .line 126
    iget-object v1, p0, Lka/r;->V:Landroidx/leanback/widget/VerticalGridView;

    .line 127
    .line 128
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 129
    .line 130
    .line 131
    :cond_4
    iget-object v1, p0, Lka/r;->j0:Ljava/util/HashMap;

    .line 132
    .line 133
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    new-array v2, v2, [Ljava/lang/Integer;

    .line 142
    .line 143
    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    check-cast v1, [Ljava/lang/Integer;

    .line 148
    .line 149
    if-eqz v1, :cond_7

    .line 150
    .line 151
    array-length v2, v1

    .line 152
    if-lez v2, :cond_7

    .line 153
    .line 154
    const/4 v2, 0x0

    .line 155
    :goto_0
    array-length v3, v1

    .line 156
    if-ge v2, v3, :cond_6

    .line 157
    .line 158
    aget-object v3, v1, v2

    .line 159
    .line 160
    if-nez v3, :cond_5

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_5
    add-int/2addr v2, v0

    .line 164
    goto :goto_0

    .line 165
    :cond_6
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    :goto_1
    aget-object v0, v1, v6

    .line 169
    .line 170
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    iput v0, p0, Lka/r;->m0:I

    .line 175
    .line 176
    invoke-virtual {p0}, Lka/r;->c0()V

    .line 177
    .line 178
    .line 179
    :cond_7
    return-void

    .line 180
    :cond_8
    :goto_2
    sget-object v0, Lka/r;->s0:Ljava/lang/String;

    .line 181
    .line 182
    const-string v1, "O6FM9sjVG+A7oUG8l5dDvVXkALWLnVqAd/xBtZCUWu15/kHrydhEqGL5E7U=\n"

    .line 183
    .line 184
    const-string v2, "Foxh2+X4Ns0=\n"

    .line 185
    .line 186
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    sget-boolean v2, Lorg/bitspark/android/utils/m;->b:Z

    .line 191
    .line 192
    invoke-static {v0, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    return-void
.end method

.method public final a0(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lka/r;->o0:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-ge p1, v1, :cond_0

    .line 8
    .line 9
    if-ltz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lorg/bitspark/android/beans/ChannelBean;

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v2, "YFBtI4yvOWNgUG0jjK85Y2BQbm/BxW4lLjAiacznOg==\n"

    .line 23
    .line 24
    const-string v3, "Q3NOAK+MGkA=\n"

    .line 25
    .line 26
    invoke-static {v2, v3, v1, p1}, Lea/q;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    sget-boolean v1, Lorg/bitspark/android/utils/m;->b:Z

    .line 31
    .line 32
    sget-object v1, Lka/r;->s0:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v1, p1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 40
    .line 41
    invoke-virtual {p0, p1, v0}, Lka/r;->U(Ljava/lang/Boolean;Lorg/bitspark/android/beans/ChannelBean;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method public final b0(Lorg/bitspark/android/beans/ChannelBean;)V
    .locals 4

    .line 1
    sget-boolean v0, Lorg/bitspark/android/Spark;->c2:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lorg/bitspark/android/beans/ChannelBean;->getLevel()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x12

    .line 10
    .line 11
    if-lt v0, v1, :cond_0

    .line 12
    .line 13
    iget-boolean v0, p0, Lka/r;->n0:Z

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lka/r;->n0:Z

    .line 19
    .line 20
    new-instance v0, Ll6/h;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/s;->j()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-direct {v0, v1}, Ll6/h;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    new-instance v1, Lka/m;

    .line 30
    .line 31
    invoke-direct {v1, p0, p1}, Lka/m;-><init>(Lka/r;Lorg/bitspark/android/beans/ChannelBean;)V

    .line 32
    .line 33
    .line 34
    iput-object v1, v0, Ll6/h;->c:Ljava/lang/Object;

    .line 35
    .line 36
    invoke-virtual {v0}, Ll6/h;->b()Lsa/e;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 41
    .line 42
    .line 43
    new-instance v0, Lea/t;

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    invoke-direct {v0, v1, p0}, Lea/t;-><init>(ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    invoke-static {}, Lra/f;->b()Lra/f;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    sget-object v1, Lea/d;->b:Lea/d;

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 64
    .line 65
    const/4 v3, 0x0

    .line 66
    invoke-virtual {v0, p1, v2, v3, v1}, Lra/f;->e(Lorg/bitspark/android/beans/ChannelBean;Ljava/lang/Boolean;ILjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    :goto_0
    return-void
.end method

.method public final c0()V
    .locals 4

    .line 1
    sget-object v0, Lka/r;->t0:Landroidx/mediarouter/app/c;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    .line 6
    .line 7
    sget-object v0, Lka/r;->t0:Landroidx/mediarouter/app/c;

    .line 8
    .line 9
    iget v2, p0, Lka/r;->m0:I

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget-object v1, Lka/r;->t0:Landroidx/mediarouter/app/c;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final d0(Ljava/util/List;)V
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lka/r;->W:Landroidx/leanback/widget/VerticalGridView;

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 8
    .line 9
    iput-object p1, p0, Lka/r;->q0:Ljava/lang/Boolean;

    .line 10
    .line 11
    const-string p1, "5ZuRKS5u3kDnkZwJDHLeAqmXmCwDaNpCxZ2DOTtv2lmpnYNtA3PTQqXUgigZc81A\n"

    .line 12
    .line 13
    const-string v0, "ifTwTW0Gvy4=\n"

    .line 14
    .line 15
    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const/16 v2, 0x8

    .line 20
    .line 21
    if-eqz p1, :cond_e

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    goto/16 :goto_3

    .line 30
    .line 31
    :cond_1
    iget-object v3, p0, Lka/r;->o0:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 37
    .line 38
    .line 39
    sget-boolean p1, Lorg/bitspark/android/Spark;->c2:Z

    .line 40
    .line 41
    iget-object v4, p0, Lka/r;->j0:Ljava/util/HashMap;

    .line 42
    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    iget p1, p0, Lka/r;->m0:I

    .line 46
    .line 47
    if-lez p1, :cond_2

    .line 48
    .line 49
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Lorg/bitspark/android/beans/Group;

    .line 58
    .line 59
    iget-boolean p1, p1, Lorg/bitspark/android/beans/Group;->restrictedAccess:Z

    .line 60
    .line 61
    if-nez p1, :cond_2

    .line 62
    .line 63
    sput-boolean v1, Lorg/bitspark/android/Spark;->c2:Z

    .line 64
    .line 65
    iget-object p1, p0, Lka/r;->X:Lfa/g0;

    .line 66
    .line 67
    invoke-virtual {p0}, Lka/r;->W()I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/k0;->notifyItemChanged(I)V

    .line 72
    .line 73
    .line 74
    sget-object p1, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 75
    .line 76
    const/16 v5, 0x53

    .line 77
    .line 78
    invoke-virtual {p1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 79
    .line 80
    .line 81
    :cond_2
    sget-boolean p1, Lorg/bitspark/android/Spark;->c2:Z

    .line 82
    .line 83
    const/4 v5, 0x1

    .line 84
    if-nez p1, :cond_7

    .line 85
    .line 86
    iget p1, p0, Lka/r;->m0:I

    .line 87
    .line 88
    if-lez p1, :cond_7

    .line 89
    .line 90
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Lorg/bitspark/android/beans/Group;

    .line 99
    .line 100
    iget-boolean p1, p1, Lorg/bitspark/android/beans/Group;->restrictedAccess:Z

    .line 101
    .line 102
    if-eqz p1, :cond_7

    .line 103
    .line 104
    iget-object p1, p0, Lka/r;->Y:Lfa/d0;

    .line 105
    .line 106
    if-eqz p1, :cond_3

    .line 107
    .line 108
    iget-object p1, p1, Lfa/d0;->e:Landroid/view/View;

    .line 109
    .line 110
    if-eqz p1, :cond_3

    .line 111
    .line 112
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-nez p1, :cond_4

    .line 117
    .line 118
    :cond_3
    iget-object p1, p0, Lka/r;->h0:Landroid/view/View;

    .line 119
    .line 120
    if-eqz p1, :cond_5

    .line 121
    .line 122
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-eqz p1, :cond_5

    .line 127
    .line 128
    :cond_4
    sget-object p1, Lea/d;->a:Lea/d;

    .line 129
    .line 130
    invoke-virtual {p0, p1}, Lka/r;->h0(Lea/d;)V

    .line 131
    .line 132
    .line 133
    :cond_5
    iget-object p1, p0, Lka/r;->W:Landroidx/leanback/widget/VerticalGridView;

    .line 134
    .line 135
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 136
    .line 137
    .line 138
    iget-object p1, p0, Lka/r;->Z:Landroid/widget/ExpandableListView;

    .line 139
    .line 140
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 141
    .line 142
    .line 143
    sget p1, Lka/r;->v0:I

    .line 144
    .line 145
    sget v0, Lea/h;->s:I

    .line 146
    .line 147
    if-ge p1, v0, :cond_6

    .line 148
    .line 149
    sget p1, Lka/r;->v0:I

    .line 150
    .line 151
    add-int/2addr p1, v5

    .line 152
    sput p1, Lka/r;->v0:I

    .line 153
    .line 154
    const p1, 0x7f120006

    .line 155
    .line 156
    .line 157
    invoke-static {p1}, Lorg/bitspark/android/Spark;->l0(I)V

    .line 158
    .line 159
    .line 160
    :cond_6
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 161
    .line 162
    iput-object p1, p0, Lka/r;->q0:Ljava/lang/Boolean;

    .line 163
    .line 164
    const-string p1, "m66Gv9OfkpSMr7SowpOCk8msh6TUht3Am66BvtOY\n"

    .line 165
    .line 166
    const-string v0, "6cv1y6H28eA=\n"

    .line 167
    .line 168
    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    sget-boolean v0, Lorg/bitspark/android/utils/m;->b:Z

    .line 173
    .line 174
    sget-object v0, Lka/r;->s0:Ljava/lang/String;

    .line 175
    .line 176
    invoke-static {v0, p1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    return-void

    .line 180
    :cond_7
    :try_start_0
    invoke-virtual {p0}, Lka/r;->i0()V

    .line 181
    .line 182
    .line 183
    iget-object p1, p0, Lka/r;->Y:Lfa/d0;

    .line 184
    .line 185
    if-nez p1, :cond_8

    .line 186
    .line 187
    new-instance p1, Lfa/d0;

    .line 188
    .line 189
    iget v4, p0, Lka/r;->m0:I

    .line 190
    .line 191
    new-instance v6, Lka/n;

    .line 192
    .line 193
    invoke-direct {v6, p0, v0}, Lka/n;-><init>(Lka/r;I)V

    .line 194
    .line 195
    .line 196
    invoke-direct {p1, v4, v6, v3}, Lfa/d0;-><init>(ILka/n;Ljava/util/ArrayList;)V

    .line 197
    .line 198
    .line 199
    iput-object p1, p0, Lka/r;->Y:Lfa/d0;

    .line 200
    .line 201
    iget-object v4, p0, Lka/r;->W:Landroidx/leanback/widget/VerticalGridView;

    .line 202
    .line 203
    invoke-virtual {v4, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/k0;)V

    .line 204
    .line 205
    .line 206
    iget-object p1, p0, Lka/r;->Y:Lfa/d0;

    .line 207
    .line 208
    new-instance v4, Lka/n;

    .line 209
    .line 210
    const/4 v6, 0x3

    .line 211
    invoke-direct {v4, p0, v6}, Lka/n;-><init>(Lka/r;I)V

    .line 212
    .line 213
    .line 214
    iput-object v4, p1, Lfa/i0;->b:Lka/n;

    .line 215
    .line 216
    goto :goto_1

    .line 217
    :catch_0
    move-exception p1

    .line 218
    goto :goto_0

    .line 219
    :cond_8
    iget v4, p0, Lka/r;->m0:I

    .line 220
    .line 221
    const/4 v6, 0x0

    .line 222
    invoke-virtual {p1, v6}, Lfa/d0;->b(Landroid/view/View;)V

    .line 223
    .line 224
    .line 225
    iput v4, p1, Lfa/d0;->c:I

    .line 226
    .line 227
    iget-object v4, p1, Lfa/d0;->d:Ljava/util/ArrayList;

    .line 228
    .line 229
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1}, Landroidx/recyclerview/widget/k0;->notifyDataSetChanged()V

    .line 236
    .line 237
    .line 238
    iget-object p1, p0, Lka/r;->W:Landroidx/leanback/widget/VerticalGridView;

    .line 239
    .line 240
    new-instance v4, Lka/k;

    .line 241
    .line 242
    invoke-direct {v4, p0, v1}, Lka/k;-><init>(Lka/r;I)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {p1, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    .line 247
    .line 248
    goto :goto_1

    .line 249
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 250
    .line 251
    .line 252
    :goto_1
    iget-object p1, p0, Lka/r;->W:Landroidx/leanback/widget/VerticalGridView;

    .line 253
    .line 254
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 255
    .line 256
    .line 257
    move-result p1

    .line 258
    if-ne p1, v2, :cond_9

    .line 259
    .line 260
    iget-object p1, p0, Lka/r;->W:Landroidx/leanback/widget/VerticalGridView;

    .line 261
    .line 262
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 263
    .line 264
    .line 265
    :cond_9
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    check-cast p1, Lorg/bitspark/android/beans/ChannelBean;

    .line 270
    .line 271
    invoke-static {p1}, Lga/h;->d(Lorg/bitspark/android/beans/ChannelBean;)I

    .line 272
    .line 273
    .line 274
    move-result p1

    .line 275
    invoke-virtual {p0, p1}, Lka/r;->g0(I)V

    .line 276
    .line 277
    .line 278
    invoke-static {p1}, Lga/h;->a(I)Ljava/util/HashMap;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    new-instance v4, Landroid/os/Message;

    .line 283
    .line 284
    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 285
    .line 286
    .line 287
    if-eqz v2, :cond_b

    .line 288
    .line 289
    invoke-static {p1}, Lga/h;->c(I)Ljava/util/ArrayList;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    if-eqz p1, :cond_b

    .line 294
    .line 295
    new-instance v2, Landroid/os/Bundle;

    .line 296
    .line 297
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 298
    .line 299
    .line 300
    sget-object v6, Lea/a;->q:Ljava/lang/String;

    .line 301
    .line 302
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v7

    .line 306
    check-cast v7, Ljava/io/Serializable;

    .line 307
    .line 308
    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 312
    .line 313
    .line 314
    move-result v6

    .line 315
    if-le v6, v5, :cond_a

    .line 316
    .line 317
    sget-object v6, Lea/a;->r:Ljava/lang/String;

    .line 318
    .line 319
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object p1

    .line 323
    check-cast p1, Ljava/io/Serializable;

    .line 324
    .line 325
    invoke-virtual {v2, v6, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 326
    .line 327
    .line 328
    :cond_a
    invoke-virtual {v4, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 329
    .line 330
    .line 331
    :cond_b
    const/16 p1, 0x8e

    .line 332
    .line 333
    iput p1, v4, Landroid/os/Message;->what:I

    .line 334
    .line 335
    sget-object p1, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 336
    .line 337
    invoke-virtual {p1, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 338
    .line 339
    .line 340
    iget p1, p0, Lka/r;->p0:I

    .line 341
    .line 342
    if-eq p1, v5, :cond_d

    .line 343
    .line 344
    if-eq p1, v0, :cond_c

    .line 345
    .line 346
    goto :goto_2

    .line 347
    :cond_c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 348
    .line 349
    .line 350
    move-result p1

    .line 351
    sub-int/2addr p1, v5

    .line 352
    invoke-virtual {p0, p1}, Lka/r;->a0(I)V

    .line 353
    .line 354
    .line 355
    goto :goto_2

    .line 356
    :cond_d
    invoke-virtual {p0, v1}, Lka/r;->a0(I)V

    .line 357
    .line 358
    .line 359
    :goto_2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 360
    .line 361
    iput-object p1, p0, Lka/r;->q0:Ljava/lang/Boolean;

    .line 362
    .line 363
    iput v1, p0, Lka/r;->p0:I

    .line 364
    .line 365
    return-void

    .line 366
    :cond_e
    :goto_3
    iget-object p1, p0, Lka/r;->Y:Lfa/d0;

    .line 367
    .line 368
    if-eqz p1, :cond_f

    .line 369
    .line 370
    iget-object p1, p1, Lfa/d0;->e:Landroid/view/View;

    .line 371
    .line 372
    if-eqz p1, :cond_f

    .line 373
    .line 374
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    .line 375
    .line 376
    .line 377
    move-result p1

    .line 378
    if-nez p1, :cond_10

    .line 379
    .line 380
    :cond_f
    iget-object p1, p0, Lka/r;->h0:Landroid/view/View;

    .line 381
    .line 382
    if-eqz p1, :cond_11

    .line 383
    .line 384
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    .line 385
    .line 386
    .line 387
    move-result p1

    .line 388
    if-eqz p1, :cond_11

    .line 389
    .line 390
    :cond_10
    sget-object p1, Lea/d;->a:Lea/d;

    .line 391
    .line 392
    invoke-virtual {p0, p1}, Lka/r;->h0(Lea/d;)V

    .line 393
    .line 394
    .line 395
    :cond_11
    iget-object p1, p0, Lka/r;->W:Landroidx/leanback/widget/VerticalGridView;

    .line 396
    .line 397
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 398
    .line 399
    .line 400
    iget-object p1, p0, Lka/r;->Z:Landroid/widget/ExpandableListView;

    .line 401
    .line 402
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 403
    .line 404
    .line 405
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 406
    .line 407
    iput-object p1, p0, Lka/r;->q0:Ljava/lang/Boolean;

    .line 408
    .line 409
    return-void
.end method

.method public final e0()V
    .locals 3

    .line 1
    sget-object v0, Lea/d;->b:Lea/d;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lka/r;->h0(Lea/d;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lka/r;->X:Lfa/g0;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, v0, Lfa/g0;->g:Z

    .line 10
    .line 11
    iget-object v0, v0, Lfa/g0;->e:Landroid/view/View;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lka/r;->Y:Lfa/d0;

    .line 20
    .line 21
    iget-object v0, v0, Lfa/d0;->e:Landroid/view/View;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lka/r;->W:Landroidx/leanback/widget/VerticalGridView;

    .line 26
    .line 27
    new-instance v1, Lka/k;

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    invoke-direct {v1, p0, v2}, Lka/k;-><init>(Lka/r;I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {p0}, Lka/r;->f0()V

    .line 38
    .line 39
    .line 40
    :goto_0
    return-void
.end method

.method public final f0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lka/r;->Y:Lfa/d0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lka/r;->W:Landroidx/leanback/widget/VerticalGridView;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v1, Lka/k;

    .line 10
    .line 11
    const/4 v2, 0x3

    .line 12
    invoke-direct {v1, p0, v2}, Lka/k;-><init>(Lka/r;I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final g0(I)V
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    .line 6
    .line 7
    const-string v2, "wXb5V2jckl33Y/B2UtadTZ4z\n"

    .line 8
    .line 9
    const-string v3, "shOXMySz8zk=\n"

    .line 10
    .line 11
    invoke-static {v2, v3, v1, p1}, Lea/q;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    sget-boolean v2, Lorg/bitspark/android/utils/m;->b:Z

    .line 16
    .line 17
    sget-object v2, Lka/r;->s0:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v2, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const/16 v3, 0x8

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-virtual {p0}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    const v4, 0x7f0b01b7

    .line 53
    .line 54
    .line 55
    if-ne v1, v4, :cond_0

    .line 56
    .line 57
    iget-object p1, p0, Lka/r;->Z:Landroid/widget/ExpandableListView;

    .line 58
    .line 59
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 60
    .line 61
    .line 62
    goto/16 :goto_1

    .line 63
    .line 64
    :cond_0
    iget-object v1, p0, Lka/r;->Z:Landroid/widget/ExpandableListView;

    .line 65
    .line 66
    if-nez v1, :cond_1

    .line 67
    .line 68
    goto/16 :goto_1

    .line 69
    .line 70
    :cond_1
    invoke-static {p1}, Lga/h;->a(I)Ljava/util/HashMap;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    if-nez v5, :cond_2

    .line 75
    .line 76
    iget-object p1, p0, Lka/r;->Z:Landroid/widget/ExpandableListView;

    .line 77
    .line 78
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 79
    .line 80
    .line 81
    goto/16 :goto_1

    .line 82
    .line 83
    :cond_2
    const/4 v1, 0x0

    .line 84
    iput-object v1, p0, Lka/r;->h0:Landroid/view/View;

    .line 85
    .line 86
    :try_start_0
    new-instance v11, Lfa/k;

    .line 87
    .line 88
    iget-object v7, p0, Lka/r;->Z:Landroid/widget/ExpandableListView;

    .line 89
    .line 90
    iget-boolean v8, p0, Lka/r;->g0:Z

    .line 91
    .line 92
    new-instance v10, Lka/n;

    .line 93
    .line 94
    invoke-direct {v10, p0, v0}, Lka/n;-><init>(Lka/r;I)V

    .line 95
    .line 96
    .line 97
    move-object v4, v11

    .line 98
    move-object v6, p0

    .line 99
    move v9, p1

    .line 100
    invoke-direct/range {v4 .. v10}, Lfa/k;-><init>(Ljava/util/HashMap;Lka/r;Landroid/widget/ExpandableListView;ZILka/n;)V

    .line 101
    .line 102
    .line 103
    iput-object v11, p0, Lka/r;->b0:Lfa/k;

    .line 104
    .line 105
    invoke-virtual {v11}, Lfa/k;->getGroupCount()I

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    if-nez v4, :cond_3

    .line 110
    .line 111
    const-string p1, "VrgPe62woP9bow8lyIeCz32lAWqYo4jOVKNTItg=\n"

    .line 112
    .line 113
    const-string v0, "OtduH+jg57s=\n"

    .line 114
    .line 115
    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-static {v2, p1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Lka/r;->Z:Landroid/widget/ExpandableListView;

    .line 123
    .line 124
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :catch_0
    move-exception p1

    .line 129
    goto :goto_0

    .line 130
    :cond_3
    iget-object v4, p0, Lka/r;->b0:Lfa/k;

    .line 131
    .line 132
    invoke-virtual {v4}, Lfa/k;->getGroupCount()I

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    const/4 v5, 0x1

    .line 137
    if-ne v4, v5, :cond_4

    .line 138
    .line 139
    iget-object v4, p0, Lka/r;->b0:Lfa/k;

    .line 140
    .line 141
    invoke-virtual {v4, v0}, Lfa/k;->getChildrenCount(I)I

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    if-nez v4, :cond_4

    .line 146
    .line 147
    const-string p1, "+Dh0vTe3i0f1I3TjUoCpd9MleqwCpKN2+iMo5EPH7CP3P3y1FqSjdvojNeRS1w==\n"

    .line 148
    .line 149
    const-string v0, "lFcV2XLnzAM=\n"

    .line 150
    .line 151
    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-static {v2, p1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    iget-object p1, p0, Lka/r;->Z:Landroid/widget/ExpandableListView;

    .line 159
    .line 160
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 161
    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_4
    iget-object v2, p0, Lka/r;->Z:Landroid/widget/ExpandableListView;

    .line 165
    .line 166
    iget-object v4, p0, Lka/r;->b0:Lfa/k;

    .line 167
    .line 168
    invoke-virtual {v2, v4}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 169
    .line 170
    .line 171
    iget-object v2, p0, Lka/r;->Z:Landroid/widget/ExpandableListView;

    .line 172
    .line 173
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 174
    .line 175
    .line 176
    move-result v2

    .line 177
    if-ne v2, v3, :cond_5

    .line 178
    .line 179
    iget-object v2, p0, Lka/r;->Z:Landroid/widget/ExpandableListView;

    .line 180
    .line 181
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 182
    .line 183
    .line 184
    :cond_5
    iget-object v0, p0, Lka/r;->Z:Landroid/widget/ExpandableListView;

    .line 185
    .line 186
    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 187
    .line 188
    .line 189
    iget-object v0, p0, Lka/r;->Z:Landroid/widget/ExpandableListView;

    .line 190
    .line 191
    new-instance v1, Landroidx/appcompat/widget/w1;

    .line 192
    .line 193
    const/4 v2, 0x2

    .line 194
    invoke-direct {v1, v2, p0}, Landroidx/appcompat/widget/w1;-><init>(ILjava/lang/Object;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 198
    .line 199
    .line 200
    iget-object v0, p0, Lka/r;->Z:Landroid/widget/ExpandableListView;

    .line 201
    .line 202
    new-instance v1, Lka/o;

    .line 203
    .line 204
    invoke-direct {v1, p0}, Lka/o;-><init>(Lka/r;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 208
    .line 209
    .line 210
    iget-object v0, p0, Lka/r;->Z:Landroid/widget/ExpandableListView;

    .line 211
    .line 212
    new-instance v1, Lka/p;

    .line 213
    .line 214
    invoke-direct {v1, p0, p1}, Lka/p;-><init>(Lka/r;I)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    .line 219
    .line 220
    goto :goto_1

    .line 221
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 222
    .line 223
    .line 224
    :goto_1
    return-void
.end method

.method public final h0(Lea/d;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "ntMtDCk75RmC1SwzBS3/KrnPKSVyaA==\n"

    .line 7
    .line 8
    const-string v2, "7bZZQEhIkV8=\n"

    .line 9
    .line 10
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sget-boolean v1, Lorg/bitspark/android/utils/m;->b:Z

    .line 25
    .line 26
    sget-object v1, Lka/r;->s0:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1, v0}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lka/r;->f0:Lea/d;

    .line 32
    .line 33
    sget-object v0, Lea/d;->a:Lea/d;

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    if-ne p1, v0, :cond_0

    .line 37
    .line 38
    iget-object p1, p0, Lka/r;->X:Lfa/g0;

    .line 39
    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    iput-boolean v1, p1, Lfa/g0;->g:Z

    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    sget-object v0, Lea/d;->b:Lea/d;

    .line 46
    .line 47
    if-ne p1, v0, :cond_1

    .line 48
    .line 49
    iget-object p1, p0, Lka/r;->Y:Lfa/d0;

    .line 50
    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    iput-boolean v1, p1, Lfa/d0;->g:Z

    .line 54
    .line 55
    :cond_1
    return-void
.end method

.method public final i0()V
    .locals 4

    .line 1
    iget v0, p0, Lka/r;->m0:I

    .line 2
    .line 3
    const/4 v1, -0x3

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const-string v0, "dCR3+pbSX/hF\n"

    .line 7
    .line 8
    const-string v1, "N0w2nveiK50=\n"

    .line 9
    .line 10
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "DO8cgxxaWbUO5RGjPkZZ9yHfJ8csXUqvBeRRxyxbQr5a\n"

    .line 20
    .line 21
    const-string v3, "YIB9518yONs=\n"

    .line 22
    .line 23
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lka/r;->o0:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    sget-boolean v3, Lorg/bitspark/android/utils/m;->b:Z

    .line 44
    .line 45
    invoke-static {v0, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    new-instance v0, Lka/l;

    .line 49
    .line 50
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    return-void
.end method

.method public final j0(Lorg/bitspark/android/beans/ChannelBean;I)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lorg/bitspark/android/beans/ChannelBean;->getSources()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_8

    .line 6
    .line 7
    invoke-virtual {p1}, Lorg/bitspark/android/beans/ChannelBean;->getSources()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_8

    .line 16
    .line 17
    invoke-virtual {p1}, Lorg/bitspark/android/beans/ChannelBean;->getSources()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lorg/bitspark/android/beans/ChannelBean$SourcesBean;

    .line 27
    .line 28
    invoke-virtual {v0}, Lorg/bitspark/android/beans/ChannelBean$SourcesBean;->getAddress()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    goto/16 :goto_0

    .line 35
    .line 36
    :cond_0
    iget-object v0, p0, Lka/r;->b0:Lfa/k;

    .line 37
    .line 38
    const-string v2, ""

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    sput-object v2, Lfa/k;->n:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    .line 45
    .line 46
    .line 47
    :cond_1
    invoke-virtual {p1}, Lorg/bitspark/android/beans/ChannelBean;->getChid()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    sget-object v3, Lga/d;->f:Ljava/util/HashSet;

    .line 52
    .line 53
    new-instance v4, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    const-string v4, " "

    .line 70
    .line 71
    if-eqz v3, :cond_4

    .line 72
    .line 73
    invoke-virtual {p0}, Landroidx/fragment/app/s;->j()Landroid/content/Context;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    new-instance v5, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Lorg/bitspark/android/beans/ChannelBean;->getName()Lorg/bitspark/android/beans/ChannelBean$NameBean;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p1}, Lorg/bitspark/android/beans/ChannelBean$NameBean;->getInit()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Landroidx/fragment/app/s;->j()Landroid/content/Context;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    const v4, 0x7f1201c5

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-static {v3, v1, p1}, Lba/d;->a(Landroid/content/Context;ILjava/lang/String;)Lba/d;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {p1}, Lba/d;->show()V

    .line 119
    .line 120
    .line 121
    sget-object p1, Lga/d;->f:Ljava/util/HashSet;

    .line 122
    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    const-string p1, "e8DqvbOWDfdhxvCksYgT9WbV+Q==\n"

    .line 139
    .line 140
    const-string v0, "KJC1+/LAUrs=\n"

    .line 141
    .line 142
    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    sget-object v0, Lga/d;->f:Ljava/util/HashSet;

    .line 147
    .line 148
    invoke-static {p1, v0}, Lorg/bitspark/android/utils/m;->o(Ljava/lang/String;Ljava/util/HashSet;)V

    .line 149
    .line 150
    .line 151
    invoke-static {}, Lga/d;->a()V

    .line 152
    .line 153
    .line 154
    iget p1, p0, Lka/r;->m0:I

    .line 155
    .line 156
    const/4 v0, -0x5

    .line 157
    if-ne p1, v0, :cond_3

    .line 158
    .line 159
    sget-object p1, Lga/d;->d:Ljava/util/HashMap;

    .line 160
    .line 161
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    check-cast p1, Lorg/bitspark/android/beans/Group;

    .line 170
    .line 171
    iget-object p1, p1, Lorg/bitspark/android/beans/Group;->channnels:Ljava/util/List;

    .line 172
    .line 173
    if-eqz p1, :cond_2

    .line 174
    .line 175
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    if-nez v1, :cond_2

    .line 180
    .line 181
    invoke-virtual {p0}, Lka/r;->i0()V

    .line 182
    .line 183
    .line 184
    iget-object v0, p0, Lka/r;->Y:Lfa/d0;

    .line 185
    .line 186
    iget v1, p0, Lka/r;->m0:I

    .line 187
    .line 188
    const/4 v2, 0x0

    .line 189
    invoke-virtual {v0, v2}, Lfa/d0;->b(Landroid/view/View;)V

    .line 190
    .line 191
    .line 192
    iput v1, v0, Lfa/d0;->c:I

    .line 193
    .line 194
    iget-object v1, v0, Lfa/d0;->d:Ljava/util/ArrayList;

    .line 195
    .line 196
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0}, Landroidx/recyclerview/widget/k0;->notifyDataSetChanged()V

    .line 203
    .line 204
    .line 205
    iget-object v0, p0, Lka/r;->W:Landroidx/leanback/widget/VerticalGridView;

    .line 206
    .line 207
    new-instance v1, Landroidx/appcompat/widget/r0;

    .line 208
    .line 209
    const/4 v2, 0x6

    .line 210
    invoke-direct {v1, p0, p2, p1, v2}, Landroidx/appcompat/widget/r0;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 211
    .line 212
    .line 213
    const-wide/16 p1, 0x12c

    .line 214
    .line 215
    invoke-virtual {v0, v1, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 216
    .line 217
    .line 218
    goto/16 :goto_0

    .line 219
    .line 220
    :cond_2
    sget-object p1, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 221
    .line 222
    const/16 p2, 0x6f

    .line 223
    .line 224
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 225
    .line 226
    .line 227
    invoke-virtual {p0, v0}, Lka/r;->Y(I)V

    .line 228
    .line 229
    .line 230
    goto/16 :goto_0

    .line 231
    .line 232
    :cond_3
    iget-object p1, p0, Lka/r;->Y:Lfa/d0;

    .line 233
    .line 234
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/k0;->notifyItemChanged(I)V

    .line 235
    .line 236
    .line 237
    goto/16 :goto_0

    .line 238
    .line 239
    :cond_4
    invoke-virtual {p1}, Lorg/bitspark/android/beans/ChannelBean;->getLevel()I

    .line 240
    .line 241
    .line 242
    move-result v3

    .line 243
    const/16 v5, 0x12

    .line 244
    .line 245
    if-lt v3, v5, :cond_5

    .line 246
    .line 247
    return-void

    .line 248
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/s;->j()Landroid/content/Context;

    .line 249
    .line 250
    .line 251
    move-result-object v3

    .line 252
    new-instance v5, Ljava/lang/StringBuilder;

    .line 253
    .line 254
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .line 256
    .line 257
    invoke-virtual {p1}, Lorg/bitspark/android/beans/ChannelBean;->getName()Lorg/bitspark/android/beans/ChannelBean$NameBean;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    invoke-virtual {p1}, Lorg/bitspark/android/beans/ChannelBean$NameBean;->getInit()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {p0}, Landroidx/fragment/app/s;->j()Landroid/content/Context;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    const v4, 0x7f1200f0

    .line 276
    .line 277
    .line 278
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object p1

    .line 289
    invoke-static {v3, v1, p1}, Lba/d;->a(Landroid/content/Context;ILjava/lang/String;)Lba/d;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    invoke-virtual {p1}, Lba/d;->show()V

    .line 294
    .line 295
    .line 296
    sget-object p1, Lga/d;->f:Ljava/util/HashSet;

    .line 297
    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    .line 299
    .line 300
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    const-string p1, "sMC/0bChYjWqxqXIsr98N63VrA==\n"

    .line 314
    .line 315
    const-string v0, "45Dgl/H3PXk=\n"

    .line 316
    .line 317
    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object p1

    .line 321
    sget-object v0, Lga/d;->f:Ljava/util/HashSet;

    .line 322
    .line 323
    invoke-static {p1, v0}, Lorg/bitspark/android/utils/m;->o(Ljava/lang/String;Ljava/util/HashSet;)V

    .line 324
    .line 325
    .line 326
    invoke-static {}, Lga/d;->a()V

    .line 327
    .line 328
    .line 329
    iget-object p1, p0, Lka/r;->j0:Ljava/util/HashMap;

    .line 330
    .line 331
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 332
    .line 333
    .line 334
    sget-object p1, Lga/d;->d:Ljava/util/HashMap;

    .line 335
    .line 336
    if-eqz p1, :cond_6

    .line 337
    .line 338
    iget-object p1, p0, Lka/r;->j0:Ljava/util/HashMap;

    .line 339
    .line 340
    sget-object v0, Lga/d;->d:Ljava/util/HashMap;

    .line 341
    .line 342
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 343
    .line 344
    .line 345
    :cond_6
    iget-object p1, p0, Lka/r;->j0:Ljava/util/HashMap;

    .line 346
    .line 347
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    .line 348
    .line 349
    .line 350
    move-result p1

    .line 351
    if-nez p1, :cond_7

    .line 352
    .line 353
    iget-object p1, p0, Lka/r;->X:Lfa/g0;

    .line 354
    .line 355
    iget-object v0, p0, Lka/r;->j0:Ljava/util/HashMap;

    .line 356
    .line 357
    iget-object v1, p1, Lfa/g0;->c:Ljava/util/LinkedHashMap;

    .line 358
    .line 359
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 360
    .line 361
    .line 362
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    iget-object p1, p1, Lfa/g0;->d:Ljava/util/ArrayList;

    .line 370
    .line 371
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 372
    .line 373
    .line 374
    new-instance v1, Ljava/util/ArrayList;

    .line 375
    .line 376
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 380
    .line 381
    .line 382
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 383
    .line 384
    .line 385
    :cond_7
    iget-object p1, p0, Lka/r;->Y:Lfa/d0;

    .line 386
    .line 387
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/k0;->notifyItemChanged(I)V

    .line 388
    .line 389
    .line 390
    :cond_8
    :goto_0
    return-void
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    new-instance v4, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v5, "PEmdl1QJrnA8SZ2WEhShXDRVycI=\n"

    .line 13
    .line 14
    const-string v6, "USzz4jJ7zxc=\n"

    .line 15
    .line 16
    invoke-static {v5, v6}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    move-object/from16 v5, p3

    .line 24
    .line 25
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v6, "PVEFKjmpqw==\n"

    .line 29
    .line 30
    const-string v7, "AGw4FwSUlvA=\n"

    .line 31
    .line 32
    invoke-static {v6, v7}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    sget-boolean v6, Lorg/bitspark/android/utils/m;->b:Z

    .line 47
    .line 48
    sget-object v6, Lka/r;->s0:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v6, v4}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    const/4 v8, 0x0

    .line 62
    const/4 v9, 0x1

    .line 63
    if-nez v7, :cond_0

    .line 64
    .line 65
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getAction()I

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    if-nez v7, :cond_0

    .line 70
    .line 71
    const/4 v7, 0x1

    .line 72
    goto :goto_0

    .line 73
    :cond_0
    const/4 v7, 0x0

    .line 74
    :goto_0
    const v14, 0x7f0b014a

    .line 75
    .line 76
    .line 77
    const v15, 0x7f0b01b7

    .line 78
    .line 79
    .line 80
    const v3, 0x7f0b01b9

    .line 81
    .line 82
    .line 83
    const/4 v10, 0x4

    .line 84
    const/16 v11, 0x16

    .line 85
    .line 86
    if-eqz v7, :cond_1e

    .line 87
    .line 88
    const/16 v12, 0x8

    .line 89
    .line 90
    const/16 v13, 0x15

    .line 91
    .line 92
    if-ne v4, v3, :cond_7

    .line 93
    .line 94
    if-ne v2, v11, :cond_4

    .line 95
    .line 96
    const-string v1, "lj6RcQg1v5KCOIhtHR3zsLQVvUs8L4y/oQ26WyojlLOl\n"

    .line 97
    .line 98
    const-string v2, "8Uz+BHhq0/s=\n"

    .line 99
    .line 100
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-static {v6, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-object v1, v0, Lka/r;->W:Landroidx/leanback/widget/VerticalGridView;

    .line 108
    .line 109
    if-eqz v1, :cond_1

    .line 110
    .line 111
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-nez v1, :cond_1

    .line 116
    .line 117
    const-string v1, "svB0oZF9jRW462GZln2Web/3Ye+RbY01\n"

    .line 118
    .line 119
    const-string v2, "0ZgVz/8Y4Vk=\n"

    .line 120
    .line 121
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-static {v6, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual/range {p0 .. p0}, Lka/r;->e0()V

    .line 129
    .line 130
    .line 131
    return v9

    .line 132
    :cond_1
    iget-object v1, v0, Lka/r;->W:Landroidx/leanback/widget/VerticalGridView;

    .line 133
    .line 134
    if-nez v1, :cond_2

    .line 135
    .line 136
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-ne v1, v12, :cond_3

    .line 141
    .line 142
    :cond_2
    const-string v1, "7u6ryKfazLDk9b7woNrX3OPzpso=\n"

    .line 143
    .line 144
    const-string v2, "jYbKpsm/oPw=\n"

    .line 145
    .line 146
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-static {v6, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    iget-object v1, v0, Lka/r;->X:Lfa/g0;

    .line 154
    .line 155
    iget-object v1, v1, Lfa/g0;->e:Landroid/view/View;

    .line 156
    .line 157
    if-eqz v1, :cond_3

    .line 158
    .line 159
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    if-eqz v1, :cond_3

    .line 164
    .line 165
    iget-object v1, v0, Lka/r;->X:Lfa/g0;

    .line 166
    .line 167
    iget-object v1, v1, Lfa/g0;->e:Landroid/view/View;

    .line 168
    .line 169
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    check-cast v1, Ljava/lang/Integer;

    .line 174
    .line 175
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    const/4 v2, -0x5

    .line 180
    if-ne v1, v2, :cond_3

    .line 181
    .line 182
    sget v1, Lka/r;->u0:I

    .line 183
    .line 184
    sget v2, Lea/h;->r:I

    .line 185
    .line 186
    if-ge v1, v2, :cond_3

    .line 187
    .line 188
    sget v1, Lka/r;->u0:I

    .line 189
    .line 190
    add-int/2addr v1, v9

    .line 191
    sput v1, Lka/r;->u0:I

    .line 192
    .line 193
    const v1, 0x7f12000a

    .line 194
    .line 195
    .line 196
    invoke-static {v1}, Lorg/bitspark/android/Spark;->l0(I)V

    .line 197
    .line 198
    .line 199
    :cond_3
    return v9

    .line 200
    :cond_4
    if-eq v2, v13, :cond_6

    .line 201
    .line 202
    if-ne v2, v10, :cond_5

    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_5
    return v8

    .line 206
    :cond_6
    :goto_1
    iget-object v1, v0, Lka/r;->X:Lfa/g0;

    .line 207
    .line 208
    iput-boolean v8, v1, Lfa/g0;->g:Z

    .line 209
    .line 210
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    check-cast v1, Lorg/bitspark/android/Spark;

    .line 215
    .line 216
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 217
    .line 218
    invoke-virtual {v1, v2}, Lorg/bitspark/android/Spark;->q0(Ljava/lang/Boolean;)V

    .line 219
    .line 220
    .line 221
    iget-object v2, v1, Lorg/bitspark/android/Spark;->B:Landroid/widget/RadioButton;

    .line 222
    .line 223
    invoke-static {v2}, Lo9/d;->y(Landroid/view/View;)Z

    .line 224
    .line 225
    .line 226
    iget-object v1, v1, Lorg/bitspark/android/Spark;->B:Landroid/widget/RadioButton;

    .line 227
    .line 228
    invoke-virtual {v1, v9}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 229
    .line 230
    .line 231
    const/4 v1, 0x0

    .line 232
    iput-object v1, v0, Lka/r;->f0:Lea/d;

    .line 233
    .line 234
    return v9

    .line 235
    :cond_7
    if-ne v4, v15, :cond_d

    .line 236
    .line 237
    if-ne v2, v11, :cond_a

    .line 238
    .line 239
    iget-object v1, v0, Lka/r;->W:Landroidx/leanback/widget/VerticalGridView;

    .line 240
    .line 241
    if-eqz v1, :cond_9

    .line 242
    .line 243
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 244
    .line 245
    .line 246
    move-result v1

    .line 247
    if-ne v1, v12, :cond_8

    .line 248
    .line 249
    goto :goto_2

    .line 250
    :cond_8
    const-string v1, "APdouAllKZMK7H2ADmUy/w3wffYJdSmz\n"

    .line 251
    .line 252
    const-string v2, "Y58J1mcARd8=\n"

    .line 253
    .line 254
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    invoke-virtual/range {p0 .. p0}, Lka/r;->e0()V

    .line 258
    .line 259
    .line 260
    :cond_9
    :goto_2
    return v9

    .line 261
    :cond_a
    if-eq v2, v13, :cond_b

    .line 262
    .line 263
    if-ne v2, v10, :cond_1e

    .line 264
    .line 265
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    check-cast v1, Lorg/bitspark/android/Spark;

    .line 270
    .line 271
    if-eqz v1, :cond_c

    .line 272
    .line 273
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 274
    .line 275
    invoke-virtual {v1, v2}, Lorg/bitspark/android/Spark;->q0(Ljava/lang/Boolean;)V

    .line 276
    .line 277
    .line 278
    iget-object v2, v1, Lorg/bitspark/android/Spark;->B:Landroid/widget/RadioButton;

    .line 279
    .line 280
    invoke-static {v2}, Lo9/d;->y(Landroid/view/View;)Z

    .line 281
    .line 282
    .line 283
    iget-object v1, v1, Lorg/bitspark/android/Spark;->B:Landroid/widget/RadioButton;

    .line 284
    .line 285
    invoke-virtual {v1, v9}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 286
    .line 287
    .line 288
    :cond_c
    return v9

    .line 289
    :cond_d
    if-eq v4, v14, :cond_16

    .line 290
    .line 291
    const v14, 0x7f0b014d

    .line 292
    .line 293
    .line 294
    if-eq v4, v14, :cond_16

    .line 295
    .line 296
    const v14, 0x7f0b014e

    .line 297
    .line 298
    .line 299
    if-ne v4, v14, :cond_e

    .line 300
    .line 301
    goto :goto_4

    .line 302
    :cond_e
    const v14, 0x7f0b00c7

    .line 303
    .line 304
    .line 305
    if-ne v4, v14, :cond_1e

    .line 306
    .line 307
    if-eq v2, v11, :cond_f

    .line 308
    .line 309
    if-ne v2, v13, :cond_10

    .line 310
    .line 311
    :cond_f
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getAction()I

    .line 312
    .line 313
    .line 314
    move-result v1

    .line 315
    if-ne v1, v9, :cond_10

    .line 316
    .line 317
    return v9

    .line 318
    :cond_10
    if-ne v2, v11, :cond_13

    .line 319
    .line 320
    iget-object v1, v0, Lka/r;->Z:Landroid/widget/ExpandableListView;

    .line 321
    .line 322
    if-eqz v1, :cond_12

    .line 323
    .line 324
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 325
    .line 326
    .line 327
    move-result v1

    .line 328
    if-eq v1, v12, :cond_12

    .line 329
    .line 330
    sget-object v1, Lea/d;->c:Lea/d;

    .line 331
    .line 332
    invoke-virtual {v0, v1}, Lka/r;->h0(Lea/d;)V

    .line 333
    .line 334
    .line 335
    iget-object v1, v0, Lka/r;->Y:Lfa/d0;

    .line 336
    .line 337
    iput-boolean v8, v1, Lfa/d0;->g:Z

    .line 338
    .line 339
    iget-object v1, v0, Lka/r;->h0:Landroid/view/View;

    .line 340
    .line 341
    if-eqz v1, :cond_11

    .line 342
    .line 343
    invoke-static {v1}, Lo9/d;->y(Landroid/view/View;)Z

    .line 344
    .line 345
    .line 346
    goto :goto_3

    .line 347
    :cond_11
    iget-object v1, v0, Lka/r;->Z:Landroid/widget/ExpandableListView;

    .line 348
    .line 349
    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    if-eqz v1, :cond_12

    .line 354
    .line 355
    invoke-static {v1}, Lo9/d;->y(Landroid/view/View;)Z

    .line 356
    .line 357
    .line 358
    :cond_12
    :goto_3
    return v9

    .line 359
    :cond_13
    if-eq v2, v13, :cond_14

    .line 360
    .line 361
    if-ne v2, v10, :cond_1e

    .line 362
    .line 363
    :cond_14
    iget-object v1, v0, Lka/r;->Y:Lfa/d0;

    .line 364
    .line 365
    iput-boolean v8, v1, Lfa/d0;->g:Z

    .line 366
    .line 367
    sget-object v1, Lea/d;->a:Lea/d;

    .line 368
    .line 369
    invoke-virtual {v0, v1}, Lka/r;->h0(Lea/d;)V

    .line 370
    .line 371
    .line 372
    iget-object v1, v0, Lka/r;->X:Lfa/g0;

    .line 373
    .line 374
    if-eqz v1, :cond_15

    .line 375
    .line 376
    iget-object v1, v1, Lfa/g0;->e:Landroid/view/View;

    .line 377
    .line 378
    invoke-static {v1}, Lo9/d;->y(Landroid/view/View;)Z

    .line 379
    .line 380
    .line 381
    :cond_15
    return v9

    .line 382
    :cond_16
    :goto_4
    if-eq v2, v13, :cond_1b

    .line 383
    .line 384
    if-ne v2, v10, :cond_17

    .line 385
    .line 386
    goto :goto_6

    .line 387
    :cond_17
    if-ne v2, v11, :cond_18

    .line 388
    .line 389
    return v9

    .line 390
    :cond_18
    const/16 v3, 0x17

    .line 391
    .line 392
    if-eq v2, v3, :cond_1a

    .line 393
    .line 394
    const/16 v3, 0x42

    .line 395
    .line 396
    if-ne v2, v3, :cond_19

    .line 397
    .line 398
    goto :goto_5

    .line 399
    :cond_19
    return v8

    .line 400
    :cond_1a
    :goto_5
    iget-object v2, v0, Lka/r;->Z:Landroid/widget/ExpandableListView;

    .line 401
    .line 402
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 403
    .line 404
    .line 405
    move-result v3

    .line 406
    const-wide/16 v4, 0x0

    .line 407
    .line 408
    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/widget/ExpandableListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 409
    .line 410
    .line 411
    return v9

    .line 412
    :cond_1b
    :goto_6
    iget-object v1, v0, Lka/r;->h0:Landroid/view/View;

    .line 413
    .line 414
    if-eqz v1, :cond_1c

    .line 415
    .line 416
    invoke-virtual {v1, v8}, Landroid/view/View;->setSelected(Z)V

    .line 417
    .line 418
    .line 419
    :cond_1c
    iget-object v1, v0, Lka/r;->W:Landroidx/leanback/widget/VerticalGridView;

    .line 420
    .line 421
    if-eqz v1, :cond_1d

    .line 422
    .line 423
    sget-object v1, Lea/d;->b:Lea/d;

    .line 424
    .line 425
    invoke-virtual {v0, v1}, Lka/r;->h0(Lea/d;)V

    .line 426
    .line 427
    .line 428
    iget-object v1, v0, Lka/r;->Y:Lfa/d0;

    .line 429
    .line 430
    if-eqz v1, :cond_1d

    .line 431
    .line 432
    iget-object v2, v0, Lka/r;->W:Landroidx/leanback/widget/VerticalGridView;

    .line 433
    .line 434
    if-eqz v2, :cond_1d

    .line 435
    .line 436
    iget-object v1, v1, Lfa/d0;->e:Landroid/view/View;

    .line 437
    .line 438
    if-eqz v1, :cond_1d

    .line 439
    .line 440
    new-instance v1, Lka/k;

    .line 441
    .line 442
    const/4 v3, 0x2

    .line 443
    invoke-direct {v1, v0, v3}, Lka/k;-><init>(Lka/r;I)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {v2, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 447
    .line 448
    .line 449
    :cond_1d
    return v9

    .line 450
    :cond_1e
    if-ne v4, v15, :cond_20

    .line 451
    .line 452
    const/16 v1, 0x42

    .line 453
    .line 454
    if-ne v2, v1, :cond_20

    .line 455
    .line 456
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getAction()I

    .line 457
    .line 458
    .line 459
    move-result v1

    .line 460
    if-ne v1, v9, :cond_1f

    .line 461
    .line 462
    iget-object v1, v0, Lka/r;->d0:Landroid/widget/EditText;

    .line 463
    .line 464
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 465
    .line 466
    .line 467
    move-result-object v2

    .line 468
    const-string v3, "raEsWN71BhiwpzNJ\n"

    .line 469
    .line 470
    const-string v4, "xM9cLaqqa30=\n"

    .line 471
    .line 472
    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v3

    .line 476
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object v2

    .line 480
    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 481
    .line 482
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 483
    .line 484
    .line 485
    move-result-object v1

    .line 486
    const/4 v3, 0x2

    .line 487
    invoke-virtual {v2, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 488
    .line 489
    .line 490
    iget-object v1, v0, Lka/r;->d0:Landroid/widget/EditText;

    .line 491
    .line 492
    invoke-static {v1}, Lo9/d;->y(Landroid/view/View;)Z

    .line 493
    .line 494
    .line 495
    :cond_1f
    return v9

    .line 496
    :cond_20
    if-eq v4, v3, :cond_21

    .line 497
    .line 498
    const v1, 0x7f0b00c7

    .line 499
    .line 500
    .line 501
    if-eq v4, v1, :cond_21

    .line 502
    .line 503
    const v1, 0x7f0b014a

    .line 504
    .line 505
    .line 506
    if-eq v4, v1, :cond_21

    .line 507
    .line 508
    const v1, 0x7f0b014d

    .line 509
    .line 510
    .line 511
    if-eq v4, v1, :cond_21

    .line 512
    .line 513
    const v1, 0x7f0b014e

    .line 514
    .line 515
    .line 516
    if-ne v4, v1, :cond_22

    .line 517
    .line 518
    :cond_21
    if-ne v2, v11, :cond_22

    .line 519
    .line 520
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 521
    .line 522
    .line 523
    move-result v1

    .line 524
    if-lez v1, :cond_22

    .line 525
    .line 526
    return v9

    .line 527
    :cond_22
    if-ne v2, v10, :cond_24

    .line 528
    .line 529
    if-eqz v7, :cond_23

    .line 530
    .line 531
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/s;->j()Landroid/content/Context;

    .line 532
    .line 533
    .line 534
    move-result-object v1

    .line 535
    invoke-static {v1}, Lorg/bitspark/android/utils/m;->p(Landroid/content/Context;)Ljava/lang/Boolean;

    .line 536
    .line 537
    .line 538
    move-result-object v1

    .line 539
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 540
    .line 541
    .line 542
    move-result v1

    .line 543
    sget-boolean v2, Lorg/bitspark/android/Spark;->j2:Z

    .line 544
    .line 545
    if-nez v2, :cond_23

    .line 546
    .line 547
    if-nez v1, :cond_23

    .line 548
    .line 549
    sget-object v1, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 550
    .line 551
    const/16 v2, 0x64

    .line 552
    .line 553
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 554
    .line 555
    .line 556
    :cond_23
    return v9

    .line 557
    :cond_24
    const-string v1, "YW4jHAtq2LB+ZRpXHT7goHcoHlUZNdKGYWQNVRcmzqt6KVNZ\n"

    .line 558
    .line 559
    const-string v2, "DgBoeXJQq8U=\n"

    .line 560
    .line 561
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object v1

    .line 565
    invoke-static {v6, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    .line 567
    .line 568
    return v8
.end method

.method public final t(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 1
    const p2, 0x7f0e004e

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
    iput-object p1, p0, Lka/r;->U:Landroid/view/View;

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
    iput-object p1, p0, Lka/r;->k0:Lta/a;

    .line 29
    .line 30
    iget-object p1, p0, Lka/r;->U:Landroid/view/View;

    .line 31
    .line 32
    const p2, 0x7f0b026a

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
    iput-object p1, p0, Lka/r;->c0:Landroid/widget/RelativeLayout;

    .line 42
    .line 43
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lka/r;->U:Landroid/view/View;

    .line 47
    .line 48
    const p2, 0x7f0b046d

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Landroidx/leanback/widget/VerticalGridView;

    .line 56
    .line 57
    iput-object p1, p0, Lka/r;->V:Landroidx/leanback/widget/VerticalGridView;

    .line 58
    .line 59
    invoke-virtual {p1, p3}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lka/r;->U:Landroid/view/View;

    .line 63
    .line 64
    const p2, 0x7f0b0152

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    check-cast p1, Landroid/widget/ExpandableListView;

    .line 72
    .line 73
    iput-object p1, p0, Lka/r;->Z:Landroid/widget/ExpandableListView;

    .line 74
    .line 75
    const/4 p2, 0x1

    .line 76
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lka/r;->U:Landroid/view/View;

    .line 80
    .line 81
    const p2, 0x7f0b0382

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Landroidx/leanback/widget/VerticalGridView;

    .line 89
    .line 90
    iput-object p1, p0, Lka/r;->W:Landroidx/leanback/widget/VerticalGridView;

    .line 91
    .line 92
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/s0;)V

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Lka/r;->U:Landroid/view/View;

    .line 96
    .line 97
    const p2, 0x7f0b01b7

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    check-cast p1, Landroid/widget/EditText;

    .line 105
    .line 106
    iput-object p1, p0, Lka/r;->d0:Landroid/widget/EditText;

    .line 107
    .line 108
    iget-object p1, p0, Lka/r;->U:Landroid/view/View;

    .line 109
    .line 110
    const p2, 0x7f0b01b4

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    iput-object p1, p0, Lka/r;->e0:Landroid/view/View;

    .line 118
    .line 119
    iget-object p1, p0, Lka/r;->d0:Landroid/widget/EditText;

    .line 120
    .line 121
    const/4 p2, 0x3

    .line 122
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 123
    .line 124
    .line 125
    iget-object p1, p0, Lka/r;->d0:Landroid/widget/EditText;

    .line 126
    .line 127
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 128
    .line 129
    .line 130
    iget-object p1, p0, Lka/r;->d0:Landroid/widget/EditText;

    .line 131
    .line 132
    new-instance p2, Landroidx/appcompat/widget/p2;

    .line 133
    .line 134
    const/4 p3, 0x3

    .line 135
    invoke-direct {p2, p3, p0}, Landroidx/appcompat/widget/p2;-><init>(ILjava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 139
    .line 140
    .line 141
    iget-object p1, p0, Lka/r;->d0:Landroid/widget/EditText;

    .line 142
    .line 143
    new-instance p2, Landroidx/appcompat/widget/r2;

    .line 144
    .line 145
    const/4 p3, 0x6

    .line 146
    invoke-direct {p2, p3, p0}, Landroidx/appcompat/widget/r2;-><init>(ILjava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 150
    .line 151
    .line 152
    iget-object p1, p0, Lka/r;->V:Landroidx/leanback/widget/VerticalGridView;

    .line 153
    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 159
    .line 160
    iget-object p2, p0, Lka/r;->W:Landroidx/leanback/widget/VerticalGridView;

    .line 161
    .line 162
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 167
    .line 168
    iget p1, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 169
    .line 170
    mul-int/lit16 p1, p1, 0x1a4

    .line 171
    .line 172
    div-int/lit16 p1, p1, 0x14f

    .line 173
    .line 174
    iput p1, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 175
    .line 176
    sget-boolean p3, Lea/h;->K:Z

    .line 177
    .line 178
    if-eqz p3, :cond_0

    .line 179
    .line 180
    div-int/lit8 p3, p1, 0x4

    .line 181
    .line 182
    add-int/2addr p3, p1

    .line 183
    iput p3, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 184
    .line 185
    :cond_0
    sget-boolean p3, Lea/h;->L:Z

    .line 186
    .line 187
    if-eqz p3, :cond_1

    .line 188
    .line 189
    iget p3, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 190
    .line 191
    div-int/lit8 p1, p1, 0x2

    .line 192
    .line 193
    add-int/2addr p1, p3

    .line 194
    iput p1, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 195
    .line 196
    :cond_1
    iget-object p1, p0, Lka/r;->W:Landroidx/leanback/widget/VerticalGridView;

    .line 197
    .line 198
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    const/4 p2, 0x0

    .line 206
    invoke-virtual {p1, p2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 207
    .line 208
    .line 209
    iget-object p1, p0, Lka/r;->U:Landroid/view/View;

    .line 210
    .line 211
    return-object p1
.end method

.method public final z()V
    .locals 3

    .line 1
    const-string v0, "mElmzjnPQU8=\n"

    .line 2
    .line 3
    const-string v1, "1SwIu3+9ICg=\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "N3JtUP5E7Ho=\n"

    .line 10
    .line 11
    const-string v2, "WBw/NY0xgR8=\n"

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
    return-void
.end method
