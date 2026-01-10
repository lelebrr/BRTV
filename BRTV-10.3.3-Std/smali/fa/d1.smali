.class public final Lfa/d1;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 1
    iput p4, p0, Lfa/d1;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lfa/d1;->d:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lfa/d1;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iput p3, p0, Lfa/d1;->b:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    iget p1, p0, Lfa/d1;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    sput-boolean p1, Lorg/bitspark/android/Spark;->c2:Z

    .line 8
    .line 9
    iget-object p1, p0, Lfa/d1;->d:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p1, Lka/n;

    .line 12
    .line 13
    iget-object p2, p1, Lka/n;->b:Lka/r;

    .line 14
    .line 15
    invoke-virtual {p2}, Lka/r;->c0()V

    .line 16
    .line 17
    .line 18
    iget-object p2, p0, Lfa/d1;->c:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p2, Landroid/view/View;

    .line 21
    .line 22
    invoke-static {p2}, Lo9/d;->y(Landroid/view/View;)Z

    .line 23
    .line 24
    .line 25
    iget-object p1, p1, Lka/n;->b:Lka/r;

    .line 26
    .line 27
    iget-object p1, p1, Lka/r;->X:Lfa/g0;

    .line 28
    .line 29
    iget p2, p0, Lfa/d1;->b:I

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/k0;->notifyItemChanged(I)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_0
    const/4 p1, 0x1

    .line 36
    sput-boolean p1, Lorg/bitspark/android/Spark;->c2:Z

    .line 37
    .line 38
    iget-object p1, p0, Lfa/d1;->c:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p1, Lfa/e1;

    .line 41
    .line 42
    iget-object p1, p1, Lfa/e1;->a:Landroid/widget/ImageView;

    .line 43
    .line 44
    const p2, 0x7f0f001e

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lfa/d1;->d:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast p1, Lfa/f1;

    .line 53
    .line 54
    iget p2, p1, Lfa/p;->a:I

    .line 55
    .line 56
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/k0;->notifyItemChanged(I)V

    .line 57
    .line 58
    .line 59
    sget-object p2, Lka/m0;->E0:Landroidx/mediarouter/app/c;

    .line 60
    .line 61
    const/4 v0, 0x3

    .line 62
    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 63
    .line 64
    .line 65
    sget-object p2, Lka/m0;->E0:Landroidx/mediarouter/app/c;

    .line 66
    .line 67
    iget v1, p0, Lfa/d1;->b:I

    .line 68
    .line 69
    const/4 v2, 0x0

    .line 70
    invoke-static {p2, v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    iget-object p1, p1, Lfa/f1;->h:Landroid/util/SparseArray;

    .line 75
    .line 76
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    check-cast p1, Lorg/bitspark/android/beans/Group;

    .line 81
    .line 82
    iget-object p1, p1, Lorg/bitspark/android/beans/Group;->url:Ljava/lang/String;

    .line 83
    .line 84
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 85
    .line 86
    sget-object p1, Lka/m0;->E0:Landroidx/mediarouter/app/c;

    .line 87
    .line 88
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    nop

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
