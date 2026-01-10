.class public final Lka/c0;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lfa/o0;


# instance fields
.field public final synthetic a:Lfa/m0;

.field public final synthetic b:Lka/d0;


# direct methods
.method public constructor <init>(Lka/d0;Lfa/m0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lka/c0;->b:Lka/d0;

    .line 5
    .line 6
    iput-object p2, p0, Lka/c0;->a:Lfa/m0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(ILandroid/view/View;)V
    .locals 4

    .line 1
    iget-object p2, p0, Lka/c0;->b:Lka/d0;

    .line 2
    .line 3
    iget-object v0, p2, Lka/d0;->d:Lka/i0;

    .line 4
    .line 5
    iget-object v1, v0, Lka/i0;->U:Lta/a;

    .line 6
    .line 7
    iget-boolean v2, v1, Lta/a;->v:Z

    .line 8
    .line 9
    iget-object v3, p2, Lka/d0;->d:Lka/i0;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/fragment/app/s;->j()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {v3}, Landroidx/fragment/app/s;->m()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const v0, 0x7f120046

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-static {p1, v0, p2}, Lba/d;->a(Landroid/content/Context;ILjava/lang/String;)Lba/d;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lba/d;->show()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    iget-object v0, p2, Lka/d0;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iput v0, v1, Lta/a;->s:I

    .line 44
    .line 45
    iget-object v0, v3, Lka/i0;->U:Lta/a;

    .line 46
    .line 47
    iget-object v0, v0, Lta/a;->A:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 50
    .line 51
    .line 52
    iget-object v0, v3, Lka/i0;->U:Lta/a;

    .line 53
    .line 54
    iget-object v0, v0, Lta/a;->A:Ljava/util/ArrayList;

    .line 55
    .line 56
    iget-object v1, p0, Lka/c0;->a:Lfa/m0;

    .line 57
    .line 58
    iget-object v2, v1, Lfa/m0;->d:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 61
    .line 62
    .line 63
    iget-object v0, v3, Lka/i0;->U:Lta/a;

    .line 64
    .line 65
    iget-object v2, v1, Lfa/m0;->d:Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Lorg/bitspark/android/beans/ChannelBean$SourcesBean;

    .line 72
    .line 73
    iput-object v2, v0, Lta/a;->r:Lorg/bitspark/android/beans/ChannelBean$SourcesBean;

    .line 74
    .line 75
    iget-object v0, v3, Lka/i0;->U:Lta/a;

    .line 76
    .line 77
    iget-object v1, v1, Lfa/m0;->d:Ljava/util/ArrayList;

    .line 78
    .line 79
    iget-object p2, p2, Lka/d0;->a:Lorg/bitspark/android/beans/ChannelBean;

    .line 80
    .line 81
    invoke-virtual {v0, p1, p2, v1}, Lta/a;->i(ILorg/bitspark/android/beans/ChannelBean;Ljava/util/ArrayList;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method
