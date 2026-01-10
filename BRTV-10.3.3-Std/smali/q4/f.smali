.class public final Lq4/f;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field public static final c:Lv4/b;


# instance fields
.field public final a:Lq4/v;

.field public final b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lv4/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "SessionManager"

    .line 5
    .line 6
    invoke-direct {v0, v2, v1}, Lv4/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lq4/f;->c:Lv4/b;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Lq4/v;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq4/f;->a:Lq4/v;

    .line 5
    .line 6
    iput-object p2, p0, Lq4/f;->b:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lq4/g;)V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    const-string v1, "Must be called from the main thread."

    .line 5
    .line 6
    invoke-static {v1}, Lb5/l;->b(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    :try_start_0
    iget-object v1, p0, Lq4/f;->a:Lq4/v;

    .line 10
    .line 11
    new-instance v2, Lq4/x;

    .line 12
    .line 13
    invoke-direct {v2, p1}, Lq4/x;-><init>(Lq4/g;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/a;->l()Landroid/os/Parcel;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/cast/d0;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/cast/a;->x(Landroid/os/Parcel;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catch_0
    move-exception p1

    .line 28
    const-class v1, Lq4/v;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    new-array v0, v0, [Ljava/lang/Object;

    .line 35
    .line 36
    const-string v2, "addSessionManagerListener"

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    aput-object v2, v0, v3

    .line 40
    .line 41
    const/4 v2, 0x1

    .line 42
    aput-object v1, v0, v2

    .line 43
    .line 44
    const-string v1, "Unable to call %s on %s."

    .line 45
    .line 46
    sget-object v2, Lq4/f;->c:Lv4/b;

    .line 47
    .line 48
    invoke-virtual {v2, p1, v1, v0}, Lv4/b;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 53
    .line 54
    const-string v0, "SessionManagerListener can\'t be null"

    .line 55
    .line 56
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p1
.end method

.method public final b(Z)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    sget-object v2, Lq4/f;->c:Lv4/b;

    .line 4
    .line 5
    const-string v3, "Must be called from the main thread."

    .line 6
    .line 7
    invoke-static {v3}, Lb5/l;->b(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    const-string v3, "End session for %s"

    .line 11
    .line 12
    iget-object v4, p0, Lq4/f;->b:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    new-array v5, v1, [Ljava/lang/Object;

    .line 19
    .line 20
    aput-object v4, v5, v0

    .line 21
    .line 22
    iget-object v4, v2, Lv4/b;->a:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v2, v3, v5}, Lv4/b;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    iget-object v3, p0, Lq4/f;->a:Lq4/v;

    .line 32
    .line 33
    invoke-virtual {v3}, Lcom/google/android/gms/internal/cast/a;->l()Landroid/os/Parcel;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    sget v5, Lcom/google/android/gms/internal/cast/d0;->a:I

    .line 38
    .line 39
    invoke-virtual {v4, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    .line 44
    .line 45
    const/4 p1, 0x6

    .line 46
    invoke-virtual {v3, v4, p1}, Lcom/google/android/gms/internal/cast/a;->x(Landroid/os/Parcel;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :catch_0
    move-exception p1

    .line 51
    const-class v3, Lq4/v;

    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    const/4 v4, 0x2

    .line 58
    new-array v4, v4, [Ljava/lang/Object;

    .line 59
    .line 60
    const-string v5, "endCurrentSession"

    .line 61
    .line 62
    aput-object v5, v4, v0

    .line 63
    .line 64
    aput-object v3, v4, v1

    .line 65
    .line 66
    const-string v0, "Unable to call %s on %s."

    .line 67
    .line 68
    invoke-virtual {v2, p1, v0, v4}, Lv4/b;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public final c()Lq4/b;
    .locals 2

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lb5/l;->b(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lq4/f;->d()Lq4/e;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    instance-of v1, v0, Lq4/b;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    check-cast v0, Lq4/b;

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return-object v0
.end method

.method public final d()Lq4/e;
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "Must be called from the main thread."

    .line 3
    .line 4
    invoke-static {v1}, Lb5/l;->b(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    :try_start_0
    iget-object v1, p0, Lq4/f;->a:Lq4/v;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/a;->l()Landroid/os/Parcel;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/cast/a;->w(Landroid/os/Parcel;I)Landroid/os/Parcel;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {v2}, Lm5/b;->x(Landroid/os/IBinder;)Lm5/a;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 26
    .line 27
    .line 28
    invoke-static {v2}, Lm5/b;->y(Lm5/a;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lq4/e;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    return-object v1

    .line 35
    :catch_0
    move-exception v1

    .line 36
    const-class v2, Lq4/v;

    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const/4 v3, 0x2

    .line 43
    new-array v3, v3, [Ljava/lang/Object;

    .line 44
    .line 45
    const-string v4, "getWrappedCurrentSession"

    .line 46
    .line 47
    const/4 v5, 0x0

    .line 48
    aput-object v4, v3, v5

    .line 49
    .line 50
    aput-object v2, v3, v0

    .line 51
    .line 52
    const-string v0, "Unable to call %s on %s."

    .line 53
    .line 54
    sget-object v2, Lq4/f;->c:Lv4/b;

    .line 55
    .line 56
    invoke-virtual {v2, v1, v0, v3}, Lv4/b;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    const/4 v0, 0x0

    .line 60
    return-object v0
.end method

.method public final e(Lq4/g;)V
    .locals 4

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lb5/l;->b(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    :try_start_0
    iget-object v0, p0, Lq4/f;->a:Lq4/v;

    .line 10
    .line 11
    new-instance v1, Lq4/x;

    .line 12
    .line 13
    invoke-direct {v1, p1}, Lq4/x;-><init>(Lq4/g;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/a;->l()Landroid/os/Parcel;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/cast/d0;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x3

    .line 24
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/cast/a;->x(Landroid/os/Parcel;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catch_0
    move-exception p1

    .line 29
    const-class v0, Lq4/v;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/4 v1, 0x2

    .line 36
    new-array v1, v1, [Ljava/lang/Object;

    .line 37
    .line 38
    const-string v2, "removeSessionManagerListener"

    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    aput-object v2, v1, v3

    .line 42
    .line 43
    const/4 v2, 0x1

    .line 44
    aput-object v0, v1, v2

    .line 45
    .line 46
    const-string v0, "Unable to call %s on %s."

    .line 47
    .line 48
    sget-object v2, Lq4/f;->c:Lv4/b;

    .line 49
    .line 50
    invoke-virtual {v2, p1, v0, v1}, Lv4/b;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method
