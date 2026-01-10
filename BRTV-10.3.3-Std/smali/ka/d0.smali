.class public final Lka/d0;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "MyApplication"


# instance fields
.field public final synthetic a:Lorg/bitspark/android/beans/ChannelBean;

.field public final synthetic b:Landroidx/viewpager2/widget/ViewPager2;

.field public final synthetic c:I

.field public final synthetic d:Lka/i0;


# direct methods
.method public constructor <init>(Lka/i0;Landroidx/fragment/app/FragmentActivity;Lorg/bitspark/android/beans/ChannelBean;Landroidx/viewpager2/widget/ViewPager2;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lka/d0;->d:Lka/i0;

    .line 2
    .line 3
    iput-object p3, p0, Lka/d0;->a:Lorg/bitspark/android/beans/ChannelBean;

    .line 4
    .line 5
    iput-object p4, p0, Lka/d0;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 6
    .line 7
    iput p5, p0, Lka/d0;->c:I

    .line 8
    .line 9
    invoke-direct {p0, p2}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final createFragment(I)Landroidx/fragment/app/s;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lfa/m0;

    .line 2
    .line 3
    iget-object v1, p0, Lka/d0;->a:Lorg/bitspark/android/beans/ChannelBean;

    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/recyclerview/widget/k0;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x7

    .line 9
    iput v2, v0, Lfa/m0;->c:I

    .line 10
    .line 11
    new-instance v2, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v2, v0, Lfa/m0;->d:Ljava/util/ArrayList;

    .line 17
    .line 18
    iput-object v1, v0, Lfa/m0;->e:Lorg/bitspark/android/beans/ChannelBean;

    .line 19
    .line 20
    add-int/lit8 p1, p1, 0x1

    .line 21
    .line 22
    invoke-virtual {v1, p1}, Lorg/bitspark/android/beans/ChannelBean;->getSeasonSources(I)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 27
    .line 28
    .line 29
    new-instance v1, Lfa/z0;

    .line 30
    .line 31
    const/4 v2, 0x4

    .line 32
    invoke-direct {v1, v2, p0}, Lfa/z0;-><init>(ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iput-object v1, v0, Lfa/m0;->b:Landroid/view/View$OnKeyListener;

    .line 36
    .line 37
    new-instance v1, Lka/c0;

    .line 38
    .line 39
    invoke-direct {v1, p0, v0}, Lka/c0;-><init>(Lka/d0;Lfa/m0;)V

    .line 40
    .line 41
    .line 42
    iput-object v1, v0, Lfa/m0;->a:Lfa/o0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    new-instance v1, Lsa/l;

    .line 45
    .line 46
    invoke-direct {v1}, Lsa/l;-><init>()V

    .line 47
    .line 48
    .line 49
    new-instance v2, Landroid/os/Bundle;

    .line 50
    .line 51
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 52
    .line 53
    .line 54
    sget-object v3, Lsa/l;->X:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v2, v3, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v2}, Landroidx/fragment/app/s;->O(Landroid/os/Bundle;)V

    .line 60
    .line 61
    .line 62
    iput-object v0, v1, Lsa/l;->T:Lfa/m0;

    .line 63
    .line 64
    return-object v1

    .line 65
    :catch_0
    move-exception p1

    .line 66
    const-string v0, "nfYbCT9Us/Kn3w0sPU239b8=\n"

    .line 67
    .line 68
    const-string v1, "y5l/TVog0ps=\n"

    .line 69
    .line 70
    invoke-static {v0, v1}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    sget-boolean v1, Lorg/bitspark/android/utils/m;->b:Z

    .line 79
    .line 80
    invoke-static {v0, p1}, Lcom/tencent/mars/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const/4 p1, 0x0

    .line 84
    return-object p1
.end method

.method public final getItemCount()I
    .locals 1

    .line 1
    iget v0, p0, Lka/d0;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public final getItemId(I)J
    .locals 2

    .line 1
    int-to-long v0, p1

    .line 2
    return-wide v0
.end method
