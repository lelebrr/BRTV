.class public final Lu4/c;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Ls4/a;
.implements Lq4/g;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu4/c;->a:Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lq4/e;I)V
    .locals 0

    .line 1
    check-cast p1, Lq4/b;

    .line 2
    .line 3
    return-void
.end method

.method public bridge synthetic d(Lq4/e;Z)V
    .locals 0

    .line 1
    check-cast p1, Lq4/b;

    .line 2
    .line 3
    return-void
.end method

.method public f(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lu4/c;->a:Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->b0:Landroid/widget/TextView;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/16 v2, 0x8

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->Z:Landroid/widget/ImageView;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;->Z:Landroid/widget/ImageView;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public bridge synthetic g(Lq4/e;I)V
    .locals 0

    .line 1
    check-cast p1, Lq4/b;

    .line 2
    .line 3
    return-void
.end method

.method public bridge synthetic h(Lq4/e;Ljava/lang/String;)V
    .locals 0

    .line 1
    check-cast p1, Lq4/b;

    .line 2
    .line 3
    return-void
.end method

.method public bridge synthetic i(Lq4/e;I)V
    .locals 0

    .line 1
    check-cast p1, Lq4/b;

    .line 2
    .line 3
    return-void
.end method

.method public bridge synthetic k(Lq4/e;Ljava/lang/String;)V
    .locals 0

    .line 1
    check-cast p1, Lq4/b;

    .line 2
    .line 3
    return-void
.end method

.method public bridge synthetic l(Lq4/e;)V
    .locals 0

    .line 1
    check-cast p1, Lq4/b;

    .line 2
    .line 3
    return-void
.end method

.method public synthetic m(Lq4/e;I)V
    .locals 0

    .line 1
    check-cast p1, Lq4/b;

    .line 2
    .line 3
    iget-object p1, p0, Lu4/c;->a:Lcom/google/android/gms/cast/framework/media/widget/ExpandedControllerActivity;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public bridge synthetic n(Lq4/e;)V
    .locals 0

    .line 1
    check-cast p1, Lq4/b;

    .line 2
    .line 3
    return-void
.end method
