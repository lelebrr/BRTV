.class public final Lcom/google/android/gms/internal/cast/d;
.super Lcom/google/android/gms/internal/cast/c7;
.source "MyApplication"


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/cast/d;


# instance fields
.field private zzd:Lcom/google/android/gms/internal/cast/g7;

.field private zze:Lcom/google/android/gms/internal/cast/g7;

.field private zzf:Lcom/google/android/gms/internal/cast/g7;

.field private zzg:Lcom/google/android/gms/internal/cast/g7;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/d;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/d;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/cast/d;->zzb:Lcom/google/android/gms/internal/cast/d;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/cast/d;

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
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/d;->zzd:Lcom/google/android/gms/internal/cast/g7;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/d;->zze:Lcom/google/android/gms/internal/cast/g7;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/d;->zzf:Lcom/google/android/gms/internal/cast/g7;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/d;->zzg:Lcom/google/android/gms/internal/cast/g7;

    .line 13
    .line 14
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
    sget-object p1, Lcom/google/android/gms/internal/cast/d;->zzb:Lcom/google/android/gms/internal/cast/d;

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
    new-instance p1, Lcom/google/android/gms/internal/cast/c;

    .line 24
    .line 25
    sget-object p2, Lcom/google/android/gms/internal/cast/d;->zzb:Lcom/google/android/gms/internal/cast/d;

    .line 26
    .line 27
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/cast/b7;-><init>(Lcom/google/android/gms/internal/cast/c7;)V

    .line 28
    .line 29
    .line 30
    return-object p1

    .line 31
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/cast/d;

    .line 32
    .line 33
    invoke-direct {p1}, Lcom/google/android/gms/internal/cast/d;-><init>()V

    .line 34
    .line 35
    .line 36
    return-object p1

    .line 37
    :cond_3
    const/16 p1, 0x8

    .line 38
    .line 39
    new-array p1, p1, [Ljava/lang/Object;

    .line 40
    .line 41
    const-string v4, "zzd"

    .line 42
    .line 43
    const/4 v5, 0x0

    .line 44
    aput-object v4, p1, v5

    .line 45
    .line 46
    const-class v4, Lcom/google/android/gms/internal/cast/b;

    .line 47
    .line 48
    aput-object v4, p1, p2

    .line 49
    .line 50
    const-string p2, "zze"

    .line 51
    .line 52
    aput-object p2, p1, v3

    .line 53
    .line 54
    const-class p2, Lcom/google/android/gms/internal/cast/g8;

    .line 55
    .line 56
    aput-object p2, p1, v2

    .line 57
    .line 58
    const-string v2, "zzf"

    .line 59
    .line 60
    aput-object v2, p1, v1

    .line 61
    .line 62
    aput-object v4, p1, v0

    .line 63
    .line 64
    const-string v0, "zzg"

    .line 65
    .line 66
    const/4 v1, 0x6

    .line 67
    aput-object v0, p1, v1

    .line 68
    .line 69
    const/4 v0, 0x7

    .line 70
    aput-object p2, p1, v0

    .line 71
    .line 72
    sget-object p2, Lcom/google/android/gms/internal/cast/d;->zzb:Lcom/google/android/gms/internal/cast/d;

    .line 73
    .line 74
    new-instance v0, Lcom/google/android/gms/internal/cast/u7;

    .line 75
    .line 76
    const-string v1, "\u0001\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0004\u0000\u0001\u001b\u0002\u001b\u0003\u001b\u0004\u001b"

    .line 77
    .line 78
    invoke-direct {v0, p2, v1, p1}, Lcom/google/android/gms/internal/cast/u7;-><init>(Lcom/google/android/gms/internal/cast/r6;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    return-object v0

    .line 82
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    return-object p1
.end method
