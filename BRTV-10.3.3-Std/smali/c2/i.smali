.class public final Lc2/i;
.super Lc9/c;
.source "MyApplication"


# instance fields
.field public a:Lc2/l;

.field public b:Lm2/p;

.field public c:Lm2/i;

.field public d:Lc2/d;

.field public e:Landroid/graphics/Bitmap;

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lc2/l;

.field public h:I


# direct methods
.method public constructor <init>(Lc2/l;Lc9/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc2/i;->g:Lc2/l;

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
    iput-object p1, p0, Lc2/i;->f:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lc2/i;->h:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lc2/i;->h:I

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iget-object v0, p0, Lc2/i;->g:Lc2/l;

    .line 12
    .line 13
    invoke-static {v0, p1, p0}, Lc2/l;->a(Lc2/l;Lm2/i;Lc9/c;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
