.class public final Lcom/google/android/gms/internal/cast/k3;
.super Lcom/google/android/gms/internal/cast/c7;
.source "MyApplication"


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/cast/k3;


# instance fields
.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/cast/u3;

.field private zzf:J

.field private zzg:I

.field private zzh:Lcom/google/android/gms/internal/cast/g7;

.field private zzi:Lcom/google/android/gms/internal/cast/g7;

.field private zzj:Lcom/google/android/gms/internal/cast/g7;

.field private zzk:Lcom/google/android/gms/internal/cast/g7;

.field private zzl:Lcom/google/android/gms/internal/cast/g7;

.field private zzm:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/k3;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/k3;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/cast/k3;->zzb:Lcom/google/android/gms/internal/cast/k3;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/cast/k3;

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
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/k3;->zzh:Lcom/google/android/gms/internal/cast/g7;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/k3;->zzi:Lcom/google/android/gms/internal/cast/g7;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/k3;->zzj:Lcom/google/android/gms/internal/cast/g7;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/k3;->zzk:Lcom/google/android/gms/internal/cast/g7;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/k3;->zzl:Lcom/google/android/gms/internal/cast/g7;

    .line 15
    .line 16
    return-void
.end method

.method public static l()Lcom/google/android/gms/internal/cast/j3;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/k3;->zzb:Lcom/google/android/gms/internal/cast/k3;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/c7;->j()Lcom/google/android/gms/internal/cast/b7;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/cast/j3;

    .line 8
    .line 9
    return-object v0
.end method

