.class public Lorg/joda/time/MutablePeriod;
.super Lorg/joda/time/base/BasePeriod;
.source "MutablePeriod.java"

# interfaces
.implements Lorg/joda/time/ReadWritablePeriod;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2fb0ba168501a285L


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 93
    invoke-direct {p0, v1, v2, v0, v0}, Lorg/joda/time/base/BasePeriod;-><init>(JLorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 15

    .line 114
    invoke-static {}, Lorg/joda/time/PeriodType;->standard()Lorg/joda/time/PeriodType;

    move-result-object v9

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v0 .. v9}, Lorg/joda/time/base/BasePeriod;-><init>(IIIIIIIILorg/joda/time/PeriodType;)V

    return-void
.end method

.method public constructor <init>(IIIIIIII)V
    .registers 19

    .line 131
    invoke-static {}, Lorg/joda/time/PeriodType;->standard()Lorg/joda/time/PeriodType;

    move-result-object v9

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lorg/joda/time/base/BasePeriod;-><init>(IIIIIIIILorg/joda/time/PeriodType;)V

    return-void
.end method

.method public constructor <init>(IIIIIIIILorg/joda/time/PeriodType;)V
    .registers 10

    .line 150
    invoke-direct/range {p0 .. p9}, Lorg/joda/time/base/BasePeriod;-><init>(IIIIIIIILorg/joda/time/PeriodType;)V

    return-void
.end method

.method public constructor <init>(J)V
    .registers 3

    .line 180
    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BasePeriod;-><init>(J)V

    return-void
.end method

