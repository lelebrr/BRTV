.class public final Lcom/google/android/gms/internal/cast/u4;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lq4/g;


# instance fields
.field public final synthetic a:Lc2/b;


# direct methods
.method public synthetic constructor <init>(Lc2/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/u4;->a:Lc2/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lq4/e;I)V
    .locals 1

    .line 1
    check-cast p1, Lq4/b;

    .line 2
    .line 3
    new-instance p1, Lcom/google/android/gms/internal/cast/e0;

    .line 4
    .line 5
    const/4 v0, 0x5

    .line 6
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/cast/e0;-><init>(I)V

    .line 7
    .line 8
    .line 9
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    iput-object p2, p1, Lcom/google/android/gms/internal/cast/e0;->b:Ljava/lang/Object;

    .line 14
    .line 15
    new-instance p2, Lcom/google/android/gms/internal/cast/f0;

    .line 16
    .line 17
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/cast/f0;-><init>(Lcom/google/android/gms/internal/cast/e0;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/u4;->a:Lc2/b;

    .line 21
    .line 22
    invoke-static {p1, p2}, Lc2/b;->k(Lc2/b;Lcom/google/android/gms/internal/cast/f0;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lc2/b;->m()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public bridge synthetic d(Lq4/e;Z)V
    .locals 1

    .line 1
    check-cast p1, Lq4/b;

    .line 2
    .line 3
    new-instance p2, Lcom/google/android/gms/internal/cast/e0;

    .line 4
    .line 5
    const/4 v0, 0x4

    .line 6
    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/cast/e0;-><init>(I)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/google/android/gms/internal/cast/f0;

    .line 10
    .line 11
    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/cast/f0;-><init>(Lcom/google/android/gms/internal/cast/e0;)V

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Lcom/google/android/gms/internal/cast/u4;->a:Lc2/b;

    .line 15
    .line 16
    invoke-static {p2, v0}, Lc2/b;->k(Lc2/b;Lcom/google/android/gms/internal/cast/f0;)V

    .line 17
    .line 18
    .line 19
    iget-object p2, p2, Lc2/b;->e:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p2, Lcom/google/android/gms/internal/cast/x7;

    .line 22
    .line 23
    invoke-static {p2}, Lb5/l;->e(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/cast/x7;->a(Lq4/b;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public g(Lq4/e;I)V
    .locals 2

    .line 1
    check-cast p1, Lq4/b;

    .line 2
    .line 3
    new-instance v0, Lcom/google/android/gms/internal/cast/e0;

    .line 4
    .line 5
    const/4 v1, 0x6

    .line 6
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/e0;-><init>(I)V

    .line 7
    .line 8
    .line 9
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    iput-object p2, v0, Lcom/google/android/gms/internal/cast/e0;->b:Ljava/lang/Object;

    .line 14
    .line 15
    new-instance p2, Lcom/google/android/gms/internal/cast/f0;

    .line 16
    .line 17
    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/cast/f0;-><init>(Lcom/google/android/gms/internal/cast/e0;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/u4;->a:Lc2/b;

    .line 21
    .line 22
    invoke-static {v0, p2}, Lc2/b;->k(Lc2/b;Lcom/google/android/gms/internal/cast/f0;)V

    .line 23
    .line 24
    .line 25
    iget-object p2, v0, Lc2/b;->e:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p2, Lcom/google/android/gms/internal/cast/x7;

    .line 28
    .line 29
    invoke-static {p2}, Lb5/l;->e(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/cast/x7;->a(Lq4/b;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public h(Lq4/e;Ljava/lang/String;)V
    .locals 3

    .line 1
    check-cast p1, Lq4/b;

    .line 2
    .line 3
    new-instance v0, Lcom/google/android/gms/internal/cast/e0;

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/e0;-><init>(I)V

    .line 7
    .line 8
    .line 9
    new-instance v2, Lcom/google/android/gms/internal/cast/f0;

    .line 10
    .line 11
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/cast/f0;-><init>(Lcom/google/android/gms/internal/cast/e0;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/u4;->a:Lc2/b;

    .line 15
    .line 16
    invoke-static {v0, v2}, Lc2/b;->k(Lc2/b;Lcom/google/android/gms/internal/cast/f0;)V

    .line 17
    .line 18
    .line 19
    iget-object v2, v0, Lc2/b;->e:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v2, Lcom/google/android/gms/internal/cast/x7;

    .line 22
    .line 23
    invoke-static {v2}, Lb5/l;->e(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/cast/x7;->a(Lq4/b;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, v0, Lc2/b;->e:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p1, Lcom/google/android/gms/internal/cast/x7;

    .line 32
    .line 33
    invoke-static {p1}, Lb5/l;->e(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p1, Lcom/google/android/gms/internal/cast/x7;->k:Ljava/lang/String;

    .line 37
    .line 38
    if-nez v0, :cond_0

    .line 39
    .line 40
    iput-object p2, p1, Lcom/google/android/gms/internal/cast/x7;->k:Ljava/lang/String;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-nez p2, :cond_1

    .line 48
    .line 49
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/cast/x7;->b(I)V

    .line 50
    .line 51
    .line 52
    :cond_1
    :goto_0
    return-void
.end method

.method public i(Lq4/e;I)V
    .locals 1

    .line 1
    check-cast p1, Lq4/b;

    .line 2
    .line 3
    new-instance p1, Lcom/google/android/gms/internal/cast/e0;

    .line 4
    .line 5
    const/16 v0, 0x8

    .line 6
    .line 7
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/cast/e0;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    iput-object p2, p1, Lcom/google/android/gms/internal/cast/e0;->b:Ljava/lang/Object;

    .line 15
    .line 16
    new-instance p2, Lcom/google/android/gms/internal/cast/f0;

    .line 17
    .line 18
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/cast/f0;-><init>(Lcom/google/android/gms/internal/cast/e0;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/u4;->a:Lc2/b;

    .line 22
    .line 23
    invoke-static {p1, p2}, Lc2/b;->k(Lc2/b;Lcom/google/android/gms/internal/cast/f0;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lc2/b;->m()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public k(Lq4/e;Ljava/lang/String;)V
    .locals 2

    .line 1
    check-cast p1, Lq4/b;

    .line 2
    .line 3
    new-instance v0, Lcom/google/android/gms/internal/cast/e0;

    .line 4
    .line 5
    const/4 v1, 0x7

    .line 6
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/e0;-><init>(I)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/google/android/gms/internal/cast/f0;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/cast/f0;-><init>(Lcom/google/android/gms/internal/cast/e0;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/u4;->a:Lc2/b;

    .line 15
    .line 16
    invoke-static {v0, v1}, Lc2/b;->k(Lc2/b;Lcom/google/android/gms/internal/cast/f0;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, v0, Lc2/b;->e:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Lcom/google/android/gms/internal/cast/x7;

    .line 22
    .line 23
    invoke-static {v1}, Lb5/l;->e(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/cast/x7;->a(Lq4/b;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, v0, Lc2/b;->e:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p1, Lcom/google/android/gms/internal/cast/x7;

    .line 32
    .line 33
    invoke-static {p1}, Lb5/l;->e(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p1, Lcom/google/android/gms/internal/cast/x7;->k:Ljava/lang/String;

    .line 37
    .line 38
    if-nez v0, :cond_0

    .line 39
    .line 40
    iput-object p2, p1, Lcom/google/android/gms/internal/cast/x7;->k:Ljava/lang/String;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-nez p2, :cond_1

    .line 48
    .line 49
    const/4 p2, 0x4

    .line 50
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/cast/x7;->b(I)V

    .line 51
    .line 52
    .line 53
    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic l(Lq4/e;)V
    .locals 0

    .line 1
    check-cast p1, Lq4/b;

    .line 2
    .line 3
    return-void
.end method

.method public m(Lq4/e;I)V
    .locals 2

    .line 1
    check-cast p1, Lq4/b;

    .line 2
    .line 3
    new-instance p1, Lcom/google/android/gms/internal/cast/e0;

    .line 4
    .line 5
    const/16 v0, 0x9

    .line 6
    .line 7
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/cast/e0;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    iput-object p2, p1, Lcom/google/android/gms/internal/cast/e0;->b:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object p2, p0, Lcom/google/android/gms/internal/cast/u4;->a:Lc2/b;

    .line 17
    .line 18
    iget-object v0, p2, Lc2/b;->c:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lcom/google/android/gms/internal/cast/h;

    .line 21
    .line 22
    iget v0, v0, Lcom/google/android/gms/internal/cast/h;->f:I

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    if-ne v0, v1, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p1, Lcom/google/android/gms/internal/cast/e0;->c:Ljava/lang/Object;

    .line 35
    .line 36
    new-instance v0, Lcom/google/android/gms/internal/cast/f0;

    .line 37
    .line 38
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/cast/f0;-><init>(Lcom/google/android/gms/internal/cast/e0;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p2, v0}, Lc2/b;->k(Lc2/b;Lcom/google/android/gms/internal/cast/f0;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Lc2/b;->m()V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public n(Lq4/e;)V
    .locals 4

    .line 1
    check-cast p1, Lq4/b;

    .line 2
    .line 3
    new-instance v0, Lcom/google/android/gms/internal/cast/e0;

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/e0;-><init>(I)V

    .line 7
    .line 8
    .line 9
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/u4;->a:Lc2/b;

    .line 10
    .line 11
    iget-object v3, v2, Lc2/b;->c:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v3, Lcom/google/android/gms/internal/cast/h;

    .line 14
    .line 15
    iget v3, v3, Lcom/google/android/gms/internal/cast/h;->f:I

    .line 16
    .line 17
    if-ne v3, v1, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iput-object v1, v0, Lcom/google/android/gms/internal/cast/e0;->c:Ljava/lang/Object;

    .line 27
    .line 28
    new-instance v1, Lcom/google/android/gms/internal/cast/f0;

    .line 29
    .line 30
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/cast/f0;-><init>(Lcom/google/android/gms/internal/cast/e0;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v2, v1}, Lc2/b;->k(Lc2/b;Lcom/google/android/gms/internal/cast/f0;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, v2, Lc2/b;->e:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v0, Lcom/google/android/gms/internal/cast/x7;

    .line 39
    .line 40
    invoke-static {v0}, Lb5/l;->e(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cast/x7;->a(Lq4/b;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, v2, Lc2/b;->f:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v0, Lcom/google/android/gms/internal/cast/u4;

    .line 49
    .line 50
    iput-object v0, p1, Lq4/b;->l:Lcom/google/android/gms/internal/cast/u4;

    .line 51
    .line 52
    return-void
.end method
