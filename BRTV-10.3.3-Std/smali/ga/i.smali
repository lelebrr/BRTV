.class public final Lga/i;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static e:Lorg/bitspark/android/utils/LimitQueue;

.field public static f:Lorg/bitspark/android/utils/LimitQueue;

.field public static g:Lorg/bitspark/android/utils/LimitQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "nXzD59UCfAim\n"

    .line 2
    .line 3
    const-string v1, "3y+LjqZ2E3o=\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lga/i;->a:Ljava/lang/String;

    .line 10
    .line 11
    const-string v0, "vcRBelH6BhulwkVmUeRe\n"

    .line 12
    .line 13
    const-string v1, "0a03Hw6Sb2g=\n"

    .line 14
    .line 15
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lga/i;->b:Ljava/lang/String;

    .line 20
    .line 21
    const-string v0, "LKLZ0AxJ4xM1v8TQEhE=\n"

    .line 22
    .line 23
    const-string v1, "Ws29j2QgkGc=\n"

    .line 24
    .line 25
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lga/i;->c:Ljava/lang/String;

    .line 30
    .line 31
    const-string v0, "b8ERw7keiI5m0h7Dp0Y=\n"

    .line 32
    .line 33
    const-string v1, "CaBnnNF3+/o=\n"

    .line 34
    .line 35
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lga/i;->d:Ljava/lang/String;

    .line 40
    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lorg/bitspark/android/Spark;->d2:Lda/c;

    .line 5
    .line 6
    const-string v1, "2Km3/xi3gdXAr7PjGKnZ\n"

    .line 7
    .line 8
    const-string v2, "tMDBmkff6KY=\n"

    .line 9
    .line 10
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lda/c;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    check-cast v0, Lorg/bitspark/android/utils/LimitQueue;

    .line 21
    .line 22
    sput-object v0, Lga/i;->e:Lorg/bitspark/android/utils/LimitQueue;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v0, Lorg/bitspark/android/utils/LimitQueue;

    .line 26
    .line 27
    const/16 v1, 0x14

    .line 28
    .line 29
    invoke-direct {v0, v1}, Lorg/bitspark/android/utils/LimitQueue;-><init>(I)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lga/i;->e:Lorg/bitspark/android/utils/LimitQueue;

    .line 33
    .line 34
    :goto_0
    sget-object v0, Lorg/bitspark/android/Spark;->d2:Lda/c;

    .line 35
    .line 36
    const-string v1, "PQKUw6bM0rwkH4nDuJQ=\n"

    .line 37
    .line 38
    const-string v2, "S23wnM6locg=\n"

    .line 39
    .line 40
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Lda/c;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    check-cast v0, Lorg/bitspark/android/utils/LimitQueue;

    .line 51
    .line 52
    sput-object v0, Lga/i;->f:Lorg/bitspark/android/utils/LimitQueue;

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    new-instance v0, Lorg/bitspark/android/utils/LimitQueue;

    .line 56
    .line 57
    const/16 v1, 0x32

    .line 58
    .line 59
    invoke-direct {v0, v1}, Lorg/bitspark/android/utils/LimitQueue;-><init>(I)V

    .line 60
    .line 61
    .line 62
    sput-object v0, Lga/i;->f:Lorg/bitspark/android/utils/LimitQueue;

    .line 63
    .line 64
    :goto_1
    sget-object v0, Lorg/bitspark/android/Spark;->d2:Lda/c;

    .line 65
    .line 66
    const-string v1, "Bi+qiRIK+wgPPKWJDFI=\n"

    .line 67
    .line 68
    const-string v2, "YE7c1npjiHw=\n"

    .line 69
    .line 70
    invoke-static {v1, v2}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Lda/c;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    if-eqz v0, :cond_2

    .line 79
    .line 80
    check-cast v0, Lorg/bitspark/android/utils/LimitQueue;

    .line 81
    .line 82
    sput-object v0, Lga/i;->g:Lorg/bitspark/android/utils/LimitQueue;

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_2
    new-instance v0, Lorg/bitspark/android/utils/LimitQueue;

    .line 86
    .line 87
    const/16 v1, 0x64

    .line 88
    .line 89
    invoke-direct {v0, v1}, Lorg/bitspark/android/utils/LimitQueue;-><init>(I)V

    .line 90
    .line 91
    .line 92
    sput-object v0, Lga/i;->g:Lorg/bitspark/android/utils/LimitQueue;

    .line 93
    .line 94
    :goto_2
    return-void
