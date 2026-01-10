.class public final Lka/h0;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lfa/o0;


# instance fields
.field public final synthetic a:Lfa/m0;

.field public final synthetic b:Lorg/bitspark/android/beans/ChannelBean;

.field public final synthetic c:Lka/i0;


# direct methods
.method public constructor <init>(Lka/i0;Lfa/m0;Lorg/bitspark/android/beans/ChannelBean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lka/h0;->c:Lka/i0;

    .line 5
    .line 6
    iput-object p2, p0, Lka/h0;->a:Lfa/m0;

    .line 7
    .line 8
    iput-object p3, p0, Lka/h0;->b:Lorg/bitspark/android/beans/ChannelBean;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(ILandroid/view/View;)V
    .locals 3

    .line 1
    iget-object p2, p0, Lka/h0;->c:Lka/i0;

    .line 2
    .line 3
    iget-object v0, p2, Lka/i0;->U:Lta/a;

    .line 4
    .line 5
    iget-boolean v1, v0, Lta/a;->v:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p2}, Landroidx/fragment/app/s;->j()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p2}, Landroidx/fragment/app/s;->m()Landroid/content/res/Resources;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const v0, 0x7f120046

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-static {p1, v0, p2}, Lba/d;->a(Landroid/content/Context;ILjava/lang/String;)Lba/d;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Lba/d;->show()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    iget-object v1, p0, Lka/h0;->a:Lfa/m0;

    .line 34
    .line 35
    iget-object v2, v1, Lfa/m0;->d:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lorg/bitspark/android/beans/ChannelBean$SourcesBean;

    .line 42
    .line 43
    iput-object v2, v0, Lta/a;->r:Lorg/bitspark/android/beans/ChannelBean$SourcesBean;

    .line 44
    .line 45
    iget-object p2, p2, Lka/i0;->U:Lta/a;

    .line 46
    .line 47
    iget-object v0, v1, Lfa/m0;->d:Ljava/util/ArrayList;

    .line 48
    .line 49
    iget-object v1, p0, Lka/h0;->b:Lorg/bitspark/android/beans/ChannelBean;

    .line 50
    .line 51
    invoke-virtual {p2, p1, v1, v0}, Lta/a;->i(ILorg/bitspark/android/beans/ChannelBean;Ljava/util/ArrayList;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method
