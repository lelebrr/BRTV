.class public final Lcom/google/android/gms/internal/cast/s5;
.super Lcom/google/android/gms/internal/cast/c7;
.source "MyApplication"


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/cast/s5;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:I

.field private zzg:Lcom/google/android/gms/internal/cast/e7;

.field private zzh:I

.field private zzi:Lcom/google/android/gms/internal/cast/g7;

.field private zzj:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/s5;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/s5;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/cast/s5;->zzb:Lcom/google/android/gms/internal/cast/s5;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/cast/s5;

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
    sget-object v0, Lcom/google/android/gms/internal/cast/d7;->e:Lcom/google/android/gms/internal/cast/d7;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/s5;->zzg:Lcom/google/android/gms/internal/cast/e7;

    .line 7
    .line 8
    sget-object v0, Lcom/google/android/gms/internal/cast/t7;->e:Lcom/google/android/gms/internal/cast/t7;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/s5;->zzi:Lcom/google/android/gms/internal/cast/g7;

    .line 11
    .line 12
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
    sget-object p1, Lcom/google/android/gms/internal/cast/s5;->zzb:Lcom/google/android/gms/internal/cast/s5;

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
    new-instance p1, Lcom/google/android/gms/internal/cast/p5;

    .line 24
    .line 25
    sget-object p2, Lcom/google/android/gms/internal/cast/s5;->zzb:Lcom/google/android/gms/internal/cast/s5;

    .line 26
    .line 27
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/cast/b7;-><init>(Lcom/google/android/gms/internal/cast/c7;)V

    .line 28
    .line 29
    .line 30
    return-object p1

    .line 31
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/cast/s5;

    .line 32
    .line 33
    invoke-direct {p1}, Lcom/google/android/gms/internal/cast/s5;-><init>()V

    .line 34
    .line 35
    .line 36
    return-object p1

    .line 37
    :cond_3
    const/16 p1, 0xc

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
    const-string v4, "zze"

    .line 47
    .line 48
    aput-object v4, p1, p2

    .line 49
    .line 50
    sget-object p2, Lcom/google/android/gms/internal/cast/k2;->h:Lcom/google/android/gms/internal/cast/k2;

    .line 51
    .line 52
    aput-object p2, p1, v3

    .line 53
    .line 54
    const-string p2, "zzf"

    .line 55
    .line 56
    aput-object p2, p1, v2

    .line 57
    .line 58
    sget-object p2, Lcom/google/android/gms/internal/cast/h4;->A:Lcom/google/android/gms/internal/cast/h4;

    .line 59
    .line 60
    aput-object p2, p1, v1

    .line 61
    .line 62
    const-string p2, "zzg"

    .line 63
    .line 64
    aput-object p2, p1, v0

    .line 65
    .line 66
    sget-object p2, Lcom/google/android/gms/internal/cast/k2;->g:Lcom/google/android/gms/internal/cast/k2;

    .line 67
    .line 68
    const/4 v0, 0x6

    .line 69
    aput-object p2, p1, v0

    .line 70
    .line 71
    const-string p2, "zzh"

    .line 72
    .line 73
    const/4 v0, 0x7

    .line 74
    aput-object p2, p1, v0

    .line 75
    .line 76
    sget-object p2, Lcom/google/android/gms/internal/cast/h4;->u:Lcom/google/android/gms/internal/cast/h4;

    .line 77
    .line 78
    const/16 v0, 0x8

    .line 79
    .line 80
    aput-object p2, p1, v0

    .line 81
    .line 82
    const-string p2, "zzi"

    .line 83
    .line 84
    const/16 v0, 0x9

    .line 85
    .line 86
    aput-object p2, p1, v0

    .line 87
    .line 88
    const-class p2, Lcom/google/android/gms/internal/cast/r5;

    .line 89
    .line 90
    const/16 v0, 0xa

    .line 91
    .line 92
    aput-object p2, p1, v0

    .line 93
    .line 94
    const-string p2, "zzj"

    .line 95
    .line 96
    const/16 v0, 0xb

    .line 97
    .line 98
    aput-object p2, p1, v0

    .line 99
    .line 100
    sget-object p2, Lcom/google/android/gms/internal/cast/s5;->zzb:Lcom/google/android/gms/internal/cast/s5;

    .line 101
    .line 102
    new-instance v0, Lcom/google/android/gms/internal/cast/u7;

    .line 103
    .line 104
    const-string v1, "\u0001\u0006\u0000\u0001\u0001\u0007\u0006\u0000\u0002\u0000\u0001\u180c\u0000\u0002\u180c\u0001\u0003\u081e\u0005\u180c\u0002\u0006\u001b\u0007\u1002\u0003"

    .line 105
    .line 106
    invoke-direct {v0, p2, v1, p1}, Lcom/google/android/gms/internal/cast/u7;-><init>(Lcom/google/android/gms/internal/cast/r6;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    return-object v0

    .line 110
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    return-object p1
.end method
