.class public final Lfa/k;
.super Landroid/widget/BaseExpandableListAdapter;
.source "MyApplication"


# static fields
.field public static n:Ljava/lang/String;


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Landroid/widget/ExpandableListView;

.field public final c:Ljava/util/ArrayList;

.field public final d:[Ljava/lang/String;

.field public e:I

.field public f:Z

.field public final g:I

.field public final h:Ljava/text/SimpleDateFormat;

.field public final i:J

.field public final j:Ljava/util/HashMap;

.field public final k:Lka/r;

.field public final l:Ljava/util/HashMap;

.field public final m:Lka/n;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "Cuv0n/CvPyUq6Q==\n"

    .line 2
    .line 3
    const-string v1, "T5uT3pTOT1E=\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    const-string v0, ""

    .line 9
    .line 10
    sput-object v0, Lfa/k;->n:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;Lka/r;Landroid/widget/ExpandableListView;ZILka/n;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 5
    .line 6
    const-string v1, "qvET/smFJveL0A==\n"

    .line 7
    .line 8
    const-string v2, "77RW0unIa9o=\n"

    .line 9
    .line 10
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lfa/k;->h:Ljava/text/SimpleDateFormat;

    .line 22
    .line 23
    new-instance v0, Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lfa/k;->l:Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 31
    .line 32
    .line 33
    iput-object p6, p0, Lfa/k;->m:Lka/n;

    .line 34
    .line 35
    iput p5, p0, Lfa/k;->g:I

    .line 36
    .line 37
    iput-object p3, p0, Lfa/k;->b:Landroid/widget/ExpandableListView;

    .line 38
    .line 39
    iput-boolean p4, p0, Lfa/k;->f:Z

    .line 40
    .line 41
    iput-object p2, p0, Lfa/k;->k:Lka/r;

    .line 42
    .line 43
    iput-object p1, p0, Lfa/k;->a:Ljava/util/HashMap;

    .line 44
    .line 45
    new-instance p2, Lfa/d;

    .line 46
    .line 47
    invoke-direct {p2, p0}, Lfa/d;-><init>(Lfa/k;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p3, p2}, Landroid/widget/ExpandableListView;->setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V

    .line 51
    .line 52
    .line 53
    new-instance p2, Lfa/e;

    .line 54
    .line 55
    invoke-direct {p2, p0}, Lfa/e;-><init>(Lfa/k;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p3, p2}, Landroid/widget/ExpandableListView;->setOnGroupCollapseListener(Landroid/widget/ExpandableListView$OnGroupCollapseListener;)V

    .line 59
    .line 60
    .line 61
    new-instance p2, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 68
    .line 69
    .line 70
    new-instance p3, Ljava/util/Date;

    .line 71
    .line 72
    invoke-direct {p3}, Ljava/util/Date;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    .line 76
    .line 77
    .line 78
    move-result-wide p3

    .line 79
    sget-wide v0, Lorg/bitspark/android/utils/m;->a:J

    .line 80
    .line 81
    add-long/2addr p3, v0

    .line 82
    invoke-static {p3, p4}, Lorg/bitspark/android/utils/m;->c(J)J

    .line 83
    .line 84
    .line 85
    move-result-wide v0

    .line 86
    iput-wide v0, p0, Lfa/k;->i:J

    .line 87
    .line 88
    sget-object p6, Lea/h;->a:Ljava/lang/String;

    .line 89
    .line 90
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 91
    .line 92
    .line 93
    new-instance p6, Ljava/util/HashMap;

    .line 94
    .line 95
    invoke-direct {p6}, Ljava/util/HashMap;-><init>()V

    .line 96
    .line 97
    .line 98
    sget-object v0, Lga/d;->c:Ljava/util/HashMap;

    .line 99
    .line 100
    const/4 v1, 0x0

    .line 101
    if-eqz v0, :cond_0

    .line 102
    .line 103
    sget-object v0, Lga/d;->c:Ljava/util/HashMap;

    .line 104
    .line 105
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    if-eqz v0, :cond_0

    .line 114
    .line 115
    sget-object v0, Lga/d;->c:Ljava/util/HashMap;

    .line 116
    .line 117
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object p5

    .line 121
    invoke-virtual {v0, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p5

    .line 125
    check-cast p5, Lorg/bitspark/android/beans/ChannelBean;

    .line 126
    .line 127
    invoke-virtual {p5}, Lorg/bitspark/android/beans/ChannelBean;->isHasPlayBack()Z

    .line 128
    .line 129
    .line 130
    move-result p5

    .line 131
    if-eqz p5, :cond_0

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 135
    .line 136
    .line 137
    move-result-object p5

    .line 138
    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_5

    .line 143
    .line 144
    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    check-cast v0, Ljava/lang/Long;

    .line 149
    .line 150
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 151
    .line 152
    .line 153
    move-result-wide v2

    .line 154
    iget-wide v4, p0, Lfa/k;->i:J

    .line 155
    .line 156
    cmp-long v6, v2, v4

    .line 157
    .line 158
    if-gez v6, :cond_1

    .line 159
    .line 160
    invoke-interface {p5}, Ljava/util/Iterator;->remove()V

    .line 161
    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    check-cast v2, Ljava/util/List;

    .line 169
    .line 170
    new-instance v3, Ljava/util/ArrayList;

    .line 171
    .line 172
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .line 174
    .line 175
    const/4 v4, 0x0

    .line 176
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 177
    .line 178
    .line 179
    move-result v5

    .line 180
    if-ge v4, v5, :cond_4

    .line 181
    .line 182
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v5

    .line 186
    check-cast v5, Lorg/bitspark/android/beans/EpgBeans$EpgBean;

    .line 187
    .line 188
    invoke-virtual {v5}, Lorg/bitspark/android/beans/EpgBeans$EpgBean;->getEndTime()Ljava/lang/Long;

    .line 189
    .line 190
    .line 191
    move-result-object v6

    .line 192
    if-eqz v6, :cond_2

    .line 193
    .line 194
    invoke-virtual {v5}, Lorg/bitspark/android/beans/EpgBeans$EpgBean;->getEndTime()Ljava/lang/Long;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 199
    .line 200
    .line 201
    move-result-wide v5

    .line 202
    cmp-long v7, v5, p3

    .line 203
    .line 204
    if-gez v7, :cond_3

    .line 205
    .line 206
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    goto :goto_2

    .line 214
    :cond_2
    invoke-virtual {v5}, Lorg/bitspark/android/beans/EpgBeans$EpgBean;->getTime()Ljava/lang/Long;

    .line 215
    .line 216
    .line 217
    move-result-object v5

    .line 218
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 219
    .line 220
    .line 221
    move-result-wide v5

    .line 222
    cmp-long v7, v5, p3

    .line 223
    .line 224
    if-gez v7, :cond_3

    .line 225
    .line 226
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 234
    .line 235
    goto :goto_1

    .line 236
    :cond_4
    invoke-virtual {p6, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    goto :goto_0

    .line 240
    :cond_5
    :goto_3
    iput-object p2, p0, Lfa/k;->c:Ljava/util/ArrayList;

    .line 241
    .line 242
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 243
    .line 244
    .line 245
    move-result p1

    .line 246
    new-array p1, p1, [Ljava/lang/String;

    .line 247
    .line 248
    iput-object p1, p0, Lfa/k;->d:[Ljava/lang/String;

    .line 249
    .line 250
    :goto_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 251
    .line 252
    .line 253
    move-result p1

    .line 254
    if-ge v1, p1, :cond_6

    .line 255
    .line 256
    iget-object p1, p0, Lfa/k;->d:[Ljava/lang/String;

    .line 257
    .line 258
    iget-object p3, p0, Lfa/k;->h:Ljava/text/SimpleDateFormat;

    .line 259
    .line 260
    iget-object p4, p0, Lfa/k;->c:Ljava/util/ArrayList;

    .line 261
    .line 262
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object p4

    .line 266
    invoke-virtual {p3, p4}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object p3

    .line 270
    aput-object p3, p1, v1

    .line 271
    .line 272
    add-int/lit8 v1, v1, 0x1

    .line 273
    .line 274
    goto :goto_4

    .line 275
    :cond_6
    iput-object p6, p0, Lfa/k;->j:Ljava/util/HashMap;

    .line 276
    .line 277
    return-void
.end method


# virtual methods
.method public final getChild(II)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lfa/k;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lfa/k;->a:Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public final getChildId(II)J
    .locals 0

    .line 1
    int-to-long p1, p2

    .line 2
    return-wide p1
.end method

.method public final getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 1
    iget-object v0, p0, Lfa/k;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lfa/k;->j:Ljava/util/HashMap;

    .line 10
    .line 11
    iget-object v1, p0, Lfa/k;->c:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lfa/k;->j:Ljava/util/HashMap;

    .line 24
    .line 25
    iget-object v1, p0, Lfa/k;->c:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Ljava/lang/Integer;

    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-gt v1, p2, :cond_0

    .line 58
    .line 59
    add-int/lit8 p2, p2, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    iget-object v0, p0, Lfa/k;->a:Ljava/util/HashMap;

    .line 63
    .line 64
    iget-object v1, p0, Lfa/k;->c:Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Ljava/util/List;

    .line 75
    .line 76
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Lorg/bitspark/android/beans/EpgBeans$EpgBean;

    .line 81
    .line 82
    invoke-virtual {v1}, Lorg/bitspark/android/beans/EpgBeans$EpgBean;->getPlaybackUrl()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    if-nez p4, :cond_3

    .line 87
    .line 88
    sget-object p4, Lga/d;->c:Ljava/util/HashMap;

    .line 89
    .line 90
    const/4 v2, 0x0

    .line 91
    if-eqz p4, :cond_2

    .line 92
    .line 93
    sget-object p4, Lga/d;->c:Ljava/util/HashMap;

    .line 94
    .line 95
    iget v3, p0, Lfa/k;->g:I

    .line 96
    .line 97
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {p4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p4

    .line 105
    if-eqz p4, :cond_2

    .line 106
    .line 107
    sget-object p4, Lga/d;->c:Ljava/util/HashMap;

    .line 108
    .line 109
    iget v3, p0, Lfa/k;->g:I

    .line 110
    .line 111
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-virtual {p4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p4

    .line 119
    check-cast p4, Lorg/bitspark/android/beans/ChannelBean;

    .line 120
    .line 121
    invoke-virtual {p4}, Lorg/bitspark/android/beans/ChannelBean;->isHasPlayBack()Z

    .line 122
    .line 123
    .line 124
    move-result p4

    .line 125
    if-eqz p4, :cond_2

    .line 126
    .line 127
    invoke-virtual {p5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 128
    .line 129
    .line 130
    move-result-object p4

    .line 131
    const p5, 0x7f0e003e

    .line 132
    .line 133
    .line 134
    invoke-static {p4, p5, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object p4

    .line 138
    goto :goto_1

    .line 139
    :cond_2
    invoke-virtual {p5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 140
    .line 141
    .line 142
    move-result-object p4

    .line 143
    const p5, 0x7f0e003f

    .line 144
    .line 145
    .line 146
    invoke-static {p4, p5, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object p4

    .line 150
    :cond_3
    :goto_1
    new-instance p5, Lfa/i;

    .line 151
    .line 152
    invoke-direct {p5, p0, p1, p3}, Lfa/i;-><init>(Lfa/k;IZ)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p4, p5}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 156
    .line 157
    .line 158
    new-instance p3, Lfa/g;

    .line 159
    .line 160
    const/4 p5, 0x1

    .line 161
    invoke-direct {p3, p5}, Lfa/g;-><init>(I)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p4, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    .line 166
    .line 167
    new-instance p3, Lfa/j;

    .line 168
    .line 169
    invoke-direct {p3, p0, p1, p2}, Lfa/j;-><init>(Lfa/k;II)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p4, p3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 173
    .line 174
    .line 175
    const p1, 0x7f0b0150

    .line 176
    .line 177
    .line 178
    invoke-virtual {p4, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    check-cast p1, Landroid/widget/TextView;

    .line 183
    .line 184
    const p3, 0x7f0b0151

    .line 185
    .line 186
    .line 187
    invoke-virtual {p4, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 188
    .line 189
    .line 190
    move-result-object p3

    .line 191
    check-cast p3, Landroid/widget/TextView;

    .line 192
    .line 193
    const p5, 0x7f0b014f

    .line 194
    .line 195
    .line 196
    invoke-virtual {p4, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    check-cast v2, Landroid/widget/ImageView;

    .line 201
    .line 202
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    if-lez v3, :cond_9

    .line 207
    .line 208
    sget-object v3, Lga/d;->c:Ljava/util/HashMap;

    .line 209
    .line 210
    const v4, 0x7f0b00ce

    .line 211
    .line 212
    .line 213
    const v5, 0x7f060048

    .line 214
    .line 215
    .line 216
    if-eqz v3, :cond_4

    .line 217
    .line 218
    sget-object v3, Lga/d;->c:Ljava/util/HashMap;

    .line 219
    .line 220
    iget v6, p0, Lfa/k;->g:I

    .line 221
    .line 222
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 223
    .line 224
    .line 225
    move-result-object v6

    .line 226
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    if-eqz v3, :cond_4

    .line 231
    .line 232
    sget-object v3, Lga/d;->c:Ljava/util/HashMap;

    .line 233
    .line 234
    iget v6, p0, Lfa/k;->g:I

    .line 235
    .line 236
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 237
    .line 238
    .line 239
    move-result-object v6

    .line 240
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v3

    .line 244
    check-cast v3, Lorg/bitspark/android/beans/ChannelBean;

    .line 245
    .line 246
    invoke-virtual {v3}, Lorg/bitspark/android/beans/ChannelBean;->isHasPlayBack()Z

    .line 247
    .line 248
    .line 249
    move-result v3

    .line 250
    if-nez v3, :cond_4

    .line 251
    .line 252
    sget-object p3, Lorg/bitspark/android/SpkApplication;->c:Lorg/bitspark/android/SpkApplication;

    .line 253
    .line 254
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 255
    .line 256
    .line 257
    move-result-object p3

    .line 258
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 259
    .line 260
    .line 261
    move-result-object p3

    .line 262
    invoke-virtual {p3, v5}, Landroid/content/res/Resources;->getColor(I)I

    .line 263
    .line 264
    .line 265
    move-result p3

    .line 266
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 267
    .line 268
    .line 269
    new-instance p3, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .line 273
    .line 274
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object p5

    .line 278
    check-cast p5, Lorg/bitspark/android/beans/EpgBeans$EpgBean;

    .line 279
    .line 280
    invoke-virtual {p5}, Lorg/bitspark/android/beans/EpgBeans$EpgBean;->getTime()Ljava/lang/Long;

    .line 281
    .line 282
    .line 283
    move-result-object p5

    .line 284
    invoke-static {p5}, Lorg/bitspark/android/utils/m;->h(Ljava/lang/Long;)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object p5

    .line 288
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    const-string p5, " "

    .line 292
    .line 293
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object p2

    .line 300
    check-cast p2, Lorg/bitspark/android/beans/EpgBeans$EpgBean;

    .line 301
    .line 302
    invoke-virtual {p2}, Lorg/bitspark/android/beans/EpgBeans$EpgBean;->getName()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object p2

    .line 306
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object p2

    .line 313
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    .line 315
    .line 316
    goto/16 :goto_3

    .line 317
    .line 318
    :cond_4
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v3

    .line 322
    check-cast v3, Lorg/bitspark/android/beans/EpgBeans$EpgBean;

    .line 323
    .line 324
    invoke-virtual {v3}, Lorg/bitspark/android/beans/EpgBeans$EpgBean;->getName()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v3

    .line 328
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    .line 330
    .line 331
    if-eqz v2, :cond_8

    .line 332
    .line 333
    if-nez p3, :cond_5

    .line 334
    .line 335
    goto/16 :goto_4

    .line 336
    .line 337
    :cond_5
    if-eqz v1, :cond_7

    .line 338
    .line 339
    const-string v3, ""

    .line 340
    .line 341
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result v1

    .line 345
    if-nez v1, :cond_7

    .line 346
    .line 347
    const/4 v1, 0x0

    .line 348
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 349
    .line 350
    .line 351
    sget-object v1, Lorg/bitspark/android/SpkApplication;->c:Lorg/bitspark/android/SpkApplication;

    .line 352
    .line 353
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 354
    .line 355
    .line 356
    move-result-object v1

    .line 357
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    const v2, 0x7f060330

    .line 362
    .line 363
    .line 364
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 365
    .line 366
    .line 367
    move-result v1

    .line 368
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 369
    .line 370
    .line 371
    sget-object p1, Lorg/bitspark/android/SpkApplication;->c:Lorg/bitspark/android/SpkApplication;

    .line 372
    .line 373
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 374
    .line 375
    .line 376
    move-result-object p1

    .line 377
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 378
    .line 379
    .line 380
    move-result-object p1

    .line 381
    const v1, 0x7f060049

    .line 382
    .line 383
    .line 384
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 385
    .line 386
    .line 387
    move-result p1

    .line 388
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {p4, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 392
    .line 393
    .line 394
    move-result-object p1

    .line 395
    check-cast p1, Landroid/widget/ImageView;

    .line 396
    .line 397
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object p5

    .line 401
    check-cast p5, Lorg/bitspark/android/beans/EpgBeans$EpgBean;

    .line 402
    .line 403
    invoke-virtual {p5}, Lorg/bitspark/android/beans/EpgBeans$EpgBean;->getId()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object p5

    .line 407
    sget-object v1, Lfa/k;->n:Ljava/lang/String;

    .line 408
    .line 409
    invoke-virtual {p5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 410
    .line 411
    .line 412
    move-result p5

    .line 413
    if-eqz p5, :cond_6

    .line 414
    .line 415
    const p5, 0x7f0f003a

    .line 416
    .line 417
    .line 418
    invoke-virtual {p1, p5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 419
    .line 420
    .line 421
    goto :goto_2

    .line 422
    :cond_6
    const p5, 0x7f0f0036

    .line 423
    .line 424
    .line 425
    invoke-virtual {p1, p5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 426
    .line 427
    .line 428
    goto :goto_2

    .line 429
    :cond_7
    const/16 p5, 0x8

    .line 430
    .line 431
    invoke-virtual {v2, p5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 432
    .line 433
    .line 434
    sget-object p5, Lorg/bitspark/android/SpkApplication;->c:Lorg/bitspark/android/SpkApplication;

    .line 435
    .line 436
    invoke-virtual {p5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 437
    .line 438
    .line 439
    move-result-object p5

    .line 440
    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 441
    .line 442
    .line 443
    move-result-object p5

    .line 444
    invoke-virtual {p5, v5}, Landroid/content/res/Resources;->getColor(I)I

    .line 445
    .line 446
    .line 447
    move-result p5

    .line 448
    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 449
    .line 450
    .line 451
    sget-object p1, Lorg/bitspark/android/SpkApplication;->c:Lorg/bitspark/android/SpkApplication;

    .line 452
    .line 453
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 454
    .line 455
    .line 456
    move-result-object p1

    .line 457
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 458
    .line 459
    .line 460
    move-result-object p1

    .line 461
    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getColor(I)I

    .line 462
    .line 463
    .line 464
    move-result p1

    .line 465
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 466
    .line 467
    .line 468
    :goto_2
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object p1

    .line 472
    check-cast p1, Lorg/bitspark/android/beans/EpgBeans$EpgBean;

    .line 473
    .line 474
    invoke-virtual {p1}, Lorg/bitspark/android/beans/EpgBeans$EpgBean;->getTime()Ljava/lang/Long;

    .line 475
    .line 476
    .line 477
    move-result-object p1

    .line 478
    invoke-static {p1}, Lorg/bitspark/android/utils/m;->h(Ljava/lang/Long;)Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object p1

    .line 482
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    move-result-object p5

    .line 486
    check-cast p5, Lorg/bitspark/android/beans/EpgBeans$EpgBean;

    .line 487
    .line 488
    invoke-virtual {p5}, Lorg/bitspark/android/beans/EpgBeans$EpgBean;->getEndTime()Ljava/lang/Long;

    .line 489
    .line 490
    .line 491
    move-result-object p5

    .line 492
    invoke-static {p5}, Lorg/bitspark/android/utils/m;->h(Ljava/lang/Long;)Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object p5

    .line 496
    invoke-static {p1}, Lea/q;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    .line 498
    .line 499
    move-result-object p1

    .line 500
    const-string v1, "XA==\n"

    .line 501
    .line 502
    const-string v2, "ca+BND/dMcY=\n"

    .line 503
    .line 504
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v1

    .line 508
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    .line 510
    .line 511
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object p1

    .line 518
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    .line 520
    .line 521
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 522
    .line 523
    .line 524
    move-result-object p1

    .line 525
    invoke-virtual {p4, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 526
    .line 527
    .line 528
    :goto_3
    iget p1, p0, Lfa/k;->g:I

    .line 529
    .line 530
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 531
    .line 532
    .line 533
    move-result-object p1

    .line 534
    invoke-virtual {p4, v4, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 535
    .line 536
    .line 537
    goto :goto_5

    .line 538
    :cond_8
    :goto_4
    iget p1, p0, Lfa/k;->g:I

    .line 539
    .line 540
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 541
    .line 542
    .line 543
    move-result-object p1

    .line 544
    invoke-virtual {p4, v4, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 545
    .line 546
    .line 547
    :cond_9
    :goto_5
    return-object p4
.end method

.method public final getChildrenCount(I)I
    .locals 5

    .line 1
    iget-object v0, p0, Lfa/k;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lfa/k;->a:Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Ljava/util/List;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-lez v3, :cond_1

    .line 23
    .line 24
    iget-object v3, p0, Lfa/k;->j:Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    if-eqz v4, :cond_0

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    sub-int/2addr p1, v2

    .line 55
    return p1

    .line 56
    :cond_1
    return v2
.end method

.method public final getGroup(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lfa/k;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final getGroupCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lfa/k;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-lez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0
.end method

.method public final getGroupId(I)J
    .locals 2

    .line 1
    int-to-long v0, p1

    .line 2
    return-wide v0
.end method

.method public final getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    const p4, 0x7f0e003d

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-static {p3, p4, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    :cond_0
    new-instance p4, Lfa/f;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-direct {p4, p1, v0, p0}, Lfa/f;-><init>(IILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3, p4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 22
    .line 23
    .line 24
    new-instance p4, Lfa/g;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-direct {p4, v0}, Lfa/g;-><init>(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p3, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    .line 32
    .line 33
    new-instance p4, Lfa/h;

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    invoke-direct {p4, p1, v0, p0}, Lfa/h;-><init>(IILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p3, p4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 40
    .line 41
    .line 42
    const p4, 0x7f0b014b

    .line 43
    .line 44
    .line 45
    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object p4

    .line 49
    check-cast p4, Landroid/widget/TextView;

    .line 50
    .line 51
    iget-object v0, p0, Lfa/k;->c:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    if-eqz v1, :cond_6

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-lez v1, :cond_6

    .line 64
    .line 65
    iget-object v1, p0, Lfa/k;->d:[Ljava/lang/String;

    .line 66
    .line 67
    aget-object v1, v1, p1

    .line 68
    .line 69
    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    .line 71
    .line 72
    const p4, 0x7f0b014c

    .line 73
    .line 74
    .line 75
    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object p4

    .line 79
    check-cast p4, Landroid/widget/ImageView;

    .line 80
    .line 81
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Ljava/lang/Long;

    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 88
    .line 89
    .line 90
    move-result-wide v0

    .line 91
    iget-wide v2, p0, Lfa/k;->i:J

    .line 92
    .line 93
    cmp-long v4, v2, v0

    .line 94
    .line 95
    if-nez v4, :cond_2

    .line 96
    .line 97
    iget-boolean v0, p0, Lfa/k;->f:Z

    .line 98
    .line 99
    iget-object v1, p0, Lfa/k;->b:Landroid/widget/ExpandableListView;

    .line 100
    .line 101
    if-eqz v0, :cond_1

    .line 102
    .line 103
    invoke-virtual {v1, p1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual {v1, p1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 108
    .line 109
    .line 110
    :goto_0
    iput p1, p0, Lfa/k;->e:I

    .line 111
    .line 112
    :cond_2
    iget-object v0, p0, Lfa/k;->l:Ljava/util/HashMap;

    .line 113
    .line 114
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    const v2, 0x7f0f0084

    .line 123
    .line 124
    .line 125
    const v3, 0x7f0f0013

    .line 126
    .line 127
    .line 128
    if-eqz v1, :cond_4

    .line 129
    .line 130
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    check-cast p1, Ljava/lang/Boolean;

    .line 139
    .line 140
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    if-nez p1, :cond_3

    .line 145
    .line 146
    invoke-virtual {p4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_3
    invoke-virtual {p4, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_4
    if-eqz p2, :cond_5

    .line 155
    .line 156
    invoke-virtual {p4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_5
    invoke-virtual {p4, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 161
    .line 162
    .line 163
    :cond_6
    :goto_1
    return-object p3
.end method

.method public final hasStableIds()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final isChildSelectable(II)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    return p1
.end method
