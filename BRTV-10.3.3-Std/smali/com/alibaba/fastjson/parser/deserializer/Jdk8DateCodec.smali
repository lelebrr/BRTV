.class public Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;
.super Lcom/alibaba/fastjson/parser/deserializer/ContextObjectDeserializer;
.source "MyApplication"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/serializer/ContextObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field private static final ISO_FIXED_FORMAT:Ljava/time/format/DateTimeFormatter;

.field private static final defaultFormatter:Ljava/time/format/DateTimeFormatter;

.field private static final defaultFormatter_23:Ljava/time/format/DateTimeFormatter;

.field private static final defaultPatttern:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"

.field private static final formatter_d10_cn:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_d10_de:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_d10_eur:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_d10_in:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_d10_kr:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_d10_tw:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_d10_us:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_d8:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_dt19_cn:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_dt19_cn_1:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_dt19_de:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_dt19_eur:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_dt19_in:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_dt19_kr:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_dt19_tw:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_dt19_us:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_iso8601:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_iso8601_pattern:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss"

.field private static final formatter_iso8601_pattern_23:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

.field private static final formatter_iso8601_pattern_29:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSSSSSSSS"

.field public static final instance:Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->instance:Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;

    .line 7
    .line 8
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/b;->u()Ljava/time/format/DateTimeFormatter;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->defaultFormatter:Ljava/time/format/DateTimeFormatter;

    .line 13
    .line 14
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/a;->m()Ljava/time/format/DateTimeFormatter;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->defaultFormatter_23:Ljava/time/format/DateTimeFormatter;

    .line 19
    .line 20
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/a;->v()Ljava/time/format/DateTimeFormatter;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_tw:Ljava/time/format/DateTimeFormatter;

    .line 25
    .line 26
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/a;->x()Ljava/time/format/DateTimeFormatter;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_cn:Ljava/time/format/DateTimeFormatter;

    .line 31
    .line 32
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/a;->y()Ljava/time/format/DateTimeFormatter;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_cn_1:Ljava/time/format/DateTimeFormatter;

    .line 37
    .line 38
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/a;->z()Ljava/time/format/DateTimeFormatter;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_kr:Ljava/time/format/DateTimeFormatter;

    .line 43
    .line 44
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/a;->A()Ljava/time/format/DateTimeFormatter;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_us:Ljava/time/format/DateTimeFormatter;

    .line 49
    .line 50
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/a;->B()Ljava/time/format/DateTimeFormatter;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_eur:Ljava/time/format/DateTimeFormatter;

    .line 55
    .line 56
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/a;->C()Ljava/time/format/DateTimeFormatter;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_de:Ljava/time/format/DateTimeFormatter;

    .line 61
    .line 62
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/a;->D()Ljava/time/format/DateTimeFormatter;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_in:Ljava/time/format/DateTimeFormatter;

    .line 67
    .line 68
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/c;->n()Ljava/time/format/DateTimeFormatter;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d8:Ljava/time/format/DateTimeFormatter;

    .line 73
    .line 74
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/c;->A()Ljava/time/format/DateTimeFormatter;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_tw:Ljava/time/format/DateTimeFormatter;

    .line 79
    .line 80
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/c;->C()Ljava/time/format/DateTimeFormatter;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_cn:Ljava/time/format/DateTimeFormatter;

    .line 85
    .line 86
    invoke-static {}, Landroidx/appcompat/app/x;->r()Ljava/time/format/DateTimeFormatter;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_kr:Ljava/time/format/DateTimeFormatter;

    .line 91
    .line 92
    invoke-static {}, Landroidx/appcompat/app/x;->A()Ljava/time/format/DateTimeFormatter;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_us:Ljava/time/format/DateTimeFormatter;

    .line 97
    .line 98
    invoke-static {}, Landroidx/appcompat/app/x;->B()Ljava/time/format/DateTimeFormatter;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_eur:Ljava/time/format/DateTimeFormatter;

    .line 103
    .line 104
    invoke-static {}, Landroidx/appcompat/app/x;->C()Ljava/time/format/DateTimeFormatter;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_de:Ljava/time/format/DateTimeFormatter;

    .line 109
    .line 110
    invoke-static {}, Landroidx/appcompat/app/x;->D()Ljava/time/format/DateTimeFormatter;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_in:Ljava/time/format/DateTimeFormatter;

    .line 115
    .line 116
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/b;->u()Ljava/time/format/DateTimeFormatter;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-static {}, Landroidx/appcompat/app/x;->q()Ljava/time/ZoneId;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-static {v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/a;->o(Ljava/time/format/DateTimeFormatter;Ljava/time/ZoneId;)Ljava/time/format/DateTimeFormatter;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->ISO_FIXED_FORMAT:Ljava/time/format/DateTimeFormatter;

    .line 129
    .line 130
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/a;->s()Ljava/time/format/DateTimeFormatter;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_iso8601:Ljava/time/format/DateTimeFormatter;

    .line 135
    .line 136
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/deserializer/ContextObjectDeserializer;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static castToLocalDateTime(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    if-nez p1, :cond_1

    .line 6
    .line 7
    const-string p1, "yyyy-MM-dd HH:mm:ss"

    .line 8
    .line 9
    :cond_1
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/deserializer/a;->n(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0, p1}, Lcom/alibaba/fastjson/parser/deserializer/a;->f(Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method private write(Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/time/temporal/TemporalAccessor;Ljava/lang/String;)V
    .locals 2

    .line 24
    const-string v0, "unixtime"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25
    instance-of v0, p2, Ljava/time/chrono/ChronoZonedDateTime;

    if-eqz v0, :cond_0

    .line 26
    check-cast p2, Ljava/time/chrono/ChronoZonedDateTime;

    invoke-interface {p2}, Ljava/time/chrono/ChronoZonedDateTime;->toEpochSecond()J

    move-result-wide p2

    long-to-int p3, p2

    .line 27
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    return-void

    .line 28
    :cond_0
    instance-of v0, p2, Ljava/time/LocalDateTime;

    if-eqz v0, :cond_1

    .line 29
    check-cast p2, Ljava/time/LocalDateTime;

    sget-object p3, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-virtual {p3}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p2

    invoke-virtual {p2}, Ljava/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide p2

    long-to-int p3, p2

    .line 30
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    return-void

    .line 31
    :cond_1
    const-string v0, "millis"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 32
    instance-of v0, p2, Ljava/time/chrono/ChronoZonedDateTime;

    if-eqz v0, :cond_2

    .line 33
    move-object v0, p2

    check-cast v0, Ljava/time/chrono/ChronoZonedDateTime;

    invoke-interface {v0}, Ljava/time/chrono/ChronoZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    goto :goto_0

    .line 34
    :cond_2
    instance-of v0, p2, Ljava/time/LocalDateTime;

    if-eqz v0, :cond_3

    .line 35
    move-object v0, p2

    check-cast v0, Ljava/time/LocalDateTime;

    sget-object v1, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 36
    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide p2

    .line 37
    invoke-virtual {p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    return-void

    .line 38
    :cond_4
    const-string v0, "yyyy-MM-dd\'T\'HH:mm:ss"

    if-ne p3, v0, :cond_5

    .line 39
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_iso8601:Ljava/time/format/DateTimeFormatter;

    goto :goto_1

    .line 40
    :cond_5
    invoke-static {p3}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object p3

    .line 41
    :goto_1
    invoke-virtual {p3, p2}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p2

    .line 42
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "I)TT;"
        }
    .end annotation

    .line 1
    iget-object p3, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 2
    .line 3
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    .line 4
    .line 5
    .line 6
    move-result p5

    .line 7
    const/4 v0, 0x0

    .line 8
    const/16 v1, 0x8

    .line 9
    .line 10
    if-ne p5, v1, :cond_0

    .line 11
    .line 12
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 13
    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    .line 17
    .line 18
    .line 19
    move-result p5

    .line 20
    const/4 v2, 0x4

    .line 21
    if-ne p5, v2, :cond_19

    .line 22
    .line 23
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p5

    .line 27
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 28
    .line 29
    .line 30
    if-eqz p4, :cond_2

    .line 31
    .line 32
    const-string p3, "yyyy-MM-dd HH:mm:ss"

    .line 33
    .line 34
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p3

    .line 38
    if-eqz p3, :cond_1

    .line 39
    .line 40
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->defaultFormatter:Ljava/time/format/DateTimeFormatter;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-static {p4}, Lcom/alibaba/fastjson/parser/deserializer/a;->n(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    move-object p3, v0

    .line 49
    :goto_0
    const-string v2, ""

    .line 50
    .line 51
    invoke-virtual {v2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_3

    .line 56
    .line 57
    return-object v0

    .line 58
    :cond_3
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/a;->r()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    if-ne p2, v2, :cond_6

    .line 63
    .line 64
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    const/16 p2, 0xa

    .line 69
    .line 70
    if-eq p1, p2, :cond_5

    .line 71
    .line 72
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-ne p1, v1, :cond_4

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_4
    invoke-virtual {p0, p5, p3}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->parseDateTime(Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    goto :goto_2

    .line 84
    :cond_5
    :goto_1
    invoke-virtual {p0, p5, p4, p3}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->parseLocalDate(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/b;->n()Ljava/time/LocalTime;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    invoke-static {p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/b;->m(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    :goto_2
    return-object p1

    .line 97
    :cond_6
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/b;->D()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    const/16 v3, 0x17

    .line 102
    .line 103
    if-ne p2, v2, :cond_8

    .line 104
    .line 105
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-ne p1, v3, :cond_7

    .line 110
    .line 111
    invoke-static {p5}, Lcom/alibaba/fastjson/parser/deserializer/a;->e(Ljava/lang/String;)Ljava/time/LocalDateTime;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/deserializer/b;->a(Ljava/time/LocalDateTime;)I

    .line 116
    .line 117
    .line 118
    move-result p2

    .line 119
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/deserializer/b;->v(Ljava/time/LocalDateTime;)I

    .line 120
    .line 121
    .line 122
    move-result p3

    .line 123
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/deserializer/b;->x(Ljava/time/LocalDateTime;)I

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    invoke-static {p2, p3, p1}, Lcom/alibaba/fastjson/parser/deserializer/b;->i(III)Ljava/time/LocalDate;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    goto :goto_3

    .line 132
    :cond_7
    invoke-virtual {p0, p5, p4, p3}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->parseLocalDate(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    :goto_3
    return-object p1

    .line 137
    :cond_8
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/a;->b()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    move-result-object p4

    .line 141
    const/16 v2, 0x39

    .line 142
    .line 143
    const/16 v4, 0x30

    .line 144
    .line 145
    const/16 v5, 0x13

    .line 146
    .line 147
    const/4 v6, 0x0

    .line 148
    if-ne p2, p4, :cond_d

    .line 149
    .line 150
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    if-ne p1, v3, :cond_9

    .line 155
    .line 156
    invoke-static {p5}, Lcom/alibaba/fastjson/parser/deserializer/a;->e(Ljava/lang/String;)Ljava/time/LocalDateTime;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/deserializer/a;->a(Ljava/time/LocalDateTime;)I

    .line 161
    .line 162
    .line 163
    move-result p2

    .line 164
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/deserializer/a;->q(Ljava/time/LocalDateTime;)I

    .line 165
    .line 166
    .line 167
    move-result p3

    .line 168
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/deserializer/a;->u(Ljava/time/LocalDateTime;)I

    .line 169
    .line 170
    .line 171
    move-result p4

    .line 172
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/deserializer/a;->w(Ljava/time/LocalDateTime;)I

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    invoke-static {p2, p3, p4, p1}, Lcom/alibaba/fastjson/parser/deserializer/a;->h(IIII)Ljava/time/LocalTime;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    goto :goto_6

    .line 181
    :cond_9
    :goto_4
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    if-ge v6, p1, :cond_b

    .line 186
    .line 187
    invoke-virtual {p5, v6}, Ljava/lang/String;->charAt(I)C

    .line 188
    .line 189
    .line 190
    move-result p1

    .line 191
    if-lt p1, v4, :cond_c

    .line 192
    .line 193
    if-le p1, v2, :cond_a

    .line 194
    .line 195
    goto :goto_5

    .line 196
    :cond_a
    add-int/lit8 v6, v6, 0x1

    .line 197
    .line 198
    goto :goto_4

    .line 199
    :cond_b
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    if-le p1, v1, :cond_c

    .line 204
    .line 205
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    .line 206
    .line 207
    .line 208
    move-result p1

    .line 209
    if-ge p1, v5, :cond_c

    .line 210
    .line 211
    invoke-static {p5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 212
    .line 213
    .line 214
    move-result-wide p1

    .line 215
    invoke-static {p1, p2}, Landroidx/appcompat/app/x;->p(J)Ljava/time/Instant;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    sget-object p2, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    .line 220
    .line 221
    invoke-static {p2}, Lcom/alibaba/fastjson/parser/deserializer/a;->i(Ljava/util/TimeZone;)Ljava/time/ZoneId;

    .line 222
    .line 223
    .line 224
    move-result-object p2

    .line 225
    invoke-static {p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/a;->g(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/deserializer/b;->p(Ljava/time/LocalDateTime;)Ljava/time/LocalTime;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    goto :goto_6

    .line 234
    :cond_c
    :goto_5
    invoke-static {p5}, Lcom/alibaba/fastjson/parser/deserializer/b;->o(Ljava/lang/String;)Ljava/time/LocalTime;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    :goto_6
    return-object p1

    .line 239
    :cond_d
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/b;->b()Ljava/lang/Class;

    .line 240
    .line 241
    .line 242
    move-result-object p4

    .line 243
    if-ne p2, p4, :cond_10

    .line 244
    .line 245
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->defaultFormatter:Ljava/time/format/DateTimeFormatter;

    .line 246
    .line 247
    if-ne p3, p2, :cond_e

    .line 248
    .line 249
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->ISO_FIXED_FORMAT:Ljava/time/format/DateTimeFormatter;

    .line 250
    .line 251
    :cond_e
    if-nez p3, :cond_f

    .line 252
    .line 253
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    .line 254
    .line 255
    .line 256
    move-result p2

    .line 257
    if-gt p2, v5, :cond_f

    .line 258
    .line 259
    new-instance p2, Lcom/alibaba/fastjson/parser/JSONScanner;

    .line 260
    .line 261
    invoke-direct {p2, p5}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    iget-object p1, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 265
    .line 266
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->getTimeZone()Ljava/util/TimeZone;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->setTimeZone(Ljava/util/TimeZone;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {p2, v6}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    .line 274
    .line 275
    .line 276
    move-result p4

    .line 277
    if-eqz p4, :cond_f

    .line 278
    .line 279
    invoke-virtual {p2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getCalendar()Ljava/util/Calendar;

    .line 280
    .line 281
    .line 282
    move-result-object p2

    .line 283
    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 284
    .line 285
    .line 286
    move-result-object p2

    .line 287
    invoke-static {p2}, Lcom/alibaba/fastjson/parser/deserializer/b;->h(Ljava/util/Date;)Ljava/time/Instant;

    .line 288
    .line 289
    .line 290
    move-result-object p2

    .line 291
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/deserializer/a;->i(Ljava/util/TimeZone;)Ljava/time/ZoneId;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    invoke-static {p2, p1}, Lcom/alibaba/fastjson/parser/deserializer/a;->l(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    .line 296
    .line 297
    .line 298
    move-result-object p1

    .line 299
    return-object p1

    .line 300
    :cond_f
    invoke-virtual {p0, p5, p3}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->parseZonedDateTime(Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/ZonedDateTime;

    .line 301
    .line 302
    .line 303
    move-result-object p1

    .line 304
    return-object p1

    .line 305
    :cond_10
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/b;->w()Ljava/lang/Class;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    if-ne p2, p1, :cond_11

    .line 310
    .line 311
    invoke-static {p5}, Lcom/alibaba/fastjson/parser/deserializer/b;->q(Ljava/lang/String;)Ljava/time/OffsetDateTime;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    return-object p1

    .line 316
    :cond_11
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/b;->y()Ljava/lang/Class;

    .line 317
    .line 318
    .line 319
    move-result-object p1

    .line 320
    if-ne p2, p1, :cond_12

    .line 321
    .line 322
    invoke-static {p5}, Lcom/alibaba/fastjson/parser/deserializer/b;->r(Ljava/lang/String;)Ljava/time/OffsetTime;

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    return-object p1

    .line 327
    :cond_12
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/b;->z()Ljava/lang/Class;

    .line 328
    .line 329
    .line 330
    move-result-object p1

    .line 331
    if-ne p2, p1, :cond_13

    .line 332
    .line 333
    invoke-static {p5}, Lcom/alibaba/fastjson/parser/deserializer/b;->t(Ljava/lang/String;)Ljava/time/ZoneId;

    .line 334
    .line 335
    .line 336
    move-result-object p1

    .line 337
    return-object p1

    .line 338
    :cond_13
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/b;->A()Ljava/lang/Class;

    .line 339
    .line 340
    .line 341
    move-result-object p1

    .line 342
    if-ne p2, p1, :cond_14

    .line 343
    .line 344
    invoke-static {p5}, Lcom/alibaba/fastjson/parser/deserializer/b;->s(Ljava/lang/String;)Ljava/time/Period;

    .line 345
    .line 346
    .line 347
    move-result-object p1

    .line 348
    return-object p1

    .line 349
    :cond_14
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/b;->B()Ljava/lang/Class;

    .line 350
    .line 351
    .line 352
    move-result-object p1

    .line 353
    if-ne p2, p1, :cond_15

    .line 354
    .line 355
    invoke-static {p5}, Lcom/alibaba/fastjson/parser/deserializer/b;->d(Ljava/lang/String;)Ljava/time/Duration;

    .line 356
    .line 357
    .line 358
    move-result-object p1

    .line 359
    return-object p1

    .line 360
    :cond_15
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/b;->C()Ljava/lang/Class;

    .line 361
    .line 362
    .line 363
    move-result-object p1

    .line 364
    if-ne p2, p1, :cond_24

    .line 365
    .line 366
    :goto_7
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    .line 367
    .line 368
    .line 369
    move-result p1

    .line 370
    if-ge v6, p1, :cond_17

    .line 371
    .line 372
    invoke-virtual {p5, v6}, Ljava/lang/String;->charAt(I)C

    .line 373
    .line 374
    .line 375
    move-result p1

    .line 376
    if-lt p1, v4, :cond_18

    .line 377
    .line 378
    if-le p1, v2, :cond_16

    .line 379
    .line 380
    goto :goto_8

    .line 381
    :cond_16
    add-int/lit8 v6, v6, 0x1

    .line 382
    .line 383
    goto :goto_7

    .line 384
    :cond_17
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    .line 385
    .line 386
    .line 387
    move-result p1

    .line 388
    if-le p1, v1, :cond_18

    .line 389
    .line 390
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    .line 391
    .line 392
    .line 393
    move-result p1

    .line 394
    if-ge p1, v5, :cond_18

    .line 395
    .line 396
    invoke-static {p5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 397
    .line 398
    .line 399
    move-result-wide p1

    .line 400
    invoke-static {p1, p2}, Landroidx/appcompat/app/x;->p(J)Ljava/time/Instant;

    .line 401
    .line 402
    .line 403
    move-result-object p1

    .line 404
    return-object p1

    .line 405
    :cond_18
    :goto_8
    invoke-static {p5}, Lcom/alibaba/fastjson/parser/deserializer/b;->g(Ljava/lang/String;)Ljava/time/Instant;

    .line 406
    .line 407
    .line 408
    move-result-object p1

    .line 409
    return-object p1

    .line 410
    :cond_19
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    .line 411
    .line 412
    .line 413
    move-result p5

    .line 414
    const/4 v1, 0x2

    .line 415
    if-ne p5, v1, :cond_21

    .line 416
    .line 417
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->longValue()J

    .line 418
    .line 419
    .line 420
    move-result-wide v0

    .line 421
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 422
    .line 423
    .line 424
    const-string p1, "unixtime"

    .line 425
    .line 426
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 427
    .line 428
    .line 429
    move-result p1

    .line 430
    if-eqz p1, :cond_1a

    .line 431
    .line 432
    const-wide/16 p3, 0x3e8

    .line 433
    .line 434
    mul-long v0, v0, p3

    .line 435
    .line 436
    goto :goto_9

    .line 437
    :cond_1a
    const-string p1, "yyyyMMddHHmmss"

    .line 438
    .line 439
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 440
    .line 441
    .line 442
    move-result p1

    .line 443
    if-eqz p1, :cond_1b

    .line 444
    .line 445
    const-wide p3, 0x2540be400L

    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    div-long p3, v0, p3

    .line 451
    .line 452
    long-to-int v2, p3

    .line 453
    const-wide/32 p3, 0x5f5e100

    .line 454
    .line 455
    .line 456
    div-long p3, v0, p3

    .line 457
    .line 458
    const-wide/16 v3, 0x64

    .line 459
    .line 460
    rem-long/2addr p3, v3

    .line 461
    long-to-int p1, p3

    .line 462
    const-wide/32 p3, 0xf4240

    .line 463
    .line 464
    .line 465
    div-long p3, v0, p3

    .line 466
    .line 467
    rem-long/2addr p3, v3

    .line 468
    long-to-int p4, p3

    .line 469
    const-wide/16 v5, 0x2710

    .line 470
    .line 471
    div-long v5, v0, v5

    .line 472
    .line 473
    rem-long/2addr v5, v3

    .line 474
    long-to-int v5, v5

    .line 475
    div-long v6, v0, v3

    .line 476
    .line 477
    rem-long/2addr v6, v3

    .line 478
    long-to-int v6, v6

    .line 479
    rem-long v3, v0, v3

    .line 480
    .line 481
    long-to-int v7, v3

    .line 482
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/a;->r()Ljava/lang/Class;

    .line 483
    .line 484
    .line 485
    move-result-object p3

    .line 486
    if-ne p2, p3, :cond_1b

    .line 487
    .line 488
    move v3, p1

    .line 489
    move v4, p4

    .line 490
    invoke-static/range {v2 .. v7}, Lcom/alibaba/fastjson/parser/deserializer/b;->l(IIIIII)Ljava/time/LocalDateTime;

    .line 491
    .line 492
    .line 493
    move-result-object p1

    .line 494
    return-object p1

    .line 495
    :cond_1b
    :goto_9
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/a;->r()Ljava/lang/Class;

    .line 496
    .line 497
    .line 498
    move-result-object p1

    .line 499
    if-ne p2, p1, :cond_1c

    .line 500
    .line 501
    invoke-static {v0, v1}, Landroidx/appcompat/app/x;->p(J)Ljava/time/Instant;

    .line 502
    .line 503
    .line 504
    move-result-object p1

    .line 505
    sget-object p2, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    .line 506
    .line 507
    invoke-static {p2}, Lcom/alibaba/fastjson/parser/deserializer/a;->i(Ljava/util/TimeZone;)Ljava/time/ZoneId;

    .line 508
    .line 509
    .line 510
    move-result-object p2

    .line 511
    invoke-static {p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/a;->g(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    .line 512
    .line 513
    .line 514
    move-result-object p1

    .line 515
    return-object p1

    .line 516
    :cond_1c
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/b;->D()Ljava/lang/Class;

    .line 517
    .line 518
    .line 519
    move-result-object p1

    .line 520
    if-ne p2, p1, :cond_1d

    .line 521
    .line 522
    invoke-static {v0, v1}, Landroidx/appcompat/app/x;->p(J)Ljava/time/Instant;

    .line 523
    .line 524
    .line 525
    move-result-object p1

    .line 526
    sget-object p2, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    .line 527
    .line 528
    invoke-static {p2}, Lcom/alibaba/fastjson/parser/deserializer/a;->i(Ljava/util/TimeZone;)Ljava/time/ZoneId;

    .line 529
    .line 530
    .line 531
    move-result-object p2

    .line 532
    invoke-static {p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/a;->g(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    .line 533
    .line 534
    .line 535
    move-result-object p1

    .line 536
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/deserializer/a;->d(Ljava/time/LocalDateTime;)Ljava/time/LocalDate;

    .line 537
    .line 538
    .line 539
    move-result-object p1

    .line 540
    return-object p1

    .line 541
    :cond_1d
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/a;->b()Ljava/lang/Class;

    .line 542
    .line 543
    .line 544
    move-result-object p1

    .line 545
    if-ne p2, p1, :cond_1e

    .line 546
    .line 547
    invoke-static {v0, v1}, Landroidx/appcompat/app/x;->p(J)Ljava/time/Instant;

    .line 548
    .line 549
    .line 550
    move-result-object p1

    .line 551
    sget-object p2, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    .line 552
    .line 553
    invoke-static {p2}, Lcom/alibaba/fastjson/parser/deserializer/a;->i(Ljava/util/TimeZone;)Ljava/time/ZoneId;

    .line 554
    .line 555
    .line 556
    move-result-object p2

    .line 557
    invoke-static {p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/a;->g(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    .line 558
    .line 559
    .line 560
    move-result-object p1

    .line 561
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/deserializer/b;->p(Ljava/time/LocalDateTime;)Ljava/time/LocalTime;

    .line 562
    .line 563
    .line 564
    move-result-object p1

    .line 565
    return-object p1

    .line 566
    :cond_1e
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/b;->b()Ljava/lang/Class;

    .line 567
    .line 568
    .line 569
    move-result-object p1

    .line 570
    if-ne p2, p1, :cond_1f

    .line 571
    .line 572
    invoke-static {v0, v1}, Landroidx/appcompat/app/x;->p(J)Ljava/time/Instant;

    .line 573
    .line 574
    .line 575
    move-result-object p1

    .line 576
    sget-object p2, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    .line 577
    .line 578
    invoke-static {p2}, Lcom/alibaba/fastjson/parser/deserializer/a;->i(Ljava/util/TimeZone;)Ljava/time/ZoneId;

    .line 579
    .line 580
    .line 581
    move-result-object p2

    .line 582
    invoke-static {p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/a;->l(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    .line 583
    .line 584
    .line 585
    move-result-object p1

    .line 586
    return-object p1

    .line 587
    :cond_1f
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/b;->C()Ljava/lang/Class;

    .line 588
    .line 589
    .line 590
    move-result-object p1

    .line 591
    if-ne p2, p1, :cond_20

    .line 592
    .line 593
    invoke-static {v0, v1}, Landroidx/appcompat/app/x;->p(J)Ljava/time/Instant;

    .line 594
    .line 595
    .line 596
    move-result-object p1

    .line 597
    return-object p1

    .line 598
    :cond_20
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 599
    .line 600
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 601
    .line 602
    .line 603
    throw p1

    .line 604
    :cond_21
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    .line 605
    .line 606
    .line 607
    move-result p3

    .line 608
    const/16 p4, 0xc

    .line 609
    .line 610
    if-ne p3, p4, :cond_25

    .line 611
    .line 612
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject()Lcom/alibaba/fastjson/JSONObject;

    .line 613
    .line 614
    .line 615
    move-result-object p1

    .line 616
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/b;->C()Ljava/lang/Class;

    .line 617
    .line 618
    .line 619
    move-result-object p3

    .line 620
    const-string p4, "nano"

    .line 621
    .line 622
    if-ne p2, p3, :cond_23

    .line 623
    .line 624
    const-string p2, "epochSecond"

    .line 625
    .line 626
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    .line 628
    .line 629
    move-result-object p2

    .line 630
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    .line 632
    .line 633
    move-result-object p1

    .line 634
    instance-of p3, p2, Ljava/lang/Number;

    .line 635
    .line 636
    if-eqz p3, :cond_22

    .line 637
    .line 638
    instance-of p4, p1, Ljava/lang/Number;

    .line 639
    .line 640
    if-eqz p4, :cond_22

    .line 641
    .line 642
    check-cast p2, Ljava/lang/Number;

    .line 643
    .line 644
    invoke-static {p2}, Lcom/alibaba/fastjson/util/TypeUtils;->longExtractValue(Ljava/lang/Number;)J

    .line 645
    .line 646
    .line 647
    move-result-wide p2

    .line 648
    check-cast p1, Ljava/lang/Number;

    .line 649
    .line 650
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->longExtractValue(Ljava/lang/Number;)J

    .line 651
    .line 652
    .line 653
    move-result-wide p4

    .line 654
    invoke-static {p2, p3, p4, p5}, Lcom/alibaba/fastjson/parser/deserializer/b;->f(JJ)Ljava/time/Instant;

    .line 655
    .line 656
    .line 657
    move-result-object p1

    .line 658
    return-object p1

    .line 659
    :cond_22
    if-eqz p3, :cond_24

    .line 660
    .line 661
    check-cast p2, Ljava/lang/Number;

    .line 662
    .line 663
    invoke-static {p2}, Lcom/alibaba/fastjson/util/TypeUtils;->longExtractValue(Ljava/lang/Number;)J

    .line 664
    .line 665
    .line 666
    move-result-wide p1

    .line 667
    invoke-static {p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/b;->e(J)Ljava/time/Instant;

    .line 668
    .line 669
    .line 670
    move-result-object p1

    .line 671
    return-object p1

    .line 672
    :cond_23
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/b;->B()Ljava/lang/Class;

    .line 673
    .line 674
    .line 675
    move-result-object p3

    .line 676
    if-ne p2, p3, :cond_24

    .line 677
    .line 678
    const-string p2, "seconds"

    .line 679
    .line 680
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    .line 681
    .line 682
    .line 683
    move-result-object p2

    .line 684
    if-eqz p2, :cond_24

    .line 685
    .line 686
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    .line 687
    .line 688
    .line 689
    move-result-wide p3

    .line 690
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 691
    .line 692
    .line 693
    move-result-wide p1

    .line 694
    invoke-static {p1, p2, p3, p4}, Lcom/alibaba/fastjson/parser/deserializer/b;->c(JJ)Ljava/time/Duration;

    .line 695
    .line 696
    .line 697
    move-result-object p1

    .line 698
    return-object p1

    .line 699
    :cond_24
    return-object v0

    .line 700
    :cond_25
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 701
    .line 702
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 703
    .line 704
    .line 705
    throw p1
.end method

.method public getFastMatchToken()I
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    return v0
.end method

.method public parseDateTime(Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x13

    .line 5
    .line 6
    const/16 v3, 0x30

    .line 7
    .line 8
    if-nez p2, :cond_d

    .line 9
    .line 10
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    const/4 v5, 0x1

    .line 15
    const/16 v6, 0x20

    .line 16
    .line 17
    const/16 v7, 0x10

    .line 18
    .line 19
    const/16 v8, 0xd

    .line 20
    .line 21
    const/4 v9, 0x7

    .line 22
    const/16 v10, 0x2e

    .line 23
    .line 24
    const/4 v11, 0x4

    .line 25
    const/16 v12, 0x3a

    .line 26
    .line 27
    const/16 v13, 0xa

    .line 28
    .line 29
    const/16 v14, 0x2d

    .line 30
    .line 31
    if-ne v4, v2, :cond_9

    .line 32
    .line 33
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    .line 38
    .line 39
    .line 40
    move-result v9

    .line 41
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    .line 42
    .line 43
    .line 44
    move-result v15

    .line 45
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 46
    .line 47
    .line 48
    move-result v8

    .line 49
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    if-ne v8, v12, :cond_a

    .line 54
    .line 55
    if-ne v7, v12, :cond_a

    .line 56
    .line 57
    if-ne v4, v14, :cond_1

    .line 58
    .line 59
    if-ne v9, v14, :cond_1

    .line 60
    .line 61
    const/16 v4, 0x54

    .line 62
    .line 63
    if-ne v15, v4, :cond_0

    .line 64
    .line 65
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/a;->t()Ljava/time/format/DateTimeFormatter;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    goto/16 :goto_0

    .line 70
    .line 71
    :cond_0
    if-ne v15, v6, :cond_a

    .line 72
    .line 73
    sget-object v4, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->defaultFormatter:Ljava/time/format/DateTimeFormatter;

    .line 74
    .line 75
    goto/16 :goto_0

    .line 76
    .line 77
    :cond_1
    const/16 v6, 0x2f

    .line 78
    .line 79
    if-ne v4, v6, :cond_2

    .line 80
    .line 81
    if-ne v9, v6, :cond_2

    .line 82
    .line 83
    sget-object v4, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_tw:Ljava/time/format/DateTimeFormatter;

    .line 84
    .line 85
    goto/16 :goto_0

    .line 86
    .line 87
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 88
    .line 89
    .line 90
    move-result v7

    .line 91
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    .line 92
    .line 93
    .line 94
    move-result v8

    .line 95
    const/4 v9, 0x2

    .line 96
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    .line 97
    .line 98
    .line 99
    move-result v9

    .line 100
    const/4 v12, 0x3

    .line 101
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    .line 102
    .line 103
    .line 104
    move-result v12

    .line 105
    const/4 v15, 0x5

    .line 106
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    .line 107
    .line 108
    .line 109
    move-result v15

    .line 110
    if-ne v9, v6, :cond_7

    .line 111
    .line 112
    if-ne v15, v6, :cond_7

    .line 113
    .line 114
    sub-int/2addr v7, v3

    .line 115
    mul-int/lit8 v7, v7, 0xa

    .line 116
    .line 117
    sub-int/2addr v8, v3

    .line 118
    add-int/2addr v8, v7

    .line 119
    sub-int/2addr v12, v3

    .line 120
    mul-int/lit8 v12, v12, 0xa

    .line 121
    .line 122
    sub-int/2addr v4, v3

    .line 123
    add-int/2addr v4, v12

    .line 124
    const/16 v6, 0xc

    .line 125
    .line 126
    if-le v8, v6, :cond_3

    .line 127
    .line 128
    sget-object v4, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_eur:Ljava/time/format/DateTimeFormatter;

    .line 129
    .line 130
    goto/16 :goto_0

    .line 131
    .line 132
    :cond_3
    if-le v4, v6, :cond_4

    .line 133
    .line 134
    sget-object v4, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_us:Ljava/time/format/DateTimeFormatter;

    .line 135
    .line 136
    goto/16 :goto_0

    .line 137
    .line 138
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    const-string v6, "US"

    .line 147
    .line 148
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v6

    .line 152
    if-eqz v6, :cond_5

    .line 153
    .line 154
    sget-object v4, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_us:Ljava/time/format/DateTimeFormatter;

    .line 155
    .line 156
    goto :goto_0

    .line 157
    :cond_5
    const-string v6, "BR"

    .line 158
    .line 159
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v6

    .line 163
    if-nez v6, :cond_6

    .line 164
    .line 165
    const-string v6, "AU"

    .line 166
    .line 167
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v4

    .line 171
    if-eqz v4, :cond_a

    .line 172
    .line 173
    :cond_6
    sget-object v4, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_eur:Ljava/time/format/DateTimeFormatter;

    .line 174
    .line 175
    goto :goto_0

    .line 176
    :cond_7
    if-ne v9, v10, :cond_8

    .line 177
    .line 178
    if-ne v15, v10, :cond_8

    .line 179
    .line 180
    sget-object v4, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_de:Ljava/time/format/DateTimeFormatter;

    .line 181
    .line 182
    goto :goto_0

    .line 183
    :cond_8
    if-ne v9, v14, :cond_a

    .line 184
    .line 185
    if-ne v15, v14, :cond_a

    .line 186
    .line 187
    sget-object v4, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_in:Ljava/time/format/DateTimeFormatter;

    .line 188
    .line 189
    goto :goto_0

    .line 190
    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 191
    .line 192
    .line 193
    move-result v4

    .line 194
    const/16 v15, 0x17

    .line 195
    .line 196
    if-ne v4, v15, :cond_a

    .line 197
    .line 198
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    .line 199
    .line 200
    .line 201
    move-result v4

    .line 202
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    .line 203
    .line 204
    .line 205
    move-result v9

    .line 206
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    .line 207
    .line 208
    .line 209
    move-result v13

    .line 210
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 211
    .line 212
    .line 213
    move-result v8

    .line 214
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    .line 215
    .line 216
    .line 217
    move-result v7

    .line 218
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    .line 219
    .line 220
    .line 221
    move-result v15

    .line 222
    if-ne v8, v12, :cond_a

    .line 223
    .line 224
    if-ne v7, v12, :cond_a

    .line 225
    .line 226
    if-ne v4, v14, :cond_a

    .line 227
    .line 228
    if-ne v9, v14, :cond_a

    .line 229
    .line 230
    if-ne v13, v6, :cond_a

    .line 231
    .line 232
    if-ne v15, v10, :cond_a

    .line 233
    .line 234
    sget-object v4, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->defaultFormatter_23:Ljava/time/format/DateTimeFormatter;

    .line 235
    .line 236
    goto :goto_0

    .line 237
    :cond_a
    move-object/from16 v4, p2

    .line 238
    .line 239
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 240
    .line 241
    .line 242
    move-result v6

    .line 243
    const/16 v7, 0x11

    .line 244
    .line 245
    if-lt v6, v7, :cond_e

    .line 246
    .line 247
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    .line 248
    .line 249
    .line 250
    move-result v6

    .line 251
    const/16 v7, 0x5e74

    .line 252
    .line 253
    if-ne v6, v7, :cond_c

    .line 254
    .line 255
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 256
    .line 257
    .line 258
    move-result v4

    .line 259
    sub-int/2addr v4, v5

    .line 260
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 261
    .line 262
    .line 263
    move-result v4

    .line 264
    const/16 v5, 0x79d2

    .line 265
    .line 266
    if-ne v4, v5, :cond_b

    .line 267
    .line 268
    sget-object v4, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_cn_1:Ljava/time/format/DateTimeFormatter;

    .line 269
    .line 270
    goto :goto_1

    .line 271
    :cond_b
    sget-object v4, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_cn:Ljava/time/format/DateTimeFormatter;

    .line 272
    .line 273
    goto :goto_1

    .line 274
    :cond_c
    const v5, 0xb144

    .line 275
    .line 276
    .line 277
    if-ne v6, v5, :cond_e

    .line 278
    .line 279
    sget-object v4, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_kr:Ljava/time/format/DateTimeFormatter;

    .line 280
    .line 281
    goto :goto_1

    .line 282
    :cond_d
    move-object/from16 v4, p2

    .line 283
    .line 284
    :cond_e
    :goto_1
    if-nez v4, :cond_12

    .line 285
    .line 286
    new-instance v5, Lcom/alibaba/fastjson/parser/JSONScanner;

    .line 287
    .line 288
    invoke-direct {v5, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    .line 292
    .line 293
    .line 294
    move-result v6

    .line 295
    if-eqz v6, :cond_f

    .line 296
    .line 297
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getCalendar()Ljava/util/Calendar;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/deserializer/a;->c(Ljava/util/Calendar;)Ljava/time/Instant;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    invoke-static {}, Landroidx/appcompat/app/x;->q()Ljava/time/ZoneId;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    invoke-static {v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/a;->g(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    return-object v0

    .line 314
    :cond_f
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 315
    .line 316
    .line 317
    move-result v5

    .line 318
    if-ge v1, v5, :cond_11

    .line 319
    .line 320
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 321
    .line 322
    .line 323
    move-result v5

    .line 324
    if-lt v5, v3, :cond_12

    .line 325
    .line 326
    const/16 v6, 0x39

    .line 327
    .line 328
    if-le v5, v6, :cond_10

    .line 329
    .line 330
    goto :goto_3

    .line 331
    :cond_10
    add-int/lit8 v1, v1, 0x1

    .line 332
    .line 333
    goto :goto_2

    .line 334
    :cond_11
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 335
    .line 336
    .line 337
    move-result v1

    .line 338
    const/16 v3, 0x8

    .line 339
    .line 340
    if-le v1, v3, :cond_12

    .line 341
    .line 342
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 343
    .line 344
    .line 345
    move-result v1

    .line 346
    if-ge v1, v2, :cond_12

    .line 347
    .line 348
    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 349
    .line 350
    .line 351
    move-result-wide v0

    .line 352
    invoke-static {v0, v1}, Landroidx/appcompat/app/x;->p(J)Ljava/time/Instant;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    sget-object v1, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    .line 357
    .line 358
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/deserializer/a;->i(Ljava/util/TimeZone;)Ljava/time/ZoneId;

    .line 359
    .line 360
    .line 361
    move-result-object v1

    .line 362
    invoke-static {v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/a;->g(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    return-object v0

    .line 367
    :cond_12
    :goto_3
    if-nez v4, :cond_13

    .line 368
    .line 369
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/deserializer/a;->e(Ljava/lang/String;)Ljava/time/LocalDateTime;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    goto :goto_4

    .line 374
    :cond_13
    invoke-static {v0, v4}, Lcom/alibaba/fastjson/parser/deserializer/a;->f(Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    :goto_4
    return-object v0
.end method

.method public parseLocalDate(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;
    .locals 11

    .line 1
    if-nez p3, :cond_d

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    const/16 v0, 0x8

    .line 8
    .line 9
    if-ne p2, v0, :cond_0

    .line 10
    .line 11
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d8:Ljava/time/format/DateTimeFormatter;

    .line 12
    .line 13
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x4

    .line 19
    const/16 v3, 0xa

    .line 20
    .line 21
    const/16 v4, 0x30

    .line 22
    .line 23
    if-ne p2, v3, :cond_8

    .line 24
    .line 25
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    const/4 v5, 0x7

    .line 30
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    const/16 v6, 0x2f

    .line 35
    .line 36
    if-ne p2, v6, :cond_1

    .line 37
    .line 38
    if-ne v5, v6, :cond_1

    .line 39
    .line 40
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_tw:Ljava/time/format/DateTimeFormatter;

    .line 41
    .line 42
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    const/4 v7, 0x1

    .line 47
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    const/4 v8, 0x2

    .line 52
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    .line 53
    .line 54
    .line 55
    move-result v8

    .line 56
    const/4 v9, 0x3

    .line 57
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    .line 58
    .line 59
    .line 60
    move-result v9

    .line 61
    const/4 v10, 0x5

    .line 62
    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    .line 63
    .line 64
    .line 65
    move-result v10

    .line 66
    if-ne v8, v6, :cond_6

    .line 67
    .line 68
    if-ne v10, v6, :cond_6

    .line 69
    .line 70
    sub-int/2addr v5, v4

    .line 71
    mul-int/lit8 v5, v5, 0xa

    .line 72
    .line 73
    sub-int/2addr v7, v4

    .line 74
    add-int/2addr v7, v5

    .line 75
    sub-int/2addr v9, v4

    .line 76
    mul-int/lit8 v9, v9, 0xa

    .line 77
    .line 78
    sub-int/2addr p2, v4

    .line 79
    add-int/2addr p2, v9

    .line 80
    const/16 v3, 0xc

    .line 81
    .line 82
    if-le v7, v3, :cond_2

    .line 83
    .line 84
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_eur:Ljava/time/format/DateTimeFormatter;

    .line 85
    .line 86
    :goto_0
    move-object p3, p2

    .line 87
    goto :goto_1

    .line 88
    :cond_2
    if-le p2, v3, :cond_3

    .line 89
    .line 90
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_us:Ljava/time/format/DateTimeFormatter;

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    const-string v3, "US"

    .line 102
    .line 103
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-eqz v3, :cond_4

    .line 108
    .line 109
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_us:Ljava/time/format/DateTimeFormatter;

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_4
    const-string v3, "BR"

    .line 113
    .line 114
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    if-nez v3, :cond_5

    .line 119
    .line 120
    const-string v3, "AU"

    .line 121
    .line 122
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result p2

    .line 126
    if-eqz p2, :cond_8

    .line 127
    .line 128
    :cond_5
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_eur:Ljava/time/format/DateTimeFormatter;

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_6
    const/16 p2, 0x2e

    .line 132
    .line 133
    if-ne v8, p2, :cond_7

    .line 134
    .line 135
    if-ne v10, p2, :cond_7

    .line 136
    .line 137
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_de:Ljava/time/format/DateTimeFormatter;

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_7
    const/16 p2, 0x2d

    .line 141
    .line 142
    if-ne v8, p2, :cond_8

    .line 143
    .line 144
    if-ne v10, p2, :cond_8

    .line 145
    .line 146
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_in:Ljava/time/format/DateTimeFormatter;

    .line 147
    .line 148
    :cond_8
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 149
    .line 150
    .line 151
    move-result p2

    .line 152
    const/16 v3, 0x9

    .line 153
    .line 154
    if-lt p2, v3, :cond_a

    .line 155
    .line 156
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 157
    .line 158
    .line 159
    move-result p2

    .line 160
    const/16 v2, 0x5e74

    .line 161
    .line 162
    if-ne p2, v2, :cond_9

    .line 163
    .line 164
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_cn:Ljava/time/format/DateTimeFormatter;

    .line 165
    .line 166
    :goto_2
    move-object p3, p2

    .line 167
    goto :goto_3

    .line 168
    :cond_9
    const v2, 0xb144

    .line 169
    .line 170
    .line 171
    if-ne p2, v2, :cond_a

    .line 172
    .line 173
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_kr:Ljava/time/format/DateTimeFormatter;

    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_a
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 177
    .line 178
    .line 179
    move-result p2

    .line 180
    if-ge v1, p2, :cond_c

    .line 181
    .line 182
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 183
    .line 184
    .line 185
    move-result p2

    .line 186
    if-lt p2, v4, :cond_d

    .line 187
    .line 188
    const/16 v2, 0x39

    .line 189
    .line 190
    if-le p2, v2, :cond_b

    .line 191
    .line 192
    goto :goto_4

    .line 193
    :cond_b
    add-int/lit8 v1, v1, 0x1

    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 197
    .line 198
    .line 199
    move-result p2

    .line 200
    if-le p2, v0, :cond_d

    .line 201
    .line 202
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 203
    .line 204
    .line 205
    move-result p2

    .line 206
    const/16 v0, 0x13

    .line 207
    .line 208
    if-ge p2, v0, :cond_d

    .line 209
    .line 210
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 211
    .line 212
    .line 213
    move-result-wide p1

    .line 214
    invoke-static {p1, p2}, Landroidx/appcompat/app/x;->p(J)Ljava/time/Instant;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    sget-object p2, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    .line 219
    .line 220
    invoke-static {p2}, Lcom/alibaba/fastjson/parser/deserializer/a;->i(Ljava/util/TimeZone;)Ljava/time/ZoneId;

    .line 221
    .line 222
    .line 223
    move-result-object p2

    .line 224
    invoke-static {p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/a;->g(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/deserializer/a;->d(Ljava/time/LocalDateTime;)Ljava/time/LocalDate;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    return-object p1

    .line 233
    :cond_d
    :goto_4
    if-nez p3, :cond_e

    .line 234
    .line 235
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/deserializer/b;->j(Ljava/lang/String;)Ljava/time/LocalDate;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    goto :goto_5

    .line 240
    :cond_e
    invoke-static {p1, p3}, Lcom/alibaba/fastjson/parser/deserializer/b;->k(Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    :goto_5
    return-object p1
.end method

.method public parseZonedDateTime(Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/ZonedDateTime;
    .locals 15

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    if-nez p2, :cond_f

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x4

    .line 12
    const/16 v5, 0x13

    .line 13
    .line 14
    const/16 v6, 0x30

    .line 15
    .line 16
    if-ne v1, v5, :cond_9

    .line 17
    .line 18
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v7, 0x7

    .line 23
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    const/16 v8, 0xa

    .line 28
    .line 29
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    .line 30
    .line 31
    .line 32
    move-result v9

    .line 33
    const/16 v10, 0xd

    .line 34
    .line 35
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    .line 36
    .line 37
    .line 38
    move-result v10

    .line 39
    const/16 v11, 0x10

    .line 40
    .line 41
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    .line 42
    .line 43
    .line 44
    move-result v11

    .line 45
    const/16 v12, 0x3a

    .line 46
    .line 47
    if-ne v10, v12, :cond_9

    .line 48
    .line 49
    if-ne v11, v12, :cond_9

    .line 50
    .line 51
    const/16 v10, 0x2d

    .line 52
    .line 53
    if-ne v1, v10, :cond_1

    .line 54
    .line 55
    if-ne v7, v10, :cond_1

    .line 56
    .line 57
    const/16 v1, 0x54

    .line 58
    .line 59
    if-ne v9, v1, :cond_0

    .line 60
    .line 61
    invoke-static {}, Lcom/alibaba/fastjson/parser/deserializer/a;->t()Ljava/time/format/DateTimeFormatter;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    goto/16 :goto_0

    .line 66
    .line 67
    :cond_0
    const/16 v1, 0x20

    .line 68
    .line 69
    if-ne v9, v1, :cond_9

    .line 70
    .line 71
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->defaultFormatter:Ljava/time/format/DateTimeFormatter;

    .line 72
    .line 73
    goto/16 :goto_0

    .line 74
    .line 75
    :cond_1
    const/16 v9, 0x2f

    .line 76
    .line 77
    if-ne v1, v9, :cond_2

    .line 78
    .line 79
    if-ne v7, v9, :cond_2

    .line 80
    .line 81
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_tw:Ljava/time/format/DateTimeFormatter;

    .line 82
    .line 83
    goto/16 :goto_0

    .line 84
    .line 85
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    .line 90
    .line 91
    .line 92
    move-result v11

    .line 93
    const/4 v12, 0x2

    .line 94
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    .line 95
    .line 96
    .line 97
    move-result v12

    .line 98
    const/4 v13, 0x3

    .line 99
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    .line 100
    .line 101
    .line 102
    move-result v13

    .line 103
    const/4 v14, 0x5

    .line 104
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    .line 105
    .line 106
    .line 107
    move-result v14

    .line 108
    if-ne v12, v9, :cond_7

    .line 109
    .line 110
    if-ne v14, v9, :cond_7

    .line 111
    .line 112
    sub-int/2addr v7, v6

    .line 113
    mul-int/lit8 v7, v7, 0xa

    .line 114
    .line 115
    sub-int/2addr v11, v6

    .line 116
    add-int/2addr v11, v7

    .line 117
    sub-int/2addr v13, v6

    .line 118
    mul-int/lit8 v13, v13, 0xa

    .line 119
    .line 120
    sub-int/2addr v1, v6

    .line 121
    add-int/2addr v1, v13

    .line 122
    const/16 v7, 0xc

    .line 123
    .line 124
    if-le v11, v7, :cond_3

    .line 125
    .line 126
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_eur:Ljava/time/format/DateTimeFormatter;

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_3
    if-le v1, v7, :cond_4

    .line 130
    .line 131
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_us:Ljava/time/format/DateTimeFormatter;

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    const-string v7, "US"

    .line 143
    .line 144
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v7

    .line 148
    if-eqz v7, :cond_5

    .line 149
    .line 150
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_us:Ljava/time/format/DateTimeFormatter;

    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_5
    const-string v7, "BR"

    .line 154
    .line 155
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v7

    .line 159
    if-nez v7, :cond_6

    .line 160
    .line 161
    const-string v7, "AU"

    .line 162
    .line 163
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-eqz v1, :cond_9

    .line 168
    .line 169
    :cond_6
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_eur:Ljava/time/format/DateTimeFormatter;

    .line 170
    .line 171
    goto :goto_0

    .line 172
    :cond_7
    const/16 v1, 0x2e

    .line 173
    .line 174
    if-ne v12, v1, :cond_8

    .line 175
    .line 176
    if-ne v14, v1, :cond_8

    .line 177
    .line 178
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_de:Ljava/time/format/DateTimeFormatter;

    .line 179
    .line 180
    goto :goto_0

    .line 181
    :cond_8
    if-ne v12, v10, :cond_9

    .line 182
    .line 183
    if-ne v14, v10, :cond_9

    .line 184
    .line 185
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_in:Ljava/time/format/DateTimeFormatter;

    .line 186
    .line 187
    goto :goto_0

    .line 188
    :cond_9
    move-object/from16 v1, p2

    .line 189
    .line 190
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 191
    .line 192
    .line 193
    move-result v7

    .line 194
    const/16 v8, 0x11

    .line 195
    .line 196
    if-lt v7, v8, :cond_c

    .line 197
    .line 198
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 199
    .line 200
    .line 201
    move-result v4

    .line 202
    const/16 v7, 0x5e74

    .line 203
    .line 204
    if-ne v4, v7, :cond_b

    .line 205
    .line 206
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    sub-int/2addr v1, v2

    .line 211
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    const/16 v2, 0x79d2

    .line 216
    .line 217
    if-ne v1, v2, :cond_a

    .line 218
    .line 219
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_cn_1:Ljava/time/format/DateTimeFormatter;

    .line 220
    .line 221
    goto :goto_1

    .line 222
    :cond_a
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_cn:Ljava/time/format/DateTimeFormatter;

    .line 223
    .line 224
    goto :goto_1

    .line 225
    :cond_b
    const v2, 0xb144

    .line 226
    .line 227
    .line 228
    if-ne v4, v2, :cond_c

    .line 229
    .line 230
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_kr:Ljava/time/format/DateTimeFormatter;

    .line 231
    .line 232
    :cond_c
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 233
    .line 234
    .line 235
    move-result v2

    .line 236
    if-ge v3, v2, :cond_e

    .line 237
    .line 238
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .line 239
    .line 240
    .line 241
    move-result v2

    .line 242
    if-lt v2, v6, :cond_10

    .line 243
    .line 244
    const/16 v4, 0x39

    .line 245
    .line 246
    if-le v2, v4, :cond_d

    .line 247
    .line 248
    goto :goto_2

    .line 249
    :cond_d
    add-int/lit8 v3, v3, 0x1

    .line 250
    .line 251
    goto :goto_1

    .line 252
    :cond_e
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 253
    .line 254
    .line 255
    move-result v2

    .line 256
    const/16 v3, 0x8

    .line 257
    .line 258
    if-le v2, v3, :cond_10

    .line 259
    .line 260
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    .line 261
    .line 262
    .line 263
    move-result v2

    .line 264
    if-ge v2, v5, :cond_10

    .line 265
    .line 266
    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 267
    .line 268
    .line 269
    move-result-wide v0

    .line 270
    invoke-static {v0, v1}, Landroidx/appcompat/app/x;->p(J)Ljava/time/Instant;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    sget-object v1, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    .line 275
    .line 276
    invoke-static {v1}, Lcom/alibaba/fastjson/parser/deserializer/a;->i(Ljava/util/TimeZone;)Ljava/time/ZoneId;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    invoke-static {v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/a;->l(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    return-object v0

    .line 285
    :cond_f
    move-object/from16 v1, p2

    .line 286
    .line 287
    :cond_10
    :goto_2
    if-nez v1, :cond_11

    .line 288
    .line 289
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/deserializer/a;->j(Ljava/lang/String;)Ljava/time/ZonedDateTime;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    goto :goto_3

    .line 294
    :cond_11
    invoke-static {v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/a;->k(Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/ZonedDateTime;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    :goto_3
    return-object v0
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/BeanContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    iget-object p1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 22
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/BeanContext;->getFormat()Ljava/lang/String;

    move-result-object p3

    .line 23
    invoke-static {p2}, Lcom/alibaba/fastjson/parser/deserializer/a;->p(Ljava/lang/Object;)Ljava/time/temporal/TemporalAccessor;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->write(Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/time/temporal/TemporalAccessor;Ljava/lang/String;)V

    return-void
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p3, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto/16 :goto_1

    :cond_0
    if-nez p4, :cond_1

    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    .line 4
    :cond_1
    const-class v0, Ljava/time/LocalDateTime;

    if-ne p4, v0, :cond_9

    .line 5
    sget-object p4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseISO8601DateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v0

    .line 6
    check-cast p2, Ljava/time/LocalDateTime;

    .line 7
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getDateFormatPattern()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    and-int/2addr p5, v0

    .line 8
    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss"

    if-nez p5, :cond_7

    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result p4

    if-eqz p4, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    sget-object p4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteDateUseDateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 10
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getFastJsonConfigDateFormatPattern()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_3

    .line 11
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getFastJsonConfigDateFormatPattern()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    if-lez p4, :cond_3

    .line 12
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getFastJsonConfigDateFormatPattern()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 13
    :cond_3
    sget-object v1, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    goto :goto_0

    .line 14
    :cond_4
    invoke-virtual {p2}, Ljava/time/LocalDateTime;->getNano()I

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const p4, 0xf4240

    .line 15
    rem-int/2addr p1, p4

    if-nez p1, :cond_6

    .line 16
    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

    goto :goto_0

    .line 17
    :cond_6
    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSSSSSSSS"

    :cond_7
    :goto_0
    if-eqz v1, :cond_8

    .line 18
    invoke-direct {p0, p3, p2, v1}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->write(Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/time/temporal/TemporalAccessor;Ljava/lang/String;)V

    goto :goto_1

    .line 19
    :cond_8
    sget-object p1, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-virtual {p1}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide p1

    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    goto :goto_1

    .line 20
    :cond_9
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
