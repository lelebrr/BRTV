.class public final synthetic Lorg/bitspark/android/utils/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lj7/c;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    invoke-static {v0}, Lcom/nmmedit/protect/NativeUtil;->classesInit0(I)V

    return-void
.end method

.method public synthetic constructor <init>(Lj7/c;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/bitspark/android/utils/h;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/bitspark/android/utils/h;->b:Lj7/c;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/bitspark/android/utils/h;->c:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final native run()V
.end method
