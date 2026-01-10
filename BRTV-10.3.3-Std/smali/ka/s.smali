.class public final Lka/s;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    const-string p2, "3NuGghleBaPOxIo=\n"

    .line 2
    .line 3
    const-string v0, "r7Dv8kYrdcc=\n"

    .line 4
    .line 5
    invoke-static {p2, v0}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    sget-object v0, Lga/k;->b:Lorg/bitspark/android/beans/UpdateInfo;

    .line 10
    .line 11
    iget-object v0, v0, Lorg/bitspark/android/beans/UpdateInfo;->release:Lorg/bitspark/android/beans/UpdateInfo$ReleaseBean;

    .line 12
    .line 13
    iget v0, v0, Lorg/bitspark/android/beans/UpdateInfo$ReleaseBean;->versionCode:I

    .line 14
    .line 15
    invoke-static {v0, p2}, Lorg/bitspark/android/utils/m;->m(ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 19
    .line 20
    .line 21
    return-void
.end method
