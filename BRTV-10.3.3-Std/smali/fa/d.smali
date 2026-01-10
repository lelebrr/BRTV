.class public final Lfa/d;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupExpandListener;


# instance fields
.field public final synthetic a:Lfa/k;


# direct methods
.method public constructor <init>(Lfa/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lfa/d;->a:Lfa/k;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onGroupExpand(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lfa/d;->a:Lfa/k;

    .line 2
    .line 3
    iget-object v0, v0, Lfa/k;->l:Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-void
.end method
