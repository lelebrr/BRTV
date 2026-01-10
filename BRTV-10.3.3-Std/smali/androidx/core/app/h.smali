.class public final Landroidx/core/app/h;
.super Landroid/os/AsyncTask;
.source "MyApplication"


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/core/app/JobIntentService;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/core/app/h;->a:I

    .line 1
    iput-object p1, p0, Landroidx/core/app/h;->b:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public constructor <init>(Lfa/x0;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/core/app/h;->a:I

    .line 2
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/core/app/h;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    iget v2, p0, Landroidx/core/app/h;->a:I

    .line 4
    .line 5
    packed-switch v2, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, [Ljava/lang/String;

    .line 9
    .line 10
    aget-object p1, p1, v1

    .line 11
    .line 12
    :try_start_0
    const-string v2, "Y2bLYPrCMYRQZe5H89Mrj0c=\n"

    .line 13
    .line 14
    const-string v3, "NQmvI5KjX+o=\n"

    .line 15
    .line 16
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    const-string v2, "QPj3J/yQfg5C9sAAtYdlF3jV0gj+hHgxY/nXQ6XK\n"

    .line 20
    .line 21
    const-string v3, "Fpeza5XjCl4=\n"

    .line 22
    .line 23
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    new-instance v2, Lcom/alibaba/fastjson/JSONReader;

    .line 27
    .line 28
    new-instance v3, Ljava/io/StringReader;

    .line 29
    .line 30
    invoke-direct {v3, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONReader;-><init>(Ljava/io/Reader;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONReader;->startArray()V

    .line 37
    .line 38
    .line 39
    :goto_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONReader;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_0

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_0
    const-class p1, Lorg/bitspark/android/beans/ChannelBean;

    .line 53
    .line 54
    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson/JSONReader;->readObject(Ljava/lang/Class;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Lorg/bitspark/android/beans/ChannelBean;

    .line 59
    .line 60
    const/4 v3, 0x1

    .line 61
    new-array v3, v3, [Lorg/bitspark/android/beans/ChannelBean;

    .line 62
    .line 63
    aput-object p1, v3, v1

    .line 64
    .line 65
    invoke-virtual {p0, v3}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catch_0
    move-exception p1

    .line 70
    goto :goto_2

    .line 71
    :cond_1
    :goto_1
    const-string p1, "OZ3DeJPP3L0KnuZfmt7Gth0=\n"

    .line 72
    .line 73
    const-string v1, "b/KnO/uustM=\n"

    .line 74
    .line 75
    invoke-static {p1, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    const-string p1, "3PteDy/ZZY3e9WkoZs5+lOTWeyAtzWOy//p+a3eDMQ==\n"

    .line 79
    .line 80
    const-string v1, "ipQaQ0aqEd0=\n"

    .line 81
    .line 82
    invoke-static {p1, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    .line 85
    goto :goto_3

    .line 86
    :goto_2
    const-string v1, "PYEVezZjHOkOgjBcP3IG4hk=\n"

    .line 87
    .line 88
    const-string v2, "a+5xOF4Ccoc=\n"

    .line 89
    .line 90
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    sget-boolean v2, Lorg/bitspark/android/utils/m;->b:Z

    .line 99
    .line 100
    invoke-static {v1, p1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    :goto_3
    return-object v0

    .line 104
    :pswitch_0
    check-cast p1, [Ljava/lang/Void;

    .line 105
    .line 106
    :goto_4
    iget-object p1, p0, Landroidx/core/app/h;->b:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast p1, Landroidx/core/app/JobIntentService;

    .line 109
    .line 110
    iget-object v2, p1, Landroidx/core/app/JobIntentService;->a:Landroidx/core/app/m;

    .line 111
    .line 112
    if-eqz v2, :cond_2

    .line 113
    .line 114
    invoke-virtual {v2}, Landroidx/core/app/m;->a()Landroidx/core/app/l;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    goto :goto_5

    .line 119
    :cond_2
    iget-object v2, p1, Landroidx/core/app/JobIntentService;->e:Ljava/util/ArrayList;

    .line 120
    .line 121
    monitor-enter v2

    .line 122
    :try_start_1
    iget-object v3, p1, Landroidx/core/app/JobIntentService;->e:Ljava/util/ArrayList;

    .line 123
    .line 124
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    if-lez v3, :cond_3

    .line 129
    .line 130
    iget-object p1, p1, Landroidx/core/app/JobIntentService;->e:Ljava/util/ArrayList;

    .line 131
    .line 132
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    check-cast p1, Landroidx/core/app/k;

    .line 137
    .line 138
    monitor-exit v2

    .line 139
    goto :goto_5

    .line 140
    :catchall_0
    move-exception p1

    .line 141
    goto :goto_6

    .line 142
    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    move-object p1, v0

    .line 144
    :goto_5
    if-eqz p1, :cond_4

    .line 145
    .line 146
    iget-object v2, p0, Landroidx/core/app/h;->b:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast v2, Landroidx/core/app/JobIntentService;

    .line 149
    .line 150
    invoke-interface {p1}, Landroidx/core/app/k;->getIntent()Landroid/content/Intent;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2}, Landroidx/core/app/JobIntentService;->b()V

    .line 154
    .line 155
    .line 156
    invoke-interface {p1}, Landroidx/core/app/k;->a()V

    .line 157
    .line 158
    .line 159
    goto :goto_4

    .line 160
    :cond_4
    return-object v0

    .line 161
    :goto_6
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 162
    throw p1

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCancelled()V
    .locals 2

    iget v0, p0, Landroidx/core/app/h;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    return-void

    .line 3
    :pswitch_0
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 4
    const-string v0, "MYjTtsZwckACi/aRz2FoSxU=\n"

    const-string v1, "Z+e39a4RHC4=\n"

    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "du0kHaviQLB04xM64vJVjkPnDHnr\n"

    const-string v1, "IIJgUcKRNOA=\n"

    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCancelled(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Landroidx/core/app/h;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    return-void

    .line 1
    :pswitch_0
    check-cast p1, Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Landroidx/core/app/h;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/core/app/JobIntentService;

    invoke-virtual {p1}, Landroidx/core/app/JobIntentService;->c()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/core/app/h;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/util/List;

    .line 7
    .line 8
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "RvWs2OhK18B19on/4VvNy2I=\n"

    .line 12
    .line 13
    const-string v0, "EJrIm4Arua4=\n"

    .line 14
    .line 15
    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    const-string p1, "VipA1TQlpexUJHfyfTm/7G82cNwlM7LJdCAssHB7/JEtfw==\n"

    .line 19
    .line 20
    const-string v0, "AEUEmV1W0bw=\n"

    .line 21
    .line 22
    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Landroidx/core/app/h;->b:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p1, Lfa/x0;

    .line 28
    .line 29
    iget v0, p1, Lfa/x0;->l:I

    .line 30
    .line 31
    const/16 v1, -0xa

    .line 32
    .line 33
    if-eq v0, v1, :cond_0

    .line 34
    .line 35
    if-ltz v0, :cond_1

    .line 36
    .line 37
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    iget-object v1, p1, Lfa/x0;->j:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 45
    .line 46
    .line 47
    sget-object v1, Lka/m0;->H0:Lc7/o;

    .line 48
    .line 49
    iget p1, p1, Lfa/x0;->l:I

    .line 50
    .line 51
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iget-object v1, v1, Lc7/o;->a:Lc7/b0;

    .line 56
    .line 57
    invoke-virtual {v1, p1, v0}, Lc7/b0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    :cond_1
    return-void

    .line 61
    :pswitch_0
    check-cast p1, Ljava/lang/Void;

    .line 62
    .line 63
    iget-object p1, p0, Landroidx/core/app/h;->b:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast p1, Landroidx/core/app/JobIntentService;

    .line 66
    .line 67
    invoke-virtual {p1}, Landroidx/core/app/JobIntentService;->c()V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onProgressUpdate([Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/core/app/h;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    check-cast p1, [Lorg/bitspark/android/beans/ChannelBean;

    .line 11
    .line 12
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroidx/core/app/h;->b:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lfa/x0;

    .line 18
    .line 19
    iget-object v1, v0, Lfa/x0;->j:Ljava/util/ArrayList;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    aget-object p1, p1, v2

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    iget-object p1, v0, Lfa/o;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 28
    .line 29
    new-instance v0, La/f;

    .line 30
    .line 31
    const/16 v1, 0x10

    .line 32
    .line 33
    invoke-direct {v0, v1, p0}, La/f;-><init>(ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
