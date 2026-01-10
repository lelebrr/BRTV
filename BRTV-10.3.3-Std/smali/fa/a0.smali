.class public final Lfa/a0;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lfa/d0;


# direct methods
.method public constructor <init>(Lfa/d0;ILorg/bitspark/android/beans/ChannelBean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lfa/a0;->b:Lfa/d0;

    .line 5
    .line 6
    iput p2, p0, Lfa/a0;->a:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lfa/a0;->b:Lfa/d0;

    .line 8
    .line 9
    iget-boolean v1, v0, Lfa/d0;->g:Z

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 14
    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lfa/d0;->b(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v1, v0, Lfa/d0;->d:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iget v2, p0, Lfa/a0;->a:I

    .line 28
    .line 29
    if-ge v2, v1, :cond_1

    .line 30
    .line 31
    iget-object v0, v0, Lfa/d0;->f:Lka/n;

    .line 32
    .line 33
    invoke-virtual {v0, p1, p2}, Lka/n;->b(Landroid/view/View;Z)V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method
