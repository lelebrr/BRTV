.class public final synthetic Landroidx/media3/exoplayer/analytics/b;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;
.implements Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;
.implements Lj4/b;
.implements Li4/e;
.implements Li8/b;
.implements Ll8/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/media3/exoplayer/analytics/b;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/b;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/media3/exoplayer/analytics/b;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Lp8/b;)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/b;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lka/c;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v1, "ixZg+fTea72w\n"

    .line 9
    .line 10
    const-string v2, "yUUokIeqBM8=\n"

    .line 11
    .line 12
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    const-string v1, "dMFoSsNSsbRuxXdRw02HkmfKOVDIcrCUZcFqTJwB\n"

    .line 16
    .line 17
    const-string v2, "BqQZP6Yhxfc=\n"

    .line 18
    .line 19
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    const-string v1, "Qw==\n"

    .line 23
    .line 24
    const-string v2, "GLhc+RxYjSk=\n"

    .line 25
    .line 26
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/b;->c:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v2, Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    const-string p1, "EwMEZGuqmQAo\n"

    .line 41
    .line 42
    const-string v0, "UVBMDRje9nI=\n"

    .line 43
    .line 44
    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const-string v0, "gXqYnUcPZy2dLusAm/jnxXDzUWzC9K24e6QsU6CDvtIHiEsAgu1BNo96pY1Iia3nBqVq\n"

    .line 49
    .line 50
    const-string v1, "7hTL6CRsAl4=\n"

    .line 51
    .line 52
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    sget-boolean v1, Lorg/bitspark/android/utils/m;->b:Z

    .line 57
    .line 58
    invoke-static {p1, v0}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    goto/16 :goto_1

    .line 62
    .line 63
    :cond_0
    const-string v1, "yQ==\n"

    .line 64
    .line 65
    const-string v3, "sntP1Xzl2rI=\n"

    .line 66
    .line 67
    invoke-static {v1, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_2

    .line 76
    .line 77
    :try_start_0
    new-instance v1, Lcom/alibaba/fastjson/JSONReader;

    .line 78
    .line 79
    new-instance v3, Ljava/io/StringReader;

    .line 80
    .line 81
    invoke-direct {v3, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-direct {v1, v3}, Lcom/alibaba/fastjson/JSONReader;-><init>(Ljava/io/Reader;)V

    .line 85
    .line 86
    .line 87
    const-class v2, Lorg/bitspark/android/beans/ChannelBean;

    .line 88
    .line 89
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONReader;->readObject(Ljava/lang/Class;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    check-cast v1, Lorg/bitspark/android/beans/ChannelBean;

    .line 94
    .line 95
    invoke-virtual {v1}, Lorg/bitspark/android/beans/ChannelBean;->getSources()Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    if-eqz v2, :cond_1

    .line 100
    .line 101
    invoke-virtual {v1}, Lorg/bitspark/android/beans/ChannelBean;->getSources()Ljava/util/List;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-nez v2, :cond_1

    .line 110
    .line 111
    const-string v0, "roU+g/6KmGiV\n"

    .line 112
    .line 113
    const-string v2, "7NZ26o3+9xo=\n"

    .line 114
    .line 115
    invoke-static {v0, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    const-string v3, "35RjZtfklWvDwBA=\n"

    .line 125
    .line 126
    const-string v4, "sPowE7SH8Bg=\n"

    .line 127
    .line 128
    invoke-static {v3, v4}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1}, Lorg/bitspark/android/beans/ChannelBean;->getSources()Ljava/util/List;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 140
    .line 141
    .line 142
    move-result v3

    .line 143
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    sget-boolean v3, Lorg/bitspark/android/utils/m;->b:Z

    .line 151
    .line 152
    invoke-static {v0, v2}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, v1}, Lp8/b;->c(Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    goto :goto_1

    .line 159
    :catch_0
    move-exception p1

    .line 160
    goto :goto_0

    .line 161
    :cond_1
    sget-object p1, Lka/e;->l0:Lcom/google/android/gms/internal/cast/x0;

    .line 162
    .line 163
    new-instance v1, La/f;

    .line 164
    .line 165
    const/16 v2, 0x14

    .line 166
    .line 167
    invoke-direct {v1, v2, v0}, La/f;-><init>(ILjava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 171
    .line 172
    .line 173
    iget-object p1, v0, Lka/c;->b:Lka/e;

    .line 174
    .line 175
    iget-object p1, p1, Lka/e;->g0:Lta/a;

    .line 176
    .line 177
    const/4 v0, 0x0

    .line 178
    iput-boolean v0, p1, Lta/a;->v:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .line 180
    goto :goto_1

    .line 181
    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 182
    .line 183
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 184
    .line 185
    .line 186
    throw v0

    .line 187
    :cond_2
    :goto_1
    return-void
.end method

.method public accept(Ljava/lang/Object;)V
    .locals 12

    .line 1
    check-cast p1, Lorg/bitspark/android/beans/ChannelBean;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/b;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lka/c;

    .line 6
    .line 7
    iget-object v0, v0, Lka/c;->b:Lka/e;

    .line 8
    .line 9
    iget-object v1, v0, Lka/e;->W:Landroid/widget/LinearLayout;

    .line 10
    .line 11
    const/16 v2, 0x8

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    iget-object v1, v0, Lka/e;->i0:Landroid/widget/FrameLayout;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/b;->c:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, Lorg/bitspark/android/beans/HistoryBean;

    .line 25
    .line 26
    iget-object v1, v1, Lorg/bitspark/android/beans/HistoryBean;->subId:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_0

    .line 33
    .line 34
    const-string v1, "+9A=\n"

    .line 35
    .line 36
    const-string v3, "1uH+Hx3wzzg=\n"

    .line 37
    .line 38
    invoke-static {v1, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    :cond_0
    sget-object v3, Lorg/bitspark/android/utils/o;->f:Lorg/bitspark/android/utils/o;

    .line 43
    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    const-string v4, "3KkLWK/gCg==\n"

    .line 49
    .line 50
    const-string v5, "tMB4LMCSc8U=\n"

    .line 51
    .line 52
    invoke-static {v4, v5}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    iget-object v5, v3, Lorg/bitspark/android/utils/o;->b:Lta/a;

    .line 57
    .line 58
    invoke-virtual {v5}, Lta/a;->j()V

    .line 59
    .line 60
    .line 61
    iget-object v5, v3, Lorg/bitspark/android/utils/o;->b:Lta/a;

    .line 62
    .line 63
    iput-object p1, v5, Lta/a;->q:Lorg/bitspark/android/beans/ChannelBean;

    .line 64
    .line 65
    iput-object v4, v5, Lta/a;->o:Ljava/lang/String;

    .line 66
    .line 67
    iget-object v4, v5, Lta/a;->z:Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 70
    .line 71
    .line 72
    iget-object v4, v5, Lta/a;->A:Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 75
    .line 76
    .line 77
    iget-object v4, v5, Lta/a;->q:Lorg/bitspark/android/beans/ChannelBean;

    .line 78
    .line 79
    invoke-virtual {v4}, Lorg/bitspark/android/beans/ChannelBean;->getSources()Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    iget-object v6, v5, Lta/a;->A:Ljava/util/ArrayList;

    .line 88
    .line 89
    const/4 v7, 0x1

    .line 90
    if-nez v4, :cond_6

    .line 91
    .line 92
    iget-object v4, v5, Lta/a;->q:Lorg/bitspark/android/beans/ChannelBean;

    .line 93
    .line 94
    invoke-virtual {v4}, Lorg/bitspark/android/beans/ChannelBean;->getSeasons()I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-eq v4, v7, :cond_3

    .line 99
    .line 100
    invoke-virtual {v5}, Lta/a;->c()V

    .line 101
    .line 102
    .line 103
    const/4 v4, 0x0

    .line 104
    :goto_0
    iget-object v8, v5, Lta/a;->q:Lorg/bitspark/android/beans/ChannelBean;

    .line 105
    .line 106
    invoke-virtual {v8}, Lorg/bitspark/android/beans/ChannelBean;->getSeasons()I

    .line 107
    .line 108
    .line 109
    move-result v8

    .line 110
    if-ge v4, v8, :cond_6

    .line 111
    .line 112
    iget-object v8, v5, Lta/a;->q:Lorg/bitspark/android/beans/ChannelBean;

    .line 113
    .line 114
    add-int/lit8 v9, v4, 0x1

    .line 115
    .line 116
    invoke-virtual {v8, v9}, Lorg/bitspark/android/beans/ChannelBean;->getSeasonSources(I)Ljava/util/List;

    .line 117
    .line 118
    .line 119
    move-result-object v8

    .line 120
    const/4 v10, 0x0

    .line 121
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 122
    .line 123
    .line 124
    move-result v11

    .line 125
    if-ge v10, v11, :cond_2

    .line 126
    .line 127
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v11

    .line 131
    check-cast v11, Lorg/bitspark/android/beans/ChannelBean$SourcesBean;

    .line 132
    .line 133
    invoke-virtual {v11}, Lorg/bitspark/android/beans/ChannelBean$SourcesBean;->getId()I

    .line 134
    .line 135
    .line 136
    move-result v11

    .line 137
    if-ne v1, v11, :cond_1

    .line 138
    .line 139
    iput v4, v5, Lta/a;->s:I

    .line 140
    .line 141
    invoke-virtual {v5, v4}, Lta/a;->m(I)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v5, v10}, Lta/a;->o(I)V

    .line 145
    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_1
    add-int/lit8 v10, v10, 0x1

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_2
    :goto_2
    move v4, v9

    .line 152
    goto :goto_0

    .line 153
    :cond_3
    iget-object v4, v5, Lta/a;->q:Lorg/bitspark/android/beans/ChannelBean;

    .line 154
    .line 155
    invoke-virtual {v4}, Lorg/bitspark/android/beans/ChannelBean;->getSources()Ljava/util/List;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 160
    .line 161
    .line 162
    const/4 v4, -0x1

    .line 163
    if-ne v1, v4, :cond_4

    .line 164
    .line 165
    iput v2, v5, Lta/a;->s:I

    .line 166
    .line 167
    invoke-virtual {v5, v2}, Lta/a;->o(I)V

    .line 168
    .line 169
    .line 170
    goto :goto_4

    .line 171
    :cond_4
    const/4 v4, 0x0

    .line 172
    :goto_3
    iget-object v8, v5, Lta/a;->q:Lorg/bitspark/android/beans/ChannelBean;

    .line 173
    .line 174
    invoke-virtual {v8}, Lorg/bitspark/android/beans/ChannelBean;->getSources()Ljava/util/List;

    .line 175
    .line 176
    .line 177
    move-result-object v8

    .line 178
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 179
    .line 180
    .line 181
    move-result v8

    .line 182
    if-ge v4, v8, :cond_6

    .line 183
    .line 184
    iget-object v8, v5, Lta/a;->q:Lorg/bitspark/android/beans/ChannelBean;

    .line 185
    .line 186
    invoke-virtual {v8}, Lorg/bitspark/android/beans/ChannelBean;->getSources()Ljava/util/List;

    .line 187
    .line 188
    .line 189
    move-result-object v8

    .line 190
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v8

    .line 194
    check-cast v8, Lorg/bitspark/android/beans/ChannelBean$SourcesBean;

    .line 195
    .line 196
    invoke-virtual {v8}, Lorg/bitspark/android/beans/ChannelBean$SourcesBean;->getId()I

    .line 197
    .line 198
    .line 199
    move-result v8

    .line 200
    if-ne v1, v8, :cond_5

    .line 201
    .line 202
    iput v2, v5, Lta/a;->s:I

    .line 203
    .line 204
    invoke-virtual {v5, v4}, Lta/a;->o(I)V

    .line 205
    .line 206
    .line 207
    goto :goto_4

    .line 208
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 209
    .line 210
    goto :goto_3

    .line 211
    :cond_6
    :goto_4
    iget-object v1, v5, Lta/a;->F:Ljava/util/ArrayList;

    .line 212
    .line 213
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    check-cast v1, Lorg/bitspark/android/beans/VodMenu;

    .line 218
    .line 219
    iget-object v4, v5, Lta/a;->z:Ljava/util/ArrayList;

    .line 220
    .line 221
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 222
    .line 223
    .line 224
    move-result v4

    .line 225
    if-gt v4, v7, :cond_8

    .line 226
    .line 227
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 228
    .line 229
    .line 230
    move-result v4

    .line 231
    if-le v4, v7, :cond_7

    .line 232
    .line 233
    goto :goto_5

    .line 234
    :cond_7
    const/4 v7, 0x0

    .line 235
    :cond_8
    :goto_5
    invoke-virtual {v1, v7}, Lorg/bitspark/android/beans/VodMenu;->setEnable(Z)V

    .line 236
    .line 237
    .line 238
    iget-object v1, v3, Lorg/bitspark/android/utils/o;->b:Lta/a;

    .line 239
    .line 240
    invoke-virtual {v1}, Lta/a;->n()V

    .line 241
    .line 242
    .line 243
    sget-object v1, Lorg/bitspark/android/utils/o;->f:Lorg/bitspark/android/utils/o;

    .line 244
    .line 245
    iget-object v3, v0, Lka/e;->i0:Landroid/widget/FrameLayout;

    .line 246
    .line 247
    iget-object v4, v0, Lka/e;->Z:Landroidx/recyclerview/widget/RecyclerView;

    .line 248
    .line 249
    iget-object v5, v0, Lka/e;->W:Landroid/widget/LinearLayout;

    .line 250
    .line 251
    invoke-virtual {v1, v0, v3, v4, v5}, Lorg/bitspark/android/utils/o;->a(Lka/b;Landroid/view/View;Landroid/view/View;Landroid/view/View;)Lka/i0;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    invoke-virtual {v0}, Landroidx/fragment/app/s;->i()Landroidx/fragment/app/j0;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 260
    .line 261
    .line 262
    new-instance v3, Landroidx/fragment/app/a;

    .line 263
    .line 264
    invoke-direct {v3, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/j0;)V

    .line 265
    .line 266
    .line 267
    const v0, 0x7f0b0487

    .line 268
    .line 269
    .line 270
    invoke-virtual {v3, v0, v1}, Landroidx/fragment/app/a;->i(ILandroidx/fragment/app/s;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v3}, Landroidx/fragment/app/a;->c()V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v3, v2}, Landroidx/fragment/app/a;->e(Z)I

    .line 277
    .line 278
    .line 279
    sget-object v0, Lorg/bitspark/android/Spark;->Y1:Lga/i;

    .line 280
    .line 281
    invoke-virtual {v0, p1}, Lga/i;->d(Lorg/bitspark/android/beans/ChannelBean;)V

    .line 282
    .line 283
    .line 284
    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/b;->b:Ljava/lang/Object;

    .line 4
    .line 5
    move-object v9, v0

    .line 6
    check-cast v9, Li4/g;

    .line 7
    .line 8
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    new-instance v10, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/b;->c:Ljava/lang/Object;

    .line 17
    .line 18
    move-object v11, v0

    .line 19
    check-cast v11, La4/j;

    .line 20
    .line 21
    invoke-static {p1, v11}, Li4/g;->b(Landroid/database/sqlite/SQLiteDatabase;La4/j;)Ljava/lang/Long;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string v7, "code"

    .line 29
    .line 30
    const-string v8, "inline"

    .line 31
    .line 32
    const-string v1, "_id"

    .line 33
    .line 34
    const-string v2, "transport_name"

    .line 35
    .line 36
    const-string v3, "timestamp_ms"

    .line 37
    .line 38
    const-string v4, "uptime_ms"

    .line 39
    .line 40
    const-string v5, "payload_encoding"

    .line 41
    .line 42
    const-string v6, "payload"

    .line 43
    .line 44
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    filled-new-array {v0}, [Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    iget-object v0, v9, Li4/g;->d:Li4/a;

    .line 57
    .line 58
    iget v0, v0, Li4/a;->b:I

    .line 59
    .line 60
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    const-string v3, "context_id = ?"

    .line 65
    .line 66
    const/4 v5, 0x0

    .line 67
    const-string v1, "events"

    .line 68
    .line 69
    const/4 v6, 0x0

    .line 70
    const/4 v7, 0x0

    .line 71
    move-object v0, p1

    .line 72
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    new-instance v1, Landroidx/media3/exoplayer/hls/b;

    .line 77
    .line 78
    const/4 v2, 0x6

    .line 79
    invoke-direct {v1, v9, v10, v11, v2}, Landroidx/media3/exoplayer/hls/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 80
    .line 81
    .line 82
    invoke-static {v0, v1}, Li4/g;->g(Landroid/database/Cursor;Li4/e;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    :goto_0
    new-instance v8, Ljava/util/HashMap;

    .line 86
    .line 87
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 88
    .line 89
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v1, "event_id IN ("

    .line 93
    .line 94
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const/4 v9, 0x0

    .line 98
    const/4 v1, 0x0

    .line 99
    :goto_1
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    const/4 v11, 0x1

    .line 104
    if-ge v1, v2, :cond_2

    .line 105
    .line 106
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    check-cast v2, Li4/b;

    .line 111
    .line 112
    iget-wide v2, v2, Li4/b;->a:J

    .line 113
    .line 114
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    sub-int/2addr v2, v11

    .line 122
    if-ge v1, v2, :cond_1

    .line 123
    .line 124
    const/16 v2, 0x2c

    .line 125
    .line 126
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_2
    const/16 v1, 0x29

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v1, "value"

    .line 138
    .line 139
    const-string v2, "event_id"

    .line 140
    .line 141
    const-string v3, "name"

    .line 142
    .line 143
    filled-new-array {v2, v3, v1}, [Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    const/4 v6, 0x0

    .line 152
    const/4 v7, 0x0

    .line 153
    const-string v1, "event_metadata"

    .line 154
    .line 155
    const/4 v4, 0x0

    .line 156
    const/4 v5, 0x0

    .line 157
    move-object v0, p1

    .line 158
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    :goto_2
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-eqz v0, :cond_4

    .line 167
    .line 168
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    .line 169
    .line 170
    .line 171
    move-result-wide v0

    .line 172
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    check-cast v2, Ljava/util/Set;

    .line 181
    .line 182
    if-nez v2, :cond_3

    .line 183
    .line 184
    new-instance v2, Ljava/util/HashSet;

    .line 185
    .line 186
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 187
    .line 188
    .line 189
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-virtual {v8, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    :cond_3
    new-instance v0, Li4/f;

    .line 197
    .line 198
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    const/4 v3, 0x2

    .line 203
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    invoke-direct {v0, v1, v3}, Li4/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    .line 212
    .line 213
    goto :goto_2

    .line 214
    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v10}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    :goto_3
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    if-eqz v0, :cond_7

    .line 226
    .line 227
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    check-cast v0, Li4/b;

    .line 232
    .line 233
    iget-wide v1, v0, Li4/b;->a:J

    .line 234
    .line 235
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    invoke-virtual {v8, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    if-nez v1, :cond_5

    .line 244
    .line 245
    goto :goto_3

    .line 246
    :cond_5
    iget-object v1, v0, Li4/b;->c:La4/i;

    .line 247
    .line 248
    invoke-virtual {v1}, La4/i;->c()La4/h;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    iget-wide v2, v0, Li4/b;->a:J

    .line 253
    .line 254
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 255
    .line 256
    .line 257
    move-result-object v4

    .line 258
    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v4

    .line 262
    check-cast v4, Ljava/util/Set;

    .line 263
    .line 264
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 265
    .line 266
    .line 267
    move-result-object v4

    .line 268
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 269
    .line 270
    .line 271
    move-result v5

    .line 272
    if-eqz v5, :cond_6

    .line 273
    .line 274
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v5

    .line 278
    check-cast v5, Li4/f;

    .line 279
    .line 280
    iget-object v6, v5, Li4/f;->a:Ljava/lang/String;

    .line 281
    .line 282
    iget-object v5, v5, Li4/f;->b:Ljava/lang/String;

    .line 283
    .line 284
    invoke-virtual {v1, v6, v5}, La4/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    goto :goto_4

    .line 288
    :cond_6
    invoke-virtual {v1}, La4/h;->c()La4/i;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    new-instance v4, Li4/b;

    .line 293
    .line 294
    iget-object v0, v0, Li4/b;->b:La4/j;

    .line 295
    .line 296
    invoke-direct {v4, v2, v3, v0, v1}, Li4/b;-><init>(JLa4/j;La4/i;)V

    .line 297
    .line 298
    .line 299
    invoke-interface {p1, v4}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 300
    .line 301
    .line 302
    goto :goto_3

    .line 303
    :cond_7
    return-object v10

    .line 304
    :catchall_0
    move-exception v0

    .line 305
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 306
    .line 307
    .line 308
    throw v0
.end method

.method public execute()Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/analytics/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/b;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lh4/i;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/b;->c:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Ljava/util/Map$Entry;

    .line 36
    .line 37
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Ljava/lang/Integer;

    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    int-to-long v3, v3

    .line 48
    sget-object v5, Le4/c;->g:Le4/c;

    .line 49
    .line 50
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Ljava/lang/String;

    .line 55
    .line 56
    iget-object v6, v0, Lh4/i;->i:Li4/c;

    .line 57
    .line 58
    check-cast v6, Li4/g;

    .line 59
    .line 60
    invoke-virtual {v6, v3, v4, v5, v2}, Li4/g;->d(JLe4/c;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    const/4 v0, 0x0

    .line 65
    return-object v0

    .line 66
    :pswitch_0
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/b;->b:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v0, Lh4/i;

    .line 69
    .line 70
    iget-object v0, v0, Lh4/i;->c:Li4/d;

    .line 71
    .line 72
    check-cast v0, Li4/g;

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/b;->c:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v1, Ljava/lang/Iterable;

    .line 80
    .line 81
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-nez v2, :cond_1

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string v3, "DELETE FROM events WHERE _id in "

    .line 95
    .line 96
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-static {v1}, Li4/g;->f(Ljava/lang/Iterable;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v0}, Li4/g;->a()Landroid/database/sqlite/SQLiteDatabase;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 119
    .line 120
    .line 121
    :goto_1
    const/4 v0, 0x0

    .line 122
    return-object v0

    .line 123
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/media3/exoplayer/analytics/b;->a:I

    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/b;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/b;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/text/CueGroup;

    invoke-static {v0, v1, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->l0(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/text/CueGroup;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/b;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/b;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/VideoSize;

    invoke-static {v0, v1, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->o(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/VideoSize;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/b;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/b;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/DeviceInfo;

    invoke-static {v0, v1, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->w(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/DeviceInfo;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/b;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/b;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-static {v0, v1, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->M(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/util/List;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/b;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/b;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/Tracks;

    invoke-static {v0, v1, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->v(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Tracks;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    :pswitch_5
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/b;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/b;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/Metadata;

    invoke-static {v0, v1, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->E(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Metadata;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    :pswitch_6
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/b;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/b;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/AudioAttributes;

    invoke-static {v0, v1, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->h(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/AudioAttributes;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    :pswitch_7
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/b;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/b;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/Player$Commands;

    invoke-static {v0, v1, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->d0(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Player$Commands;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    :pswitch_8
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/b;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/b;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/TrackSelectionParameters;

    invoke-static {v0, v1, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->a(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/TrackSelectionParameters;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    :pswitch_9
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/b;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/b;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/PlaybackParameters;

    invoke-static {v0, v1, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->I(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/PlaybackParameters;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public invoke(Ljava/lang/Object;Landroidx/media3/common/FlagSet;)V
    .locals 2

    .line 2
    check-cast p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener;

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/b;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/b;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/common/Player;

    invoke-static {v0, v1, p1, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->A(Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;Landroidx/media3/common/Player;Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/common/FlagSet;)V

    return-void
.end method
