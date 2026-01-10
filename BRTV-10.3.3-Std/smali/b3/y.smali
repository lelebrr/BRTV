.class public final Lb3/y;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public final a:Lb3/b0;

.field public final b:Lb3/x;


# direct methods
.method public constructor <init>(Ls/g;)V
    .locals 2

    .line 1
    new-instance v0, Lb3/b0;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lb3/b0;-><init>(Ls/g;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance p1, Lb3/x;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {p1, v1}, Lb3/x;-><init>(I)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lb3/y;->b:Lb3/x;

    .line 16
    .line 17
    iput-object v0, p0, Lb3/y;->a:Lb3/b0;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lb3/y;->a:Lb3/b0;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Lb3/b0;->d(Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return-object p1

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    throw p1
.end method