.end method

.method public static a(ILjava/lang/String;)Lorg/bitspark/android/beans/HistoryBean;
    .locals 4

    .line 1
    const-string v0, "I69yYrY6P80NuXJBpTBr\n"

    .line 2
    .line 3
    const-string v1, "ZMoGLtdJS4U=\n"

    .line 4
    .line 5
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    sget-object v0, Lga/i;->f:Lorg/bitspark/android/utils/LimitQueue;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_0
    invoke-virtual {v0}, Lorg/bitspark/android/utils/LimitQueue;->toArray()[Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Lga/i;->c([Ljava/lang/Object;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_2

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lorg/bitspark/android/beans/HistoryBean;

    .line 37
    .line 38
    iget v3, v2, Lorg/bitspark/android/beans/HistoryBean;->chid:I

    .line 39
    .line 40
    if-ne v3, p0, :cond_1

    .line 41
    .line 42
    iget-object v3, v2, Lorg/bitspark/android/beans/HistoryBean;->subId:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    new-instance p0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string p1, "lh0khFQj/fi4CySnRympwrQMJbpbcA==\n"

    .line 56
    .line 57
    const-string v0, "0XhQyDVQibA=\n"

    .line 58
    .line 59
    invoke-static {p1, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget-wide v0, v2, Lorg/bitspark/android/beans/HistoryBean;->lastPosition:J

    .line 67
    .line 68
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    sget-boolean p1, Lorg/bitspark/android/utils/m;->b:Z

    .line 76
    .line 77
    sget-object p1, Lga/i;->a:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {p1, p0}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    return-object v2

    .line 83
    :cond_2
    return-object v1
.end method

.method public static c([Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method


# virtual methods
.method public final declared-synchronized b()Ljava/util/List;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lga/i;->g:Lorg/bitspark/android/utils/LimitQueue;

    .line 3
    .line 4
    invoke-virtual {v0}, Lorg/bitspark/android/utils/LimitQueue;->toArray()[Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Lga/i;->c([Ljava/lang/Object;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    .line 13
    return-object v0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    throw v0
.end method

.method public final declared-synchronized d(Lorg/bitspark/android/beans/ChannelBean;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lga/i;->g:Lorg/bitspark/android/utils/LimitQueue;

    .line 3
    .line 4
    invoke-virtual {v0}, Lorg/bitspark/android/utils/LimitQueue;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lorg/bitspark/android/beans/ChannelBean;

    .line 20
    .line 21
    invoke-virtual {v2}, Lorg/bitspark/android/beans/ChannelBean;->getChid()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {p1}, Lorg/bitspark/android/beans/ChannelBean;->getChid()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-ne v2, v3, :cond_0

    .line 30
    .line 31
    sget-object v2, Lga/i;->g:Lorg/bitspark/android/utils/LimitQueue;

    .line 32
    .line 33
    invoke-virtual {v2, v1, p1}, Lorg/bitspark/android/utils/LimitQueue;->set(ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    goto :goto_2

    .line 39
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    sget-object p1, Lorg/bitspark/android/Spark;->d2:Lda/c;

    .line 43
    .line 44
    sget-object v0, Lga/i;->d:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Lda/c;->g(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    sget-object p1, Lorg/bitspark/android/Spark;->d2:Lda/c;

    .line 50
    .line 51
    sget-object v1, Lga/i;->g:Lorg/bitspark/android/utils/LimitQueue;

    .line 52
    .line 53
    const v2, 0x12cc0300

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0, v1, v2}, Lda/c;->d(Ljava/lang/String;Ljava/io/Serializable;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    .line 59
    monitor-exit p0

    .line 60
    return-void

    .line 61
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    throw p1
.end method
