.class public final Ll1/b;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Ll1/b;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Ll1/b;->b:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Ll1/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ll1/b;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ls2/d;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Ll1/b;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v1, Ls2/d;

    .line 14
    .line 15
    iget-object v2, v1, Ls2/d;->i:Ljava/io/BufferedWriter;

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    invoke-virtual {v1}, Ls2/d;->n()V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Ll1/b;->b:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v1, Ls2/d;

    .line 29
    .line 30
    invoke-virtual {v1}, Ls2/d;->g()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    iget-object v1, p0, Ll1/b;->b:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v1, Ls2/d;

    .line 39
    .line 40
    invoke-virtual {v1}, Ls2/d;->l()V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Ll1/b;->b:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v1, Ls2/d;

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    iput v2, v1, Ls2/d;->k:I

    .line 49
    .line 50
    :cond_1
    monitor-exit v0

    .line 51
    :goto_0
    const/4 v0, 0x0

    .line 52
    return-object v0

    .line 53
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw v1

    .line 55
    :pswitch_0
    const-string v0, "google_sdk_flags"

    .line 56
    .line 57
    const/4 v1, 0x0

    .line 58
    iget-object v2, p0, Ll1/b;->b:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v2, Landroid/content/Context;

    .line 61
    .line 62
    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    return-object v0

    .line 67
    :pswitch_1
    iget-object v0, p0, Ll1/b;->b:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v0, Ll1/a;

    .line 70
    .line 71
    iget-object v1, v0, Ll1/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 72
    .line 73
    const/4 v2, 0x1

    .line 74
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 75
    .line 76
    .line 77
    const/16 v1, 0xa

    .line 78
    .line 79
    const/4 v3, 0x0

    .line 80
    :try_start_1
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 81
    .line 82
    .line 83
    const/4 v1, 0x0

    .line 84
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 85
    :catchall_1
    move-exception v1

    .line 86
    :try_start_2
    iget-object v4, v0, Ll1/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 87
    .line 88
    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 89
    .line 90
    .line 91
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 92
    :catchall_2
    move-exception v1

    .line 93
    invoke-virtual {v0, v3}, Ll1/a;->a(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    throw v1

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
