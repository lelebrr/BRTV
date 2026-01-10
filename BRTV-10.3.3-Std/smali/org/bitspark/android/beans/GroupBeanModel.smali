.class public Lorg/bitspark/android/beans/GroupBeanModel;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public group_id:I

.field public group_name:Ljava/lang/String;

.field public items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bitspark/android/beans/ChannelBean$TagsBean;",
            ">;"
        }
    .end annotation
.end field

.field public restrictedAccess:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lorg/bitspark/android/beans/GroupBeanModel;->group_name:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method
