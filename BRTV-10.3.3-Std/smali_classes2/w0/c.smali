.class public abstract Lw0/c;
.super Ljava/lang/Object;
.source "MyApplication"


# static fields
.field public static final a:Landroidx/databinding/DataBinderMapperImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/databinding/DataBinderMapperImpl;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/databinding/DataBinderMapperImpl;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lw0/c;->a:Landroidx/databinding/DataBinderMapperImpl;

    .line 7
    .line 8
    return-void
.end method

.method public static a(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)Lw0/e;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    sget-object p2, Lw0/c;->a:Landroidx/databinding/DataBinderMapperImpl;

    .line 7
    .line 8
    invoke-virtual {p2, p1, p0}, Landroidx/databinding/MergedDataBinderMapper;->b(ILandroid/view/View;)Lw0/e;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method
