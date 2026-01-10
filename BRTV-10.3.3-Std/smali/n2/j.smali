.class public final Ln2/j;
.super Lj9/j;
.source "MyApplication"

# interfaces
.implements Li9/l;


# instance fields
.field public final synthetic a:Ln2/f;

.field public final synthetic b:Landroid/view/ViewTreeObserver;

.field public final synthetic c:Ln2/k;


# direct methods
.method public constructor <init>(Ln2/f;Landroid/view/ViewTreeObserver;Ln2/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln2/j;->a:Ln2/f;

    .line 2
    .line 3
    iput-object p2, p0, Ln2/j;->b:Landroid/view/ViewTreeObserver;

    .line 4
    .line 5
    iput-object p3, p0, Ln2/j;->c:Ln2/k;

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, p1}, Lj9/j;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    .line 3
    iget-object p1, p0, Ln2/j;->c:Ln2/k;

    .line 4
    .line 5
    iget-object v0, p0, Ln2/j;->b:Landroid/view/ViewTreeObserver;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Ln2/j;->a:Ln2/f;

    .line 18
    .line 19
    iget-object v0, v0, Ln2/f;->a:Landroid/widget/ImageView;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    sget-object p1, Lw8/l;->a:Lw8/l;

    .line 29
    .line 30
    return-object p1
.end method
