.class public Lorg/bitspark/android/beans/DoHMsg$Answer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitspark/android/beans/DoHMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Answer"
.end annotation


# instance fields
.field private data:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field final synthetic this$0:Lorg/bitspark/android/beans/DoHMsg;

.field private ttl:I

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x35

    invoke-static {v0}, Lcom/nmmedit/protect/NativeUtil;->classesInit0(I)V

    return-void
.end method

.method public constructor <init>(Lorg/bitspark/android/beans/DoHMsg;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/bitspark/android/beans/DoHMsg$Answer;->this$0:Lorg/bitspark/android/beans/DoHMsg;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public native getData()Ljava/lang/String;
.end method

.method public native getName()Ljava/lang/String;
.end method

.method public native getTtl()I
.end method

.method public native getType()I
.end method

.method public native setData(Ljava/lang/String;)V
.end method

.method public native setName(Ljava/lang/String;)V
.end method

.method public native setTtl(I)V
.end method

.method public native setType(I)V
.end method
