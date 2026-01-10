.class public final Lr4/p;
.super Ljava/lang/Object;
.source "MyApplication"


# instance fields
.field public final a:Ljava/util/HashSet;

.field public final b:J

.field public final c:Lr4/o;

.field public d:Z

.field public final synthetic e:Lr4/f;


# direct methods
.method public constructor <init>(Lr4/f;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lr4/p;->e:Lr4/f;

    .line 5
    .line 6
    new-instance p1, Ljava/util/HashSet;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lr4/p;->a:Ljava/util/HashSet;

    .line 12
    .line 13
    const-wide/16 v0, 0x3e8

    .line 14
    .line 15
    iput-wide v0, p0, Lr4/p;->b:J

    .line 16
    .line 17
    new-instance p1, Lr4/o;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-direct {p1, v0, p0}, Lr4/o;-><init>(ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lr4/p;->c:Lr4/o;

    .line 24
    .line 25
    return-void
.end method
