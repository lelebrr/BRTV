.class public final Lm2/u;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final a:Landroid/widget/ImageView;

.field public b:Lm2/k;

.field public c:Lt9/x;

.field public d:Lm2/s;

.field public e:Z


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm2/u;->a:Landroid/widget/ImageView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lm2/u;->d:Lm2/s;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lm2/u;->e:Z

    .line 8
    .line 9
    iget-object v0, p1, Lm2/s;->a:Lc2/l;

    .line 10
    .line 11
    iget-object p1, p1, Lm2/s;->b:Lm2/i;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lc2/l;->b(Lm2/i;)Lm2/k;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lm2/u;->d:Lm2/s;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    iget-object v0, p1, Lm2/s;->e:Lt9/q0;

    .line 6
    .line 7
    invoke-static {v0}, Lt9/u;->c(Lt9/q0;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p1, Lm2/s;->c:Lo2/a;

    .line 11
    .line 12
    instance-of v1, v0, Landroidx/lifecycle/v;

    .line 13
    .line 14
    iget-object v2, p1, Lm2/s;->d:Landroidx/lifecycle/p;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v2, v0}, Landroidx/lifecycle/p;->c(Landroidx/lifecycle/v;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {v2, p1}, Landroidx/lifecycle/p;->c(Landroidx/lifecycle/v;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method
