.class public final Lka/i;
.super Lcom/youth/banner/adapter/BannerAdapter;
.source "MyApplication"


# instance fields
.field public final synthetic a:Lka/j;


# direct methods
.method public constructor <init>(Lka/j;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lka/i;->a:Lka/j;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/youth/banner/adapter/BannerAdapter;-><init>(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onBindView(Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 1
    check-cast p1, Lfa/z;

    .line 2
    .line 3
    check-cast p2, Lorg/bitspark/android/beans/EventBean;

    .line 4
    .line 5
    iget-object p3, p0, Lka/i;->a:Lka/j;

    .line 6
    .line 7
    invoke-virtual {p3}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    invoke-static {p3}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lk3/l;

    .line 12
    .line 13
    .line 14
    move-result-object p4

    .line 15
    invoke-virtual {p4, p3}, Lk3/l;->c(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/o;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    iget-object p4, p2, Lorg/bitspark/android/beans/EventBean;->image:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p3, p4}, Lcom/bumptech/glide/o;->o(Ljava/lang/String;)Lcom/bumptech/glide/l;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    sget-object p4, Lx2/k;->c:Lx2/k;

    .line 26
    .line 27
    invoke-virtual {p3, p4}, Ln3/a;->d(Lx2/k;)Ln3/a;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    check-cast p3, Lcom/bumptech/glide/l;

    .line 32
    .line 33
    iget-object p4, p1, Lfa/z;->a:Landroid/widget/ImageView;

    .line 34
    .line 35
    invoke-virtual {p3, p4}, Lcom/bumptech/glide/l;->B(Landroid/widget/ImageView;)V

    .line 36
    .line 37
    .line 38
    new-instance p3, Landroidx/appcompat/app/a;

    .line 39
    .line 40
    const/16 p4, 0xe

    .line 41
    .line 42
    invoke-direct {p3, p4, p0}, Landroidx/appcompat/app/a;-><init>(ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget-object p4, p1, Lfa/z;->a:Landroid/widget/ImageView;

    .line 46
    .line 47
    invoke-virtual {p4, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    .line 49
    .line 50
    iget p3, p2, Lorg/bitspark/android/beans/EventBean;->tag:I

    .line 51
    .line 52
    iget-object p1, p1, Lfa/z;->b:Landroid/widget/ImageView;

    .line 53
    .line 54
    if-nez p3, :cond_0

    .line 55
    .line 56
    iget p2, p2, Lorg/bitspark/android/beans/EventBean;->channel:I

    .line 57
    .line 58
    if-nez p2, :cond_0

    .line 59
    .line 60
    const/16 p2, 0x8

    .line 61
    .line 62
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    const/4 p2, 0x0

    .line 67
    if-nez p3, :cond_1

    .line 68
    .line 69
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    .line 71
    .line 72
    const p2, 0x7f0f002e

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    .line 81
    .line 82
    const p2, 0x7f0f002d

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 86
    .line 87
    .line 88
    :goto_0
    return-void
.end method

.method public final onCreateHolder(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    .line 1
    const p2, 0x7f0e005a

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-static {p1, p2, p1, v0}, La/e;->i(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance p2, Lfa/z;

    .line 10
    .line 11
    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/p1;-><init>(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    const v0, 0x7f0b0204

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/widget/ImageView;

    .line 22
    .line 23
    iput-object v0, p2, Lfa/z;->a:Landroid/widget/ImageView;

    .line 24
    .line 25
    const v0, 0x7f0b01f9

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Landroid/widget/ImageView;

    .line 33
    .line 34
    iput-object p1, p2, Lfa/z;->b:Landroid/widget/ImageView;

    .line 35
    .line 36
    return-object p2
.end method
