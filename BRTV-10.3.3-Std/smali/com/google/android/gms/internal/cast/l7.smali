.class public final Lcom/google/android/gms/internal/cast/l7;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lw5/a;
.implements Lq4/g;
.implements Ls4/a;
.implements Lcom/google/android/gms/internal/cast/n7;


# static fields
.field public static final c:Lcom/google/android/gms/internal/cast/k2;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/k2;

    .line 2
    .line 3
    const/16 v1, 0x19

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/k2;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/android/gms/internal/cast/l7;->c:Lcom/google/android/gms/internal/cast/k2;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/cast/l7;->a:I

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/cast/l7;

    sget-object v2, Lcom/google/android/gms/internal/cast/s7;->c:Lcom/google/android/gms/internal/cast/s7;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/android/gms/internal/cast/n7;

    sget-object v3, Lcom/google/android/gms/internal/cast/k2;->p:Lcom/google/android/gms/internal/cast/k2;

    aput-object v3, v2, v0

    sget-object v0, Lcom/google/android/gms/internal/cast/l7;->c:Lcom/google/android/gms/internal/cast/k2;

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x6

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/cast/l7;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/cast/h7;->a:Ljava/nio/charset/Charset;

    iput-object v1, p0, Lcom/google/android/gms/internal/cast/l7;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/cast/l7;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/cast/l7;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/cast/x6;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/gms/internal/cast/l7;->a:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/cast/h7;->a:Ljava/nio/charset/Charset;

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/l7;->b:Ljava/lang/Object;

    iput-object p0, p1, Lcom/google/android/gms/internal/cast/x6;->d:Lcom/google/android/gms/internal/cast/l7;

    return-void
.end method


