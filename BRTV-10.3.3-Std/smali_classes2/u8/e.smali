.class public abstract Lu8/e;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field public static final a:Lq8/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "Scheduler Supplier result can\'t be null"

    .line 2
    .line 3
    :try_start_0
    sget-object v1, Lu8/d;->a:Lq8/p;

    .line 4
    .line 5
    invoke-static {v1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 6
    .line 7
    .line 8
    :try_start_1
    sget-object v1, Lu8/a;->a:Lq8/d;

    .line 9
    .line 10
    invoke-static {v1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 11
    .line 12
    .line 13
    :try_start_2
    sget-object v1, Lu8/b;->a:Lq8/h;

    .line 14
    .line 15
    invoke-static {v1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 16
    .line 17
    .line 18
    sput-object v1, Lu8/e;->a:Lq8/h;

    .line 19
    .line 20
    sget v1, Lq8/q;->a:I

    .line 21
    .line 22
    :try_start_3
    sget-object v1, Lu8/c;->a:Lq8/i;

    .line 23
    .line 24
    invoke-static {v1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    invoke-static {v0}, Lr8/a;->b(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    throw v0

    .line 34
    :catchall_1
    move-exception v0

    .line 35
    invoke-static {v0}, Lr8/a;->b(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    throw v0

    .line 40
    :catchall_2
    move-exception v0

    .line 41
    invoke-static {v0}, Lr8/a;->b(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    throw v0

    .line 46
    :catchall_3
    move-exception v0

    .line 47
    invoke-static {v0}, Lr8/a;->b(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    throw v0
.end method
