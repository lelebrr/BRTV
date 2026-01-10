.class public final Lka/f0;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "MyApplication"


# instance fields
.field public final synthetic a:Lka/i0;


# direct methods
.method public constructor <init>(Lka/i0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lka/f0;->a:Lka/i0;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPageSelected(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lka/f0;->a:Lka/i0;

    .line 2
    .line 3
    iget-boolean v1, v0, Lka/i0;->h0:Z

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    iget-object v1, v0, Lka/i0;->U:Lta/a;

    .line 8
    .line 9
    iget v1, v1, Lta/a;->s:I

    .line 10
    .line 11
    if-ne p1, v1, :cond_1

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "kw==\n"

    .line 19
    .line 20
    const-string v3, "9TzHKsy6qDY=\n"

    .line 21
    .line 22
    invoke-static {v2, v3}, La2/a;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v2, v0, Lka/i0;->U:Lta/a;

    .line 30
    .line 31
    iget v2, v2, Lta/a;->s:I

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->k()Landroidx/fragment/app/k0;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v2, v1}, Landroidx/fragment/app/j0;->z(Ljava/lang/String;)Landroidx/fragment/app/s;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Lsa/l;

    .line 53
    .line 54
    if-eqz v2, :cond_0

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lka/i0;->R(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    iget-object v2, v0, Lka/i0;->d0:Landroid/os/Handler;

    .line 61
    .line 62
    new-instance v3, La3/c;

    .line 63
    .line 64
    const/16 v4, 0x14

    .line 65
    .line 66
    invoke-direct {v3, p0, v4, v1}, La3/c;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    const-wide/16 v4, 0x1f4

    .line 70
    .line 71
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 72
    .line 73
    .line 74
    iget-object v1, v0, Lka/i0;->X:Lorg/bitspark/android/view/LeanbackTabLayout;

    .line 75
    .line 76
    invoke-virtual {v1, p1}, Lcom/google/android/material/tabs/TabLayout;->h(I)Lx6/h;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    const/4 v2, 0x1

    .line 81
    invoke-virtual {v1, p1, v2}, Lcom/google/android/material/tabs/TabLayout;->l(Lx6/h;Z)V

    .line 82
    .line 83
    .line 84
    :goto_0
    const/4 p1, 0x0

    .line 85
    iput-boolean p1, v0, Lka/i0;->h0:Z

    .line 86
    .line 87
    :cond_1
    return-void
.end method
