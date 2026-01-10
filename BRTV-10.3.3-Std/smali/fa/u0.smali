.class public final Lfa/u0;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lfa/w0;

.field public final synthetic c:Lorg/bitspark/android/beans/ChannelBean;

.field public final synthetic d:Lfa/x0;


# direct methods
.method public constructor <init>(Lfa/x0;ILfa/w0;Lorg/bitspark/android/beans/ChannelBean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lfa/u0;->d:Lfa/x0;

    .line 5
    .line 6
    iput p2, p0, Lfa/u0;->a:I

    .line 7
    .line 8
    iput-object p3, p0, Lfa/u0;->b:Lfa/w0;

    .line 9
    .line 10
    iput-object p4, p0, Lfa/u0;->c:Lorg/bitspark/android/beans/ChannelBean;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lfa/u0;->d:Lfa/x0;

    .line 2
    .line 3
    iget v1, v0, Lfa/o;->b:I

    .line 4
    .line 5
    iget v2, p0, Lfa/u0;->a:I

    .line 6
    .line 7
    iput v2, v0, Lfa/o;->b:I

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/k0;->notifyItemChanged(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/k0;->notifyItemChanged(I)V

    .line 13
    .line 14
    .line 15
    sget-object v1, Lea/d;->e:Lea/d;

    .line 16
    .line 17
    sput-object v1, Lka/m0;->F0:Lea/d;

    .line 18
    .line 19
    iget-object v1, p0, Lfa/u0;->b:Lfa/w0;

    .line 20
    .line 21
    iget-object v1, v1, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 22
    .line 23
    sput-object v1, Lka/m0;->I0:Landroid/view/View;

    .line 24
    .line 25
    iget-object v1, v0, Lfa/x0;->p:Lfa/o0;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    invoke-interface {v1, v2, p1}, Lfa/o0;->a(ILandroid/view/View;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, v0, Lfa/x0;->r:Landroidx/media3/common/x;

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    iget-object p1, p1, Landroidx/media3/common/x;->b:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p1, Lka/m0;

    .line 39
    .line 40
    iget-object v0, p1, Lka/m0;->v0:Lta/a;

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    iput-boolean v1, v0, Lta/a;->v:Z

    .line 44
    .line 45
    iget-object v0, p0, Lfa/u0;->c:Lorg/bitspark/android/beans/ChannelBean;

    .line 46
    .line 47
    invoke-virtual {v0}, Lorg/bitspark/android/beans/ChannelBean;->getChid()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iget-object v3, p1, Lka/m0;->z0:Ljava/util/HashMap;

    .line 56
    .line 57
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    sget-object v5, Lka/m0;->B0:Ljava/lang/String;

    .line 62
    .line 63
    if-eqz v4, :cond_0

    .line 64
    .line 65
    iget-object p1, p1, Lka/m0;->v0:Lta/a;

    .line 66
    .line 67
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 68
    .line 69
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    iput-boolean v0, p1, Lta/a;->v:Z

    .line 78
    .line 79
    const-string p1, "7+7VWunhMRL16spB6f4HNPzlng9pJfe2JgRMgDt09NN1NCM=\n"

    .line 80
    .line 81
    const-string v0, "nYukL4ySRVE=\n"

    .line 82
    .line 83
    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    sget-boolean v0, Lorg/bitspark/android/utils/m;->b:Z

    .line 88
    .line 89
    invoke-static {v5, p1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    sget-object v4, Lga/l;->h:Lga/l;

    .line 99
    .line 100
    invoke-static {v4}, Lga/m;->g(Lga/l;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v4, "w6Y=\n"

    .line 108
    .line 109
    const-string v6, "7ObOPrYQ64k=\n"

    .line 110
    .line 111
    invoke-static {v4, v6}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Lorg/bitspark/android/beans/ChannelBean;->getChid()I

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-static {v3}, Lga/m;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    :try_start_0
    invoke-static {}, Lcom/lzy/okgo/OkGo;->getInstance()Lcom/lzy/okgo/OkGo;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    invoke-virtual {v4, p1}, Lcom/lzy/okgo/OkGo;->cancelTag(Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    invoke-static {v3}, Lcom/lzy/okgo/OkGo;->get(Ljava/lang/String;)Lcom/lzy/okgo/request/GetRequest;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    const-string v4, "gmnrGjFO+xe5bg==\n"

    .line 145
    .line 146
    const-string v6, "1xqOaBwPnHI=\n"

    .line 147
    .line 148
    invoke-static {v4, v6}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    invoke-virtual {v3, v4}, Lcom/lzy/okgo/request/base/Request;->removeHeader(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    check-cast v3, Lcom/lzy/okgo/request/GetRequest;

    .line 157
    .line 158
    const-string v4, "Gy2MMLlGBpIgKg==\n"

    .line 159
    .line 160
    const-string v6, "Tl7pQpQHYfc=\n"

    .line 161
    .line 162
    invoke-static {v4, v6}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    sget-object v6, Lea/a;->m:Ljava/lang/String;

    .line 167
    .line 168
    invoke-virtual {v3, v4, v6}, Lcom/lzy/okgo/request/base/Request;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    check-cast v3, Lcom/lzy/okgo/request/GetRequest;

    .line 173
    .line 174
    invoke-virtual {v3, p1}, Lcom/lzy/okgo/request/base/Request;->tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    check-cast v3, Lcom/lzy/okgo/request/GetRequest;

    .line 179
    .line 180
    sget-object v4, Lcom/lzy/okgo/cache/CacheMode;->NO_CACHE:Lcom/lzy/okgo/cache/CacheMode;

    .line 181
    .line 182
    invoke-virtual {v3, v4}, Lcom/lzy/okgo/request/base/Request;->cacheMode(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/request/base/Request;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    check-cast v3, Lcom/lzy/okgo/request/GetRequest;

    .line 187
    .line 188
    new-instance v4, Lka/l0;

    .line 189
    .line 190
    invoke-direct {v4, p1, v1, v0, v2}, Lka/l0;-><init>(Lka/m0;Ljava/lang/String;Lorg/bitspark/android/beans/ChannelBean;I)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v3, v4}, Lcom/lzy/okgo/request/base/Request;->execute(Lcom/lzy/okgo/callback/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .line 195
    .line 196
    goto :goto_0

    .line 197
    :catch_0
    const-string p1, "IH5DOjGRXu4vell0IpIazDdyF381jFXfZg==\n"

    .line 198
    .line 199
    const-string v0, "Rxs3Gkf+Oq0=\n"

    .line 200
    .line 201
    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    sget-boolean v0, Lorg/bitspark/android/utils/m;->b:Z

    .line 206
    .line 207
    invoke-static {v5, p1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    :cond_1
    :goto_0
    return-void
.end method
