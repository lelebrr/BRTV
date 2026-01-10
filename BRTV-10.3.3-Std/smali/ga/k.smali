.class public final Lga/k;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field public static final a:Ljava/lang/String;

.field public static b:Lorg/bitspark/android/beans/UpdateInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "VFpvM+NNam8=\n"

    .line 2
    .line 3
    const-string v1, "Fgk6Q4csHgo=\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lga/k;->a:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    sget-object v1, Lga/l;->e:Lga/l;

    .line 3
    .line 4
    invoke-static {v1}, Lga/m;->g(Lga/l;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/lzy/okgo/OkGo;->post(Ljava/lang/String;)Lcom/lzy/okgo/request/PostRequest;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "S0eTwzM+tOFwQA==\n"

    .line 20
    .line 21
    const-string v3, "HjT2sR5/04Q=\n"

    .line 22
    .line 23
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Lcom/lzy/okgo/request/base/Request;->removeHeader(Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/lzy/okgo/request/PostRequest;

    .line 32
    .line 33
    const-string v2, "fU1hSBgSQpBGSg==\n"

    .line 34
    .line 35
    const-string v3, "KD4EOjVTJfU=\n"

    .line 36
    .line 37
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    sget-object v3, Lea/a;->m:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v1, v2, v3}, Lcom/lzy/okgo/request/base/Request;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lcom/lzy/okgo/request/PostRequest;

    .line 48
    .line 49
    invoke-virtual {v1, p0}, Lcom/lzy/okgo/request/base/Request;->tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Lcom/lzy/okgo/request/PostRequest;

    .line 54
    .line 55
    sget-object v2, Lcom/lzy/okgo/cache/CacheMode;->NO_CACHE:Lcom/lzy/okgo/cache/CacheMode;

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Lcom/lzy/okgo/request/base/Request;->cacheMode(Lcom/lzy/okgo/cache/CacheMode;)Lcom/lzy/okgo/request/base/Request;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Lcom/lzy/okgo/request/PostRequest;

    .line 62
    .line 63
    const-string v2, "dvHf5K0Edw==\n"

    .line 64
    .line 65
    const-string v3, "BpC8j8xjElA=\n"

    .line 66
    .line 67
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    sget-object v3, Lea/a;->b:Ljava/lang/String;

    .line 72
    .line 73
    new-array v4, v0, [Z

    .line 74
    .line 75
    invoke-virtual {v1, v2, v3, v4}, Lcom/lzy/okgo/request/base/Request;->params(Ljava/lang/String;Ljava/lang/String;[Z)Lcom/lzy/okgo/request/base/Request;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Lcom/lzy/okgo/request/PostRequest;

    .line 80
    .line 81
    const-string v2, "1tKLlwH0og==\n"

    .line 82
    .line 83
    const-string v3, "tbrq+W+Rzko=\n"

    .line 84
    .line 85
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    sget-object v3, Lea/h;->g:Ljava/lang/String;

    .line 90
    .line 91
    new-array v4, v0, [Z

    .line 92
    .line 93
    invoke-virtual {v1, v2, v3, v4}, Lcom/lzy/okgo/request/base/Request;->params(Ljava/lang/String;Ljava/lang/String;[Z)Lcom/lzy/okgo/request/base/Request;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    check-cast v1, Lcom/lzy/okgo/request/PostRequest;

    .line 98
    .line 99
    const-string v2, "8UGwHQ==\n"

    .line 100
    .line 101
    const-string v3, "lzPfcND13SY=\n"

    .line 102
    .line 103
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    new-array v3, v0, [Z

    .line 108
    .line 109
    invoke-virtual {v1, v2, p1, v3}, Lcom/lzy/okgo/request/base/Request;->params(Ljava/lang/String;Ljava/lang/String;[Z)Lcom/lzy/okgo/request/base/Request;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    check-cast p1, Lcom/lzy/okgo/request/PostRequest;

    .line 114
    .line 115
    const-string v1, "OiaZz4xvgR4/Mw==\n"

    .line 116
    .line 117
    const-string v2, "W1bpuekd4nE=\n"

    .line 118
    .line 119
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    sget v2, Lea/a;->e:I

    .line 124
    .line 125
    new-array v3, v0, [Z

    .line 126
    .line 127
    invoke-virtual {p1, v1, v2, v3}, Lcom/lzy/okgo/request/base/Request;->params(Ljava/lang/String;I[Z)Lcom/lzy/okgo/request/base/Request;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    check-cast p1, Lcom/lzy/okgo/request/PostRequest;

    .line 132
    .line 133
    const-string v1, "MrsVr7exItg+rg==\n"

    .line 134
    .line 135
    const-string v2, "U8tl2dLDTLk=\n"

    .line 136
    .line 137
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    sget-object v2, Lea/a;->g:Ljava/lang/String;

    .line 142
    .line 143
    new-array v3, v0, [Z

    .line 144
    .line 145
    invoke-virtual {p1, v1, v2, v3}, Lcom/lzy/okgo/request/base/Request;->params(Ljava/lang/String;Ljava/lang/String;[Z)Lcom/lzy/okgo/request/base/Request;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    check-cast p1, Lcom/lzy/okgo/request/PostRequest;

    .line 150
    .line 151
    const-string v1, "/fq6ZpvQgT/q5g==\n"

    .line 152
    .line 153
    const-string v2, "joPJEP6i4lA=\n"

    .line 154
    .line 155
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    sget v2, Lea/a;->d:I

    .line 160
    .line 161
    new-array v3, v0, [Z

    .line 162
    .line 163
    invoke-virtual {p1, v1, v2, v3}, Lcom/lzy/okgo/request/base/Request;->params(Ljava/lang/String;I[Z)Lcom/lzy/okgo/request/base/Request;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    check-cast p1, Lcom/lzy/okgo/request/PostRequest;

    .line 168
    .line 169
    const-string v1, "z/6y3p6ACRbR4g==\n"

    .line 170
    .line 171
    const-string v2, "vIfBqPvyZ3c=\n"

    .line 172
    .line 173
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    sget-object v2, Lea/a;->c:Ljava/lang/String;

    .line 178
    .line 179
    new-array v3, v0, [Z

    .line 180
    .line 181
    invoke-virtual {p1, v1, v2, v3}, Lcom/lzy/okgo/request/base/Request;->params(Ljava/lang/String;Ljava/lang/String;[Z)Lcom/lzy/okgo/request/base/Request;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    check-cast p1, Lcom/lzy/okgo/request/PostRequest;

    .line 186
    .line 187
    new-instance v1, Lga/j;

    .line 188
    .line 189
    invoke-direct {v1, v0}, Lga/j;-><init>(I)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1, v1}, Lcom/lzy/okgo/request/base/Request;->execute(Lcom/lzy/okgo/callback/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .line 194
    .line 195
    goto :goto_0

    .line 196
    :catch_0
    const-string p1, "4k3rEHucERjxTb9RfoVVHPda8EIv\n"

    .line 197
    .line 198
    const-string v0, "hSifMA7sdXk=\n"

    .line 199
    .line 200
    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    sget-boolean v0, Lorg/bitspark/android/utils/m;->b:Z

    .line 205
    .line 206
    sget-object v0, Lga/k;->a:Ljava/lang/String;

    .line 207
    .line 208
    invoke-static {v0, p1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    sget-object p1, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 212
    .line 213
    const/16 v0, 0x3d

    .line 214
    .line 215
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 216
    .line 217
    .line 218
    :goto_0
    return-void
.end method
