.class public final Lcom/google/android/gms/internal/cast/y2;
.super Lcom/google/android/gms/internal/cast/c7;
.source "MyApplication"


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/cast/y2;


# instance fields
.field private zzd:Lcom/google/android/gms/internal/cast/g7;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/y2;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/y2;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/cast/y2;->zzb:Lcom/google/android/gms/internal/cast/y2;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/cast/y2;

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
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/y2;->zzd:Lcom/google/android/gms/internal/cast/g7;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final h(ILcom/google/android/gms/internal/cast/c7;)Ljava/lang/Object;
    .locals 2

    .line 1
    const/4 p2, 0x1

    .line 2
    add-int/lit8 p1, p1, -0x1

    .line 3
    .line 4
    if-eqz p1, :cond_4

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_3

    .line 8
    .line 9
    const/4 p2, 0x3

    .line 10
    if-eq p1, p2, :cond_2

    .line 11
    .line 12
    const/4 p2, 0x4

    .line 13
    if-eq p1, p2, :cond_1

    .line 14
    .line 15
    const/4 p2, 0x5

    .line 16
    if-ne p1, p2, :cond_0

    .line 17
    .line 18
    sget-object p1, Lcom/google/android/gms/internal/cast/y2;->zzb:Lcom/google/android/gms/internal/cast/y2;

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
    sget-object p2, Lcom/google/android/gms/internal/cast/y2;->zzb:Lcom/google/android/gms/internal/cast/y2;

    .line 26
    .line 27
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/cast/b7;-><init>(Lcom/google/android/gms/internal/cast/c7;)V

    .line 28
    .line 29
    .line 30
    return-object p1

    .line 31
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/cast/y2;

    .line 32
    .line 33
    invoke-direct {p1}, Lcom/google/android/gms/internal/cast/y2;-><init>()V

    .line 34
    .line 35
    .line 36
    return-object p1

    .line 37
    :cond_3
    new-array p1, p2, [Ljava/lang/Object;

    .line 38
    .line 39
    const-string p2, "zzd"

    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    aput-object p2, p1, v0

    .line 43
    .line 44
    sget-object p2, Lcom/google/android/gms/internal/cast/y2;->zzb:Lcom/google/android/gms/internal/cast/y2;

    .line 45
    .line 46
    new-instance v0, Lcom/google/android/gms/internal/cast/u7;

    .line 47
    .line 48
    const-string v1, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a"

    .line 49
    .line 50
    invoke-direct {v0, p2, v1, p1}, Lcom/google/android/gms/internal/cast/u7;-><init>(Lcom/google/android/gms/internal/cast/r6;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    return-object v0

    .line 54
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    return-object p1
.end method
