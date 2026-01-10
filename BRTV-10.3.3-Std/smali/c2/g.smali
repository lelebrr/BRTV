.class public final Lc2/g;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lm2/c;

.field public final c:Lr2/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lc2/g;->a:Landroid/content/Context;

    .line 9
    .line 10
    sget-object p1, Lr2/d;->a:Lm2/c;

    .line 11
    .line 12
    iput-object p1, p0, Lc2/g;->b:Lm2/c;

    .line 13
    .line 14
    new-instance p1, Lr2/j;

    .line 15
    .line 16
    invoke-direct {p1}, Lr2/j;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lc2/g;->c:Lr2/j;

    .line 20
    .line 21
    return-void
.end method
