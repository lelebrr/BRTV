.class public final Lcom/google/android/gms/internal/cast/i3;
.super Lcom/google/android/gms/internal/cast/c7;
.source "MyApplication"


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/cast/i3;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:I

.field private zzg:I

.field private zzh:Z

.field private zzi:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/i3;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/c7;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/cast/i3;->zzb:Lcom/google/android/gms/internal/cast/i3;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/cast/i3;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/cast/c7;->e(Ljava/lang/Class;Lcom/google/android/gms/internal/cast/c7;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static l()Lcom/google/android/gms/internal/cast/h3;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/i3;->zzb:Lcom/google/android/gms/internal/cast/i3;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/c7;->j()Lcom/google/android/gms/internal/cast/b7;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/cast/h3;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic m(Lcom/google/android/gms/internal/cast/i3;Z)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/cast/i3;->zzd:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/cast/i3;->zzd:I

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/google/android/gms/internal/cast/i3;->zzh:Z

    .line 8
    .line 9
    return-void
.end method

.method public static synthetic n(Lcom/google/android/gms/internal/cast/i3;I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/cast/i3;->zzd:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/cast/i3;->zzd:I

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/gms/internal/cast/i3;->zzg:I

    .line 8
    .line 9
    return-void
.end method

.method public static synthetic o(Lcom/google/android/gms/internal/cast/i3;J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/cast/i3;->zzd:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x10

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/cast/i3;->zzd:I

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/google/android/gms/internal/cast/i3;->zzi:J

    .line 8
    .line 9
    return-void
.end method

.method public static synthetic p(Lcom/google/android/gms/internal/cast/i3;I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/cast/i3;->zzd:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/cast/i3;->zzd:I

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/gms/internal/cast/i3;->zzf:I

    .line 8
    .line 9
    return-void
.end method

.method public static synthetic q(Lcom/google/android/gms/internal/cast/i3;I)V
    .locals 0

    .line 1
    add-int/lit8 p1, p1, -0x1

    .line 2
    .line 3
    iput p1, p0, Lcom/google/android/gms/internal/cast/i3;->zze:I

    .line 4
    .line 5
    iget p1, p0, Lcom/google/android/gms/internal/cast/i3;->zzd:I

    .line 6
    .line 7
    or-int/lit8 p1, p1, 0x1

    .line 8
    .line 9
    iput p1, p0, Lcom/google/android/gms/internal/cast/i3;->zzd:I

    .line 10
    .line 11
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
    sget-object p1, Lcom/google/android/gms/internal/cast/i3;->zzb:Lcom/google/android/gms/internal/cast/i3;

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
    new-instance p1, Lcom/google/android/gms/internal/cast/h3;

    .line 24
    .line 25
    sget-object p2, Lcom/google/android/gms/internal/cast/i3;->zzb:Lcom/google/android/gms/internal/cast/i3;

    .line 26
    .line 27
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/cast/b7;-><init>(Lcom/google/android/gms/internal/cast/c7;)V

    .line 28
    .line 29
    .line 30
    return-object p1

    .line 31
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/cast/i3;

    .line 32
    .line 33
    invoke-direct {p1}, Lcom/google/android/gms/internal/cast/c7;-><init>()V

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
    sget-object p2, Lcom/google/android/gms/internal/cast/i2;->B:Lcom/google/android/gms/internal/cast/i2;

    .line 50
    .line 51
    aput-object p2, p1, v3

    .line 52
    .line 53
    const-string p2, "zzf"

    .line 54
    .line 55
    aput-object p2, p1, v2

    .line 56
    .line 57
    const-string p2, "zzg"

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
    const-string p2, "zzi"

    .line 66
    .line 67
    const/4 v0, 0x6

    .line 68
    aput-object p2, p1, v0

    .line 69
    .line 70
    sget-object p2, Lcom/google/android/gms/internal/cast/i3;->zzb:Lcom/google/android/gms/internal/cast/i3;

    .line 71
    .line 72
    new-instance v0, Lcom/google/android/gms/internal/cast/u7;

    .line 73
    .line 74
    const-string v1, "\u0001\u0005\u0000\u0001\u0001\u0006\u0005\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u1004\u0001\u0003\u1004\u0002\u0004\u1007\u0003\u0006\u1002\u0004"

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
