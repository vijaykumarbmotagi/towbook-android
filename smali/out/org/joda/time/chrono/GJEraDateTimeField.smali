.class final Lorg/joda/time/chrono/GJEraDateTimeField;
.super Lorg/joda/time/field/BaseDateTimeField;
.source "GJEraDateTimeField.java"


# static fields
.field private static final serialVersionUID:J = 0x3adb02c66a0dae08L


# instance fields
.field private final iChronology:Lorg/joda/time/chrono/BasicChronology;


# direct methods
.method constructor <init>(Lorg/joda/time/chrono/BasicChronology;)V
    .registers 3

    .line 47
    invoke-static {}, Lorg/joda/time/DateTimeFieldType;->era()Lorg/joda/time/DateTimeFieldType;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/joda/time/field/BaseDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;)V

    .line 48
    iput-object p1, p0, Lorg/joda/time/chrono/GJEraDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    .line 151
    iget-object v0, p0, Lorg/joda/time/chrono/GJEraDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0}, Lorg/joda/time/chrono/BasicChronology;->era()Lorg/joda/time/DateTimeField;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public get(J)I
    .registers 4

    .line 61
    iget-object v0, p0, Lorg/joda/time/chrono/GJEraDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getYear(J)I

    move-result p1

    if-gtz p1, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    const/4 p1, 0x1

    return p1
.end method

.method public getAsText(ILjava/util/Locale;)Ljava/lang/String;
    .registers 3

    .line 69
    invoke-static {p2}, Lorg/joda/time/chrono/GJLocaleSymbols;->forLocale(Ljava/util/Locale;)Lorg/joda/time/chrono/GJLocaleSymbols;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/joda/time/chrono/GJLocaleSymbols;->eraValueToText(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDurationField()Lorg/joda/time/DurationField;
    .registers 2

    .line 128
    invoke-static {}, Lorg/joda/time/DurationFieldType;->eras()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/field/UnsupportedDurationField;->getInstance(Lorg/joda/time/DurationFieldType;)Lorg/joda/time/field/UnsupportedDurationField;

    move-result-object v0

    return-object v0
.end method

.method public getMaximumTextLength(Ljava/util/Locale;)I
    .registers 2

    .line 144
    invoke-static {p1}, Lorg/joda/time/chrono/GJLocaleSymbols;->forLocale(Ljava/util/Locale;)Lorg/joda/time/chrono/GJLocaleSymbols;

    move-result-object p1

    invoke-virtual {p1}, Lorg/joda/time/chrono/GJLocaleSymbols;->getEraMaxTextLength()I

    move-result p1

    return p1
.end method

.method public getMaximumValue()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getMinimumValue()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getRangeDurationField()Lorg/joda/time/DurationField;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public isLenient()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public roundCeiling(J)J
    .registers 5

    .line 105
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/GJEraDateTimeField;->get(J)I

    move-result p1

    if-nez p1, :cond_10

    .line 106
    iget-object p1, p0, Lorg/joda/time/chrono/GJEraDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    const-wide/16 v0, 0x0

    const/4 p2, 0x1

    invoke-virtual {p1, v0, v1, p2}, Lorg/joda/time/chrono/BasicChronology;->setYear(JI)J

    move-result-wide p1

    return-wide p1

    :cond_10
    const-wide p1, 0x7fffffffffffffffL

    return-wide p1
.end method

.method public roundFloor(J)J
    .registers 5

    .line 97
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/GJEraDateTimeField;->get(J)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_10

    .line 98
    iget-object p1, p0, Lorg/joda/time/chrono/GJEraDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1, p2}, Lorg/joda/time/chrono/BasicChronology;->setYear(JI)J

    move-result-wide p1

    return-wide p1

    :cond_10
    const-wide/high16 p1, -0x8000000000000000L

    return-wide p1
.end method

.method public roundHalfCeiling(J)J
    .registers 3

    .line 119
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/GJEraDateTimeField;->roundFloor(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public roundHalfEven(J)J
    .registers 3

    .line 124
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/GJEraDateTimeField;->roundFloor(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public roundHalfFloor(J)J
    .registers 3

    .line 114
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/GJEraDateTimeField;->roundFloor(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public set(JI)J
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 81
    invoke-static {p0, p3, v0, v1}, Lorg/joda/time/field/FieldUtils;->verifyValueBounds(Lorg/joda/time/DateTimeField;III)V

    .line 83
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/chrono/GJEraDateTimeField;->get(J)I

    move-result v0

    if-eq v0, p3, :cond_19

    .line 85
    iget-object p3, p0, Lorg/joda/time/chrono/GJEraDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    invoke-virtual {p3, p1, p2}, Lorg/joda/time/chrono/BasicChronology;->getYear(J)I

    move-result p3

    .line 86
    iget-object v0, p0, Lorg/joda/time/chrono/GJEraDateTimeField;->iChronology:Lorg/joda/time/chrono/BasicChronology;

    neg-int p3, p3

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/chrono/BasicChronology;->setYear(JI)J

    move-result-wide p1

    return-wide p1

    :cond_19
    return-wide p1
.end method

.method public set(JLjava/lang/String;Ljava/util/Locale;)J
    .registers 5

    .line 93
    invoke-static {p4}, Lorg/joda/time/chrono/GJLocaleSymbols;->forLocale(Ljava/util/Locale;)Lorg/joda/time/chrono/GJLocaleSymbols;

    move-result-object p4

    invoke-virtual {p4, p3}, Lorg/joda/time/chrono/GJLocaleSymbols;->eraTextToValue(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/joda/time/chrono/GJEraDateTimeField;->set(JI)J

    move-result-wide p1

    return-wide p1
.end method
