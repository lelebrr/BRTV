.class public final Lka/a0;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lka/i0;


# direct methods
.method public synthetic constructor <init>(Lka/i0;I)V
    .locals 0

    .line 1
    iput p2, p0, Lka/a0;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lka/a0;->b:Lka/i0;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    iget p1, p0, Lka/a0;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lka/a0;->b:Lka/i0;

    .line 7
    .line 8
    iget-object v0, p1, Lka/i0;->c0:Lorg/bitspark/android/view/MyProcessRelativeLayout;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const/16 v0, 0x15

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    if-eq p2, v0, :cond_2

    .line 20
    .line 21
    const/16 v0, 0x16

    .line 22
    .line 23
    if-eq p2, v0, :cond_2

    .line 24
    .line 25
    const/16 v0, 0x13

    .line 26
    .line 27
    if-eq p2, v0, :cond_2

    .line 28
    .line 29
    const/16 v0, 0x14

    .line 30
    .line 31
    if-ne p2, v0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v0, 0x4

    .line 35
    if-ne p2, v0, :cond_1

    .line 36
    .line 37
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-nez p2, :cond_2

    .line 42
    .line 43
    iget-object p1, p1, Lka/i0;->U:Lta/a;

    .line 44
    .line 45
    invoke-virtual {p1}, Lta/a;->f()V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/4 v1, 0x0

    .line 50
    :cond_2
    :goto_0
    return v1

    .line 51
    :pswitch_0
    const/4 p1, 0x4

    .line 52
    if-ne p2, p1, :cond_4

    .line 53
    .line 54
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-nez p1, :cond_3

    .line 59
    .line 60
    iget-object p1, p0, Lka/a0;->b:Lka/i0;

    .line 61
    .line 62
    iget-object p1, p1, Lka/i0;->U:Lta/a;

    .line 63
    .line 64
    invoke-virtual {p1}, Lta/a;->f()V

    .line 65
    .line 66
    .line 67
    :cond_3
    const/4 p1, 0x1

    .line 68
    goto :goto_1

    .line 69
    :cond_4
    const/4 p1, 0x0

    .line 70
    :goto_1
    return p1

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
