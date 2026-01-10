.class public final Lcom/google/android/gms/internal/cast/s7;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field public static final c:Lcom/google/android/gms/internal/cast/s7;


# instance fields
.field public final a:Lcom/google/android/gms/internal/cast/l7;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/s7;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/s7;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/cast/s7;->c:Lcom/google/android/gms/internal/cast/s7;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/s7;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/gms/internal/cast/l7;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/l7;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/s7;->a:Lcom/google/android/gms/internal/cast/l7;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/google/android/gms/internal/cast/v7;
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/h7;->a:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/s7;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lcom/google/android/gms/internal/cast/v7;

    .line 12
    .line 13
    if-nez v1, :cond_2

    .line 14
    .line 15
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/s7;->a:Lcom/google/android/gms/internal/cast/l7;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    sget-object v2, Lcom/google/android/gms/internal/cast/w7;->a:Lcom/google/android/gms/internal/cast/k2;

    .line 21
    .line 22
    const-class v2, Lcom/google/android/gms/internal/cast/c7;

    .line 23
    .line 24
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 25
    .line 26
    .line 27
    iget-object v1, v1, Lcom/google/android/gms/internal/cast/l7;->b:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v1, Lcom/google/android/gms/internal/cast/l7;

    .line 30
    .line 31
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/cast/l7;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/cast/u7;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iget v2, v1, Lcom/google/android/gms/internal/cast/u7;->d:I

    .line 36
    .line 37
    const/4 v3, 0x2

    .line 38
    and-int/2addr v2, v3

    .line 39
    if-ne v2, v3, :cond_0

    .line 40
    .line 41
    sget-object v2, Lcom/google/android/gms/internal/cast/w7;->a:Lcom/google/android/gms/internal/cast/k2;

    .line 42
    .line 43
    sget-object v3, Lcom/google/android/gms/internal/cast/z6;->a:Lcom/google/android/gms/internal/cast/k2;

    .line 44
    .line 45
    new-instance v3, Lcom/google/android/gms/internal/cast/q7;

    .line 46
    .line 47
    iget-object v1, v1, Lcom/google/android/gms/internal/cast/u7;->a:Lcom/google/android/gms/internal/cast/r6;

    .line 48
    .line 49
    invoke-direct {v3, v2, v1}, Lcom/google/android/gms/internal/cast/q7;-><init>(Lcom/google/android/gms/internal/cast/k2;Lcom/google/android/gms/internal/cast/r6;)V

    .line 50
    .line 51
    .line 52
    move-object v1, v3

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    sget v2, Lcom/google/android/gms/internal/cast/r7;->a:I

    .line 55
    .line 56
    sget v2, Lcom/google/android/gms/internal/cast/j7;->a:I

    .line 57
    .line 58
    sget-object v2, Lcom/google/android/gms/internal/cast/w7;->a:Lcom/google/android/gms/internal/cast/k2;

    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/u7;->b()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    add-int/lit8 v3, v3, -0x1

    .line 65
    .line 66
    const/4 v4, 0x1

    .line 67
    if-eq v3, v4, :cond_1

    .line 68
    .line 69
    sget-object v3, Lcom/google/android/gms/internal/cast/z6;->a:Lcom/google/android/gms/internal/cast/k2;

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    const/4 v3, 0x0

    .line 73
    :goto_0
    sget v4, Lcom/google/android/gms/internal/cast/m7;->a:I

    .line 74
    .line 75
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/cast/p7;->k(Lcom/google/android/gms/internal/cast/u7;Lcom/google/android/gms/internal/cast/k2;Lcom/google/android/gms/internal/cast/k2;)Lcom/google/android/gms/internal/cast/p7;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    :goto_1
    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    check-cast p1, Lcom/google/android/gms/internal/cast/v7;

    .line 84
    .line 85
    if-eqz p1, :cond_2

    .line 86
    .line 87
    return-object p1

    .line 88
    :cond_2
    return-object v1

    .line 89
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    .line 90
    .line 91
    const-string v0, "messageType"

    .line 92
    .line 93
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p1
.end method