# virtual methods
.method public A(ILjava/lang/Object;Lcom/google/android/gms/internal/cast/v7;)V
    .locals 2

    .line 1
    check-cast p2, Lcom/google/android/gms/internal/cast/r6;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/l7;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lcom/google/android/gms/internal/cast/x6;

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/cast/x6;->C(II)V

    .line 9
    .line 10
    .line 11
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/x6;->d:Lcom/google/android/gms/internal/cast/l7;

    .line 12
    .line 13
    invoke-interface {p3, p2, v1}, Lcom/google/android/gms/internal/cast/v7;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/cast/l7;)V

    .line 14
    .line 15
    .line 16
    const/4 p2, 0x4

    .line 17
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/cast/x6;->C(II)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public B(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/l7;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/cast/x6;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/cast/x6;->z(II)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public C(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/l7;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/cast/x6;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/cast/x6;->F(IJ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public D(ILjava/lang/Object;Lcom/google/android/gms/internal/cast/v7;)V
    .locals 1

    .line 1
    check-cast p2, Lcom/google/android/gms/internal/cast/r6;

    .line 2
    .line 3
    shl-int/lit8 p1, p1, 0x3

    .line 4
    .line 5
    or-int/lit8 p1, p1, 0x2

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/l7;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lcom/google/android/gms/internal/cast/x6;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cast/x6;->E(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/cast/r6;->a(Lcom/google/android/gms/internal/cast/v7;)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cast/x6;->E(I)V

    .line 19
    .line 20
    .line 21
    iget-object p1, v0, Lcom/google/android/gms/internal/cast/x6;->d:Lcom/google/android/gms/internal/cast/l7;

    .line 22
    .line 23
    invoke-interface {p3, p2, p1}, Lcom/google/android/gms/internal/cast/v7;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/cast/l7;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public E(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/l7;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/cast/x6;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/cast/x6;->v(II)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public F(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/l7;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/cast/x6;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/cast/x6;->x(IJ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public bridge synthetic a(Lq4/e;I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/cast/l7;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lq4/b;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/l7;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lcom/google/android/gms/internal/cast/g2;

    .line 11
    .line 12
    iput-object p1, v0, Lcom/google/android/gms/internal/cast/g2;->h:Lq4/b;

    .line 13
    .line 14
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/cast/g2;->a(Lcom/google/android/gms/internal/cast/g2;I)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    check-cast p1, Lq4/b;

    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public b(Ljava/lang/Class;)Lcom/google/android/gms/internal/cast/u7;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/4 v1, 0x2

    .line 3
    if-ge v0, v1, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/l7;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, [Lcom/google/android/gms/internal/cast/n7;

    .line 8
    .line 9
    aget-object v1, v1, v0

    .line 10
    .line 11
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/cast/n7;->c(Ljava/lang/Class;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/cast/n7;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/cast/u7;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string v1, "No factory is available for message type: "

    .line 32
    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v0
.end method

.method public c(Ljava/lang/Class;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    const/4 v2, 0x2

    .line 4
    if-ge v1, v2, :cond_1

    .line 5
    .line 6
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/l7;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v2, [Lcom/google/android/gms/internal/cast/n7;

    .line 9
    .line 10
    aget-object v2, v2, v1

    .line 11
    .line 12
    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/cast/n7;->c(Ljava/lang/Class;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    return p1

    .line 20
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    return v0
.end method

.method public d(Lq4/e;Z)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/cast/l7;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lq4/b;

    .line 7
    .line 8
    sget-object v0, Lcom/google/android/gms/internal/cast/g2;->i:Lv4/b;

    .line 9
    .line 10
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x1

    .line 15
    new-array v2, v2, [Ljava/lang/Object;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    aput-object v1, v2, v3

    .line 19
    .line 20
    const-string v1, "onSessionResumed with wasSuspended = %b"

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/l7;->b:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Lcom/google/android/gms/internal/cast/g2;

    .line 28
    .line 29
    iput-object p1, v0, Lcom/google/android/gms/internal/cast/g2;->h:Lq4/b;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/g2;->c()V

    .line 32
    .line 33
    .line 34
    iget-object p1, v0, Lcom/google/android/gms/internal/cast/g2;->g:Lcom/google/android/gms/internal/cast/h2;

    .line 35
    .line 36
    invoke-static {p1}, Lb5/l;->e(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, v0, Lcom/google/android/gms/internal/cast/g2;->g:Lcom/google/android/gms/internal/cast/h2;

    .line 40
    .line 41
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/g2;->c:Lcom/google/android/gms/internal/cast/j2;

    .line 42
    .line 43
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/cast/j2;->b(Lcom/google/android/gms/internal/cast/h2;)Lcom/google/android/gms/internal/cast/b3;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/b3;->d()Lcom/google/android/gms/internal/cast/w2;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {v1}, Lcom/google/android/gms/internal/cast/w2;->m(Lcom/google/android/gms/internal/cast/w2;)Lcom/google/android/gms/internal/cast/v2;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/b7;->c()V

    .line 56
    .line 57
    .line 58
    iget-object v2, v1, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 59
    .line 60
    check-cast v2, Lcom/google/android/gms/internal/cast/w2;

    .line 61
    .line 62
    invoke-static {v2, p2}, Lcom/google/android/gms/internal/cast/w2;->t(Lcom/google/android/gms/internal/cast/w2;Z)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/b7;->c()V

    .line 66
    .line 67
    .line 68
    iget-object p2, p1, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 69
    .line 70
    check-cast p2, Lcom/google/android/gms/internal/cast/c3;

    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/b7;->a()Lcom/google/android/gms/internal/cast/c7;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    check-cast v1, Lcom/google/android/gms/internal/cast/w2;

    .line 77
    .line 78
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/cast/c3;->q(Lcom/google/android/gms/internal/cast/c3;Lcom/google/android/gms/internal/cast/w2;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/b7;->a()Lcom/google/android/gms/internal/cast/c7;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Lcom/google/android/gms/internal/cast/c3;

    .line 86
    .line 87
    iget-object p2, v0, Lcom/google/android/gms/internal/cast/g2;->a:Lcom/google/android/gms/internal/cast/m1;

    .line 88
    .line 89
    const/16 v1, 0xe3

    .line 90
    .line 91
    invoke-virtual {p2, p1, v1}, Lcom/google/android/gms/internal/cast/m1;->a(Lcom/google/android/gms/internal/cast/c3;I)V

    .line 92
    .line 93
    .line 94
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/g2;->b(Lcom/google/android/gms/internal/cast/g2;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/g2;->e()V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :pswitch_0
    check-cast p1, Lq4/b;

    .line 102
    .line 103
    return-void

    .line 104
    nop

    .line 105
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public e(Lw5/g;)V
    .locals 14

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    invoke-virtual {p1}, Lw5/g;->e()Z

    .line 5
    .line 6
    .line 7
    move-result v3

    .line 8
    sget-object v4, Lcom/google/android/gms/internal/cast/u;->l:Lv4/b;

    .line 9
    .line 10
    iget-object v5, p0, Lcom/google/android/gms/internal/cast/l7;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v5, Lcom/google/android/gms/internal/cast/u;

    .line 13
    .line 14
    if-eqz v3, :cond_2

    .line 15
    .line 16
    invoke-virtual {p1}, Lw5/g;->d()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroid/os/Bundle;

    .line 21
    .line 22
    const-string v3, "com.google.android.gms.cast.FLAG_OUTPUT_SWITCHER_ENABLED"

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    if-eqz v6, :cond_0

    .line 31
    .line 32
    const/4 v6, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v6, 0x0

    .line 35
    :goto_0
    if-eq v2, v6, :cond_1

    .line 36
    .line 37
    const-string v7, "not existed"

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const-string v7, "existed"

    .line 41
    .line 42
    :goto_1
    new-array v8, v2, [Ljava/lang/Object;

    .line 43
    .line 44
    aput-object v7, v8, v1

    .line 45
    .line 46
    const-string v7, "The module-to-client output switcher flag %s"

    .line 47
    .line 48
    invoke-virtual {v4, v7, v8}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    if-eqz v6, :cond_2

    .line 52
    .line 53
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    iput-boolean p1, v5, Lcom/google/android/gms/internal/cast/u;->j:Z

    .line 58
    .line 59
    :cond_2
    iget-boolean p1, v5, Lcom/google/android/gms/internal/cast/u;->j:Z

    .line 60
    .line 61
    iget-object v3, v5, Lcom/google/android/gms/internal/cast/u;->e:Lq1/u0;

    .line 62
    .line 63
    if-eqz v3, :cond_12

    .line 64
    .line 65
    iget-object v3, v5, Lcom/google/android/gms/internal/cast/u;->f:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 66
    .line 67
    if-nez v3, :cond_3

    .line 68
    .line 69
    goto/16 :goto_6

    .line 70
    .line 71
    :cond_3
    if-eqz p1, :cond_4

    .line 72
    .line 73
    iget-boolean p1, v3, Lcom/google/android/gms/cast/framework/CastOptions;->m:Z

    .line 74
    .line 75
    if-eqz p1, :cond_4

    .line 76
    .line 77
    const/4 p1, 0x1

    .line 78
    goto :goto_2

    .line 79
    :cond_4
    const/4 p1, 0x0

    .line 80
    :goto_2
    new-instance v6, Lq1/w0;

    .line 81
    .line 82
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 83
    .line 84
    .line 85
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 86
    .line 87
    const/16 v8, 0x1e

    .line 88
    .line 89
    if-lt v7, v8, :cond_5

    .line 90
    .line 91
    const/4 v9, 0x1

    .line 92
    goto :goto_3

    .line 93
    :cond_5
    const/4 v9, 0x0

    .line 94
    :goto_3
    iput-boolean v9, v6, Lq1/w0;->a:Z

    .line 95
    .line 96
    if-lt v7, v8, :cond_6

    .line 97
    .line 98
    iput-boolean p1, v6, Lq1/w0;->a:Z

    .line 99
    .line 100
    :cond_6
    iget-boolean v9, v3, Lcom/google/android/gms/cast/framework/CastOptions;->k:Z

    .line 101
    .line 102
    if-lt v7, v8, :cond_7

    .line 103
    .line 104
    iput-boolean v9, v6, Lq1/w0;->c:Z

    .line 105
    .line 106
    :cond_7
    iget-boolean v10, v3, Lcom/google/android/gms/cast/framework/CastOptions;->j:Z

    .line 107
    .line 108
    if-lt v7, v8, :cond_8

    .line 109
    .line 110
    iput-boolean v10, v6, Lq1/w0;->b:Z

    .line 111
    .line 112
    :cond_8
    if-lt v7, v8, :cond_9

    .line 113
    .line 114
    iget-boolean v3, v3, Lcom/google/android/gms/cast/framework/CastOptions;->r:Z

    .line 115
    .line 116
    iput-boolean v3, v6, Lq1/w0;->d:Z

    .line 117
    .line 118
    :cond_9
    new-instance v3, Lq1/x0;

    .line 119
    .line 120
    invoke-direct {v3, v6}, Lq1/x0;-><init>(Lq1/w0;)V

    .line 121
    .line 122
    .line 123
    invoke-static {}, Lq1/u0;->b()V

    .line 124
    .line 125
    .line 126
    invoke-static {}, Lq1/u0;->c()Lq1/h;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    iget-object v7, v6, Lq1/h;->u:Lq1/x0;

    .line 131
    .line 132
    iput-object v3, v6, Lq1/h;->u:Lq1/x0;

    .line 133
    .line 134
    invoke-virtual {v6}, Lq1/h;->h()Z

    .line 135
    .line 136
    .line 137
    move-result v8

    .line 138
    iget-object v11, v6, Lq1/h;->a:Lq1/b;

    .line 139
    .line 140
    if-eqz v8, :cond_c

    .line 141
    .line 142
    iget-object v8, v6, Lq1/h;->r:Lq1/p;

    .line 143
    .line 144
    if-nez v8, :cond_a

    .line 145
    .line 146
    new-instance v8, Lq1/p;

    .line 147
    .line 148
    new-instance v12, Lq1/a;

    .line 149
    .line 150
    invoke-direct {v12, v6}, Lq1/a;-><init>(Lq1/h;)V

    .line 151
    .line 152
    .line 153
    iget-object v13, v6, Lq1/h;->g:Landroid/content/Context;

    .line 154
    .line 155
    invoke-direct {v8, v13, v12}, Lq1/p;-><init>(Landroid/content/Context;Lq1/a;)V

    .line 156
    .line 157
    .line 158
    iput-object v8, v6, Lq1/h;->r:Lq1/p;

    .line 159
    .line 160
    invoke-virtual {v6, v8, v2}, Lq1/h;->a(Lq1/e0;Z)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v6}, Lq1/h;->l()V

    .line 164
    .line 165
    .line 166
    :cond_a
    iget-object v8, v6, Lq1/h;->r:Lq1/p;

    .line 167
    .line 168
    iget-boolean v12, v3, Lq1/x0;->d:Z

    .line 169
    .line 170
    iput-boolean v12, v8, Lq1/p;->p:Z

    .line 171
    .line 172
    invoke-virtual {v8}, Lq1/p;->i()V

    .line 173
    .line 174
    .line 175
    iget-object v8, v6, Lq1/h;->c:Lq1/n1;

    .line 176
    .line 177
    iput-boolean v12, v8, Lq1/n1;->f:Z

    .line 178
    .line 179
    iget-object v12, v8, Lq1/n1;->c:Landroid/os/Handler;

    .line 180
    .line 181
    iget-object v8, v8, Lq1/n1;->i:La/f;

    .line 182
    .line 183
    invoke-virtual {v12, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 184
    .line 185
    .line 186
    if-eqz v7, :cond_b

    .line 187
    .line 188
    iget-boolean v7, v7, Lq1/x0;->c:Z

    .line 189
    .line 190
    if-eqz v7, :cond_b

    .line 191
    .line 192
    const/4 v7, 0x1

    .line 193
    goto :goto_4

    .line 194
    :cond_b
    const/4 v7, 0x0

    .line 195
    :goto_4
    iget-boolean v8, v3, Lq1/x0;->c:Z

    .line 196
    .line 197
    if-eq v7, v8, :cond_e

    .line 198
    .line 199
    iget-object v7, v6, Lq1/h;->r:Lq1/p;

    .line 200
    .line 201
    iget-object v6, v6, Lq1/h;->A:Lq1/x;

    .line 202
    .line 203
    iput-object v6, v7, Lq1/e0;->e:Lq1/x;

    .line 204
    .line 205
    iget-boolean v6, v7, Lq1/e0;->f:Z

    .line 206
    .line 207
    if-nez v6, :cond_e

    .line 208
    .line 209
    iput-boolean v2, v7, Lq1/e0;->f:Z

    .line 210
    .line 211
    iget-object v6, v7, Lq1/e0;->c:Landroidx/mediarouter/app/c;

    .line 212
    .line 213
    invoke-virtual {v6, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 214
    .line 215
    .line 216
    goto :goto_5

    .line 217
    :cond_c
    iget-object v7, v6, Lq1/h;->r:Lq1/p;

    .line 218
    .line 219
    if-eqz v7, :cond_e

    .line 220
    .line 221
    invoke-virtual {v6, v7}, Lq1/h;->d(Lq1/e0;)Lq1/r0;

    .line 222
    .line 223
    .line 224
    move-result-object v8

    .line 225
    const/4 v12, 0x0

    .line 226
    if-eqz v8, :cond_d

    .line 227
    .line 228
    invoke-static {}, Lq1/u0;->b()V

    .line 229
    .line 230
    .line 231
    iput-object v12, v7, Lq1/e0;->d:Lu7/d;

    .line 232
    .line 233
    invoke-virtual {v7, v12}, Lq1/e0;->g(Lq1/x;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v6, v8, v12}, Lq1/h;->n(Lq1/r0;Landroidx/appcompat/app/r0;)V

    .line 237
    .line 238
    .line 239
    const/16 v7, 0x202

    .line 240
    .line 241
    invoke-virtual {v11, v7, v8}, Lq1/b;->b(ILjava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    iget-object v7, v6, Lq1/h;->l:Ljava/util/ArrayList;

    .line 245
    .line 246
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    :cond_d
    iput-object v12, v6, Lq1/h;->r:Lq1/p;

    .line 250
    .line 251
    iget-object v6, v6, Lq1/h;->c:Lq1/n1;

    .line 252
    .line 253
    iget-object v7, v6, Lq1/n1;->c:Landroid/os/Handler;

    .line 254
    .line 255
    iget-object v6, v6, Lq1/n1;->i:La/f;

    .line 256
    .line 257
    invoke-virtual {v7, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 258
    .line 259
    .line 260
    :cond_e
    :goto_5
    const/16 v6, 0x301

    .line 261
    .line 262
    invoke-virtual {v11, v6, v3}, Lq1/b;->b(ILjava/lang/Object;)V

    .line 263
    .line 264
    .line 265
    iget-boolean v3, v5, Lcom/google/android/gms/internal/cast/u;->i:Z

    .line 266
    .line 267
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 268
    .line 269
    .line 270
    move-result-object v6

    .line 271
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 272
    .line 273
    .line 274
    move-result-object v7

    .line 275
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 276
    .line 277
    .line 278
    move-result-object v8

    .line 279
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 280
    .line 281
    .line 282
    move-result-object v10

    .line 283
    const/4 v11, 0x4

    .line 284
    new-array v11, v11, [Ljava/lang/Object;

    .line 285
    .line 286
    aput-object v6, v11, v1

    .line 287
    .line 288
    aput-object v7, v11, v2

    .line 289
    .line 290
    aput-object v8, v11, v0

    .line 291
    .line 292
    const/4 v0, 0x3

    .line 293
    aput-object v10, v11, v0

    .line 294
    .line 295
    iget-object v0, v4, Lv4/b;->a:Ljava/lang/String;

    .line 296
    .line 297
    const-string v6, "media transfer = %b, session transfer = %b, transfer to local = %b, in-app output switcher = %b"

    .line 298
    .line 299
    invoke-virtual {v4, v6, v11}, Lv4/b;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v4

    .line 303
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    .line 305
    .line 306
    iget-object v0, v5, Lcom/google/android/gms/internal/cast/u;->h:Lcom/google/android/gms/internal/cast/x;

    .line 307
    .line 308
    if-eqz v0, :cond_10

    .line 309
    .line 310
    if-eqz v3, :cond_f

    .line 311
    .line 312
    if-eqz p1, :cond_f

    .line 313
    .line 314
    const/4 v1, 0x1

    .line 315
    :cond_f
    iput-boolean v1, v0, Lcom/google/android/gms/internal/cast/x;->e:Z

    .line 316
    .line 317
    :cond_10
    if-eqz v3, :cond_11

    .line 318
    .line 319
    if-eqz p1, :cond_11

    .line 320
    .line 321
    sget-object p1, Lcom/google/android/gms/internal/cast/m2;->K:Lcom/google/android/gms/internal/cast/m2;

    .line 322
    .line 323
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/l2;->a(Lcom/google/android/gms/internal/cast/m2;)V

    .line 324
    .line 325
    .line 326
    :cond_11
    if-eqz v9, :cond_12

    .line 327
    .line 328
    sget-object p1, Lcom/google/android/gms/internal/cast/m2;->L:Lcom/google/android/gms/internal/cast/m2;

    .line 329
    .line 330
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/l2;->a(Lcom/google/android/gms/internal/cast/m2;)V

    .line 331
    .line 332
    .line 333
    :cond_12
    :goto_6
    return-void
.end method

.method public f(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/l7;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lcom/google/android/gms/internal/cast/i0;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/i0;->e:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Landroid/view/View;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const/4 v2, 0x4

    .line 14
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    iget-object v2, v0, Lcom/google/android/gms/internal/cast/i0;->c:Landroid/widget/ImageView;

    .line 19
    .line 20
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, v0, Lcom/google/android/gms/internal/cast/i0;->f:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p1, Lu4/c;

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    sget v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->n0:I

    .line 36
    .line 37
    iget-object p1, p1, Lu4/c;->a:Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->u()V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method public g(Lq4/e;I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/cast/l7;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lq4/b;

    .line 7
    .line 8
    sget-object v0, Lcom/google/android/gms/internal/cast/g2;->i:Lv4/b;

    .line 9
    .line 10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x1

    .line 15
    new-array v2, v2, [Ljava/lang/Object;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    aput-object v1, v2, v3

    .line 19
    .line 20
    const-string v1, "onSessionSuspended with reason = %d"

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/l7;->b:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Lcom/google/android/gms/internal/cast/g2;

    .line 28
    .line 29
    iput-object p1, v0, Lcom/google/android/gms/internal/cast/g2;->h:Lq4/b;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/g2;->c()V

    .line 32
    .line 33
    .line 34
    iget-object p1, v0, Lcom/google/android/gms/internal/cast/g2;->g:Lcom/google/android/gms/internal/cast/h2;

    .line 35
    .line 36
    invoke-static {p1}, Lb5/l;->e(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, v0, Lcom/google/android/gms/internal/cast/g2;->g:Lcom/google/android/gms/internal/cast/h2;

    .line 40
    .line 41
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/g2;->c:Lcom/google/android/gms/internal/cast/j2;

    .line 42
    .line 43
    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/cast/j2;->a(Lcom/google/android/gms/internal/cast/h2;I)Lcom/google/android/gms/internal/cast/c3;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iget-object p2, v0, Lcom/google/android/gms/internal/cast/g2;->a:Lcom/google/android/gms/internal/cast/m1;

    .line 48
    .line 49
    const/16 v1, 0xe1

    .line 50
    .line 51
    invoke-virtual {p2, p1, v1}, Lcom/google/android/gms/internal/cast/m1;->a(Lcom/google/android/gms/internal/cast/c3;I)V

    .line 52
    .line 53
    .line 54
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/g2;->b(Lcom/google/android/gms/internal/cast/g2;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, v0, Lcom/google/android/gms/internal/cast/g2;->e:Lcom/google/android/gms/internal/cast/x0;

    .line 58
    .line 59
    iget-object p2, v0, Lcom/google/android/gms/internal/cast/g2;->d:Lcom/google/android/gms/internal/cast/z;

    .line 60
    .line 61
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :pswitch_0
    check-cast p1, Lq4/b;

    .line 66
    .line 67
    return-void

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public h(Lq4/e;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/l7;->b:Ljava/lang/Object;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    iget v3, p0, Lcom/google/android/gms/internal/cast/l7;->a:I

    .line 6
    .line 7
    packed-switch v3, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Lq4/b;

    .line 11
    .line 12
    sget-object v3, Lcom/google/android/gms/internal/cast/g2;->i:Lv4/b;

    .line 13
    .line 14
    new-array v1, v1, [Ljava/lang/Object;

    .line 15
    .line 16
    aput-object p2, v1, v2

    .line 17
    .line 18
    const-string v2, "onSessionStarted with sessionId = %s"

    .line 19
    .line 20
    invoke-virtual {v3, v2, v1}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    check-cast v0, Lcom/google/android/gms/internal/cast/g2;

    .line 24
    .line 25
    iput-object p1, v0, Lcom/google/android/gms/internal/cast/g2;->h:Lq4/b;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/g2;->c()V

    .line 28
    .line 29
    .line 30
    iget-object p1, v0, Lcom/google/android/gms/internal/cast/g2;->g:Lcom/google/android/gms/internal/cast/h2;

    .line 31
    .line 32
    iput-object p2, p1, Lcom/google/android/gms/internal/cast/h2;->f:Ljava/lang/String;

    .line 33
    .line 34
    iget-object p2, v0, Lcom/google/android/gms/internal/cast/g2;->c:Lcom/google/android/gms/internal/cast/j2;

    .line 35
    .line 36
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/cast/j2;->b(Lcom/google/android/gms/internal/cast/h2;)Lcom/google/android/gms/internal/cast/b3;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/b7;->a()Lcom/google/android/gms/internal/cast/c7;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Lcom/google/android/gms/internal/cast/c3;

    .line 45
    .line 46
    iget-object p2, v0, Lcom/google/android/gms/internal/cast/g2;->a:Lcom/google/android/gms/internal/cast/m1;

    .line 47
    .line 48
    const/16 v1, 0xde

    .line 49
    .line 50
    invoke-virtual {p2, p1, v1}, Lcom/google/android/gms/internal/cast/m1;->a(Lcom/google/android/gms/internal/cast/c3;I)V

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/g2;->b(Lcom/google/android/gms/internal/cast/g2;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/g2;->e()V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :pswitch_0
    check-cast p1, Lq4/b;

    .line 61
    .line 62
    sget-object p1, Lcom/google/android/gms/internal/cast/x;->g:Lv4/b;

    .line 63
    .line 64
    check-cast v0, Lcom/google/android/gms/internal/cast/x;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    new-array v1, v1, [Ljava/lang/Object;

    .line 74
    .line 75
    aput-object p2, v1, v2

    .line 76
    .line 77
    const-string p2, "onSessionStarted with transferType = %d"

    .line 78
    .line 79
    invoke-virtual {p1, p2, v1}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    iget-boolean p1, v0, Lcom/google/android/gms/internal/cast/x;->e:Z

    .line 83
    .line 84
    if-eqz p1, :cond_0

    .line 85
    .line 86
    iget-object p1, v0, Lcom/google/android/gms/internal/cast/x;->a:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 87
    .line 88
    iget-boolean p1, p1, Lcom/google/android/gms/cast/framework/CastOptions;->q:Z

    .line 89
    .line 90
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/x;->a()V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    nop

    .line 95
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic i(Lq4/e;I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/cast/l7;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lq4/b;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/l7;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lcom/google/android/gms/internal/cast/g2;

    .line 11
    .line 12
    iput-object p1, v0, Lcom/google/android/gms/internal/cast/g2;->h:Lq4/b;

    .line 13
    .line 14
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/cast/g2;->a(Lcom/google/android/gms/internal/cast/g2;I)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    check-cast p1, Lq4/b;

    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public j(II)V
    .locals 1

    .line 1
    add-int v0, p2, p2

    .line 2
    .line 3
    shr-int/lit8 p2, p2, 0x1f

    .line 4
    .line 5
    xor-int/2addr p2, v0

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/l7;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/gms/internal/cast/x6;

    .line 9
    .line 10
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/cast/x6;->D(II)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public k(Lq4/e;Ljava/lang/String;)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget v2, p0, Lcom/google/android/gms/internal/cast/l7;->a:I

    .line 4
    .line 5
    packed-switch v2, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lq4/b;

    .line 9
    .line 10
    sget-object v2, Lcom/google/android/gms/internal/cast/g2;->i:Lv4/b;

    .line 11
    .line 12
    new-array v3, v1, [Ljava/lang/Object;

    .line 13
    .line 14
    aput-object p2, v3, v0

    .line 15
    .line 16
    const-string v4, "onSessionResuming with sessionId = %s"

    .line 17
    .line 18
    invoke-virtual {v2, v4, v3}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/l7;->b:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v3, Lcom/google/android/gms/internal/cast/g2;

    .line 24
    .line 25
    iput-object p1, v3, Lcom/google/android/gms/internal/cast/g2;->h:Lq4/b;

    .line 26
    .line 27
    invoke-virtual {v3, p2}, Lcom/google/android/gms/internal/cast/g2;->h(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    new-array p1, v0, [Ljava/lang/Object;

    .line 34
    .line 35
    const-string p2, "Use the existing ApplicationAnalyticsSession if it is available and valid."

    .line 36
    .line 37
    invoke-virtual {v2, p2, p1}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, v3, Lcom/google/android/gms/internal/cast/g2;->g:Lcom/google/android/gms/internal/cast/h2;

    .line 41
    .line 42
    invoke-static {p1}, Lb5/l;->e(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto/16 :goto_2

    .line 46
    .line 47
    :cond_0
    iget-object p1, v3, Lcom/google/android/gms/internal/cast/g2;->f:Landroid/content/SharedPreferences;

    .line 48
    .line 49
    iget-object v4, v3, Lcom/google/android/gms/internal/cast/g2;->b:Lcom/google/android/gms/internal/cast/h;

    .line 50
    .line 51
    if-nez p1, :cond_1

    .line 52
    .line 53
    sget-object p1, Lcom/google/android/gms/internal/cast/h2;->q:Lv4/b;

    .line 54
    .line 55
    goto/16 :goto_0

    .line 56
    .line 57
    :cond_1
    new-instance v5, Lcom/google/android/gms/internal/cast/h2;

    .line 58
    .line 59
    invoke-direct {v5, v4}, Lcom/google/android/gms/internal/cast/h2;-><init>(Lcom/google/android/gms/internal/cast/h;)V

    .line 60
    .line 61
    .line 62
    const-string v6, "is_output_switcher_enabled"

    .line 63
    .line 64
    invoke-interface {p1, v6, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    iput-boolean v6, v5, Lcom/google/android/gms/internal/cast/h2;->o:Z

    .line 69
    .line 70
    const-string v6, "application_id"

    .line 71
    .line 72
    invoke-interface {p1, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    if-eqz v7, :cond_2

    .line 77
    .line 78
    const-string v7, ""

    .line 79
    .line 80
    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    iput-object v6, v5, Lcom/google/android/gms/internal/cast/h2;->b:Ljava/lang/String;

    .line 85
    .line 86
    const-string v6, "receiver_metrics_id"

    .line 87
    .line 88
    invoke-interface {p1, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result v8

    .line 92
    if-eqz v8, :cond_2

    .line 93
    .line 94
    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    iput-object v6, v5, Lcom/google/android/gms/internal/cast/h2;->c:Ljava/lang/String;

    .line 99
    .line 100
    const-string v6, "analytics_session_id"

    .line 101
    .line 102
    invoke-interface {p1, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result v8

    .line 106
    if-eqz v8, :cond_2

    .line 107
    .line 108
    const-wide/16 v8, 0x0

    .line 109
    .line 110
    invoke-interface {p1, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 111
    .line 112
    .line 113
    move-result-wide v8

    .line 114
    iput-wide v8, v5, Lcom/google/android/gms/internal/cast/h2;->d:J

    .line 115
    .line 116
    const-string v6, "event_sequence_number"

    .line 117
    .line 118
    invoke-interface {p1, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 119
    .line 120
    .line 121
    move-result v8

    .line 122
    if-eqz v8, :cond_2

    .line 123
    .line 124
    invoke-interface {p1, v6, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    iput v6, v5, Lcom/google/android/gms/internal/cast/h2;->e:I

    .line 129
    .line 130
    const-string v6, "receiver_session_id"

    .line 131
    .line 132
    invoke-interface {p1, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 133
    .line 134
    .line 135
    move-result v8

    .line 136
    if-eqz v8, :cond_2

    .line 137
    .line 138
    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    iput-object v6, v5, Lcom/google/android/gms/internal/cast/h2;->f:Ljava/lang/String;

    .line 143
    .line 144
    const-string v6, "device_capabilities"

    .line 145
    .line 146
    invoke-interface {p1, v6, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 147
    .line 148
    .line 149
    move-result v6

    .line 150
    iput v6, v5, Lcom/google/android/gms/internal/cast/h2;->g:I

    .line 151
    .line 152
    const-string v6, "device_model_name"

    .line 153
    .line 154
    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    iput-object v6, v5, Lcom/google/android/gms/internal/cast/h2;->h:Ljava/lang/String;

    .line 159
    .line 160
    const-string v6, "manufacturer"

    .line 161
    .line 162
    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    iput-object v6, v5, Lcom/google/android/gms/internal/cast/h2;->i:Ljava/lang/String;

    .line 167
    .line 168
    const-string v6, "product_name"

    .line 169
    .line 170
    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v6

    .line 174
    iput-object v6, v5, Lcom/google/android/gms/internal/cast/h2;->j:Ljava/lang/String;

    .line 175
    .line 176
    const-string v6, "build_type"

    .line 177
    .line 178
    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v6

    .line 182
    iput-object v6, v5, Lcom/google/android/gms/internal/cast/h2;->k:Ljava/lang/String;

    .line 183
    .line 184
    const-string v6, "cast_build_version"

    .line 185
    .line 186
    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v6

    .line 190
    iput-object v6, v5, Lcom/google/android/gms/internal/cast/h2;->l:Ljava/lang/String;

    .line 191
    .line 192
    const-string v6, "system_build_number"

    .line 193
    .line 194
    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v6

    .line 198
    iput-object v6, v5, Lcom/google/android/gms/internal/cast/h2;->m:Ljava/lang/String;

    .line 199
    .line 200
    const-string v6, "device_category"

    .line 201
    .line 202
    invoke-interface {p1, v6, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 203
    .line 204
    .line 205
    move-result v6

    .line 206
    iput v6, v5, Lcom/google/android/gms/internal/cast/h2;->n:I

    .line 207
    .line 208
    const-string v6, "analytics_session_start_type"

    .line 209
    .line 210
    invoke-interface {p1, v6, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 211
    .line 212
    .line 213
    move-result p1

    .line 214
    iput p1, v5, Lcom/google/android/gms/internal/cast/h2;->p:I

    .line 215
    .line 216
    goto :goto_1

    .line 217
    :cond_2
    :goto_0
    const/4 v5, 0x0

    .line 218
    :goto_1
    iput-object v5, v3, Lcom/google/android/gms/internal/cast/g2;->g:Lcom/google/android/gms/internal/cast/h2;

    .line 219
    .line 220
    invoke-virtual {v3, p2}, Lcom/google/android/gms/internal/cast/g2;->h(Ljava/lang/String;)Z

    .line 221
    .line 222
    .line 223
    move-result p1

    .line 224
    const-wide/16 v5, 0x1

    .line 225
    .line 226
    if-eqz p1, :cond_3

    .line 227
    .line 228
    new-array p1, v0, [Ljava/lang/Object;

    .line 229
    .line 230
    const-string p2, "Use the restored ApplicationAnalyticsSession if it is valid."

    .line 231
    .line 232
    invoke-virtual {v2, p2, p1}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    iget-object p1, v3, Lcom/google/android/gms/internal/cast/g2;->g:Lcom/google/android/gms/internal/cast/h2;

    .line 236
    .line 237
    invoke-static {p1}, Lb5/l;->e(Ljava/lang/Object;)V

    .line 238
    .line 239
    .line 240
    iget-object p1, v3, Lcom/google/android/gms/internal/cast/g2;->g:Lcom/google/android/gms/internal/cast/h2;

    .line 241
    .line 242
    iget-wide p1, p1, Lcom/google/android/gms/internal/cast/h2;->d:J

    .line 243
    .line 244
    add-long/2addr p1, v5

    .line 245
    sput-wide p1, Lcom/google/android/gms/internal/cast/h2;->r:J

    .line 246
    .line 247
    goto :goto_2

    .line 248
    :cond_3
    new-array p1, v0, [Ljava/lang/Object;

    .line 249
    .line 250
    const-string v7, "The restored ApplicationAnalyticsSession is not valid, create a new one."

    .line 251
    .line 252
    invoke-virtual {v2, v7, p1}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    new-instance p1, Lcom/google/android/gms/internal/cast/h2;

    .line 256
    .line 257
    invoke-direct {p1, v4}, Lcom/google/android/gms/internal/cast/h2;-><init>(Lcom/google/android/gms/internal/cast/h;)V

    .line 258
    .line 259
    .line 260
    sget-wide v7, Lcom/google/android/gms/internal/cast/h2;->r:J

    .line 261
    .line 262
    add-long/2addr v7, v5

    .line 263
    sput-wide v7, Lcom/google/android/gms/internal/cast/h2;->r:J

    .line 264
    .line 265
    iput-object p1, v3, Lcom/google/android/gms/internal/cast/g2;->g:Lcom/google/android/gms/internal/cast/h2;

    .line 266
    .line 267
    iget-object v2, v3, Lcom/google/android/gms/internal/cast/g2;->h:Lq4/b;

    .line 268
    .line 269
    if-eqz v2, :cond_4

    .line 270
    .line 271
    iget-object v2, v2, Lq4/b;->g:Lcom/google/android/gms/internal/cast/u;

    .line 272
    .line 273
    invoke-virtual {v2}, Lcom/google/android/gms/internal/cast/u;->y()Z

    .line 274
    .line 275
    .line 276
    move-result v2

    .line 277
    if-eqz v2, :cond_4

    .line 278
    .line 279
    const/4 v0, 0x1

    .line 280
    :cond_4
    iput-boolean v0, p1, Lcom/google/android/gms/internal/cast/h2;->o:Z

    .line 281
    .line 282
    iget-object p1, v3, Lcom/google/android/gms/internal/cast/g2;->g:Lcom/google/android/gms/internal/cast/h2;

    .line 283
    .line 284
    invoke-static {p1}, Lb5/l;->e(Ljava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    sget-object v0, Lq4/a;->j:Lv4/b;

    .line 288
    .line 289
    const-string v0, "Must be called from the main thread."

    .line 290
    .line 291
    invoke-static {v0}, Lb5/l;->b(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    sget-object v2, Lq4/a;->l:Lq4/a;

    .line 295
    .line 296
    invoke-static {v2}, Lb5/l;->e(Ljava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    invoke-static {v0}, Lb5/l;->b(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    iget-object v0, v2, Lq4/a;->d:Lcom/google/android/gms/cast/framework/CastOptions;

    .line 303
    .line 304
    iget-object v0, v0, Lcom/google/android/gms/cast/framework/CastOptions;->a:Ljava/lang/String;

    .line 305
    .line 306
    iput-object v0, p1, Lcom/google/android/gms/internal/cast/h2;->b:Ljava/lang/String;

    .line 307
    .line 308
    iget-object p1, v3, Lcom/google/android/gms/internal/cast/g2;->g:Lcom/google/android/gms/internal/cast/h2;

    .line 309
    .line 310
    invoke-static {p1}, Lb5/l;->e(Ljava/lang/Object;)V

    .line 311
    .line 312
    .line 313
    iput-object p2, p1, Lcom/google/android/gms/internal/cast/h2;->f:Ljava/lang/String;

    .line 314
    .line 315
    :goto_2
    iget-object p1, v3, Lcom/google/android/gms/internal/cast/g2;->g:Lcom/google/android/gms/internal/cast/h2;

    .line 316
    .line 317
    invoke-static {p1}, Lb5/l;->e(Ljava/lang/Object;)V

    .line 318
    .line 319
    .line 320
    iget-object p1, v3, Lcom/google/android/gms/internal/cast/g2;->g:Lcom/google/android/gms/internal/cast/h2;

    .line 321
    .line 322
    iget-object p2, v3, Lcom/google/android/gms/internal/cast/g2;->c:Lcom/google/android/gms/internal/cast/j2;

    .line 323
    .line 324
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/cast/j2;->b(Lcom/google/android/gms/internal/cast/h2;)Lcom/google/android/gms/internal/cast/b3;

    .line 325
    .line 326
    .line 327
    move-result-object p1

    .line 328
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/b3;->d()Lcom/google/android/gms/internal/cast/w2;

    .line 329
    .line 330
    .line 331
    move-result-object p2

    .line 332
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/w2;->m(Lcom/google/android/gms/internal/cast/w2;)Lcom/google/android/gms/internal/cast/v2;

    .line 333
    .line 334
    .line 335
    move-result-object p2

    .line 336
    invoke-virtual {p2}, Lcom/google/android/gms/internal/cast/b7;->c()V

    .line 337
    .line 338
    .line 339
    iget-object v0, p2, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 340
    .line 341
    check-cast v0, Lcom/google/android/gms/internal/cast/w2;

    .line 342
    .line 343
    const/16 v2, 0xa

    .line 344
    .line 345
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/cast/w2;->u(Lcom/google/android/gms/internal/cast/w2;I)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {p2}, Lcom/google/android/gms/internal/cast/b7;->a()Lcom/google/android/gms/internal/cast/c7;

    .line 349
    .line 350
    .line 351
    move-result-object p2

    .line 352
    check-cast p2, Lcom/google/android/gms/internal/cast/w2;

    .line 353
    .line 354
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/cast/b3;->e(Lcom/google/android/gms/internal/cast/w2;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/b3;->d()Lcom/google/android/gms/internal/cast/w2;

    .line 358
    .line 359
    .line 360
    move-result-object p2

    .line 361
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/w2;->m(Lcom/google/android/gms/internal/cast/w2;)Lcom/google/android/gms/internal/cast/v2;

    .line 362
    .line 363
    .line 364
    move-result-object p2

    .line 365
    invoke-virtual {p2}, Lcom/google/android/gms/internal/cast/b7;->c()V

    .line 366
    .line 367
    .line 368
    iget-object v0, p2, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 369
    .line 370
    check-cast v0, Lcom/google/android/gms/internal/cast/w2;

    .line 371
    .line 372
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/cast/w2;->t(Lcom/google/android/gms/internal/cast/w2;Z)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/b7;->c()V

    .line 376
    .line 377
    .line 378
    iget-object v0, p1, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 379
    .line 380
    check-cast v0, Lcom/google/android/gms/internal/cast/c3;

    .line 381
    .line 382
    invoke-virtual {p2}, Lcom/google/android/gms/internal/cast/b7;->a()Lcom/google/android/gms/internal/cast/c7;

    .line 383
    .line 384
    .line 385
    move-result-object p2

    .line 386
    check-cast p2, Lcom/google/android/gms/internal/cast/w2;

    .line 387
    .line 388
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/cast/c3;->q(Lcom/google/android/gms/internal/cast/c3;Lcom/google/android/gms/internal/cast/w2;)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/b7;->a()Lcom/google/android/gms/internal/cast/c7;

    .line 392
    .line 393
    .line 394
    move-result-object p1

    .line 395
    check-cast p1, Lcom/google/android/gms/internal/cast/c3;

    .line 396
    .line 397
    iget-object p2, v3, Lcom/google/android/gms/internal/cast/g2;->a:Lcom/google/android/gms/internal/cast/m1;

    .line 398
    .line 399
    const/16 v0, 0xe2

    .line 400
    .line 401
    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/cast/m1;->a(Lcom/google/android/gms/internal/cast/c3;I)V

    .line 402
    .line 403
    .line 404
    return-void

    .line 405
    :pswitch_0
    check-cast p1, Lq4/b;

    .line 406
    .line 407
    return-void

    .line 408
    nop

    .line 409
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic l(Lq4/e;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/cast/l7;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lq4/b;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/l7;->b:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lcom/google/android/gms/internal/cast/g2;

    .line 11
    .line 12
    iput-object p1, v0, Lcom/google/android/gms/internal/cast/g2;->h:Lq4/b;

    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_0
    check-cast p1, Lq4/b;

    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic m(Lq4/e;I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/l7;->b:Ljava/lang/Object;

    .line 3
    .line 4
    iget v2, p0, Lcom/google/android/gms/internal/cast/l7;->a:I

    .line 5
    .line 6
    packed-switch v2, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast p1, Lq4/b;

    .line 10
    .line 11
    check-cast v1, Lcom/google/android/gms/internal/cast/g2;

    .line 12
    .line 13
    iput-object p1, v1, Lcom/google/android/gms/internal/cast/g2;->h:Lq4/b;

    .line 14
    .line 15
    invoke-static {v1, p2}, Lcom/google/android/gms/internal/cast/g2;->a(Lcom/google/android/gms/internal/cast/g2;I)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_0
    check-cast p1, Lq4/b;

    .line 20
    .line 21
    sget-object p1, Lcom/google/android/gms/internal/cast/x;->g:Lv4/b;

    .line 22
    .line 23
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    const/4 v2, 0x1

    .line 28
    new-array v2, v2, [Ljava/lang/Object;

    .line 29
    .line 30
    aput-object p2, v2, v0

    .line 31
    .line 32
    const-string p2, "onSessionEnded with error = %d"

    .line 33
    .line 34
    invoke-virtual {p1, p2, v2}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    check-cast v1, Lcom/google/android/gms/internal/cast/x;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    new-array p2, v0, [Ljava/lang/Object;

    .line 43
    .line 44
    const-string v0, "No need to notify transferred if the transfer type is unknown"

    .line 45
    .line 46
    invoke-virtual {p1, v0, p2}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/google/android/gms/internal/cast/x;->a()V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public n(Lq4/e;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/cast/l7;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lq4/b;

    .line 7
    .line 8
    sget-object v0, Lcom/google/android/gms/internal/cast/g2;->i:Lv4/b;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    new-array v2, v1, [Ljava/lang/Object;

    .line 12
    .line 13
    const-string v3, "onSessionStarting"

    .line 14
    .line 15
    invoke-virtual {v0, v3, v2}, Lv4/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/l7;->b:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v2, Lcom/google/android/gms/internal/cast/g2;

    .line 21
    .line 22
    iput-object p1, v2, Lcom/google/android/gms/internal/cast/g2;->h:Lq4/b;

    .line 23
    .line 24
    iget-object p1, v2, Lcom/google/android/gms/internal/cast/g2;->g:Lcom/google/android/gms/internal/cast/h2;

    .line 25
    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    new-array p1, v1, [Ljava/lang/Object;

    .line 29
    .line 30
    const-string v1, "Start a session while there\'s already an active session. Create a new one."

    .line 31
    .line 32
    invoke-virtual {v0, v1, p1}, Lv4/b;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget-object v0, v0, Lv4/b;->a:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/cast/g2;->d()V

    .line 42
    .line 43
    .line 44
    iget-object p1, v2, Lcom/google/android/gms/internal/cast/g2;->g:Lcom/google/android/gms/internal/cast/h2;

    .line 45
    .line 46
    iget-object v0, v2, Lcom/google/android/gms/internal/cast/g2;->c:Lcom/google/android/gms/internal/cast/j2;

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cast/j2;->b(Lcom/google/android/gms/internal/cast/h2;)Lcom/google/android/gms/internal/cast/b3;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget p1, p1, Lcom/google/android/gms/internal/cast/h2;->p:I

    .line 53
    .line 54
    const/4 v1, 0x1

    .line 55
    if-ne p1, v1, :cond_1

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/b3;->d()Lcom/google/android/gms/internal/cast/w2;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/w2;->m(Lcom/google/android/gms/internal/cast/w2;)Lcom/google/android/gms/internal/cast/v2;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/b7;->c()V

    .line 66
    .line 67
    .line 68
    iget-object v1, p1, Lcom/google/android/gms/internal/cast/b7;->b:Lcom/google/android/gms/internal/cast/c7;

    .line 69
    .line 70
    check-cast v1, Lcom/google/android/gms/internal/cast/w2;

    .line 71
    .line 72
    const/16 v3, 0x11

    .line 73
    .line 74
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/cast/w2;->u(Lcom/google/android/gms/internal/cast/w2;I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/b7;->a()Lcom/google/android/gms/internal/cast/c7;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    check-cast p1, Lcom/google/android/gms/internal/cast/w2;

    .line 82
    .line 83
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cast/b3;->e(Lcom/google/android/gms/internal/cast/w2;)V

    .line 84
    .line 85
    .line 86
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/b7;->a()Lcom/google/android/gms/internal/cast/c7;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Lcom/google/android/gms/internal/cast/c3;

    .line 91
    .line 92
    iget-object v0, v2, Lcom/google/android/gms/internal/cast/g2;->a:Lcom/google/android/gms/internal/cast/m1;

    .line 93
    .line 94
    const/16 v1, 0xdd

    .line 95
    .line 96
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/cast/m1;->a(Lcom/google/android/gms/internal/cast/c3;I)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :pswitch_0
    check-cast p1, Lq4/b;

    .line 101
    .line 102
    return-void

    .line 103
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public o(IJ)V
    .locals 3

    .line 1
    add-long v0, p2, p2

    .line 2
    .line 3
    const/16 v2, 0x3f

    .line 4
    .line 5
    shr-long/2addr p2, v2

    .line 6
    xor-long/2addr p2, v0

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/l7;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lcom/google/android/gms/internal/cast/x6;

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/cast/x6;->F(IJ)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public p(ILjava/util/List;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Ljava/lang/String;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/l7;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Lcom/google/android/gms/internal/cast/x6;

    .line 17
    .line 18
    invoke-virtual {v2, p1, v1}, Lcom/google/android/gms/internal/cast/x6;->B(ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method

.method public q(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/l7;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/cast/x6;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/cast/x6;->D(II)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public r(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/l7;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/cast/x6;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/cast/x6;->F(IJ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public s(IZ)V
    .locals 8

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/l7;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lcom/google/android/gms/internal/cast/x6;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cast/x6;->E(I)V

    .line 8
    .line 9
    .line 10
    iget p1, v0, Lcom/google/android/gms/internal/cast/x6;->g:I

    .line 11
    .line 12
    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/internal/cast/x6;->e:[B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 13
    .line 14
    add-int/lit8 v2, p1, 0x1

    .line 15
    .line 16
    :try_start_1
    aput-byte p2, v1, p1
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 17
    .line 18
    iput v2, v0, Lcom/google/android/gms/internal/cast/x6;->g:I

    .line 19
    .line 20
    return-void

    .line 21
    :catch_0
    move-exception p1

    .line 22
    move-object v7, p1

    .line 23
    move p1, v2

    .line 24
    goto :goto_0

    .line 25
    :catch_1
    move-exception p2

    .line 26
    move-object v7, p2

    .line 27
    :goto_0
    new-instance p2, Lcom/google/android/gms/internal/cast/y6;

    .line 28
    .line 29
    int-to-long v2, p1

    .line 30
    iget p1, v0, Lcom/google/android/gms/internal/cast/x6;->f:I

    .line 31
    .line 32
    int-to-long v4, p1

    .line 33
    const/4 v6, 0x1

    .line 34
    move-object v1, p2

    .line 35
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/cast/y6;-><init>(JJILjava/lang/IndexOutOfBoundsException;)V

    .line 36
    .line 37
    .line 38
    throw p2
.end method

.method public t(ILcom/google/android/gms/internal/cast/w6;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/l7;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/cast/x6;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/cast/x6;->u(ILcom/google/android/gms/internal/cast/w6;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public u(ILjava/util/List;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lcom/google/android/gms/internal/cast/w6;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/l7;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Lcom/google/android/gms/internal/cast/x6;

    .line 17
    .line 18
    invoke-virtual {v2, p1, v1}, Lcom/google/android/gms/internal/cast/x6;->u(ILcom/google/android/gms/internal/cast/w6;)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-void
.end method

.method public v(ID)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/l7;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/cast/x6;

    .line 4
    .line 5
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    .line 6
    .line 7
    .line 8
    move-result-wide p2

    .line 9
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/cast/x6;->x(IJ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public w(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/l7;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/cast/x6;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/cast/x6;->z(II)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public x(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/l7;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/cast/x6;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/cast/x6;->v(II)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public y(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/l7;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/cast/x6;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/cast/x6;->x(IJ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public z(IF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/l7;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/cast/x6;

    .line 4
    .line 5
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/cast/x6;->v(II)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
