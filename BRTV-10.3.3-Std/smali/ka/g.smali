.class public final Lka/g;
.super Lcom/youth/banner/adapter/BannerImageAdapter;
.source "MyApplication"


# instance fields
.field public final synthetic a:Lka/j;


# direct methods
.method public constructor <init>(Lka/j;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lka/g;->a:Lka/j;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/youth/banner/adapter/BannerImageAdapter;-><init>(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onBindView(Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 1
    check-cast p1, Lcom/youth/banner/holder/BannerImageHolder;

    .line 2
    .line 3
    check-cast p2, Lorg/bitspark/android/beans/EventBean;

    .line 4
    .line 5
    iget-object p3, p1, Lcom/youth/banner/holder/BannerImageHolder;->imageView:Landroid/widget/ImageView;

    .line 6
    .line 7
    sget-object p4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 8
    .line 9
    invoke-virtual {p3, p4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 10
    .line 11
    .line 12
    iget-object p3, p0, Lka/g;->a:Lka/j;

    .line 13
    .line 14
    invoke-virtual {p3}, Landroidx/fragment/app/s;->h()Landroidx/fragment/app/FragmentActivity;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    invoke-static {p3}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lk3/l;

    .line 19
    .line 20
    .line 21
    move-result-object p4

    .line 22
    invoke-virtual {p4, p3}, Lk3/l;->c(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/o;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    iget-object p2, p2, Lorg/bitspark/android/beans/EventBean;->imageRes:Ljava/lang/Integer;

    .line 27
    .line 28
    invoke-virtual {p3, p2}, Lcom/bumptech/glide/o;->n(Ljava/lang/Integer;)Lcom/bumptech/glide/l;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    iget-object p1, p1, Lcom/youth/banner/holder/BannerImageHolder;->imageView:Landroid/widget/ImageView;

    .line 33
    .line 34
    invoke-virtual {p2, p1}, Lcom/bumptech/glide/l;->B(Landroid/widget/ImageView;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
