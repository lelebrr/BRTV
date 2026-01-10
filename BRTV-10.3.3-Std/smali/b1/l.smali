.class public final Lb1/l;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lb1/l;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final a()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget v2, p0, Lb1/l;->a:I

    .line 4
    .line 5
    packed-switch v2, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sput-boolean v1, Lorg/bitspark/android/utils/m;->b:Z

    .line 9
    .line 10
    return-void

    .line 11
    :pswitch_0
    sput-boolean v1, Lorg/bitspark/android/utils/m;->b:Z

    .line 12
    .line 13
    :pswitch_1
    return-void

    .line 14
    :pswitch_2
    const-string v0, "unTEMwej8zmYS+Q3\n"

    .line 15
    .line 16
    const-string v1, "7iKHUnXwlks=\n"

    .line 17
    .line 18
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "6lzMMXPFEd7bCNk1ZIQPl8tdw2NrihLH\n"

    .line 23
    .line 24
    const-string v2, "uSitQwflfbc=\n"

    .line 25
    .line 26
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    sget-boolean v2, Lorg/bitspark/android/utils/m;->b:Z

    .line 31
    .line 32
    invoke-static {v0, v1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lio/binstream/libtvcar/Libtvcar;->run()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_3
    invoke-static {}, Lra/f;->b()Lra/f;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lra/f;->c()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_0

    .line 48
    .line 49
    iget v1, v0, Lra/f;->f:I

    .line 50
    .line 51
    iget-object v2, v0, Lra/f;->e:Lorg/bitspark/android/beans/ChannelBean;

    .line 52
    .line 53
    invoke-virtual {v2}, Lorg/bitspark/android/beans/ChannelBean;->getSources()Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-ge v1, v2, :cond_0

    .line 62
    .line 63
    iget-object v1, v0, Lra/f;->e:Lorg/bitspark/android/beans/ChannelBean;

    .line 64
    .line 65
    invoke-virtual {v1}, Lorg/bitspark/android/beans/ChannelBean;->getSources()Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    iget v2, v0, Lra/f;->f:I

    .line 70
    .line 71
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Lorg/bitspark/android/beans/ChannelBean$SourcesBean;

    .line 76
    .line 77
    invoke-virtual {v1}, Lorg/bitspark/android/beans/ChannelBean$SourcesBean;->getSubTitle()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    iget-object v2, v0, Lra/f;->c:Ljava/util/HashMap;

    .line 82
    .line 83
    iget-object v0, v0, Lra/f;->e:Lorg/bitspark/android/beans/ChannelBean;

    .line 84
    .line 85
    invoke-virtual {v0}, Lorg/bitspark/android/beans/ChannelBean;->getChid()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    :cond_0
    return-void

    .line 97
    :pswitch_4
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v0, v1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->unBlockSigquit(Z)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :pswitch_5
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v1, v0}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->unBlockSigquit(Z)V

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :pswitch_6
    :try_start_0
    const-string v2, "EmojiCompat.EmojiCompatInitializer.run"

    .line 114
    .line 115
    sget-object v3, Lj0/n;->b:Ljava/lang/reflect/Method;

    .line 116
    .line 117
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    sget-object v2, Lb1/i;->j:Lb1/i;

    .line 121
    .line 122
    if-eqz v2, :cond_1

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_1
    const/4 v0, 0x0

    .line 126
    :goto_0
    if-eqz v0, :cond_2

    .line 127
    .line 128
    invoke-static {}, Lb1/i;->a()Lb1/i;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {v0}, Lb1/i;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :catchall_0
    move-exception v0

    .line 137
    goto :goto_2

    .line 138
    :cond_2
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    :goto_2
    sget-object v1, Lj0/n;->b:Ljava/lang/reflect/Method;

    .line 143
    .line 144
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 145
    .line 146
    .line 147
    throw v0

    .line 148
    nop

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lb1/l;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_0
    const-string v0, "EmptyRunnable"

    .line 12
    .line 13
    return-object v0

    .line 14
    nop

    .line 15
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method
