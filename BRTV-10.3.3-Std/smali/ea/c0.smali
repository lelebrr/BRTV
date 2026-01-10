.class public final Lea/c0;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lfa/o0;


# instance fields
.field public final synthetic a:Lorg/bitspark/android/Spark;


# direct methods
.method public constructor <init>(Lorg/bitspark/android/Spark;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lea/c0;->a:Lorg/bitspark/android/Spark;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(ILandroid/view/View;)V
    .locals 2

    .line 1
    iget-object p2, p0, Lea/c0;->a:Lorg/bitspark/android/Spark;

    .line 2
    .line 3
    iget-object v0, p2, Lorg/bitspark/android/Spark;->v0:Lfa/b1;

    .line 4
    .line 5
    iput p1, v0, Lfa/c;->e:I

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/k0;->notifyDataSetChanged()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p2, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 11
    .line 12
    iget-object v1, p2, Lorg/bitspark/android/Spark;->v0:Lfa/b1;

    .line 13
    .line 14
    iget-object v1, v1, Lfa/c;->h:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lorg/bitspark/android/beans/ChannelBean$SourcesBean;

    .line 21
    .line 22
    iput-object v1, v0, Lta/a;->r:Lorg/bitspark/android/beans/ChannelBean$SourcesBean;

    .line 23
    .line 24
    iget-object p2, p2, Lorg/bitspark/android/Spark;->i0:Lta/a;

    .line 25
    .line 26
    iget-object v0, p2, Lta/a;->q:Lorg/bitspark/android/beans/ChannelBean;

    .line 27
    .line 28
    iget-object v1, p2, Lta/a;->A:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {p2, p1, v0, v1}, Lta/a;->i(ILorg/bitspark/android/beans/ChannelBean;Ljava/util/ArrayList;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
