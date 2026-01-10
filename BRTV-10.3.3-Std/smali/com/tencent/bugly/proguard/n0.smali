.class public final Lcom/tencent/bugly/proguard/n0;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/tencent/bugly/proguard/r;


# direct methods
.method public synthetic constructor <init>(Lcom/tencent/bugly/proguard/r;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/tencent/bugly/proguard/n0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/tencent/bugly/proguard/n0;->b:Lcom/tencent/bugly/proguard/r;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/tencent/bugly/proguard/n0;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-object v2, p0, Lcom/tencent/bugly/proguard/n0;->b:Lcom/tencent/bugly/proguard/r;

    .line 11
    .line 12
    invoke-static {v2}, Lcom/tencent/bugly/proguard/r;->b(Lcom/tencent/bugly/proguard/r;)J

    .line 13
    .line 14
    .line 15
    move-result-wide v3

    .line 16
    cmp-long v5, v0, v3

    .line 17
    .line 18
    if-gez v5, :cond_0

    .line 19
    .line 20
    invoke-static {}, Lcom/tencent/bugly/proguard/ak;->a()Lcom/tencent/bugly/proguard/ak;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    new-instance v4, Lcom/tencent/bugly/proguard/n0;

    .line 25
    .line 26
    const/4 v5, 0x1

    .line 27
    invoke-direct {v4, v2, v5}, Lcom/tencent/bugly/proguard/n0;-><init>(Lcom/tencent/bugly/proguard/r;I)V

    .line 28
    .line 29
    .line 30
    invoke-static {v2}, Lcom/tencent/bugly/proguard/r;->b(Lcom/tencent/bugly/proguard/r;)J

    .line 31
    .line 32
    .line 33
    move-result-wide v5

    .line 34
    sub-long/2addr v5, v0

    .line 35
    const-wide/16 v0, 0x1388

    .line 36
    .line 37
    add-long/2addr v5, v0

    .line 38
    invoke-virtual {v3, v4, v5, v6}, Lcom/tencent/bugly/proguard/ak;->a(Ljava/lang/Runnable;J)Z

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v0, 0x3

    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-virtual {v2, v0, v1}, Lcom/tencent/bugly/proguard/r;->a(IZ)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/r;->a()V

    .line 48
    .line 49
    .line 50
    :goto_0
    return-void

    .line 51
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/n0;->b:Lcom/tencent/bugly/proguard/r;

    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/r;->a(Lcom/tencent/bugly/proguard/r;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :catchall_0
    move-exception v0

    .line 59
    invoke-static {v0}, Lcom/tencent/bugly/proguard/al;->a(Ljava/lang/Throwable;)Z

    .line 60
    .line 61
    .line 62
    :goto_1
    return-void

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
