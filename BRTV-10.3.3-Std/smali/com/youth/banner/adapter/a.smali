.class public final synthetic Lcom/youth/banner/adapter/a;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/youth/banner/adapter/a;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/youth/banner/adapter/a;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/youth/banner/adapter/a;->c:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/youth/banner/adapter/a;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/youth/banner/adapter/a;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Li9/l;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/youth/banner/adapter/a;->c:Ljava/lang/Object;

    .line 13
    .line 14
    invoke-interface {p1, v0}, Li9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void

    .line 18
    :pswitch_0
    iget-object v0, p0, Lcom/youth/banner/adapter/a;->c:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Landroidx/recyclerview/widget/p1;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/youth/banner/adapter/a;->b:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, Lcom/youth/banner/adapter/BannerAdapter;

    .line 25
    .line 26
    invoke-static {v1, v0, p1}, Lcom/youth/banner/adapter/BannerAdapter;->b(Lcom/youth/banner/adapter/BannerAdapter;Landroidx/recyclerview/widget/p1;Landroid/view/View;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
