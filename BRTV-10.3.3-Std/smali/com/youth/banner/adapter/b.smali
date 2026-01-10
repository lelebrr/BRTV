.class public final synthetic Lcom/youth/banner/adapter/b;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/youth/banner/adapter/BannerAdapter;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/youth/banner/adapter/BannerAdapter;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/youth/banner/adapter/b;->a:Lcom/youth/banner/adapter/BannerAdapter;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/youth/banner/adapter/b;->b:Ljava/lang/Object;

    .line 7
    .line 8
    iput p3, p0, Lcom/youth/banner/adapter/b;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/youth/banner/adapter/b;->c:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/youth/banner/adapter/b;->a:Lcom/youth/banner/adapter/BannerAdapter;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/youth/banner/adapter/b;->b:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-static {v1, v2, v0, p1}, Lcom/youth/banner/adapter/BannerAdapter;->a(Lcom/youth/banner/adapter/BannerAdapter;Ljava/lang/Object;ILandroid/view/View;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
