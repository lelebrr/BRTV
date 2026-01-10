.class public Lorg/bitspark/android/beans/EventBean;
.super Ljava/lang/Object;


# instance fields
.field public channel:I

.field public image:Ljava/lang/String;

.field public imageRes:Ljava/lang/Integer;

.field public tag:I

.field public title:Ljava/lang/String;

.field public viewType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lorg/bitspark/android/beans/EventBean;->image:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lorg/bitspark/android/beans/EventBean;->title:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lorg/bitspark/android/beans/EventBean;->viewType:I

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/bitspark/android/beans/EventBean;->imageRes:Ljava/lang/Integer;

    .line 6
    iput v0, p0, Lorg/bitspark/android/beans/EventBean;->tag:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;I)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lorg/bitspark/android/beans/EventBean;->imageRes:Ljava/lang/Integer;

    .line 13
    iput-object p2, p0, Lorg/bitspark/android/beans/EventBean;->title:Ljava/lang/String;

    .line 14
    iput p3, p0, Lorg/bitspark/android/beans/EventBean;->viewType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lorg/bitspark/android/beans/EventBean;->image:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lorg/bitspark/android/beans/EventBean;->title:Ljava/lang/String;

    .line 10
    iput p3, p0, Lorg/bitspark/android/beans/EventBean;->viewType:I

    return-void
.end method
