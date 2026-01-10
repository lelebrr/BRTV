.class public final synthetic Landroidx/media3/common/b0;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lb7/e0;


# instance fields
.field public final synthetic a:Landroidx/media3/common/SimpleBasePlayer;

.field public final synthetic b:Landroidx/media3/common/SimpleBasePlayer$State;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/SimpleBasePlayer;Landroidx/media3/common/SimpleBasePlayer$State;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/common/b0;->a:Landroidx/media3/common/SimpleBasePlayer;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/common/b0;->b:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 7
    .line 8
    iput p3, p0, Landroidx/media3/common/b0;->c:I

    .line 9
    .line 10
    iput p4, p0, Landroidx/media3/common/b0;->d:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/common/b0;->a:Landroidx/media3/common/SimpleBasePlayer;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/common/b0;->b:Landroidx/media3/common/SimpleBasePlayer$State;

    .line 4
    .line 5
    iget v2, p0, Landroidx/media3/common/b0;->c:I

    .line 6
    .line 7
    iget v3, p0, Landroidx/media3/common/b0;->d:I

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Landroidx/media3/common/SimpleBasePlayer;->c(Landroidx/media3/common/SimpleBasePlayer;Landroidx/media3/common/SimpleBasePlayer$State;II)Landroidx/media3/common/SimpleBasePlayer$State;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method
