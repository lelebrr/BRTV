.class public final Lea/d0;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic a:Lsa/g;

.field public final synthetic b:Lorg/bitspark/android/Spark;


# direct methods
.method public constructor <init>(Lorg/bitspark/android/Spark;Lsa/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lea/d0;->b:Lorg/bitspark/android/Spark;

    .line 5
    .line 6
    iput-object p2, p0, Lea/d0;->a:Lsa/g;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lea/d0;->a:Lsa/g;

    .line 2
    .line 3
    iget-object v0, v0, Lsa/g;->a:Lra/e;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lea/d0;->b:Lorg/bitspark/android/Spark;

    .line 11
    .line 12
    const/16 v1, 0x1388

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lorg/bitspark/android/Spark;->z0(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
