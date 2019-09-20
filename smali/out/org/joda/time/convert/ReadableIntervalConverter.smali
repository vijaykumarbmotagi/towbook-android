.class Lorg/joda/time/convert/ReadableIntervalConverter;
.super Lorg/joda/time/convert/AbstractConverter;
.source "ReadableIntervalConverter.java"

# interfaces
.implements Lorg/joda/time/convert/IntervalConverter;
.implements Lorg/joda/time/convert/DurationConverter;
.implements Lorg/joda/time/convert/PeriodConverter;


# static fields
.field static final INSTANCE:Lorg/joda/time/convert/ReadableIntervalConverter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    new-instance v0, Lorg/joda/time/convert/ReadableIntervalConverter;

    invoke-direct {v0}, Lorg/joda/time/convert/ReadableIntervalConverter;-><init>()V

    sput-object v0, Lorg/joda/time/convert/ReadableIntervalConverter;->INSTANCE:Lorg/joda/time/convert/ReadableIntervalConverter;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Lorg/joda/time/convert/AbstractConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public getDurationMillis(Ljava/lang/Object;)J
    .registers 4

    .line 52
    check-cast p1, Lorg/joda/time/ReadableInterval;

    invoke-interface {p1}, Lorg/joda/time/ReadableInterval;->toDurationMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSupportedType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 113
    const-class v0, Lorg/joda/time/ReadableInterval;

    return-object v0
.end method

.method public isReadableInterval(Ljava/lang/Object;Lorg/joda/time/Chronology;)Z
    .registers 3

    const/4 p1, 0x1

    return p1
.end method

.method public setInto(Lorg/joda/time/ReadWritableInterval;Ljava/lang/Object;Lorg/joda/time/Chronology;)V
    .registers 4

    .line 99
    check-cast p2, Lorg/joda/time/ReadableInterval;

    .line 100
    invoke-interface {p1, p2}, Lorg/joda/time/ReadWritableInterval;->setInterval(Lorg/joda/time/ReadableInterval;)V

    if-eqz p3, :cond_b

    .line 102
    invoke-interface {p1, p3}, Lorg/joda/time/ReadWritableInterval;->setChronology(Lorg/joda/time/Chronology;)V

    goto :goto_12

    .line 104
    :cond_b
    invoke-interface {p2}, Lorg/joda/time/ReadableInterval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/joda/time/ReadWritableInterval;->setChronology(Lorg/joda/time/Chronology;)V

    :goto_12
    return-void
.end method

.method public setInto(Lorg/joda/time/ReadWritablePeriod;Ljava/lang/Object;Lorg/joda/time/Chronology;)V
    .registers 10

    .line 64
    check-cast p2, Lorg/joda/time/ReadableInterval;

    if-eqz p3, :cond_6

    :goto_4
    move-object v0, p3

    goto :goto_b

    .line 65
    :cond_6
    invoke-static {p2}, Lorg/joda/time/DateTimeUtils;->getIntervalChronology(Lorg/joda/time/ReadableInterval;)Lorg/joda/time/Chronology;

    move-result-object p3

    goto :goto_4

    .line 66
    :goto_b
    invoke-interface {p2}, Lorg/joda/time/ReadableInterval;->getStartMillis()J

    move-result-wide v2

    .line 67
    invoke-interface {p2}, Lorg/joda/time/ReadableInterval;->getEndMillis()J

    move-result-wide v4

    move-object v1, p1

    .line 68
    invoke-virtual/range {v0 .. v5}, Lorg/joda/time/Chronology;->get(Lorg/joda/time/ReadablePeriod;JJ)[I

    move-result-object p2

    const/4 p3, 0x0

    .line 69
    :goto_19
    array-length v0, p2

    if-ge p3, v0, :cond_24

    .line 70
    aget v0, p2, p3

    invoke-interface {p1, p3, v0}, Lorg/joda/time/ReadWritablePeriod;->setValue(II)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_19

    :cond_24
    return-void
.end method