.class public Lcom/bumptech/glide/integration/okhttp3/OkHttpGlideModule;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ll3/a;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/j;)V
    .locals 3

    .line 1
    new-instance v0, Lu2/b;

    .line 2
    .line 3
    sget-object v1, Lu2/b;->b:Lokhttp3/OkHttpClient;

    .line 4
    .line 5
    if-nez v1, :cond_1

    .line 6
    .line 7
    const-class v1, Lu2/b;

    .line 8
    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    sget-object v2, Lu2/b;->b:Lokhttp3/OkHttpClient;

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    new-instance v2, Lokhttp3/OkHttpClient;

    .line 15
    .line 16
    invoke-direct {v2}, Lokhttp3/OkHttpClient;-><init>()V

    .line 17
    .line 18
    .line 19
    sput-object v2, Lu2/b;->b:Lokhttp3/OkHttpClient;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    monitor-exit v1

    .line 25
    goto :goto_2

    .line 26
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p1

    .line 28
    :cond_1
    :goto_2
    sget-object v1, Lu2/b;->b:Lokhttp3/OkHttpClient;

    .line 29
    .line 30
    invoke-direct {v0, v1}, Lu2/b;-><init>(Lokhttp3/OkHttpClient;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/j;->l(Lu2/b;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final b(Landroid/content/Context;Lcom/bumptech/glide/e;)V
    .locals 0

    .line 1
    return-void
.end method
