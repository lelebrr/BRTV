.class abstract Lcom/alibaba/fastjson/JSONPath$PropertyFilter;
.super Ljava/lang/Object;
.source "MyApplication"

# interfaces
.implements Lcom/alibaba/fastjson/JSONPath$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PropertyFilter"
.end annotation


# static fields
.field static TYPE:J


# instance fields
.field protected final function:Z

.field protected functionExpr:Lcom/alibaba/fastjson/JSONPath$Segment;

.field protected final propertyName:Ljava/lang/String;

.field protected final propertyNameHash:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    sput-wide v0, Lcom/alibaba/fastjson/JSONPath$PropertyFilter;->TYPE:J

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$PropertyFilter;->propertyName:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iput-wide v0, p0, Lcom/alibaba/fastjson/JSONPath$PropertyFilter;->propertyNameHash:J

    .line 11
    .line 12
    iput-boolean p2, p0, Lcom/alibaba/fastjson/JSONPath$PropertyFilter;->function:Z

    .line 13
    .line 14
    if-eqz p2, :cond_2

    .line 15
    .line 16
    sget-wide v2, Lcom/alibaba/fastjson/JSONPath$PropertyFilter;->TYPE:J

    .line 17
    .line 18
    cmp-long p2, v0, v2

    .line 19
    .line 20
    if-nez p2, :cond_0

    .line 21
    .line 22
    sget-object p1, Lcom/alibaba/fastjson/JSONPath$TypeSegment;->instance:Lcom/alibaba/fastjson/JSONPath$TypeSegment;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$PropertyFilter;->functionExpr:Lcom/alibaba/fastjson/JSONPath$Segment;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-wide v2, 0x4dea9618e618ae3cL    # 2.239892812106928E67

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    cmp-long p2, v0, v2

    .line 33
    .line 34
    if-nez p2, :cond_1

    .line 35
    .line 36
    sget-object p1, Lcom/alibaba/fastjson/JSONPath$SizeSegment;->instance:Lcom/alibaba/fastjson/JSONPath$SizeSegment;

    .line 37
    .line 38
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$PropertyFilter;->functionExpr:Lcom/alibaba/fastjson/JSONPath$Segment;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    new-instance p2, Lcom/alibaba/fastjson/JSONPathException;

    .line 42
    .line 43
    const-string v0, "unsupported funciton : "

    .line 44
    .line 45
    invoke-static {v0, p1}, Lea/q;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-direct {p2, p1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p2

    .line 53
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public get(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$PropertyFilter;->functionExpr:Lcom/alibaba/fastjson/JSONPath$Segment;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2, p3}, Lcom/alibaba/fastjson/JSONPath$Segment;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    iget-object p2, p0, Lcom/alibaba/fastjson/JSONPath$PropertyFilter;->propertyName:Ljava/lang/String;

    .line 11
    .line 12
    iget-wide v0, p0, Lcom/alibaba/fastjson/JSONPath$PropertyFilter;->propertyNameHash:J

    .line 13
    .line 14
    invoke-virtual {p1, p3, p2, v0, v1}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method
