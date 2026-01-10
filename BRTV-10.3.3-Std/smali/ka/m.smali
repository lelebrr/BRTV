.class public final Lka/m;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lorg/bitspark/android/beans/ChannelBean;

.field public final synthetic b:Lka/r;


# direct methods
.method public constructor <init>(Lka/r;Lorg/bitspark/android/beans/ChannelBean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lka/m;->b:Lka/r;

    .line 5
    .line 6
    iput-object p2, p0, Lka/m;->a:Lorg/bitspark/android/beans/ChannelBean;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    sput-boolean p1, Lorg/bitspark/android/Spark;->c2:Z

    .line 3
    .line 4
    iget-object p1, p0, Lka/m;->b:Lka/r;

    .line 5
    .line 6
    invoke-virtual {p1}, Lka/r;->c0()V

    .line 7
    .line 8
    .line 9
    iget-object p2, p1, Lka/r;->X:Lfa/g0;

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p2}, Landroidx/recyclerview/widget/k0;->notifyDataSetChanged()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object p2, p0, Lka/m;->a:Lorg/bitspark/android/beans/ChannelBean;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Lka/r;->b0(Lorg/bitspark/android/beans/ChannelBean;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
