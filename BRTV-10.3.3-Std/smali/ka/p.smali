.class public final Lka/p;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lka/r;


# direct methods
.method public constructor <init>(Lka/r;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lka/p;->b:Lka/r;

    .line 5
    .line 6
    iput p2, p0, Lka/p;->a:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lka/p;->b:Lka/r;

    .line 2
    .line 3
    iget p5, p0, Lka/p;->a:I

    .line 4
    .line 5
    invoke-static {p1, p2, p3, p4, p5}, Lka/r;->S(Lka/r;Landroid/view/View;III)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
