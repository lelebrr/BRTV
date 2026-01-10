.class public final Lfa/y0;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:Lfa/a1;

.field public final synthetic b:Lorg/bitspark/android/beans/ChannelBean$SourcesBean;

.field public final synthetic c:I

.field public final synthetic d:Lfa/b1;


# direct methods
.method public constructor <init>(Lfa/b1;Lfa/a1;Lorg/bitspark/android/beans/ChannelBean$SourcesBean;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lfa/y0;->d:Lfa/b1;

    .line 5
    .line 6
    iput-object p2, p0, Lfa/y0;->a:Lfa/a1;

    .line 7
    .line 8
    iput-object p3, p0, Lfa/y0;->b:Lorg/bitspark/android/beans/ChannelBean$SourcesBean;

    .line 9
    .line 10
    iput p4, p0, Lfa/y0;->c:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lfa/y0;->d:Lfa/b1;

    .line 4
    .line 5
    iget-object p1, p1, Lfa/c;->c:Lea/k;

    .line 6
    .line 7
    iget-object p2, p0, Lfa/y0;->a:Lfa/a1;

    .line 8
    .line 9
    iget-object p2, p2, Landroidx/recyclerview/widget/p1;->itemView:Landroid/view/View;

    .line 10
    .line 11
    iget-object p2, p0, Lfa/y0;->b:Lorg/bitspark/android/beans/ChannelBean$SourcesBean;

    .line 12
    .line 13
    iget v0, p0, Lfa/y0;->c:I

    .line 14
    .line 15
    invoke-virtual {p1, v0, p2}, Lea/k;->b(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
