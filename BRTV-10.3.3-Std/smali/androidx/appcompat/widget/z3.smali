.class public final Landroidx/appcompat/widget/z3;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ld4/b;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/z3;->a:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ld4/c;

    .line 4
    .line 5
    iget-object v0, v0, Ld4/c;->a:Ljava/lang/Object;

    .line 6
    .line 7
    move-object v2, v0

    .line 8
    check-cast v2, Landroid/content/Context;

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/appcompat/widget/z3;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Lv8/a;

    .line 13
    .line 14
    invoke-interface {v0}, Lv8/a;->get()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    move-object v3, v0

    .line 19
    check-cast v3, Lb4/f;

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/appcompat/widget/z3;->c:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Lv8/a;

    .line 24
    .line 25
    invoke-interface {v0}, Lv8/a;->get()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    move-object v4, v0

    .line 30
    check-cast v4, Li4/d;

    .line 31
    .line 32
    iget-object v0, p0, Landroidx/appcompat/widget/z3;->d:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, La1/b;

    .line 35
    .line 36
    invoke-virtual {v0}, La1/b;->get()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    move-object v5, v0

    .line 41
    check-cast v5, Lh4/d;

    .line 42
    .line 43
    iget-object v0, p0, Landroidx/appcompat/widget/z3;->e:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Lv8/a;

    .line 46
    .line 47
    invoke-interface {v0}, Lv8/a;->get()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    move-object v6, v0

    .line 52
    check-cast v6, Ljava/util/concurrent/Executor;

    .line 53
    .line 54
    iget-object v0, p0, Landroidx/appcompat/widget/z3;->f:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v0, Lv8/a;

    .line 57
    .line 58
    invoke-interface {v0}, Lv8/a;->get()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    move-object v7, v0

    .line 63
    check-cast v7, Lj4/c;

    .line 64
    .line 65
    new-instance v8, Lu6/e;

    .line 66
    .line 67
    const/16 v0, 0x13

    .line 68
    .line 69
    invoke-direct {v8, v0}, Lu6/e;-><init>(I)V

    .line 70
    .line 71
    .line 72
    new-instance v9, Lx4/e;

    .line 73
    .line 74
    const/16 v0, 0x12

    .line 75
    .line 76
    invoke-direct {v9, v0}, Lx4/e;-><init>(I)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Landroidx/appcompat/widget/z3;->g:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v0, Lv8/a;

    .line 82
    .line 83
    invoke-interface {v0}, Lv8/a;->get()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    move-object v10, v0

    .line 88
    check-cast v10, Li4/c;

    .line 89
    .line 90
    new-instance v0, Lh4/i;

    .line 91
    .line 92
    move-object v1, v0

    .line 93
    invoke-direct/range {v1 .. v10}, Lh4/i;-><init>(Landroid/content/Context;Lb4/f;Li4/d;Lh4/d;Ljava/util/concurrent/Executor;Lj4/c;Lk4/a;Lk4/a;Li4/c;)V

    .line 94
    .line 95
    .line 96
    return-object v0
.end method
