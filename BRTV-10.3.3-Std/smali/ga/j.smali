.class public final Lga/j;
.super Lcom/lzy/okgo/callback/StringCallback;
.source "MyApplication"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lga/j;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/lzy/okgo/callback/StringCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final a(Lcom/lzy/okgo/model/Response;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final b(Lcom/lzy/okgo/model/Response;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final c(Lcom/lzy/okgo/model/Response;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final d(Lcom/lzy/okgo/model/Response;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public onError(Lcom/lzy/okgo/model/Response;)V
    .locals 1

    .line 1
    iget v0, p0, Lga/j;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    invoke-super {p0, p1}, Lcom/lzy/okgo/callback/AbsCallback;->onError(Lcom/lzy/okgo/model/Response;)V

    .line 7
    .line 8
    .line 9
    :pswitch_1
    return-void

    .line 10
    :pswitch_2
    sget-object p1, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 11
    .line 12
    const/16 v0, 0x3d

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final onSuccess(Lcom/lzy/okgo/model/Response;)V
    .locals 3

    .line 1
    iget v0, p0, Lga/j;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    return-void

    .line 7
    :pswitch_1
    invoke-virtual {p1}, Lcom/lzy/okgo/model/Response;->isSuccessful()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/lzy/okgo/model/Response;->body()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljava/lang/String;

    .line 18
    .line 19
    const-class v0, Lorg/bitspark/android/beans/RegisterInfo;

    .line 20
    .line 21
    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lorg/bitspark/android/beans/RegisterInfo;

    .line 26
    .line 27
    iget v0, p1, Lorg/bitspark/android/beans/RegisterInfo;->code:I

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    const/16 v1, -0x14

    .line 32
    .line 33
    if-ne v0, v1, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const-string p1, "oxfdMyW9713RF8goObumD4MXzigv6eZOhRfIew==\n"

    .line 37
    .line 38
    const-string v0, "8XK6WlbJii8=\n"

    .line 39
    .line 40
    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const/4 v0, 0x0

    .line 45
    invoke-static {v0, p1}, Lorg/bitspark/android/Spark;->m0(ILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    sget-object p1, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 49
    .line 50
    const/16 v0, 0xc

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    :goto_0
    sget-object v0, Lea/g;->e:Ljava/lang/String;

    .line 57
    .line 58
    iget-object p1, p1, Lorg/bitspark/android/beans/RegisterInfo;->user_name:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {v0, p1}, Lorg/bitspark/android/utils/m;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    sget-object p1, Lea/g;->f:Ljava/lang/String;

    .line 64
    .line 65
    const-string v0, "DHFPiNNQ\n"

    .line 66
    .line 67
    const-string v1, "PUB+ueJhuZc=\n"

    .line 68
    .line 69
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {p1, v0}, Lorg/bitspark/android/utils/m;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    sget-object p1, Lea/g;->b:Ljava/lang/String;

    .line 77
    .line 78
    const/4 v0, 0x2

    .line 79
    invoke-static {v0, p1}, Lorg/bitspark/android/utils/m;->m(ILjava/lang/String;)V

    .line 80
    .line 81
    .line 82
    sget-object p1, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 83
    .line 84
    const/16 v0, 0xb

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 87
    .line 88
    .line 89
    :cond_2
    :goto_1
    return-void

    .line 90
    :pswitch_2
    invoke-virtual {p1}, Lcom/lzy/okgo/model/Response;->isSuccessful()Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    const/16 v1, 0x3d

    .line 95
    .line 96
    if-eqz v0, :cond_3

    .line 97
    .line 98
    :try_start_0
    invoke-virtual {p1}, Lcom/lzy/okgo/model/Response;->body()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Ljava/lang/String;

    .line 103
    .line 104
    const-class v2, Lorg/bitspark/android/beans/UpdateInfo;

    .line 105
    .line 106
    invoke-static {v0, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    check-cast v0, Lorg/bitspark/android/beans/UpdateInfo;

    .line 111
    .line 112
    sput-object v0, Lga/k;->b:Lorg/bitspark/android/beans/UpdateInfo;

    .line 113
    .line 114
    sget-object v0, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 115
    .line 116
    const/16 v2, 0x3c

    .line 117
    .line 118
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 119
    .line 120
    .line 121
    const-string v0, "o8Ozy/GPoCA=\n"

    .line 122
    .line 123
    const-string v2, "4ZDmu5Xu1EU=\n"

    .line 124
    .line 125
    invoke-static {v0, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {p1}, Lcom/lzy/okgo/model/Response;->body()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    check-cast p1, Ljava/lang/String;

    .line 134
    .line 135
    sget-boolean v2, Lorg/bitspark/android/utils/m;->b:Z

    .line 136
    .line 137
    invoke-static {v0, p1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :catch_0
    const-string p1, "i7HcDiMmbrs=\n"

    .line 142
    .line 143
    const-string v0, "yeKJfkdHGt4=\n"

    .line 144
    .line 145
    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    const-string v0, "LXr5ydDCpLc5ev/flYawszw77sjHjaPm\n"

    .line 150
    .line 151
    const-string v2, "XRuLurXi0cc=\n"

    .line 152
    .line 153
    invoke-static {v0, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    sget-boolean v2, Lorg/bitspark/android/utils/m;->b:Z

    .line 158
    .line 159
    invoke-static {p1, v0}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    sget-object p1, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 163
    .line 164
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 165
    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_3
    sget-object p1, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 169
    .line 170
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 171
    .line 172
    .line 173
    :goto_2
    return-void

    .line 174
    nop

    .line 175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
