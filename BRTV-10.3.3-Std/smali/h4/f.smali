.class public final synthetic Lh4/f;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lh4/i;

.field public final synthetic b:La4/j;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lh4/i;La4/j;ILjava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lh4/f;->a:Lh4/i;

    .line 5
    .line 6
    iput-object p2, p0, Lh4/f;->b:La4/j;

    .line 7
    .line 8
    iput p3, p0, Lh4/f;->c:I

    .line 9
    .line 10
    iput-object p4, p0, Lh4/f;->d:Ljava/lang/Runnable;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lh4/f;->b:La4/j;

    .line 2
    .line 3
    iget v1, p0, Lh4/f;->c:I

    .line 4
    .line 5
    iget-object v2, p0, Lh4/f;->d:Ljava/lang/Runnable;

    .line 6
    .line 7
    iget-object v3, p0, Lh4/f;->a:Lh4/i;

    .line 8
    .line 9
    iget-object v4, v3, Lh4/i;->f:Lj4/c;

    .line 10
    .line 11
    :try_start_0
    iget-object v5, v3, Lh4/i;->c:Li4/d;

    .line 12
    .line 13
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    new-instance v6, Landroidx/media3/common/x;

    .line 17
    .line 18
    const/16 v7, 0xc

    .line 19
    .line 20
    invoke-direct {v6, v7, v5}, Landroidx/media3/common/x;-><init>(ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    move-object v5, v4

    .line 24
    check-cast v5, Li4/g;

    .line 25
    .line 26
    invoke-virtual {v5, v6}, Li4/g;->e(Lj4/b;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    iget-object v5, v3, Lh4/i;->a:Landroid/content/Context;

    .line 30
    .line 31
    const-string v6, "connectivity"

    .line 32
    .line 33
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    check-cast v5, Landroid/net/ConnectivityManager;

    .line 38
    .line 39
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    if-eqz v5, :cond_0

    .line 44
    .line 45
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-eqz v5, :cond_0

    .line 50
    .line 51
    invoke-virtual {v3, v0, v1}, Lh4/i;->a(La4/j;I)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    .line 56
    goto :goto_2

    .line 57
    :cond_0
    new-instance v5, Landroidx/media3/common/n;

    .line 58
    .line 59
    const/4 v6, 0x2

    .line 60
    invoke-direct {v5, v3, v0, v1, v6}, Landroidx/media3/common/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 61
    .line 62
    .line 63
    check-cast v4, Li4/g;

    .line 64
    .line 65
    invoke-virtual {v4, v5}, Li4/g;->e(Lj4/b;)Ljava/lang/Object;
    :try_end_0
    .catch Lj4/a; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    :goto_0
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :catch_0
    :try_start_1
    iget-object v3, v3, Lh4/i;->d:Lh4/d;

    .line 73
    .line 74
    add-int/lit8 v1, v1, 0x1

    .line 75
    .line 76
    const/4 v4, 0x0

    .line 77
    invoke-virtual {v3, v0, v1, v4}, Lh4/d;->a(La4/j;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :goto_1
    return-void

    .line 82
    :goto_2
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 83
    .line 84
    .line 85
    throw v0
.end method
