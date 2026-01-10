.class public final Lq1/a;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lq1/a0;


# instance fields
.field public final synthetic a:Lq1/h;


# direct methods
.method public synthetic constructor <init>(Lq1/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq1/a;->a:Lq1/h;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Lq1/b0;Lq1/w;Ljava/util/ArrayList;)V
    .locals 9

    .line 1
    iget-object v8, p0, Lq1/a;->a:Lq1/h;

    .line 2
    .line 3
    iget-object v0, v8, Lq1/h;->y:Lq1/b0;

    .line 4
    .line 5
    if-ne p1, v0, :cond_4

    .line 6
    .line 7
    if-eqz p2, :cond_4

    .line 8
    .line 9
    iget-object p1, v8, Lq1/h;->x:Lq1/s0;

    .line 10
    .line 11
    iget-object p1, p1, Lq1/s0;->a:Lq1/r0;

    .line 12
    .line 13
    invoke-virtual {p2}, Lq1/w;->f()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v8, p1, v0}, Lq1/h;->b(Lq1/r0;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v2, Lq1/p0;

    .line 22
    .line 23
    invoke-direct {v2, p1, v0, v1}, Lq1/p0;-><init>(Lq1/r0;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, p2}, Lq1/s0;->i(Lq1/w;)I

    .line 27
    .line 28
    .line 29
    iget-object p1, v8, Lq1/h;->d:Lq1/s0;

    .line 30
    .line 31
    if-ne p1, v2, :cond_0

    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    iget-object v3, v8, Lq1/h;->y:Lq1/b0;

    .line 35
    .line 36
    iget-object v6, v8, Lq1/h;->x:Lq1/s0;

    .line 37
    .line 38
    iget-object p1, v8, Lq1/h;->f:Lq1/q0;

    .line 39
    .line 40
    const/4 p2, 0x0

    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    iget-boolean v0, p1, Lq1/q0;->i:Z

    .line 44
    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    iget-boolean v0, p1, Lq1/q0;->j:Z

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p1, Lq1/q0;->j:Z

    .line 54
    .line 55
    iget-object p1, p1, Lq1/q0;->a:Lq1/c0;

    .line 56
    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    const/4 v0, 0x0

    .line 60
    invoke-virtual {p1, v0}, Lq1/c0;->i(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lq1/c0;->e()V

    .line 64
    .line 65
    .line 66
    :cond_2
    :goto_0
    iput-object p2, v8, Lq1/h;->f:Lq1/q0;

    .line 67
    .line 68
    :cond_3
    new-instance p1, Lq1/q0;

    .line 69
    .line 70
    const/4 v4, 0x3

    .line 71
    const/4 v5, 0x1

    .line 72
    move-object v0, p1

    .line 73
    move-object v1, v8

    .line 74
    move-object v7, p3

    .line 75
    invoke-direct/range {v0 .. v7}, Lq1/q0;-><init>(Lq1/h;Lq1/s0;Lq1/c0;IZLq1/s0;Ljava/util/ArrayList;)V

    .line 76
    .line 77
    .line 78
    iput-object p1, v8, Lq1/h;->f:Lq1/q0;

    .line 79
    .line 80
    invoke-virtual {p1}, Lq1/q0;->a()V

    .line 81
    .line 82
    .line 83
    iput-object p2, v8, Lq1/h;->x:Lq1/s0;

    .line 84
    .line 85
    iput-object p2, v8, Lq1/h;->y:Lq1/b0;

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_4
    iget-object v0, v8, Lq1/h;->e:Lq1/c0;

    .line 89
    .line 90
    if-ne p1, v0, :cond_6

    .line 91
    .line 92
    if-eqz p2, :cond_5

    .line 93
    .line 94
    iget-object p1, v8, Lq1/h;->d:Lq1/s0;

    .line 95
    .line 96
    invoke-virtual {v8, p1, p2}, Lq1/h;->o(Lq1/s0;Lq1/w;)I

    .line 97
    .line 98
    .line 99
    :cond_5
    iget-object p1, v8, Lq1/h;->d:Lq1/s0;

    .line 100
    .line 101
    invoke-virtual {p1}, Lq1/s0;->a()Lq1/p0;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    if-eqz p1, :cond_6

    .line 106
    .line 107
    invoke-virtual {p1, p3}, Lq1/p0;->p(Ljava/util/ArrayList;)V

    .line 108
    .line 109
    .line 110
    :cond_6
    :goto_1
    return-void
.end method
