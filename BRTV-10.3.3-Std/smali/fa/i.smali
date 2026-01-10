.class public final Lfa/i;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Lfa/k;


# direct methods
.method public constructor <init>(Lfa/k;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lfa/i;->c:Lfa/k;

    .line 5
    .line 6
    iput p2, p0, Lfa/i;->a:I

    .line 7
    .line 8
    iput-boolean p3, p0, Lfa/i;->b:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lfa/i;->c:Lfa/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Lfa/k;->getGroupCount()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    sub-int/2addr v1, v2

    .line 9
    iget v3, p0, Lfa/i;->a:I

    .line 10
    .line 11
    if-ne v3, v1, :cond_0

    .line 12
    .line 13
    iget-boolean v1, p0, Lfa/i;->b:Z

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const/16 v1, 0x14

    .line 18
    .line 19
    if-ne p2, v1, :cond_0

    .line 20
    .line 21
    return v2

    .line 22
    :cond_0
    iget-object v0, v0, Lfa/k;->k:Lka/r;

    .line 23
    .line 24
    invoke-interface {v0, p1, p2, p3}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    return p1
.end method
