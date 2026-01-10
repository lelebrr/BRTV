.class public final Lcom/google/android/gms/internal/cast/p2;
.super Lcom/google/android/gms/internal/cast/c7;
.source "MyApplication"


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/cast/p2;


# instance fields
.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/cast/t2;

.field private zzf:Lcom/google/android/gms/internal/cast/j4;

.field private zzg:Lcom/google/android/gms/internal/cast/g7;

.field private zzh:Lcom/google/android/gms/internal/cast/e7;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/p2;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/p2;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/cast/p2;->zzb:Lcom/google/android/gms/internal/cast/p2;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/cast/p2;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/cast/c7;->e(Ljava/lang/Class;Lcom/google/android/gms/internal/cast/c7;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/c7;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/google/android/gms/internal/cast/t7;->e:Lcom/google/android/gms/internal/cast/t7;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/p2;->zzg:Lcom/google/android/gms/internal/cast/g7;

    .line 7
    .line 8
    sget-object v0, Lcom/google/android/gms/internal/cast/d7;->e:Lcom/google/android/gms/internal/cast/d7;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/p2;->zzh:Lcom/google/android/gms/internal/cast/e7;

    .line 11
    .line 12
    return-void
.end method

.method public static l()Lcom/google/android/gms/internal/cast/o2;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/p2;->zzb:Lcom/google/android/gms/internal/cast/p2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/c7;->j()Lcom/google/android/gms/internal/cast/b7;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/cast/o2;

    .line 8
    .line 9
    return-object v0
.end method

.method public static m(Lcom/google/android/gms/internal/cast/p2;Ljava/util/ArrayList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/p2;->zzh:Lcom/google/android/gms/internal/cast/e7;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lcom/google/android/gms/internal/cast/s6;

    .line 5
    .line 6
    iget-boolean v1, v1, Lcom/google/android/gms/internal/cast/s6;->a:Z

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    check-cast v0, Lcom/google/android/gms/internal/cast/d7;

    .line 11
    .line 12
    iget v1, v0, Lcom/google/android/gms/internal/cast/d7;->c:I

    .line 13
    .line 14
    add-int/2addr v1, v1

    .line 15
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/cast/d7;->f(I)Lcom/google/android/gms/internal/cast/d7;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/p2;->zzh:Lcom/google/android/gms/internal/cast/e7;

    .line 20
    .line 21
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/google/android/gms/internal/cast/m2;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/p2;->zzh:Lcom/google/android/gms/internal/cast/e7;

    .line 38
    .line 39
    iget v0, v0, Lcom/google/android/gms/internal/cast/m2;->a:I

    .line 40
    .line 41
    check-cast v1, Lcom/google/android/gms/internal/cast/d7;

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/cast/d7;->g(I)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    return-void
.end method

.method public static synthetic n(Lcom/google/android/gms/internal/cast/p2;Lcom/google/android/gms/internal/cast/t2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/p2;->zze:Lcom/google/android/gms/internal/cast/t2;

    .line 2
    .line 3
    iget p1, p0, Lcom/google/android/gms/internal/cast/p2;->zzd:I

    .line 4
    .line 5
    or-int/lit8 p1, p1, 0x1

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/gms/internal/cast/p2;->zzd:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final h(ILcom/google/android/gms/internal/cast/c7;)Ljava/lang/Object;
    .locals 6

    .line 1
    const/4 p2, 0x1

    .line 2
    const/4 v0, 0x5

    .line 3
    const/4 v1, 0x4

    .line 4
    const/4 v2, 0x3

    .line 5
    const/4 v3, 0x2

    .line 6
    add-int/lit8 p1, p1, -0x1

    .line 7
    .line 8
    if-eqz p1, :cond_4

    .line 9
    .line 10
    if-eq p1, v3, :cond_3

    .line 11
    .line 12
    if-eq p1, v2, :cond_2

    .line 13
    .line 14
    if-eq p1, v1, :cond_1

    .line 15
    .line 16
    if-ne p1, v0, :cond_0

    .line 17
    .line 18
    sget-object p1, Lcom/google/android/gms/internal/cast/p2;->zzb:Lcom/google/android/gms/internal/cast/p2;

    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    throw p1

    .line 23
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/cast/o2;

    .line 24
    .line 25
    sget-object p2, Lcom/google/android/gms/internal/cast/p2;->zzb:Lcom/google/android/gms/internal/cast/p2;

    .line 26
    .line 27
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/cast/b7;-><init>(Lcom/google/android/gms/internal/cast/c7;)V

    .line 28
    .line 29
    .line 30
    return-object p1

    .line 31
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/cast/p2;

    .line 32
    .line 33
    invoke-direct {p1}, Lcom/google/android/gms/internal/cast/p2;-><init>()V

    .line 34
    .line 35
    .line 36
    return-object p1

    .line 37
    :cond_3
    const/4 p1, 0x7

    .line 38
    new-array p1, p1, [Ljava/lang/Object;

    .line 39
    .line 40
    const-string v4, "zzd"

    .line 41
    .line 42
    const/4 v5, 0x0

    .line 43
    aput-object v4, p1, v5

    .line 44
    .line 45
    const-string v4, "zze"

    .line 46
    .line 47
    aput-object v4, p1, p2

    .line 48
    .line 49
    const-string p2, "zzf"

    .line 50
    .line 51
    aput-object p2, p1, v3

    .line 52
    .line 53
    const-string p2, "zzg"

    .line 54
    .line 55
    aput-object p2, p1, v2

    .line 56
    .line 57
    const-class p2, Lcom/google/android/gms/internal/cast/e4;

    .line 58
    .line 59
    aput-object p2, p1, v1

    .line 60
    .line 61
    const-string p2, "zzh"

    .line 62
    .line 63
    aput-object p2, p1, v0

    .line 64
    .line 65
    sget-object p2, Lcom/google/android/gms/internal/cast/k2;->i:Lcom/google/android/gms/internal/cast/k2;

    .line 66
    .line 67
    const/4 v0, 0x6

    .line 68
    aput-object p2, p1, v0

    .line 69
    .line 70
    sget-object p2, Lcom/google/android/gms/internal/cast/p2;->zzb:Lcom/google/android/gms/internal/cast/p2;

    .line 71
    .line 72
    new-instance v0, Lcom/google/android/gms/internal/cast/u7;

    .line 73
    .line 74
    const-string v1, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0002\u0000\u0001\u1009\u0000\u0002\u1009\u0001\u0003\u001b\u0004\u081e"

    .line 75
    .line 76
    invoke-direct {v0, p2, v1, p1}, Lcom/google/android/gms/internal/cast/u7;-><init>(Lcom/google/android/gms/internal/cast/r6;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    return-object v0

    .line 80
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    return-object p1
.end method
