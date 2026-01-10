.class public final Landroidx/mediarouter/app/a0;
.super Landroidx/recyclerview/widget/p1;
.source "MyApplication"


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Landroid/widget/ImageView;

.field public final c:Landroid/widget/ProgressBar;

.field public final d:Landroid/widget/TextView;

.field public final synthetic e:Landroidx/mediarouter/app/b0;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/b0;Landroid/view/View;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/app/a0;->e:Landroidx/mediarouter/app/b0;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/p1;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Landroidx/mediarouter/app/a0;->a:Landroid/view/View;

    .line 7
    .line 8
    const v0, 0x7f0b02f0

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/widget/ImageView;

    .line 16
    .line 17
    iput-object v0, p0, Landroidx/mediarouter/app/a0;->b:Landroid/widget/ImageView;

    .line 18
    .line 19
    const v0, 0x7f0b02f2

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/widget/ProgressBar;

    .line 27
    .line 28
    iput-object v0, p0, Landroidx/mediarouter/app/a0;->c:Landroid/widget/ProgressBar;

    .line 29
    .line 30
    const v1, 0x7f0b02f1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    check-cast p2, Landroid/widget/TextView;

    .line 38
    .line 39
    iput-object p2, p0, Landroidx/mediarouter/app/a0;->d:Landroid/widget/TextView;

    .line 40
    .line 41
    iget-object p1, p1, Landroidx/mediarouter/app/b0;->g:Landroidx/mediarouter/app/c0;

    .line 42
    .line 43
    iget-object p1, p1, Landroidx/mediarouter/app/c0;->g:Landroid/content/Context;

    .line 44
    .line 45
    invoke-static {p1, v0}, Lo9/d;->C(Landroid/content/Context;Landroid/widget/ProgressBar;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method
