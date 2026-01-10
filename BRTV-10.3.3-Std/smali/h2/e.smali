.class public final Lh2/e;
.super Lc9/c;
.source "MyApplication"


# instance fields
.field public a:Lh2/i;

.field public b:Lc2/c;

.field public c:Lm2/i;

.field public d:Ljava/lang/Object;

.field public e:Lm2/m;

.field public f:Lc2/d;

.field public g:I

.field public synthetic h:Ljava/lang/Object;

.field public final synthetic i:Lh2/i;

.field public j:I


# direct methods
.method public constructor <init>(Lh2/i;Lc9/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lh2/e;->i:Lh2/i;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lc9/c;-><init>(La9/d;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iput-object p1, p0, Lh2/e;->h:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lh2/e;->j:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lh2/e;->j:I

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x0

    .line 12
    iget-object v0, p0, Lh2/e;->i:Lh2/i;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    move-object v6, p0

    .line 18
    invoke-virtual/range {v0 .. v6}, Lh2/i;->c(Lc2/c;Lm2/i;Ljava/lang/Object;Lm2/m;Lc2/d;Lc9/c;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method
