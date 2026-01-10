.class public final Lga/a;
.super Lcom/lzy/okgo/callback/StringCallback;
.source "MyApplication"


# instance fields
.field public final synthetic a:Lorg/bitspark/android/Spark;

.field public final synthetic b:Lga/b;


# direct methods
.method public constructor <init>(Lga/b;Lorg/bitspark/android/Spark;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lga/a;->b:Lga/b;

    .line 2
    .line 3
    iput-object p2, p0, Lga/a;->a:Lorg/bitspark/android/Spark;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/lzy/okgo/callback/StringCallback;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onError(Lcom/lzy/okgo/model/Response;)V
    .locals 1

    .line 1
    sget-object p1, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 2
    .line 3
    const/16 v0, 0x28b

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onSuccess(Lcom/lzy/okgo/model/Response;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lga/a;->b:Lga/b;

    .line 2
    .line 3
    const/16 v1, 0x32

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p1}, Lcom/lzy/okgo/model/Response;->body()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ljava/lang/String;

    .line 10
    .line 11
    const-class v2, Lorg/bitspark/android/beans/MessageInfo;

    .line 12
    .line 13
    invoke-static {p1, v2}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-lez v2, :cond_2

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    const/4 v4, 0x0

    .line 25
    :goto_0
    if-ge v4, v2, :cond_1

    .line 26
    .line 27
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    check-cast v5, Lorg/bitspark/android/beans/MessageInfo;

    .line 32
    .line 33
    if-nez v3, :cond_0

    .line 34
    .line 35
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Lorg/bitspark/android/beans/MessageInfo;

    .line 40
    .line 41
    iget-object v3, v3, Lorg/bitspark/android/beans/MessageInfo;->content:Lorg/bitspark/android/beans/MessageInfo$ContentBean;

    .line 42
    .line 43
    iget-object v3, v3, Lorg/bitspark/android/beans/MessageInfo$ContentBean;->init:Ljava/lang/String;

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    goto :goto_4

    .line 48
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v3, "\n"

    .line 57
    .line 58
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    check-cast v3, Lorg/bitspark/android/beans/MessageInfo;

    .line 66
    .line 67
    iget-object v3, v3, Lorg/bitspark/android/beans/MessageInfo;->content:Lorg/bitspark/android/beans/MessageInfo$ContentBean;

    .line 68
    .line 69
    iget-object v3, v3, Lorg/bitspark/android/beans/MessageInfo$ContentBean;->init:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    if-eqz v3, :cond_2

    .line 82
    .line 83
    iget-object p1, v0, Lga/b;->a:Landroid/widget/PopupWindow;

    .line 84
    .line 85
    if-nez p1, :cond_2

    .line 86
    .line 87
    const-string p1, "MjtTqKE=\n"

    .line 88
    .line 89
    const-string v2, "cGge28ZQuOg=\n"

    .line 90
    .line 91
    invoke-static {p1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    sget-boolean v2, Lorg/bitspark/android/utils/m;->b:Z

    .line 96
    .line 97
    invoke-static {p1, v3}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lga/a;->a:Lorg/bitspark/android/Spark;

    .line 101
    .line 102
    invoke-static {v0, v3, p1}, Lga/b;->a(Lga/b;Ljava/lang/String;Lorg/bitspark/android/Spark;)V

    .line 103
    .line 104
    .line 105
    new-instance p1, Landroid/os/Handler;

    .line 106
    .line 107
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 108
    .line 109
    .line 110
    new-instance v0, La/f;

    .line 111
    .line 112
    const/16 v2, 0x12

    .line 113
    .line 114
    invoke-direct {v0, v2, p0}, La/f;-><init>(ILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    const-wide/16 v2, 0x4e20

    .line 118
    .line 119
    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    .line 121
    .line 122
    :cond_2
    :goto_2
    sget-object p1, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 123
    .line 124
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 125
    .line 126
    .line 127
    goto :goto_3

    .line 128
    :catch_0
    :try_start_1
    const-string p1, "h88a1TM=\n"

    .line 129
    .line 130
    const-string v0, "xZxXplRTQIM=\n"

    .line 131
    .line 132
    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    const-string v0, "X/SGyB+ZxzZItZDaDtiKIF3nm8lb\n"

    .line 137
    .line 138
    const-string v2, "L5X0u3q5qkU=\n"

    .line 139
    .line 140
    invoke-static {v0, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    sget-boolean v2, Lorg/bitspark/android/utils/m;->b:Z

    .line 145
    .line 146
    invoke-static {p1, v0}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :goto_3
    return-void

    .line 151
    :goto_4
    sget-object v0, Lorg/bitspark/android/Spark;->X1:Lea/u;

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 154
    .line 155
    .line 156
    throw p1
.end method
