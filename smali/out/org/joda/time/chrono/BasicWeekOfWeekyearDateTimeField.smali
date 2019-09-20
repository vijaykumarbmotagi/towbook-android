.class final Lorg/joda/time/chrono/BasicWeekOfWeekyearDateTimeField;
.super Lorg/joda/time/field/PreciseDurationDateTimeField;
.source "BasicWeekOfWeekyearDateTimeField.java"


# static fields
.field private static final serialVersionUID:J = -0x1607b5620ca7cd60L


# instance fields
.field private final iChronology:Lorg/joda/time/chrono/BasicChronology;


# direct methods
.method constructor <init>(Lorg/joda/time/chrono/BasicChronology;Lorg/joda/time/DurationField;)V
    .registers 4

    .line 43
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->weekOfWeekyear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/joda/time/field/PreciseDurationDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DurationField;)V

    .line 44
    iput-object p1, p0, Lorg/joda/time/chrono/BasicWeekOfWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    .line 119
    iget-object v0, p0, Lorg/joda/time/chrono/BasicWeekOfWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0}, Lorg/joda/time/chrono/BasicChronology;->weekOfWeekyear()Lorg/joda/time/DateTimeField;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public get(J)I
    .registers 4

    .line 55
    iget-object v0, p0, Lorg/joda/time/chrono/BasicWeekOfWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getWeekOfWeekyear(J)I

    move-result p1

    return p1
.end method

.method public getMaximumValue()I
    .registers 2

    const/16 v0, 0x35

    return v0
.end method

.method public getMaximumValue(J)I
    .registers 4

    .line 88
    iget-object v0, p0, Lorg/joda/time/chrono/BasicWeekOfWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getWeekyear(J)I

    move-result p1

    .line 89
    iget-object p2, p0, Lorg/joda/time/chrono/BasicWeekOfWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {p2, p1}, Lorg/joda/time/chrono/BasicChronology;->getWeeksInYear(I)I

    move-result p1

    return p1
.end method

.method public getMaximumValue(Lorg/joda/time/ReadablePartial;)I
    .registers 3

    .line 93
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->weekyear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/joda/time/ReadablePartial;->isSupported(Lorg/joda/time/DateTimeFieldType;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 94
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->weekyear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/joda/time/ReadablePartial;->get(Lorg/joda/time/DateTimeFieldType;)I

    move-result p1

    .line 95
    iget-object v0, p0, Lorg/joda/time/chrono/BasicWeekOfWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0, p1}, Lorg/joda/time/chrono/BasicChronology;->getWeeksInYear(I)I

    move-result p1

    return p1

    :cond_19
    const/16 p1, 0x35

    return p1
.end method

.method public getMaximumValue(Lorg/joda/time/ReadablePartial;[I)I
    .registers 7

    .line 101
    invoke-interface {p1}, Lorg/joda/time/ReadablePartial;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_1d

    .line 103
    invoke-interface {p1, v1}, Lorg/joda/time/ReadablePartial;->getFieldType(I)Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->weekyear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v3

    if-ne v2, v3, :cond_1a

    .line 104
    aget p1, p2, v1

    .line 105
    iget-object p2, p0, Lorg/joda/time/chrono/BasicWeekOfWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {p2, p1}, Lorg/joda/time/chrono/BasicChronology;->getWeeksInYear(I)I

    move-result p1

    return p1

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1d
    const/16 p1, 0x35

    return p1
.end method

.method protected getMaximumValueForSet(JI)I
    .registers 5

    const/16 v0, 0x34

    if-le p3, v0, :cond_8

    .line 112
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/BasicWeekOfWeekyearDateTimeField;->getMaximumValue(J)I

    move-result v0

    :cond_8
    return v0
.end method

.method public getMinimumValue()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getRangeDurationField()Lorg/joda/time/DurationField;
    .registers 2

    .line 59
    iget-object v0, p0, Lorg/joda/time/chrono/BasicWeekOfWeekyearDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0}, Lorg/joda/time/chrono/BasicChronology;->weekyears()Lorg/joda/time/DurationField;

    move-result-object v0

    return-object v0
.end method

.method public remainder(J)J
    .registers 7

    const-wide/32 v0, 0xf731400

    add-long v2, p1, v0

    .line 76
    invoke-super {p0, v2, v3}, Lorg/joda/time/field/PreciseDurationDateTimeField;->remainder(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public roundCeiling(J)J
    .registers 7

    const-wide/32 v0, 0xf731400

    add-long v2, p1, v0

    .line 71
    invoke-super {p0, v2, v3}, Lorg/joda/time/field/PreciseDurationDateTimeField;->roundCeiling(J)J

    move-result-wide p1

    sub-long v2, p1, v0

    return-wide v2
.end method

.method public roundFloor(J)J
    .registers 7

    const-wide/32 v0, 0xf731400

    add-long v2, p1, v0

    .line 66
    invoke-super {p0, v2, v3}, Lorg/joda/time/field/PreciseDurationDateTimeField;->roundFloor(J)J

    move-result-wide p1

    sub-long v2, p1, v0

    return-wide v2
.end method
