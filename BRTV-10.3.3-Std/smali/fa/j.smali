.class public final Lfa/j;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Lfa/k;


# direct methods
.method public constructor <init>(Lfa/k;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lfa/j;->c:Lfa/k;

    .line 5
    .line 6
    iput p2, p0, Lfa/j;->a:I

    .line 7
    .line 8
    iput p3, p0, Lfa/j;->b:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    if-ne p2, v0, :cond_0

    .line 8
    .line 9
    iget-object p2, p0, Lfa/j;->c:Lfa/k;

    .line 10
    .line 11
    iget-object v0, p2, Lfa/k;->m:Lka/n;

    .line 12
    .line 13
    iget-object p2, p2, Lfa/k;->b:Landroid/widget/ExpandableListView;

    .line 14
    .line 15
    iget-object p2, v0, Lka/n;->b:Lka/r;

    .line 16
    .line 17
    iget v0, p0, Lfa/j;->a:I

    .line 18
    .line 19
    iget v2, p0, Lfa/j;->b:I

    .line 20
    .line 21
    invoke-static {p2, p1, v0, v2, v1}, Lka/r;->S(Lka/r;Landroid/view/View;III)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    return v1
.end method