.method public constructor <init>(JJ)V
    .registers 12

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 253
    invoke-direct/range {v0 .. v6}, Lorg/joda/time/base/BasePeriod;-><init>(JJLorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(JJLorg/joda/time/Chronology;)V
    .registers 13

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v6, p5

    .line 276
    invoke-direct/range {v0 .. v6}, Lorg/joda/time/base/BasePeriod;-><init>(JJLorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(JJLorg/joda/time/PeriodType;)V
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    .line 264
    invoke-direct/range {v0 .. v6}, Lorg/joda/time/base/BasePeriod;-><init>(JJLorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(JJLorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V
    .registers 7

    .line 288
    invoke-direct/range {p0 .. p6}, Lorg/joda/time/base/BasePeriod;-><init>(JJLorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(JLorg/joda/time/Chronology;)V
    .registers 5

    const/4 v0, 0x0

    .line 221
    invoke-direct {p0, p1, p2, v0, p3}, Lorg/joda/time/base/BasePeriod;-><init>(JLorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(JLorg/joda/time/PeriodType;)V
    .registers 5

    const/4 v0, 0x0

    .line 200
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/joda/time/base/BasePeriod;-><init>(JLorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(JLorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V
    .registers 5

    .line 242
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/joda/time/base/BasePeriod;-><init>(JLorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3

    const/4 v0, 0x0

    .line 374
    invoke-direct {p0, p1, v0, v0}, Lorg/joda/time/base/BasePeriod;-><init>(Ljava/lang/Object;Lorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/joda/time/Chronology;)V
    .registers 4

    const/4 v0, 0x0

    .line 408
    invoke-direct {p0, p1, v0, p2}, Lorg/joda/time/base/BasePeriod;-><init>(Ljava/lang/Object;Lorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/joda/time/PeriodType;)V
    .registers 4

    const/4 v0, 0x0

    .line 391
    invoke-direct {p0, p1, p2, v0}, Lorg/joda/time/base/BasePeriod;-><init>(Ljava/lang/Object;Lorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V
    .registers 4

    .line 426
    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/base/BasePeriod;-><init>(Ljava/lang/Object;Lorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(Lorg/joda/time/PeriodType;)V
    .registers 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 102
    invoke-direct {p0, v0, v1, p1, v2}, Lorg/joda/time/base/BasePeriod;-><init>(JLorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(Lorg/joda/time/ReadableDuration;Lorg/joda/time/ReadableInstant;)V
    .registers 4

    const/4 v0, 0x0

    .line 347
    invoke-direct {p0, p1, p2, v0}, Lorg/joda/time/base/BasePeriod;-><init>(Lorg/joda/time/ReadableDuration;Lorg/joda/time/ReadableInstant;Lorg/joda/time/PeriodType;)V

    return-void
.end method

.method public constructor <init>(Lorg/joda/time/ReadableDuration;Lorg/joda/time/ReadableInstant;Lorg/joda/time/PeriodType;)V
    .registers 4

    .line 358
    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/base/BasePeriod;-><init>(Lorg/joda/time/ReadableDuration;Lorg/joda/time/ReadableInstant;Lorg/joda/time/PeriodType;)V

    return-void
.end method

.method public constructor <init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableDuration;)V
    .registers 4

    const/4 v0, 0x0

    .line 326
    invoke-direct {p0, p1, p2, v0}, Lorg/joda/time/base/BasePeriod;-><init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableDuration;Lorg/joda/time/PeriodType;)V

    return-void
.end method

.method public constructor <init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableDuration;Lorg/joda/time/PeriodType;)V
    .registers 4

    .line 337
    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/base/BasePeriod;-><init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableDuration;Lorg/joda/time/PeriodType;)V

    return-void
.end method

.method public constructor <init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;)V
    .registers 4

    const/4 v0, 0x0

    .line 302
    invoke-direct {p0, p1, p2, v0}, Lorg/joda/time/base/BasePeriod;-><init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;Lorg/joda/time/PeriodType;)V

    return-void
.end method

.method public constructor <init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;Lorg/joda/time/PeriodType;)V
    .registers 4

    .line 316
    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/base/BasePeriod;-><init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;Lorg/joda/time/PeriodType;)V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lorg/joda/time/MutablePeriod;
    .registers 2
    .annotation runtime Lorg/joda/convert/FromString;
    .end annotation

    .line 74
    invoke-static {}, Lorg/joda/time/format/ISOPeriodFormat;->standard()Lorg/joda/time/format/PeriodFormatter;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/joda/time/MutablePeriod;->parse(Ljava/lang/String;Lorg/joda/time/format/PeriodFormatter;)Lorg/joda/time/MutablePeriod;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Lorg/joda/time/format/PeriodFormatter;)Lorg/joda/time/MutablePeriod;
    .registers 2

    .line 85
    invoke-virtual {p1, p0}, Lorg/joda/time/format/PeriodFormatter;->parsePeriod(Ljava/lang/String;)Lorg/joda/time/Period;

    move-result-object p0

    invoke-virtual {p0}, Lorg/joda/time/Period;->toMutablePeriod()Lorg/joda/time/MutablePeriod;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public add(IIIIIIII)V
    .registers 19

    .line 657
    invoke-virtual {p0}, Lorg/joda/time/MutablePeriod;->getYears()I

    move-result v0

    move v1, p1

    invoke-static {v0, v1}, Lorg/joda/time/field/FieldUtils;->safeAdd(II)I

    move-result v2

    invoke-virtual {p0}, Lorg/joda/time/MutablePeriod;->getMonths()I

    move-result v0

    move v1, p2

    invoke-static {v0, v1}, Lorg/joda/time/field/FieldUtils;->safeAdd(II)I

    move-result v3

    invoke-virtual {p0}, Lorg/joda/time/MutablePeriod;->getWeeks()I

    move-result v0

    move v1, p3

    invoke-static {v0, v1}, Lorg/joda/time/field/FieldUtils;->safeAdd(II)I

    move-result v4

    invoke-virtual {p0}, Lorg/joda/time/MutablePeriod;->getDays()I

    move-result v0

    move v1, p4

    invoke-static {v0, v1}, Lorg/joda/time/field/FieldUtils;->safeAdd(II)I

    move-result v5

    invoke-virtual {p0}, Lorg/joda/time/MutablePeriod;->getHours()I

    move-result v0

    move v1, p5

    invoke-static {v0, v1}, Lorg/joda/time/field/FieldUtils;->safeAdd(II)I

    move-result v6

    invoke-virtual {p0}, Lorg/joda/time/MutablePeriod;->getMinutes()I

    move-result v0

    move/from16 v1, p6

    invoke-static {v0, v1}, Lorg/joda/time/field/FieldUtils;->safeAdd(II)I

    move-result v7

    invoke-virtual {p0}, Lorg/joda/time/MutablePeriod;->getSeconds()I

    move-result v0

    move/from16 v1, p7

    invoke-static {v0, v1}, Lorg/joda/time/field/FieldUtils;->safeAdd(II)I

    move-result v8

    invoke-virtual {p0}, Lorg/joda/time/MutablePeriod;->getMillis()I

    move-result v0

    move/from16 v1, p8

    invoke-static {v0, v1}, Lorg/joda/time/field/FieldUtils;->safeAdd(II)I

    move-result v9

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Lorg/joda/time/MutablePeriod;->setPeriod(IIIIIIII)V

    return-void
.end method

.method public add(J)V
    .registers 5

    .line 707
    new-instance v0, Lorg/joda/time/Period;

    invoke-virtual {p0}, Lorg/joda/time/MutablePeriod;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lorg/joda/time/Period;-><init>(JLorg/joda/time/PeriodType;)V

    invoke-virtual {p0, v0}, Lorg/joda/time/MutablePeriod;->add(Lorg/joda/time/ReadablePeriod;)V

    return-void
.end method

.method public add(JLorg/joda/time/Chronology;)V
    .registers 6

    .line 723
    new-instance v0, Lorg/joda/time/Period;

    invoke-virtual {p0}, Lorg/joda/time/MutablePeriod;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1, p3}, Lorg/joda/time/Period;-><init>(JLorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V

    invoke-virtual {p0, v0}, Lorg/joda/time/MutablePeriod;->add(Lorg/joda/time/ReadablePeriod;)V

    return-void
.end method

.method public add(Lorg/joda/time/DurationFieldType;I)V
    .registers 3

    .line 625
    invoke-super {p0, p1, p2}, Lorg/joda/time/base/BasePeriod;->addField(Lorg/joda/time/DurationFieldType;I)V

    return-void
.end method

.method public add(Lorg/joda/time/ReadableDuration;)V
    .registers 5

    if-eqz p1, :cond_12

    .line 691
    new-instance v0, Lorg/joda/time/Period;

    invoke-interface {p1}, Lorg/joda/time/ReadableDuration;->getMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Lorg/joda/time/MutablePeriod;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lorg/joda/time/Period;-><init>(JLorg/joda/time/PeriodType;)V

    invoke-virtual {p0, v0}, Lorg/joda/time/MutablePeriod;->add(Lorg/joda/time/ReadablePeriod;)V

    :cond_12
    return-void
.end method

.method public add(Lorg/joda/time/ReadableInterval;)V
    .registers 3

    if-eqz p1, :cond_d

    .line 678
    invoke-virtual {p0}, Lorg/joda/time/MutablePeriod;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/joda/time/ReadableInterval;->toPeriod(Lorg/joda/time/PeriodType;)Lorg/joda/time/Period;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/joda/time/MutablePeriod;->add(Lorg/joda/time/ReadablePeriod;)V

    :cond_d
    return-void
.end method

.method public add(Lorg/joda/time/ReadablePeriod;)V
    .registers 2

    .line 637
    invoke-super {p0, p1}, Lorg/joda/time/base/BasePeriod;->addPeriod(Lorg/joda/time/ReadablePeriod;)V

    return-void
.end method

.method public addDays(I)V
    .registers 3

    .line 898
    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-super {p0, v0, p1}, Lorg/joda/time/base/BasePeriod;->addField(Lorg/joda/time/DurationFieldType;I)V

    return-void
.end method

.method public addHours(I)V
    .registers 3

    .line 920
    invoke-static {}, Lorg/joda/time/DurationFieldType;->hours()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-super {p0, v0, p1}, Lorg/joda/time/base/BasePeriod;->addField(Lorg/joda/time/DurationFieldType;I)V

    return-void
.end method

.method public addMillis(I)V
    .registers 3

    .line 986
    invoke-static {}, Lorg/joda/time/DurationFieldType;->millis()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-super {p0, v0, p1}, Lorg/joda/time/base/BasePeriod;->addField(Lorg/joda/time/DurationFieldType;I)V

    return-void
.end method

.method public addMinutes(I)V
    .registers 3

    .line 942
    invoke-static {}, Lorg/joda/time/DurationFieldType;->minutes()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-super {p0, v0, p1}, Lorg/joda/time/base/BasePeriod;->addField(Lorg/joda/time/DurationFieldType;I)V

    return-void
.end method

.method public addMonths(I)V
    .registers 3

    .line 854
    invoke-static {}, Lorg/joda/time/DurationFieldType;->months()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-super {p0, v0, p1}, Lorg/joda/time/base/BasePeriod;->addField(Lorg/joda/time/DurationFieldType;I)V

    return-void
.end method

.method public addSeconds(I)V
    .registers 3

    .line 964
    invoke-static {}, Lorg/joda/time/DurationFieldType;->seconds()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-super {p0, v0, p1}, Lorg/joda/time/base/BasePeriod;->addField(Lorg/joda/time/DurationFieldType;I)V

    return-void
.end method

.method public addWeeks(I)V
    .registers 3

    .line 876
    invoke-static {}, Lorg/joda/time/DurationFieldType;->weeks()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-super {p0, v0, p1}, Lorg/joda/time/base/BasePeriod;->addField(Lorg/joda/time/DurationFieldType;I)V

    return-void
.end method

.method public addYears(I)V
    .registers 3

    .line 832
    invoke-static {}, Lorg/joda/time/DurationFieldType;->years()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-super {p0, v0, p1}, Lorg/joda/time/base/BasePeriod;->addField(Lorg/joda/time/DurationFieldType;I)V

    return-void
.end method

.method public clear()V
    .registers 2

    .line 434
    invoke-virtual {p0}, Lorg/joda/time/MutablePeriod;->size()I

    move-result v0

    new-array v0, v0, [I

    invoke-super {p0, v0}, Lorg/joda/time/base/BasePeriod;->setValues([I)V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 3

    .line 1007
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 1009
    :catch_5
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "Clone error"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public copy()Lorg/joda/time/MutablePeriod;
    .registers 2

    .line 997
    invoke-virtual {p0}, Lorg/joda/time/MutablePeriod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/MutablePeriod;

    return-object v0
.end method

.method public getDays()I
    .registers 3

    .line 773
    invoke-virtual {p0}, Lorg/joda/time/MutablePeriod;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v0

    sget v1, Lorg/joda/time/PeriodType;->DAY_INDEX:I

    invoke-virtual {v0, p0, v1}, Lorg/joda/time/PeriodType;->getIndexedField(Lorg/joda/time/ReadablePeriod;I)I

    move-result v0

    return v0
.end method

.method public getHours()I
    .registers 3

    .line 783
    invoke-virtual {p0}, Lorg/joda/time/MutablePeriod;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v0

    sget v1, Lorg/joda/time/PeriodType;->HOUR_INDEX:I

    invoke-virtual {v0, p0, v1}, Lorg/joda/time/PeriodType;->getIndexedField(Lorg/joda/time/ReadablePeriod;I)I

    move-result v0

    return v0
.end method

.method public getMillis()I
    .registers 3

    .line 810
    invoke-virtual {p0}, Lorg/joda/time/MutablePeriod;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v0

    sget v1, Lorg/joda/time/PeriodType;->MILLI_INDEX:I

    invoke-virtual {v0, p0, v1}, Lorg/joda/time/PeriodType;->getIndexedField(Lorg/joda/time/ReadablePeriod;I)I

    move-result v0

    return v0
.end method

.method public getMinutes()I
    .registers 3

    .line 792
    invoke-virtual {p0}, Lorg/joda/time/MutablePeriod;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v0

    sget v1, Lorg/joda/time/PeriodType;->MINUTE_INDEX:I

    invoke-virtual {v0, p0, v1}, Lorg/joda/time/PeriodType;->getIndexedField(Lorg/joda/time/ReadablePeriod;I)I

    move-result v0

    return v0
.end method

.method public getMonths()I
    .registers 3

    .line 755
    invoke-virtual {p0}, Lorg/joda/time/MutablePeriod;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v0

    sget v1, Lorg/joda/time/PeriodType;->MONTH_INDEX:I

    invoke-virtual {v0, p0, v1}, Lorg/joda/time/PeriodType;->getIndexedField(Lorg/joda/time/ReadablePeriod;I)I

    move-result v0

    return v0
.end method

.method public getSeconds()I
    .registers 3

    .line 801
    invoke-virtual {p0}, Lorg/joda/time/MutablePeriod;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v0

    sget v1, Lorg/joda/time/PeriodType;->SECOND_INDEX:I

    invoke-virtual {v0, p0, v1}, Lorg/joda/time/PeriodType;->getIndexedField(Lorg/joda/time/ReadablePeriod;I)I

    move-result v0

    return v0
.end method

.method public getWeeks()I
    .registers 3

    .line 764
    invoke-virtual {p0}, Lorg/joda/time/MutablePeriod;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v0

    sget v1, Lorg/joda/time/PeriodType;->WEEK_INDEX:I

    invoke-virtual {v0, p0, v1}, Lorg/joda/time/PeriodType;->getIndexedField(Lorg/joda/time/ReadablePeriod;I)I

    move-result v0

    return v0
.end method

.method public getYears()I
    .registers 3

    .line 746
    invoke-virtual {p0}, Lorg/joda/time/MutablePeriod;->getPeriodType()Lorg/joda/time/PeriodType;

    move-result-object v0

    sget v1, Lorg/joda/time/PeriodType;->YEAR_INDEX:I

    invoke-virtual {v0, p0, v1}, Lorg/joda/time/PeriodType;->getIndexedField(Lorg/joda/time/ReadablePeriod;I)I

    move-result v0

    return v0
.end method

.method public mergePeriod(Lorg/joda/time/ReadablePeriod;)V
    .registers 2

    .line 736
    invoke-super {p0, p1}, Lorg/joda/time/base/BasePeriod;->mergePeriod(Lorg/joda/time/ReadablePeriod;)V

    return-void
.end method

.method public set(Lorg/joda/time/DurationFieldType;I)V
    .registers 3

    .line 458
    invoke-super {p0, p1, p2}, Lorg/joda/time/base/BasePeriod;->setField(Lorg/joda/time/DurationFieldType;I)V

    return-void
.end method

.method public setDays(I)V
    .registers 3

    .line 887
    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-super {p0, v0, p1}, Lorg/joda/time/base/BasePeriod;->setField(Lorg/joda/time/DurationFieldType;I)V

    return-void
.end method

.method public setHours(I)V
    .registers 3

    .line 909
    invoke-static {}, Lorg/joda/time/DurationFieldType;->hours()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-super {p0, v0, p1}, Lorg/joda/time/base/BasePeriod;->setField(Lorg/joda/time/DurationFieldType;I)V

    return-void
.end method

.method public setMillis(I)V
    .registers 3

    .line 975
    invoke-static {}, Lorg/joda/time/DurationFieldType;->millis()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-super {p0, v0, p1}, Lorg/joda/time/base/BasePeriod;->setField(Lorg/joda/time/DurationFieldType;I)V

    return-void
.end method

.method public setMinutes(I)V
    .registers 3

    .line 931
    invoke-static {}, Lorg/joda/time/DurationFieldType;->minutes()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-super {p0, v0, p1}, Lorg/joda/time/base/BasePeriod;->setField(Lorg/joda/time/DurationFieldType;I)V

    return-void
.end method

.method public setMonths(I)V
    .registers 3

    .line 843
    invoke-static {}, Lorg/joda/time/DurationFieldType;->months()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-super {p0, v0, p1}, Lorg/joda/time/base/BasePeriod;->setField(Lorg/joda/time/DurationFieldType;I)V

    return-void
.end method

.method public setPeriod(IIIIIIII)V
    .registers 9

    .line 486
    invoke-super/range {p0 .. p8}, Lorg/joda/time/base/BasePeriod;->setPeriod(IIIIIIII)V

    return-void
.end method

.method public setPeriod(J)V
    .registers 4

    const/4 v0, 0x0

    .line 595
    invoke-virtual {p0, p1, p2, v0}, Lorg/joda/time/MutablePeriod;->setPeriod(JLorg/joda/time/Chronology;)V

    return-void
.end method

.method public setPeriod(JJ)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 535
    invoke-virtual/range {v0 .. v5}, Lorg/joda/time/MutablePeriod;->setPeriod(JJLorg/joda/time/Chronology;)V

    return-void
.end method

.method public setPeriod(JJLorg/joda/time/Chronology;)V
    .registers 12

    .line 547
    invoke-static {p5}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .line 548
    invoke-virtual/range {v0 .. v5}, Lorg/joda/time/Chronology;->get(Lorg/joda/time/ReadablePeriod;JJ)[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/joda/time/MutablePeriod;->setValues([I)V

    return-void
.end method

.method public setPeriod(JLorg/joda/time/Chronology;)V
    .registers 4

    .line 610
    invoke-static {p3}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object p3

    .line 611
    invoke-virtual {p3, p0, p1, p2}, Lorg/joda/time/Chronology;->get(Lorg/joda/time/ReadablePeriod;J)[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/joda/time/MutablePeriod;->setValues([I)V

    return-void
.end method

.method public setPeriod(Lorg/joda/time/ReadableDuration;)V
    .registers 3

    const/4 v0, 0x0

    .line 563
    invoke-virtual {p0, p1, v0}, Lorg/joda/time/MutablePeriod;->setPeriod(Lorg/joda/time/ReadableDuration;Lorg/joda/time/Chronology;)V

    return-void
.end method

.method public setPeriod(Lorg/joda/time/ReadableDuration;Lorg/joda/time/Chronology;)V
    .registers 5

    .line 579
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getDurationMillis(Lorg/joda/time/ReadableDuration;)J

    move-result-wide v0

    .line 580
    invoke-virtual {p0, v0, v1, p2}, Lorg/joda/time/MutablePeriod;->setPeriod(JLorg/joda/time/Chronology;)V

    return-void
.end method

.method public setPeriod(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;)V
    .registers 9

    if-ne p1, p2, :cond_8

    const-wide/16 p1, 0x0

    .line 517
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/MutablePeriod;->setPeriod(J)V

    goto :goto_18

    .line 519
    :cond_8
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getInstantMillis(Lorg/joda/time/ReadableInstant;)J

    move-result-wide v1

    .line 520
    invoke-static {p2}, Lorg/joda/time/DateTimeUtils;->getInstantMillis(Lorg/joda/time/ReadableInstant;)J

    move-result-wide v3

    .line 521
    invoke-static {p1, p2}, Lorg/joda/time/DateTimeUtils;->getIntervalChronology(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Chronology;

    move-result-object v5

    move-object v0, p0

    .line 522
    invoke-virtual/range {v0 .. v5}, Lorg/joda/time/MutablePeriod;->setPeriod(JJLorg/joda/time/Chronology;)V

    :goto_18
    return-void
.end method

.method public setPeriod(Lorg/joda/time/ReadableInterval;)V
    .registers 9

    if-nez p1, :cond_8

    const-wide/16 v0, 0x0

    .line 498
    invoke-virtual {p0, v0, v1}, Lorg/joda/time/MutablePeriod;->setPeriod(J)V

    goto :goto_1c

    .line 500
    :cond_8
    invoke-interface {p1}, Lorg/joda/time/ReadableInterval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v6

    .line 501
    invoke-interface {p1}, Lorg/joda/time/ReadableInterval;->getStartMillis()J

    move-result-wide v2

    invoke-interface {p1}, Lorg/joda/time/ReadableInterval;->getEndMillis()J

    move-result-wide v4

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lorg/joda/time/MutablePeriod;->setPeriod(JJLorg/joda/time/Chronology;)V

    :goto_1c
    return-void
.end method

.method public setPeriod(Lorg/joda/time/ReadablePeriod;)V
    .registers 2

    .line 468
    invoke-super {p0, p1}, Lorg/joda/time/base/BasePeriod;->setPeriod(Lorg/joda/time/ReadablePeriod;)V

    return-void
.end method

.method public setSeconds(I)V
    .registers 3

    .line 953
    invoke-static {}, Lorg/joda/time/DurationFieldType;->seconds()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-super {p0, v0, p1}, Lorg/joda/time/base/BasePeriod;->setField(Lorg/joda/time/DurationFieldType;I)V

    return-void
.end method

.method public setValue(II)V
    .registers 3

    .line 445
    invoke-super {p0, p1, p2}, Lorg/joda/time/base/BasePeriod;->setValue(II)V

    return-void
.end method

.method public setWeeks(I)V
    .registers 3

    .line 865
    invoke-static {}, Lorg/joda/time/DurationFieldType;->weeks()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-super {p0, v0, p1}, Lorg/joda/time/base/BasePeriod;->setField(Lorg/joda/time/DurationFieldType;I)V

    return-void
.end method

.method public setYears(I)V
    .registers 3

    .line 821
    invoke-static {}, Lorg/joda/time/DurationFieldType;->years()Lorg/joda/time/DurationFieldType;

    move-result-object v0

    invoke-super {p0, v0, p1}, Lorg/joda/time/base/BasePeriod;->setField(Lorg/joda/time/DurationFieldType;I)V

    return-void
.end method
