.class final Lorg/joda/time/chrono/BasicDayOfMonthDateTimeField;
.super Lorg/joda/time/field/PreciseDurationDateTimeField;
.source "BasicDayOfMonthDateTimeField.java"


# static fields
.field private static final serialVersionUID:J = -0x40e8d647222328cbL


# instance fields
.field private final iChronology:Lorg/joda/time/chrono/BasicChronology;


# direct methods
.method constructor <init>(Lorg/joda/time/chrono/BasicChronology;Lorg/joda/time/DurationField;)V
    .registers 4

    .line 42
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->dayOfMonth()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/joda/time/field/PreciseDurationDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DurationField;)V

    .line 43
    iput-object p1, p0, Lorg/joda/time/chrono/BasicDayOfMonthDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    .line 109
    iget-object v0, p0, Lorg/joda/time/chrono/BasicDayOfMonthDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0}, Lorg/joda/time/chrono/BasicChronology;->dayOfMonth()Lorg/joda/time/DateTimeField;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public get(J)I
    .registers 4

    .line 48
    iget-object v0, p0, Lorg/joda/time/chrono/BasicDayOfMonthDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getDayOfMonth(J)I

    move-result p1

    return p1
.end method

.method public getMaximumValue()I
    .registers 2

    .line 60
    iget-object v0, p0, Lorg/joda/time/chrono/BasicDayOfMonthDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0}, Lorg/joda/time/chrono/BasicChronology;->getDaysInMonthMax()I

    move-result v0

    return v0
.end method

.method public getMaximumValue(J)I
    .registers 4

    .line 64
    iget-object v0, p0, Lorg/joda/time/chrono/BasicDayOfMonthDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getDaysInMonthMax(J)I

    move-result p1

    return p1
.end method

.method public getMaximumValue(Lorg/joda/time/ReadablePartial;)I
    .registers 4

    .line 68
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->monthOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/joda/time/ReadablePartial;->isSupported(Lorg/joda/time/DateTimeFieldType;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 69
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->monthOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/joda/time/ReadablePartial;->get(Lorg/joda/time/DateTimeFieldType;)I

    move-result v0

    .line 70
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->year()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/joda/time/ReadablePartial;->isSupported(Lorg/joda/time/DateTimeFieldType;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 71
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->year()Lorg/joda/time/DateTimeFieldType;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/joda/time/ReadablePartial;->get(Lorg/joda/time/DateTimeFieldType;)I

    move-result p1

    .line 72
    iget-object v1, p0, Lorg/joda/time/chrono/BasicDayOfMonthDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v1, p1, v0}, Lorg/joda/time/chrono/BasicChronology;->getDaysInYearMonth(II)I

    move-result p1

    return p1

    .line 74
    :cond_2b
    iget-object p1, p0, Lorg/joda/time/chrono/BasicDayOfMonthDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {p1, v0}, Lorg/joda/time/chrono/BasicChronology;->getDaysInMonthMax(I)I

    move-result p1

    return p1

    .line 76
    :cond_32
    invoke-virtual {p0}, Lorg/joda/time/chrono/BasicDayOfMonthDateTimeField;->getMaximumValue()I

    move-result p1

    return p1
.end method

.method public getMaximumValue(Lorg/joda/time/ReadablePartial;[I)I
    .registers 8

    .line 80
    invoke-interface {p1}, Lorg/joda/time/ReadablePartial;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_36

    .line 82
    invoke-interface {p1, v2}, Lorg/joda/time/ReadablePartial;->getFieldType(I)Lorg/joda/time/DateTimeFieldType;

    move-result-object v3

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->monthOfYear()Lorg/joda/time/DateTimeFieldType;

    move-result-object v4

    if-ne v3, v4, :cond_33

    .line 83
    aget v2, p2, v2

    :goto_14
    if-ge v1, v0, :cond_2c

    .line 85
    invoke-interface {p1, v1}, Lorg/joda/time/ReadablePartial;->getFieldType(I)Lorg/joda/time/DateTimeFieldType;

    move-result-object v3

    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->year()Lorg/joda/time/DateTimeFieldType;

    move-result-object v4

    if-ne v3, v4, :cond_29

    .line 86
    aget p1, p2, v1

    .line 87
    iget-object p2, p0, Lorg/joda/time/chrono/BasicDayOfMonthDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {p2, p1, v2}, Lorg/joda/time/chrono/BasicChronology;->getDaysInYearMonth(II)I

    move-result p1

    return p1

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 90
    :cond_2c
    iget-object p1, p0, Lorg/joda/time/chrono/BasicDayOfMonthDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {p1, v2}, Lorg/joda/time/chrono/BasicChronology;->getDaysInMonthMax(I)I

    move-result p1

    return p1

    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 93
    :cond_36
    invoke-virtual {p0}, Lorg/joda/time/chrono/BasicDayOfMonthDateTimeField;->getMaximumValue()I

    move-result p1

    return p1
.end method

.method protected getMaximumValueForSet(JI)I
    .registers 5

    .line 97
    iget-object v0, p0, Lorg/joda/time/chrono/BasicDayOfMonthDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/chrono/BasicChronology;->getDaysInMonthMaxForSet(JI)I

    move-result p1

    return p1
.end method

.method public getMinimumValue()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getRangeDurationField()Lorg/joda/time/DurationField;
    .registers 2

    .line 52
    iget-object v0, p0, Lorg/joda/time/chrono/BasicDayOfMonthDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0}, Lorg/joda/time/chrono/BasicChronology;->months()Lorg/joda/time/DurationField;

    move-result-object v0

    return-object v0
.end method

.method public isLeap(J)Z
    .registers 4

    .line 102
    iget-object v0, p0, Lorg/joda/time/chrono/BasicDayOfMonthDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->isLeapDay(J)Z

    move-result p1

    return p1
.end method
