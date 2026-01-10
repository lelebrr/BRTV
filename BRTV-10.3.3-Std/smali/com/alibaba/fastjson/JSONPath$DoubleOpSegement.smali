.class Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;
.super Lcom/alibaba/fastjson/JSONPath$PropertyFilter;
.source "MyApplication"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DoubleOpSegement"
.end annotation


# instance fields
.field private final op:Lcom/alibaba/fastjson/JSONPath$Operator;

.field private final value:D


# direct methods
.method public constructor <init>(Ljava/lang/String;ZDLcom/alibaba/fastjson/JSONPath$Operator;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/JSONPath$PropertyFilter;-><init>(Ljava/lang/String;Z)V

    .line 2
    .line 3
    .line 4
    iput-wide p3, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->value:D

    .line 5
    .line 6
    iput-object p5, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1, p2, p4}, Lcom/alibaba/fastjson/JSONPath$PropertyFilter;->get(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 p2, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return p2

    .line 9
    :cond_0
    instance-of p3, p1, Ljava/lang/Number;

    .line 10
    .line 11
    if-nez p3, :cond_1

    .line 12
    .line 13
    return p2

    .line 14
    :cond_1
    check-cast p1, Ljava/lang/Number;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    .line 17
    .line 18
    .line 19
    move-result-wide p3

    .line 20
    sget-object p1, Lcom/alibaba/fastjson/JSONPath$1;->$SwitchMap$com$alibaba$fastjson$JSONPath$Operator:[I

    .line 21
    .line 22
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    aget p1, p1, v0

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    packed-switch p1, :pswitch_data_0

    .line 32
    .line 33
    .line 34
    return p2

    .line 35
    :pswitch_0
    iget-wide v1, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->value:D

    .line 36
    .line 37
    cmpg-double p1, p3, v1

    .line 38
    .line 39
    if-gez p1, :cond_2

    .line 40
    .line 41
    const/4 p2, 0x1

    .line 42
    :cond_2
    return p2

    .line 43
    :pswitch_1
    iget-wide v1, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->value:D

    .line 44
    .line 45
    cmpg-double p1, p3, v1

    .line 46
    .line 47
    if-gtz p1, :cond_3

    .line 48
    .line 49
    const/4 p2, 0x1

    .line 50
    :cond_3
    return p2

    .line 51
    :pswitch_2
    iget-wide v1, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->value:D

    .line 52
    .line 53
    cmpl-double p1, p3, v1

    .line 54
    .line 55
    if-lez p1, :cond_4

    .line 56
    .line 57
    const/4 p2, 0x1

    .line 58
    :cond_4
    return p2

    .line 59
    :pswitch_3
    iget-wide v1, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->value:D

    .line 60
    .line 61
    cmpl-double p1, p3, v1

    .line 62
    .line 63
    if-ltz p1, :cond_5

    .line 64
    .line 65
    const/4 p2, 0x1

    .line 66
    :cond_5
    return p2

    .line 67
    :pswitch_4
    iget-wide v1, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->value:D

    .line 68
    .line 69
    cmpl-double p1, p3, v1

    .line 70
    .line 71
    if-eqz p1, :cond_6

    .line 72
    .line 73
    const/4 p2, 0x1

    .line 74
    :cond_6
    return p2

    .line 75
    :pswitch_5
    iget-wide v1, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->value:D

    .line 76
    .line 77
    cmpl-double p1, p3, v1

    .line 78
    .line 79
    if-nez p1, :cond_7

    .line 80
    .line 81
    const/4 p2, 0x1

    .line 82
    :cond_7
    return p2

    .line 83
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
