.class public final Lcom/google/android/gms/common/zzq;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "MyApplication"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/zzq;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lp4/p;

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lp4/p;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/android/gms/common/zzq;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZ)V
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x6

    .line 4
    const/4 v3, 0x1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-boolean p4, p0, Lcom/google/android/gms/common/zzq;->a:Z

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/gms/common/zzq;->b:Ljava/lang/String;

    .line 11
    .line 12
    new-array p1, v2, [I

    .line 13
    .line 14
    fill-array-data p1, :array_0

    .line 15
    .line 16
    .line 17
    const/4 p4, 0x0

    .line 18
    const/4 v4, 0x0

    .line 19
    :goto_0
    const/4 v5, 0x0

    .line 20
    if-ge v4, v2, :cond_2

    .line 21
    .line 22
    aget v6, p1, v4

    .line 23
    .line 24
    add-int/lit8 v7, v6, -0x1

    .line 25
    .line 26
    if-eqz v6, :cond_1

    .line 27
    .line 28
    if-ne v7, p2, :cond_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    add-int/2addr v4, v3

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    throw v5

    .line 34
    :cond_2
    const/4 v6, 0x1

    .line 35
    :goto_1
    add-int/lit8 v6, v6, -0x1

    .line 36
    .line 37
    iput v6, p0, Lcom/google/android/gms/common/zzq;->c:I

    .line 38
    .line 39
    filled-new-array {v3, v0, v1}, [I

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    :goto_2
    if-ge p4, v1, :cond_5

    .line 44
    .line 45
    aget p2, p1, p4

    .line 46
    .line 47
    add-int/lit8 v0, p2, -0x1

    .line 48
    .line 49
    if-eqz p2, :cond_4

    .line 50
    .line 51
    if-ne v0, p3, :cond_3

    .line 52
    .line 53
    move v3, p2

    .line 54
    goto :goto_3

    .line 55
    :cond_3
    add-int/2addr p4, v3

    .line 56
    goto :goto_2

    .line 57
    :cond_4
    throw v5

    .line 58
    :cond_5
    :goto_3
    add-int/lit8 v3, v3, -0x1

    .line 59
    .line 60
    iput v3, p0, Lcom/google/android/gms/common/zzq;->d:I

    .line 61
    .line 62
    return-void

    .line 63
    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
    .end array-data
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    const/16 p2, 0x4f45

    .line 2
    .line 3
    invoke-static {p1, p2}, Lo9/d;->V(Landroid/os/Parcel;I)I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    const/4 v0, 0x1

    .line 8
    const/4 v1, 0x4

    .line 9
    invoke-static {p1, v0, v1}, Lo9/d;->X(Landroid/os/Parcel;II)V

    .line 10
    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/google/android/gms/common/zzq;->a:Z

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/gms/common/zzq;->b:Ljava/lang/String;

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    invoke-static {p1, v2, v0}, Lo9/d;->R(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x3

    .line 24
    invoke-static {p1, v0, v1}, Lo9/d;->X(Landroid/os/Parcel;II)V

    .line 25
    .line 26
    .line 27
    iget v0, p0, Lcom/google/android/gms/common/zzq;->c:I

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    .line 31
    .line 32
    invoke-static {p1, v1, v1}, Lo9/d;->X(Landroid/os/Parcel;II)V

    .line 33
    .line 34
    .line 35
    iget v0, p0, Lcom/google/android/gms/common/zzq;->d:I

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    .line 39
    .line 40
    invoke-static {p1, p2}, Lo9/d;->W(Landroid/os/Parcel;I)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
