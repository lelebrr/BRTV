.class public final Lh2/c;
.super Lc9/c;
.source "MyApplication"


# instance fields
.field public a:Lh2/i;

.field public b:Lm2/i;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Lj9/n;

.field public f:Lj9/n;

.field public g:Lj9/n;

.field public h:Lj9/n;

.field public synthetic i:Ljava/lang/Object;

.field public final synthetic j:Lh2/i;

.field public k:I


# direct methods
.method public constructor <init>(Lh2/i;Lc9/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lh2/c;->j:Lh2/i;

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
    .locals 6

    .line 1
    iput-object p1, p0, Lh2/c;->i:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lh2/c;->k:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lh2/c;->k:I

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    iget-object v0, p0, Lh2/c;->j:Lh2/i;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    const/4 v4, 0x0

    .line 16
    move-object v5, p0

    .line 17
    invoke-static/range {v0 .. v5}, Lh2/i;->b(Lh2/i;Lm2/i;Ljava/lang/Object;Lm2/m;Lc2/d;Lc9/c;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method
