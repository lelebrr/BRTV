.class public Ln0/m1;
.super Ln0/l1;
.source "MyApplication"


# instance fields
.field public n:Lf0/c;

.field public o:Lf0/c;

.field public p:Lf0/c;


# direct methods
.method public constructor <init>(Ln0/r1;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ln0/l1;-><init>(Ln0/r1;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Ln0/m1;->n:Lf0/c;

    .line 3
    iput-object p1, p0, Ln0/m1;->o:Lf0/c;

    .line 4
    iput-object p1, p0, Ln0/m1;->p:Lf0/c;

    return-void
.end method

.method public constructor <init>(Ln0/r1;Ln0/m1;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Ln0/l1;-><init>(Ln0/r1;Ln0/l1;)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Ln0/m1;->n:Lf0/c;

    .line 7
    iput-object p1, p0, Ln0/m1;->o:Lf0/c;

    .line 8
    iput-object p1, p0, Ln0/m1;->p:Lf0/c;

    return-void
.end method


# virtual methods
.method public h()Lf0/c;
    .locals 1

    .line 1
    iget-object v0, p0, Ln0/m1;->o:Lf0/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ln0/j1;->c:Landroid/view/WindowInsets;

    .line 6
    .line 7
    invoke-static {v0}, Ln0/f1;->t(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lf0/c;->b(Landroid/graphics/Insets;)Lf0/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Ln0/m1;->o:Lf0/c;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Ln0/m1;->o:Lf0/c;

    .line 18
    .line 19
    return-object v0
.end method

.method public j()Lf0/c;
    .locals 1

    .line 1
    iget-object v0, p0, Ln0/m1;->n:Lf0/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ln0/j1;->c:Landroid/view/WindowInsets;

    .line 6
    .line 7
    invoke-static {v0}, Ln0/f1;->x(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lf0/c;->b(Landroid/graphics/Insets;)Lf0/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Ln0/m1;->n:Lf0/c;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Ln0/m1;->n:Lf0/c;

    .line 18
    .line 19
    return-object v0
.end method

.method public l()Lf0/c;
    .locals 1

    .line 1
    iget-object v0, p0, Ln0/m1;->p:Lf0/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ln0/j1;->c:Landroid/view/WindowInsets;

    .line 6
    .line 7
    invoke-static {v0}, Ln0/f1;->c(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lf0/c;->b(Landroid/graphics/Insets;)Lf0/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Ln0/m1;->p:Lf0/c;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Ln0/m1;->p:Lf0/c;

    .line 18
    .line 19
    return-object v0
.end method

.method public m(IIII)Ln0/r1;
    .locals 1

    .line 1
    iget-object v0, p0, Ln0/j1;->c:Landroid/view/WindowInsets;

    .line 2
    .line 3
    invoke-static {v0, p1, p2, p3, p4}, Ln0/f1;->f(Landroid/view/WindowInsets;IIII)Landroid/view/WindowInsets;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 p2, 0x0

    .line 8
    invoke-static {p1, p2}, Ln0/r1;->h(Landroid/view/WindowInsets;Landroid/view/View;)Ln0/r1;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public s(Lf0/c;)V
    .locals 0

    .line 1
    return-void
.end method
