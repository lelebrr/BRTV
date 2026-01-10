.class public final Lka/o;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# instance fields
.field public final synthetic a:Lka/r;


# direct methods
.method public constructor <init>(Lka/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lka/o;->a:Lka/r;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 0

    .line 1
    iget-object p2, p0, Lka/o;->a:Lka/r;

    .line 2
    .line 3
    invoke-static {p2, p1, p3}, Lka/r;->R(Lka/r;Landroid/widget/ExpandableListView;I)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    return p1
.end method
