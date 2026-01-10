.class public final Lg2/k;
.super Lc9/c;
.source "MyApplication"


# instance fields
.field public a:Lg2/l;

.field public b:Le2/j;

.field public c:Ljava/lang/Object;

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lg2/l;

.field public f:I


# direct methods
.method public constructor <init>(Lg2/l;Lc9/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg2/k;->e:Lg2/l;

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
    .locals 1

    .line 1
    iput-object p1, p0, Lg2/k;->d:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lg2/k;->f:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lg2/k;->f:I

    .line 9
    .line 10
    iget-object p1, p0, Lg2/k;->e:Lg2/l;

    .line 11
    .line 12
    invoke-virtual {p1, p0}, Lg2/l;->a(La9/d;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method
