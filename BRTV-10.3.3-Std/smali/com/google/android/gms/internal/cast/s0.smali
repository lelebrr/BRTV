.class public final Lcom/google/android/gms/internal/cast/s0;
.super Lcom/google/android/gms/internal/cast/s;
.source "MyApplication"


# virtual methods
.method public final w(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    .line 1
    const/4 p3, 0x0

    .line 2
    const/4 v0, 0x1

    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 6
    .line 7
    .line 8
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/d0;->b(Landroid/os/Parcel;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lcom/google/android/gms/internal/cast/t0;->a:Lv4/b;

    .line 12
    .line 13
    new-array p2, p3, [Ljava/lang/Object;

    .line 14
    .line 15
    const-string p3, "onRemoteDisplayEnded"

    .line 16
    .line 17
    invoke-virtual {p1, p3, p2}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return v0

    .line 21
    :cond_0
    return p3
.end method
