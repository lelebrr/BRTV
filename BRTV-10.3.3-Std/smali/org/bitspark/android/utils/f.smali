.class public final Lorg/bitspark/android/utils/f;
.super Landroidx/recyclerview/widget/b1;


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    invoke-static {v0}, Lcom/nmmedit/protect/NativeUtil;->classesInit0(I)V

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/bitspark/android/utils/f;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    .line 6
    iput p2, p0, Lorg/bitspark/android/utils/f;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final native onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
.end method
