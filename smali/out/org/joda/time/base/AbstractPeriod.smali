.class public abstract Lorg/joda/time/base/AbstractPeriod;
.super Ljava/lang/Object;
.source "AbstractPeriod.java"

# interfaces
.implements Lorg/joda/time/ReadablePeriod;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 186
    :cond_4
    instance-of v1, p1, Lorg/joda/time/ReadablePeriod;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 189
    :cond_a
    check-cast p1, Lorg/joda/time/ReadablePeriod;

    .line 190
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractPeriod;->size()I

    move-result v1

    invoke-interface {p1}, Lorg/joda/time/ReadablePeriod;->size()I

    move-result v3

    if-eq v1, v3, :cond_17

    return v2

    .line 193
    :cond_17
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractPeriod;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v1, :cond_37

    .line 194
    invoke-virtual {p0, v3}, Lorg/joda/time/base/AbstractPeriod;->getValue(I)I

    move-result v4

    invoke-interface {p1, v3}, Lorg/joda/time/ReadablePeriod;->getValue(I)I

    move-result v5

    if-ne v4, v5, :cond_36

    invoke-virtual {p0, v3}, Lorg/joda/time/base/AbstractPeriod;->getFieldType(I)Lorg/joda/time/DurationFieldType;

    move-result-object v4

    invoke-interface {p1, v3}, Lorg/joda/time/ReadablePeriod;->getFieldType(I)Lorg/joda/time/DurationFieldType;

    move-result-object v5

    if-eq v4, v5, :cond_33

    goto :goto_36

    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :cond_36
    :goto_36
    return v2

    :cond_37
    return v0
.end method

.method public get(Lorg/joda/time/DurationFieldType;)I
    .registers 3

    .line 113
    invoke-virtual {p0, p1}, Lorg/joda/time/base/AbstractPeriod;->indexOf(Lorg/joda/time/DurationFieldType;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_9

    const/4 p1, 0x0

    return p1

    .line 117
    :cond_9
    invoke-virtual {p0, p1}, Lorg/joda/time/base/AbstractPeriod;->getValue(I)I

    move-result p1

    return p1
.end method

.method public getFieldType(I)Lorg/joda/time/DurationFieldType;
    .registers 3

    .line 68
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractPeriod;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/PeriodType;->getFieldType(I)Lorg/joda/time/DurationFieldType;

    move-result-object p1

    return-object p1
.end method

.method public getFieldTypes()[Lorg/joda/time/DurationFieldType;
    .registers 4

    .line 79
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractPeriod;->size()I

    move-result v0

    new-array v0, v0, [Lorg/joda/time/DurationFieldType;

    const/4 v1, 0x0

    .line 80
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_13

    .line 81
    invoke-virtual {p0, v1}, Lorg/joda/time/base/AbstractPeriod;->getFieldType(I)Lorg/joda/time/DurationFieldType;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_13
    return-object v0
.end method

.method public getValues()[I
    .registers 4

    .line 95
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractPeriod;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 96
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_13

    .line 97
    invoke-virtual {p0, v1}, Lorg/joda/time/base/AbstractPeriod;->getValue(I)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_13
    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 208
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractPeriod;->size()I

    move-result v0

    const/16 v1, 0x11

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_1e

    mul-int/lit8 v1, v1, 0x1b

    .line 209
    invoke-virtual {p0, v2}, Lorg/joda/time/base/AbstractPeriod;->getValue(I)I

    move-result v3

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x1b

    .line 210
    invoke-virtual {p0, v2}, Lorg/joda/time/base/AbstractPeriod;->getFieldType(I)Lorg/joda/time/DurationFieldType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_1e
    return v1
.end method

.method public indexOf(Lorg/joda/time/DurationFieldType;)I
    .registers 3

    .line 137
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractPeriod;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/PeriodType;->indexOf(Lorg/joda/time/DurationFieldType;)I

    move-result p1

    return p1
.end method

.method public isSupported(Lorg/joda/time/DurationFieldType;)Z
    .registers 3

    .line 127
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractPeriod;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/PeriodType;->isSupported(Lorg/joda/time/DurationFieldType;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .registers 2

    .line 56
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractPeriod;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/PeriodType;->size()I

    move-result v0

    return v0
.end method

.method public toMutablePeriod()Lorg/joda/time/MutablePeriod;
    .registers 2

    .line 158
    new-instance v0, Lorg/joda/time/MutablePeriod;

    invoke-direct {v0, p0}, Lorg/joda/time/MutablePeriod;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public toPeriod()Lorg/joda/time/Period;
    .registers 2

    .line 147
    new-instance v0, Lorg/joda/time/Period;

    invoke-direct {v0, p0}, Lorg/joda/time/Period;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2
    .annotation runtime Lorg/joda/convert/ToString;
    .end annotation

    .line 228
    invoke-static {}, Lorg/joda/time/format/ISOPeriodFormat;->standard()Lorg/joda/time/format/PeriodFormatter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/joda/time/format/PeriodFormatter;->print(Lorg/joda/time/ReadablePeriod;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Lorg/joda/time/format/PeriodFormatter;)Ljava/lang/String;
    .registers 2

    if-nez p1, :cond_7

    .line 241
    invoke-virtual {p0}, Lorg/joda/time/base/AbstractPeriod;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 243
    :cond_7
    invoke-virtual {p1, p0}, Lorg/joda/time/format/PeriodFormatter;->print(Lorg/joda/time/ReadablePeriod;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
