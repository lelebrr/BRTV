.class public final Le2/g;
.super Lc9/i;
.source "MyApplication"

# interfaces
.implements Li9/p;


# instance fields
.field public final synthetic b:Le2/h;


# direct methods
.method public constructor <init>(Le2/h;La9/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le2/g;->b:Le2/h;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lc9/i;-><init>(La9/d;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;La9/d;)La9/d;
    .locals 1

    .line 1
    new-instance p1, Le2/g;

    .line 2
    .line 3
    iget-object v0, p0, Le2/g;->b:Le2/h;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Le2/g;-><init>(Le2/h;La9/d;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lt9/s;

    .line 2
    .line 3
    check-cast p2, La9/d;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Le2/g;->create(Ljava/lang/Object;La9/d;)La9/d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Le2/g;

    .line 10
    .line 11
    sget-object p2, Lw8/l;->a:Lw8/l;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Le2/g;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Lo9/d;->I(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Le2/g;->b:Le2/h;

    .line 5
    .line 6
    monitor-enter p1

    .line 7
    :try_start_0
    iget-boolean v0, p1, Le2/h;->l:Z

    .line 8
    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    iget-boolean v0, p1, Le2/h;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_3

    .line 16
    :cond_0
    const/4 v0, 0x1

    .line 17
    :try_start_1
    invoke-virtual {p1}, Le2/h;->j()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    :try_start_2
    iput-boolean v0, p1, Le2/h;->n:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22
    .line 23
    :goto_0
    :try_start_3
    iget v1, p1, Le2/h;->i:I

    .line 24
    .line 25
    const/16 v2, 0x7d0

    .line 26
    .line 27
    if-lt v1, v2, :cond_1

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    const/4 v1, 0x0

    .line 32
    :goto_1
    if-eqz v1, :cond_2

    .line 33
    .line 34
    invoke-virtual {p1}, Le2/h;->l()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 35
    .line 36
    .line 37
    goto :goto_2

    .line 38
    :catch_1
    :try_start_4
    iput-boolean v0, p1, Le2/h;->o:Z

    .line 39
    .line 40
    invoke-static {}, Lokio/Okio;->blackhole()Lokio/Sink;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p1, Le2/h;->j:Lokio/BufferedSink;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 49
    .line 50
    :cond_2
    :goto_2
    monitor-exit p1

    .line 51
    sget-object p1, Lw8/l;->a:Lw8/l;

    .line 52
    .line 53
    return-object p1

    .line 54
    :catchall_0
    move-exception v0

    .line 55
    goto :goto_4

    .line 56
    :cond_3
    :goto_3
    :try_start_5
    sget-object v0, Lw8/l;->a:Lw8/l;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 57
    .line 58
    monitor-exit p1

    .line 59
    return-object v0

    .line 60
    :goto_4
    monitor-exit p1

    .line 61
    throw v0
.end method
