.class public final synthetic Lcom/google/android/gms/internal/cast/y;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lw5/c;
.implements Lw5/b;


# instance fields
.field public final synthetic a:Lw5/d;


# direct methods
.method public synthetic constructor <init>(Lw5/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/y;->a:Lw5/d;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    sget-object v1, Lcom/google/android/gms/internal/cast/a0;->d:Lv4/b;

    .line 5
    .line 6
    const-string v2, "get checkbox consent failed"

    .line 7
    .line 8
    invoke-virtual {v1, p1, v2, v0}, Lv4/b;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/y;->a:Lw5/d;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lw5/d;->d(Ljava/lang/Boolean;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/cast/c1;

    .line 2
    .line 3
    sget-object v0, Lcom/google/android/gms/internal/cast/a0;->d:Lv4/b;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p1, Lcom/google/android/gms/internal/cast/c1;->a:Lcom/google/android/gms/internal/cast/h1;

    .line 9
    .line 10
    iget-object p1, p1, Lcom/google/android/gms/internal/cast/h1;->a:Lcom/google/android/gms/internal/cast/zzfk;

    .line 11
    .line 12
    invoke-static {p1}, Lb5/l;->e(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget p1, p1, Lcom/google/android/gms/internal/cast/zzfk;->a:I

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    if-ne p1, v1, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/y;->a:Lw5/d;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lw5/d;->d(Ljava/lang/Boolean;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
