.class public abstract Lorg/joda/time/base/BasePeriod;
.super Lorg/joda/time/base/AbstractPeriod;
.source "BasePeriod.java"

# interfaces
.implements Lorg/joda/time/ReadablePeriod;
.implements Ljava/io/Serializable;


# static fields
.field private static final DUMMY_PERIOD:Lorg/joda/time/ReadablePeriod;

.field private static final serialVersionUID:J = -0x1d4b9cd3d9d73379L


# instance fields
.field private final iType:Lorg/joda/time/PeriodType;

.field private final iValues:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 57
    new-instance v0, Lorg/joda/time/base/BasePeriod$1;

    invoke-direct {v0}, Lorg/joda/time/base/BasePeriod$1;-><init>()V

    sput-object v0, Lorg/joda/time/base/BasePeriod;->DUMMY_PERIOD:Lorg/joda/time/ReadablePeriod;

    return-void
.end method

.method protected constructor <init>(IIIIIIIILorg/joda/time/PeriodType;)V
    .registers 10

    .line 90
    invoke-direct {p0}, Lorg/joda/time/base/AbstractPeriod;-><init>()V

    .line 91
    invoke-virtual {p0, p9}, Lorg/joda/time/base/BasePeriod;->checkPeriodType(Lorg/joda/time/PeriodType;)Lorg/joda/time/PeriodType;

    move-result-object p9

    .line 92
    iput-object p9, p0, Lorg/joda/time/base/BasePeriod;->iType:Lorg/joda/time/PeriodType;

    .line 93
    invoke-direct/range {p0 .. p8}, Lorg/joda/time/base/BasePeriod;->setPeriodInternal(IIIIIIII)[I

    move-result-object p1

    iput-object p1, p0, Lorg/joda/time/base/BasePeriod;->iValues:[I

    return-void
.end method

.method protected constructor <init>(J)V
    .registers 5

    .line 231
    invoke-direct {p0}, Lorg/joda/time/base/AbstractPeriod;-><init>()V

    .line 235
    invoke-static {}, Lorg/joda/time/PeriodType;->standard()Lorg/joda/time/PeriodType;

    move-result-object v0

    iput-object v0, p0, Lorg/joda/time/base/BasePeriod;->iType:Lorg/joda/time/PeriodType;

    .line 236
    invoke-static {}, Lorg/joda/time/chrono/ISOChronology;->getInstanceUTC()Lorg/joda/time/chrono/ISOChronology;

    move-result-object v0

    sget-object v1, Lorg/joda/time/base/BasePeriod;->DUMMY_PERIOD:Lorg/joda/time/ReadablePeriod;

    invoke-virtual {v0, v1, p1, p2}, Lorg/joda/time/chrono/ISOChronology;->get(Lorg/joda/time/ReadablePeriod;J)[I

    move-result-object p1

    const/16 p2, 0x8

    .line 237
    new-array p2, p2, [I

    iput-object p2, p0, Lorg/joda/time/base/BasePeriod;->iValues:[I

    .line 238
    iget-object p2, p0, Lorg/joda/time/base/BasePeriod;->iValues:[I

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {p1, v1, p2, v0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method protected constructor <init>(JJLorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V
    .registers 13

    .line 106
    invoke-direct {p0}, Lorg/joda/time/base/AbstractPeriod;-><init>()V

    .line 107
    invoke-virtual {p0, p5}, Lorg/joda/time/base/BasePeriod;->checkPeriodType(Lorg/joda/time/PeriodType;)Lorg/joda/time/PeriodType;

    move-result-object p5

    .line 108
    invoke-static {p6}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v0

    .line 109
    iput-object p5, p0, Lorg/joda/time/base/BasePeriod;->iType:Lorg/joda/time/PeriodType;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .line 110
    invoke-virtual/range {v0 .. v5}, Lorg/joda/time/Chronology;->get(Lorg/joda/time/ReadablePeriod;JJ)[I

    move-result-object p1

    iput-object p1, p0, Lorg/joda/time/base/BasePeriod;->iValues:[I

    return-void
.end method

.method protected constructor <init>(JLorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V
    .registers 5

    .line 254
    invoke-direct {p0}, Lorg/joda/time/base/AbstractPeriod;-><init>()V

    .line 255
    invoke-virtual {p0, p3}, Lorg/joda/time/base/BasePeriod;->checkPeriodType(Lorg/joda/time/PeriodType;)Lorg/joda/time/PeriodType;

    move-result-object p3

    .line 256
    invoke-static {p4}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object p4

    .line 257
    iput-object p3, p0, Lorg/joda/time/base/BasePeriod;->iType:Lorg/joda/time/PeriodType;

    .line 258
    invoke-virtual {p4, p0, p1, p2}, Lorg/joda/time/Chronology;->get(Lorg/joda/time/ReadablePeriod;J)[I

    move-result-object p1

    iput-object p1, p0, Lorg/joda/time/base/BasePeriod;->iValues:[I

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;Lorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V
    .registers 6

    .line 271
    invoke-direct {p0}, Lorg/joda/time/base/AbstractPeriod;-><init>()V

    .line 272
    invoke-static {}, Lorg/joda/time/convert/ConverterManager;->getInstance()Lorg/joda/time/convert/ConverterManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/joda/time/convert/ConverterManager;->getPeriodConverter(Ljava/lang/Object;)Lorg/joda/time/convert/PeriodConverter;

    move-result-object v0

    if-nez p2, :cond_11

    .line 273
    invoke-interface {v0, p1}, Lorg/joda/time/convert/PeriodConverter;->getPeriodType(Ljava/lang/Object;)Lorg/joda/time/PeriodType;

    move-result-object p2

    .line 274
    :cond_11
    invoke-virtual {p0, p2}, Lorg/joda/time/base/BasePeriod;->checkPeriodType(Lorg/joda/time/PeriodType;)Lorg/joda/time/PeriodType;

    move-result-object p2

    .line 275
    iput-object p2, p0, Lorg/joda/time/base/BasePeriod;->iType:Lorg/joda/time/PeriodType;

    .line 276
    instance-of v1, p0, Lorg/joda/time/ReadWritablePeriod;

    if-eqz v1, :cond_2e

    .line 277
    invoke-virtual {p0}, Lorg/joda/time/base/BasePeriod;->size()I

    move-result p2

    new-array p2, p2, [I

    iput-object p2, p0, Lorg/joda/time/base/BasePeriod;->iValues:[I

    .line 278
    invoke-static {p3}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object p2

    .line 279
    move-object p3, p0

    check-cast p3, Lorg/joda/time/ReadWritablePeriod;

    invoke-interface {v0, p3, p1, p2}, Lorg/joda/time/convert/PeriodConverter;->setInto(Lorg/joda/time/ReadWritablePeriod;Ljava/lang/Object;Lorg/joda/time/Chronology;)V

    goto :goto_39

    .line 281
    :cond_2e
    new-instance v0, Lorg/joda/time/MutablePeriod;

    invoke-direct {v0, p1, p2, p3}, Lorg/joda/time/MutablePeriod;-><init>(Ljava/lang/Object;Lorg/joda/time/PeriodType;Lorg/joda/time/Chronology;)V

    invoke-virtual {v0}, Lorg/joda/time/MutablePeriod;->getValues()[I

    move-result-object p1

    iput-object p1, p0, Lorg/joda/time/base/BasePeriod;->iValues:[I

    :goto_39
    return-void
.end method

.method protected constructor <init>(Lorg/joda/time/ReadableDuration;Lorg/joda/time/ReadableInstant;Lorg/joda/time/PeriodType;)V
    .registers 12

    .line 212
    invoke-direct {p0}, Lorg/joda/time/base/AbstractPeriod;-><init>()V

    .line 213
    invoke-virtual {p0, p3}, Lorg/joda/time/base/BasePeriod;->checkPeriodType(Lorg/joda/time/PeriodType;)Lorg/joda/time/PeriodType;

    move-result-object p3

    .line 214
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getDurationMillis(Lorg/joda/time/ReadableDuration;)J

    move-result-wide v0

    .line 215
    invoke-static {p2}, Lorg/joda/time/DateTimeUtils;->getInstantMillis(Lorg/joda/time/ReadableInstant;)J

    move-result-wide v6

    .line 216
    invoke-static {v6, v7, v0, v1}, Lorg/joda/time/field/FieldUtils;->safeSubtract(JJ)J

    move-result-wide v4

    .line 217
    invoke-static {p2}, Lorg/joda/time/DateTimeUtils;->getInstantChronology(Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Chronology;

    move-result-object v2

    .line 218
    iput-object p3, p0, Lorg/joda/time/base/BasePeriod;->iType:Lorg/joda/time/PeriodType;

    move-object v3, p0

    .line 219
    invoke-virtual/range {v2 .. v7}, Lorg/joda/time/Chronology;->get(Lorg/joda/time/ReadablePeriod;JJ)[I

    move-result-object p1

    iput-object p1, p0, Lorg/joda/time/base/BasePeriod;->iValues:[I

    return-void
.end method

.method protected constructor <init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableDuration;Lorg/joda/time/PeriodType;)V
    .registers 10

    .line 194
    invoke-direct {p0}, Lorg/joda/time/base/AbstractPeriod;-><init>()V

    .line 195
    invoke-virtual {p0, p3}, Lorg/joda/time/base/BasePeriod;->checkPeriodType(Lorg/joda/time/PeriodType;)Lorg/joda/time/PeriodType;

    move-result-object p3

    .line 196
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getInstantMillis(Lorg/joda/time/ReadableInstant;)J

    move-result-wide v2

    .line 197
    invoke-static {p2}, Lorg/joda/time/DateTimeUtils;->getDurationMillis(Lorg/joda/time/ReadableDuration;)J

    move-result-wide v0

    .line 198
    invoke-static {v2, v3, v0, v1}, Lorg/joda/time/field/FieldUtils;->safeAdd(JJ)J

    move-result-wide v4

    .line 199
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getInstantChronology(Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Chronology;

    move-result-object v0

    .line 200
    iput-object p3, p0, Lorg/joda/time/base/BasePeriod;->iType:Lorg/joda/time/PeriodType;

    move-object v1, p0

    .line 201
    invoke-virtual/range {v0 .. v5}, Lorg/joda/time/Chronology;->get(Lorg/joda/time/ReadablePeriod;JJ)[I

    move-result-object p1

    iput-object p1, p0, Lorg/joda/time/base/BasePeriod;->iValues:[I

    return-void
.end method

.method protected constructor <init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;Lorg/joda/time/PeriodType;)V
    .registers 10

    .line 122
    invoke-direct {p0}, Lorg/joda/time/base/AbstractPeriod;-><init>()V

    .line 123
    invoke-virtual {p0, p3}, Lorg/joda/time/base/BasePeriod;->checkPeriodType(Lorg/joda/time/PeriodType;)Lorg/joda/time/PeriodType;

    move-result-object p3

    if-nez p1, :cond_16

    if-nez p2, :cond_16

    .line 125
    iput-object p3, p0, Lorg/joda/time/base/BasePeriod;->iType:Lorg/joda/time/PeriodType;

    .line 126
    invoke-virtual {p0}, Lorg/joda/time/base/BasePeriod;->size()I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/joda/time/base/BasePeriod;->iValues:[I

    goto :goto_2b

    .line 128
    :cond_16
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getInstantMillis(Lorg/joda/time/ReadableInstant;)J

    move-result-wide v2

    .line 129
    invoke-static {p2}, Lorg/joda/time/DateTimeUtils;->getInstantMillis(Lorg/joda/time/ReadableInstant;)J

    move-result-wide v4

    .line 130
    invoke-static {p1, p2}, Lorg/joda/time/DateTimeUtils;->getIntervalChronology(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Chronology;

    move-result-object v0

    .line 131
    iput-object p3, p0, Lorg/joda/time/base/BasePeriod;->iType:Lorg/joda/time/PeriodType;

    move-object v1, p0

    .line 132
    invoke-virtual/range {v0 .. v5}, Lorg/joda/time/Chronology;->get(Lorg/joda/time/ReadablePeriod;JJ)[I

    move-result-object p1

    iput-object p1, p0, Lorg/joda/time/base/BasePeriod;->iValues:[I

    :goto_2b
    return-void
.end method

.method protected constructor <init>(Lorg/joda/time/ReadablePartial;Lorg/joda/time/ReadablePartial;Lorg/joda/time/PeriodType;)V
    .registers 11

    .line 155
    invoke-direct {p0}, Lorg/joda/time/base/AbstractPeriod;-><init>()V

    if-eqz p1, :cond_a0

    if-nez p2, :cond_9

    goto/16 :goto_a0

    .line 159
    :cond_9
    instance-of v0, p1, Lorg/joda/time/base/BaseLocal;

    if-eqz v0, :cond_3e

    instance-of v0, p2, Lorg/joda/time/base/BaseLocal;

    if-eqz v0, :cond_3e

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_3e

    .line 161
    invoke-virtual {p0, p3}, Lorg/joda/time/base/BasePeriod;->checkPeriodType(Lorg/joda/time/PeriodType;)Lorg/joda/time/PeriodType;

    move-result-object p3

    .line 162
    move-object v0, p1

    check-cast v0, Lorg/joda/time/base/BaseLocal;

    invoke-virtual {v0}, Lorg/joda/time/base/BaseLocal;->getLocalMillis()J

    move-result-wide v3

    .line 163
    check-cast p2, Lorg/joda/time/base/BaseLocal;

    invoke-virtual {p2}, Lorg/joda/time/base/BaseLocal;->getLocalMillis()J

    move-result-wide v5

    .line 164
    invoke-interface {p1}, Lorg/joda/time/ReadablePartial;->getChronology()Lorg/joda/time/Chronology;

    move-result-object p1

    .line 165
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object v1

    .line 166
    iput-object p3, p0, Lorg/joda/time/base/BasePeriod;->iType:Lorg/joda/time/PeriodType;

    move-object v2, p0

    .line 167
    invoke-virtual/range {v1 .. v6}, Lorg/joda/time/Chronology;->get(Lorg/joda/time/ReadablePeriod;JJ)[I

    move-result-object p1

    iput-object p1, p0, Lorg/joda/time/base/BasePeriod;->iValues:[I

    goto :goto_9f

    .line 169
    :cond_3e
    invoke-interface {p1}, Lorg/joda/time/ReadablePartial;->size()I

    move-result v0

    invoke-interface {p2}, Lorg/joda/time/ReadablePartial;->size()I

    move-result v1

    if-eq v0, v1, :cond_50

    .line 170
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ReadablePartial objects must have the same set of fields"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_50
    const/4 v0, 0x0

    .line 172
    invoke-interface {p1}, Lorg/joda/time/ReadablePartial;->size()I

    move-result v1

    :goto_55
    if-ge v0, v1, :cond_6c

    .line 173
    invoke-interface {p1, v0}, Lorg/joda/time/ReadablePartial;->getFieldType(I)Lorg/joda/time/DateTimeFieldType;

    move-result-object v2

    invoke-interface {p2, v0}, Lorg/joda/time/ReadablePartial;->getFieldType(I)Lorg/joda/time/DateTimeFieldType;

    move-result-object v3

    if-eq v2, v3, :cond_69

    .line 174
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ReadablePartial objects must have the same set of fields"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_69
    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    .line 177
    :cond_6c
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->isContiguous(Lorg/joda/time/ReadablePartial;)Z

    move-result v0

    if-nez v0, :cond_7a

    .line 178
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ReadablePartial objects must be contiguous"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 180
    :cond_7a
    invoke-virtual {p0, p3}, Lorg/joda/time/base/BasePeriod;->checkPeriodType(Lorg/joda/time/PeriodType;)Lorg/joda/time/PeriodType;

    move-result-object p3

    iput-object p3, p0, Lorg/joda/time/base/BasePeriod;->iType:Lorg/joda/time/PeriodType;

    .line 181
    invoke-interface {p1}, Lorg/joda/time/ReadablePartial;->getChronology()Lorg/joda/time/Chronology;

    move-result-object p3

    invoke-static {p3}, Lorg/joda/time/DateTimeUtils;->getChronology(Lorg/joda/time/Chronology;)Lorg/joda/time/Chronology;

    move-result-object p3

    invoke-virtual {p3}, Lorg/joda/time/Chronology;->withUTC()Lorg/joda/time/Chronology;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 182
    invoke-virtual {v0, p1, v1, v2}, Lorg/joda/time/Chronology;->set(Lorg/joda/time/ReadablePartial;J)J

    move-result-wide v3

    invoke-virtual {v0, p2, v1, v2}, Lorg/joda/time/Chronology;->set(Lorg/joda/time/ReadablePartial;J)J

    move-result-wide p1

    move-object v1, p0

    move-wide v2, v3

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/joda/time/Chronology;->get(Lorg/joda/time/ReadablePeriod;JJ)[I

    move-result-object p1

    iput-object p1, p0, Lorg/joda/time/base/BasePeriod;->iValues:[I

    :goto_9f
    return-void

    .line 157
    :cond_a0
    :goto_a0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ReadablePartial objects must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected constructor <init>([ILorg/joda/time/PeriodType;)V
    .registers 3

    .line 293
    invoke-direct {p0}, Lorg/joda/time/base/AbstractPeriod;-><init>()V

    .line 294
    iput-object p2, p0, Lorg/joda/time/base/BasePeriod;->iType:Lorg/joda/time/PeriodType;

    .line 295
    iput-object p1, p0, Lorg/joda/time/base/BasePeriod;->iValues:[I

    return-void
.end method

.method private checkAndUpdate(Lorg/joda/time/DurationFieldType;[II)V
    .registers 6

    .line 390
    invoke-virtual {p0, p1}, Lorg/joda/time/base/BasePeriod;->indexOf(Lorg/joda/time/DurationFieldType;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_29

    if-eqz p3, :cond_2b

    .line 393
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Period does not support field \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/joda/time/DurationFieldType;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 397
    :cond_29
    aput p3, p2, v0

    :cond_2b
    return-void
.end method

.method private setPeriodInternal(Lorg/joda/time/ReadablePeriod;)V
    .registers 7

    .line 420
    invoke-virtual {p0}, Lorg/joda/time/base/BasePeriod;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 421
    invoke-interface {p1}, Lorg/joda/time/ReadablePeriod;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_1b

    .line 422
    invoke-interface {p1, v2}, Lorg/joda/time/ReadablePeriod;->getFieldType(I)Lorg/joda/time/DurationFieldType;

    move-result-object v3

    .line 423
    invoke-interface {p1, v2}, Lorg/joda/time/ReadablePeriod;->getValue(I)I

    move-result v4

    .line 424
    invoke-direct {p0, v3, v0, v4}, Lorg/joda/time/base/BasePeriod;->checkAndUpdate(Lorg/joda/time/DurationFieldType;[II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 426
    :cond_1b
    invoke-virtual {p0, v0}, Lorg/joda/time/base/BasePeriod;->setValues([I)V

    return-void
.end method

.method private setPeriodInternal(IIIIIIII)[I
    .registers 11

    .line 453
    invoke-virtual {p0}, Lorg/joda/time/base/BasePeriod;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 454
    invoke-static {}, Lorg/joda/time/DurationFieldType;->years()Lorg/joda/time/DurationFieldType;

    move-result-object v1

    invoke-direct {p0, v1, v0, p1}, Lorg/joda/time/base/BasePeriod;->checkAndUpdate(Lorg/joda/time/DurationFieldType;[II)V

    .line 455
    invoke-static {}, Lorg/joda/time/DurationFieldType;->months()Lorg/joda/time/DurationFieldType;

    move-result-object p1

    invoke-direct {p0, p1, v0, p2}, Lorg/joda/time/base/BasePeriod;->checkAndUpdate(Lorg/joda/time/DurationFieldType;[II)V

    .line 456
    invoke-static {}, Lorg/joda/time/DurationFieldType;->weeks()Lorg/joda/time/DurationFieldType;

    move-result-object p1

    invoke-direct {p0, p1, v0, p3}, Lorg/joda/time/base/BasePeriod;->checkAndUpdate(Lorg/joda/time/DurationFieldType;[II)V

    .line 457
    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    move-result-object p1

    invoke-direct {p0, p1, v0, p4}, Lorg/joda/time/base/BasePeriod;->checkAndUpdate(Lorg/joda/time/DurationFieldType;[II)V

    .line 458
    invoke-static {}, Lorg/joda/time/DurationFieldType;->hours()Lorg/joda/time/DurationFieldType;

    move-result-object p1

    invoke-direct {p0, p1, v0, p5}, Lorg/joda/time/base/BasePeriod;->checkAndUpdate(Lorg/joda/time/DurationFieldType;[II)V

    .line 459
    invoke-static {}, Lorg/joda/time/DurationFieldType;->minutes()Lorg/joda/time/DurationFieldType;

    move-result-object p1

    invoke-direct {p0, p1, v0, p6}, Lorg/joda/time/base/BasePeriod;->checkAndUpdate(Lorg/joda/time/DurationFieldType;[II)V

    .line 460
    invoke-static {}, Lorg/joda/time/DurationFieldType;->seconds()Lorg/joda/time/DurationFieldType;

    move-result-object p1

    invoke-direct {p0, p1, v0, p7}, Lorg/joda/time/base/BasePeriod;->checkAndUpdate(Lorg/joda/time/DurationFieldType;[II)V

    .line 461
    invoke-static {}, Lorg/joda/time/DurationFieldType;->millis()Lorg/joda/time/DurationFieldType;

    move-result-object p1

    invoke-direct {p0, p1, v0, p8}, Lorg/joda/time/base/BasePeriod;->checkAndUpdate(Lorg/joda/time/DurationFieldType;[II)V

    return-object v0
.end method


# virtual methods
.method protected addField(Lorg/joda/time/DurationFieldType;I)V
    .registers 4

    .line 505
    iget-object v0, p0, Lorg/joda/time/base/BasePeriod;->iValues:[I

    invoke-virtual {p0, v0, p1, p2}, Lorg/joda/time/base/BasePeriod;->addFieldInto([ILorg/joda/time/DurationFieldType;I)V

    return-void
.end method

.method protected addFieldInto([ILorg/joda/time/DurationFieldType;I)V
    .registers 6

    .line 517
    invoke-virtual {p0, p2}, Lorg/joda/time/base/BasePeriod;->indexOf(Lorg/joda/time/DurationFieldType;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_27

    if-nez p3, :cond_b

    if-nez p2, :cond_2f

    .line 520
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Period does not support field \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 524
    :cond_27
    aget p2, p1, v0

    invoke-static {p2, p3}, Lorg/joda/time/field/FieldUtils;->safeAdd(II)I

    move-result p2

    aput p2, p1, v0

    :cond_2f
    return-void
.end method

.method protected addPeriod(Lorg/joda/time/ReadablePeriod;)V
    .registers 3

    if-eqz p1, :cond_d

    .line 565
    invoke-virtual {p0}, Lorg/joda/time/base/BasePeriod;->getValues()[I

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/joda/time/base/BasePeriod;->addPeriodInto([ILorg/joda/time/ReadablePeriod;)[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/joda/time/base/BasePeriod;->setValues([I)V

    :cond_d
    return-void
.end method

.method protected addPeriodInto([ILorg/joda/time/ReadablePeriod;)[I
    .registers 9

    .line 578
    invoke-interface {p2}, Lorg/joda/time/ReadablePeriod;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_45

    .line 579
    invoke-interface {p2, v1}, Lorg/joda/time/ReadablePeriod;->getFieldType(I)Lorg/joda/time/DurationFieldType;

    move-result-object v2

    .line 580
    invoke-interface {p2, v1}, Lorg/joda/time/ReadablePeriod;->getValue(I)I

    move-result v3

    if-eqz v3, :cond_42

    .line 582
    invoke-virtual {p0, v2}, Lorg/joda/time/base/BasePeriod;->indexOf(Lorg/joda/time/DurationFieldType;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_38

    .line 584
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Period does not support field \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/joda/time/DurationFieldType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 587
    :cond_38
    invoke-virtual {p0, v4}, Lorg/joda/time/base/BasePeriod;->getValue(I)I

    move-result v2

    invoke-static {v2, v3}, Lorg/joda/time/field/FieldUtils;->safeAdd(II)I

    move-result v2

    aput v2, p1, v4

    :cond_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_45
    return-object p1
.end method

.method protected checkPeriodType(Lorg/joda/time/PeriodType;)Lorg/joda/time/PeriodType;
    .registers 2

    .line 308
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getPeriodType(Lorg/joda/time/PeriodType;)Lorg/joda/time/PeriodType;

    move-result-object p1

    return-object p1
.end method

.method public getPeriodType()Lorg/joda/time/PeriodType;
    .registers 2

    .line 318
    iget-object v0, p0, Lorg/joda/time/base/BasePeriod;->iType:Lorg/joda/time/PeriodType;

    return-object v0
.end method

.method public getValue(I)I
    .registers 3

    .line 329
    iget-object v0, p0, Lorg/joda/time/base/BasePeriod;->iValues:[I

    aget p1, v0, p1

    return p1
.end method

.method protected mergePeriod(Lorg/joda/time/ReadablePeriod;)V
    .registers 3

    if-eqz p1, :cond_d

    .line 536
    invoke-virtual {p0}, Lorg/joda/time/base/BasePeriod;->getValues()[I

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/joda/time/base/BasePeriod;->mergePeriodInto([ILorg/joda/time/ReadablePeriod;)[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/joda/time/base/BasePeriod;->setValues([I)V

    :cond_d
    return-void
.end method

.method protected mergePeriodInto([ILorg/joda/time/ReadablePeriod;)[I
    .registers 7

    .line 549
    invoke-interface {p2}, Lorg/joda/time/ReadablePeriod;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_15

    .line 550
    invoke-interface {p2, v1}, Lorg/joda/time/ReadablePeriod;->getFieldType(I)Lorg/joda/time/DurationFieldType;

    move-result-object v2

    .line 551
    invoke-interface {p2, v1}, Lorg/joda/time/ReadablePeriod;->getValue(I)I

    move-result v3

    .line 552
    invoke-direct {p0, v2, p1, v3}, Lorg/joda/time/base/BasePeriod;->checkAndUpdate(Lorg/joda/time/DurationFieldType;[II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_15
    return-object p1
.end method

.method protected setField(Lorg/joda/time/DurationFieldType;I)V
    .registers 4

    .line 474
    iget-object v0, p0, Lorg/joda/time/base/BasePeriod;->iValues:[I

    invoke-virtual {p0, v0, p1, p2}, Lorg/joda/time/base/BasePeriod;->setFieldInto([ILorg/joda/time/DurationFieldType;I)V

    return-void
.end method

.method protected setFieldInto([ILorg/joda/time/DurationFieldType;I)V
    .registers 6

    .line 486
    invoke-virtual {p0, p2}, Lorg/joda/time/base/BasePeriod;->indexOf(Lorg/joda/time/DurationFieldType;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_27

    if-nez p3, :cond_b

    if-nez p2, :cond_29

    .line 489
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Period does not support field \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 493
    :cond_27
    aput p3, p1, v0

    :cond_29
    return-void
.end method

.method protected setPeriod(IIIIIIII)V
    .registers 9

    .line 444
    invoke-direct/range {p0 .. p8}, Lorg/joda/time/base/BasePeriod;->setPeriodInternal(IIIIIIII)[I

    move-result-object p1

    .line 445
    invoke-virtual {p0, p1}, Lorg/joda/time/base/BasePeriod;->setValues([I)V

    return-void
.end method

.method protected setPeriod(Lorg/joda/time/ReadablePeriod;)V
    .registers 2

    if-nez p1, :cond_c

    .line 410
    invoke-virtual {p0}, Lorg/joda/time/base/BasePeriod;->size()I

    move-result p1

    new-array p1, p1, [I

    invoke-virtual {p0, p1}, Lorg/joda/time/base/BasePeriod;->setValues([I)V

    goto :goto_f

    .line 412
    :cond_c
    invoke-direct {p0, p1}, Lorg/joda/time/base/BasePeriod;->setPeriodInternal(Lorg/joda/time/ReadablePeriod;)V

    :goto_f
    return-void
.end method

.method protected setValue(II)V
    .registers 4

    .line 603
    iget-object v0, p0, Lorg/joda/time/base/BasePeriod;->iValues:[I

    aput p2, v0, p1

    return-void
.end method

.method protected setValues([I)V
    .registers 5

    .line 616
    iget-object v0, p0, Lorg/joda/time/base/BasePeriod;->iValues:[I

    iget-object v1, p0, Lorg/joda/time/base/BasePeriod;->iValues:[I

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public toDurationFrom(Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Duration;
    .registers 6

    .line 350
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getInstantMillis(Lorg/joda/time/ReadableInstant;)J

    move-result-wide v0

    .line 351
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getInstantChronology(Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Chronology;

    move-result-object p1

    const/4 v2, 0x1

    .line 352
    invoke-virtual {p1, p0, v0, v1, v2}, Lorg/joda/time/Chronology;->add(Lorg/joda/time/ReadablePeriod;JI)J

    move-result-wide v2

    .line 353
    new-instance p1, Lorg/joda/time/Duration;

    invoke-direct {p1, v0, v1, v2, v3}, Lorg/joda/time/Duration;-><init>(JJ)V

    return-object p1
.end method

.method public toDurationTo(Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Duration;
    .registers 6

    .line 374
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getInstantMillis(Lorg/joda/time/ReadableInstant;)J

    move-result-wide v0

    .line 375
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getInstantChronology(Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Chronology;

    move-result-object p1

    const/4 v2, -0x1

    .line 376
    invoke-virtual {p1, p0, v0, v1, v2}, Lorg/joda/time/Chronology;->add(Lorg/joda/time/ReadablePeriod;JI)J

    move-result-wide v2

    .line 377
    new-instance p1, Lorg/joda/time/Duration;

    invoke-direct {p1, v2, v3, v0, v1}, Lorg/joda/time/Duration;-><init>(JJ)V

    return-object p1
.end method
