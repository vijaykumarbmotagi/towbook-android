.class Lorg/joda/time/format/InternalParserDateTimeParser;
.super Ljava/lang/Object;
.source "InternalParserDateTimeParser.java"

# interfaces
.implements Lorg/joda/time/format/DateTimeParser;
.implements Lorg/joda/time/format/InternalParser;


# instance fields
.field private final underlying:Lorg/joda/time/format/InternalParser;


# direct methods
.method private constructor <init>(Lorg/joda/time/format/InternalParser;)V
    .registers 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/joda/time/format/InternalParserDateTimeParser;->underlying:Lorg/joda/time/format/InternalParser;

    return-void
.end method

.method static of(Lorg/joda/time/format/InternalParser;)Lorg/joda/time/format/DateTimeParser;
    .registers 2

    .line 30
    instance-of v0, p0, Lorg/joda/time/format/DateTimeParserInternalParser;

    if-eqz v0, :cond_b

    .line 31
    check-cast p0, Lorg/joda/time/format/DateTimeParserInternalParser;

    invoke-virtual {p0}, Lorg/joda/time/format/DateTimeParserInternalParser;->getUnderlying()Lorg/joda/time/format/DateTimeParser;

    move-result-object p0

    return-object p0

    .line 33
    :cond_b
    instance-of v0, p0, Lorg/joda/time/format/DateTimeParser;

    if-eqz v0, :cond_12

    .line 34
    check-cast p0, Lorg/joda/time/format/DateTimeParser;

    return-object p0

    :cond_12
    if-nez p0, :cond_16

    const/4 p0, 0x0

    return-object p0

    .line 39
    :cond_16
    new-instance v0, Lorg/joda/time/format/InternalParserDateTimeParser;

    invoke-direct {v0, p0}, Lorg/joda/time/format/InternalParserDateTimeParser;-><init>(Lorg/joda/time/format/InternalParser;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 p1, 0x1

    return p1

    .line 65
    :cond_4
    instance-of v0, p1, Lorg/joda/time/format/InternalParserDateTimeParser;

    if-eqz v0, :cond_13

    .line 66
    check-cast p1, Lorg/joda/time/format/InternalParserDateTimeParser;

    .line 67
    iget-object v0, p0, Lorg/joda/time/format/InternalParserDateTimeParser;->underlying:Lorg/joda/time/format/InternalParser;

    iget-object p1, p1, Lorg/joda/time/format/InternalParserDateTimeParser;->underlying:Lorg/joda/time/format/InternalParser;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method public estimateParsedLength()I
    .registers 2

    .line 48
    iget-object v0, p0, Lorg/joda/time/format/InternalParserDateTimeParser;->underlying:Lorg/joda/time/format/InternalParser;

    invoke-interface {v0}, Lorg/joda/time/format/InternalParser;->estimateParsedLength()I

    move-result v0

    return v0
.end method

.method public parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/CharSequence;I)I
    .registers 5

    .line 52
    iget-object v0, p0, Lorg/joda/time/format/InternalParserDateTimeParser;->underlying:Lorg/joda/time/format/InternalParser;

    invoke-interface {v0, p1, p2, p3}, Lorg/joda/time/format/InternalParser;->parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/CharSequence;I)I

    move-result p1

    return p1
.end method

.method public parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/String;I)I
    .registers 5

    .line 56
    iget-object v0, p0, Lorg/joda/time/format/InternalParserDateTimeParser;->underlying:Lorg/joda/time/format/InternalParser;

    invoke-interface {v0, p1, p2, p3}, Lorg/joda/time/format/InternalParser;->parseInto(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/CharSequence;I)I

    move-result p1

    return p1
.end method