.method public static m(Lcom/google/android/gms/internal/cast/k3;Ljava/util/ArrayList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/k3;->zzh:Lcom/google/android/gms/internal/cast/g7;

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
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    add-int/2addr v1, v1

    .line 15
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/cast/g7;->a(I)Lcom/google/android/gms/internal/cast/g7;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/k3;->zzh:Lcom/google/android/gms/internal/cast/g7;

    .line 20
    .line 21
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/cast/k3;->zzh:Lcom/google/android/gms/internal/cast/g7;

    .line 22
    .line 23
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/cast/r6;->b(Ljava/util/ArrayList;Ljava/util/List;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public static n(Lcom/google/android/gms/internal/cast/k3;Ljava/util/ArrayList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/k3;->zzi:Lcom/google/android/gms/internal/cast/g7;

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
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    add-int/2addr v1, v1

    .line 15
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/cast/g7;->a(I)Lcom/google/android/gms/internal/cast/g7;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/k3;->zzi:Lcom/google/android/gms/internal/cast/g7;

    .line 20
    .line 21
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/cast/k3;->zzi:Lcom/google/android/gms/internal/cast/g7;

    .line 22
    .line 23
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/cast/r6;->b(Ljava/util/ArrayList;Ljava/util/List;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public static o(Lcom/google/android/gms/internal/cast/k3;Ljava/util/ArrayList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/k3;->zzl:Lcom/google/android/gms/internal/cast/g7;

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
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    add-int/2addr v1, v1

    .line 15
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/cast/g7;->a(I)Lcom/google/android/gms/internal/cast/g7;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/k3;->zzl:Lcom/google/android/gms/internal/cast/g7;

    .line 20
    .line 21
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/cast/k3;->zzl:Lcom/google/android/gms/internal/cast/g7;

    .line 22
    .line 23
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/cast/r6;->b(Ljava/util/ArrayList;Ljava/util/List;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public static p(Lcom/google/android/gms/internal/cast/k3;Ljava/util/ArrayList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/k3;->zzj:Lcom/google/android/gms/internal/cast/g7;

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
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    add-int/2addr v1, v1

    .line 15
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/cast/g7;->a(I)Lcom/google/android/gms/internal/cast/g7;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/k3;->zzj:Lcom/google/android/gms/internal/cast/g7;

    .line 20
    .line 21
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/cast/k3;->zzj:Lcom/google/android/gms/internal/cast/g7;

    .line 22
    .line 23
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/cast/r6;->b(Ljava/util/ArrayList;Ljava/util/List;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public static q(Lcom/google/android/gms/internal/cast/k3;Ljava/util/ArrayList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/k3;->zzk:Lcom/google/android/gms/internal/cast/g7;

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
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    add-int/2addr v1, v1

    .line 15
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/cast/g7;->a(I)Lcom/google/android/gms/internal/cast/g7;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/k3;->zzk:Lcom/google/android/gms/internal/cast/g7;

    .line 20
    .line 21
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/cast/k3;->zzk:Lcom/google/android/gms/internal/cast/g7;

    .line 22
    .line 23
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/cast/r6;->b(Ljava/util/ArrayList;Ljava/util/List;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public static synthetic r(Lcom/google/android/gms/internal/cast/k3;Lcom/google/android/gms/internal/cast/u3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/k3;->zze:Lcom/google/android/gms/internal/cast/u3;

    .line 2
    .line 3
    iget p1, p0, Lcom/google/android/gms/internal/cast/k3;->zzd:I

    .line 4
    .line 5
    or-int/lit8 p1, p1, 0x1

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/gms/internal/cast/k3;->zzd:I

    .line 8
    .line 9
    return-void
.end method

.method public static synthetic s(Lcom/google/android/gms/internal/cast/k3;I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/cast/k3;->zzd:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/cast/k3;->zzd:I

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/gms/internal/cast/k3;->zzm:I

    .line 8
    .line 9
    return-void
.end method

.method public static synthetic t(Lcom/google/android/gms/internal/cast/k3;J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/cast/k3;->zzd:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/cast/k3;->zzd:I

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/google/android/gms/internal/cast/k3;->zzf:J

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
    sget-object p1, Lcom/google/android/gms/internal/cast/k3;->zzb:Lcom/google/android/gms/internal/cast/k3;

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
    new-instance p1, Lcom/google/android/gms/internal/cast/j3;

    .line 24
    .line 25
    sget-object p2, Lcom/google/android/gms/internal/cast/k3;->zzb:Lcom/google/android/gms/internal/cast/k3;

    .line 26
    .line 27
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/cast/b7;-><init>(Lcom/google/android/gms/internal/cast/c7;)V

    .line 28
    .line 29
    .line 30
    return-object p1

    .line 31
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/cast/k3;

    .line 32
    .line 33
    invoke-direct {p1}, Lcom/google/android/gms/internal/cast/k3;-><init>()V

    .line 34
    .line 35
    .line 36
    return-object p1

    .line 37
    :cond_3
    const/16 p1, 0x10

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
    const-string p2, "zzf"

    .line 51
    .line 52
    aput-object p2, p1, v3

    .line 53
    .line 54
    const-string p2, "zzg"

    .line 55
    .line 56
    aput-object p2, p1, v2

    .line 57
    .line 58
    sget-object p2, Lcom/google/android/gms/internal/cast/k2;->b:Lcom/google/android/gms/internal/cast/k2;

    .line 59
    .line 60
    aput-object p2, p1, v1

    .line 61
    .line 62
    const-string p2, "zzh"

    .line 63
    .line 64
    aput-object p2, p1, v0

    .line 65
    .line 66
    const-class p2, Lcom/google/android/gms/internal/cast/i3;

    .line 67
    .line 68
    const/4 v0, 0x6

    .line 69
    aput-object p2, p1, v0

    .line 70
    .line 71
    const-string p2, "zzi"

    .line 72
    .line 73
    const/4 v0, 0x7

    .line 74
    aput-object p2, p1, v0

    .line 75
    .line 76
    const-class p2, Lcom/google/android/gms/internal/cast/e3;

    .line 77
    .line 78
    const/16 v0, 0x8

    .line 79
    .line 80
    aput-object p2, p1, v0

    .line 81
    .line 82
    const-string p2, "zzj"

    .line 83
    .line 84
    const/16 v0, 0x9

    .line 85
    .line 86
    aput-object p2, p1, v0

    .line 87
    .line 88
    const-class p2, Lcom/google/android/gms/internal/cast/n3;

    .line 89
    .line 90
    const/16 v0, 0xa

    .line 91
    .line 92
    aput-object p2, p1, v0

    .line 93
    .line 94
    const-string p2, "zzk"

    .line 95
    .line 96
    const/16 v0, 0xb

    .line 97
    .line 98
    aput-object p2, p1, v0

    .line 99
    .line 100
    const-class p2, Lcom/google/android/gms/internal/cast/m3;

    .line 101
    .line 102
    const/16 v0, 0xc

    .line 103
    .line 104
    aput-object p2, p1, v0

    .line 105
    .line 106
    const-string p2, "zzl"

    .line 107
    .line 108
    const/16 v0, 0xd

    .line 109
    .line 110
    aput-object p2, p1, v0

    .line 111
    .line 112
    const-class p2, Lcom/google/android/gms/internal/cast/g3;

    .line 113
    .line 114
    const/16 v0, 0xe

    .line 115
    .line 116
    aput-object p2, p1, v0

    .line 117
    .line 118
    const-string p2, "zzm"

    .line 119
    .line 120
    const/16 v0, 0xf

    .line 121
    .line 122
    aput-object p2, p1, v0

    .line 123
    .line 124
    sget-object p2, Lcom/google/android/gms/internal/cast/k3;->zzb:Lcom/google/android/gms/internal/cast/k3;

    .line 125
    .line 126
    new-instance v0, Lcom/google/android/gms/internal/cast/u7;

    .line 127
    .line 128
    const-string v1, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0005\u0000\u0001\u1009\u0000\u0002\u1005\u0001\u0003\u180c\u0002\u0004\u001b\u0005\u001b\u0006\u001b\u0007\u001b\u0008\u001b\t\u1004\u0003"

    .line 129
    .line 130
    invoke-direct {v0, p2, v1, p1}, Lcom/google/android/gms/internal/cast/u7;-><init>(Lcom/google/android/gms/internal/cast/r6;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    return-object v0

    .line 134
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    return-object p1
.end method
