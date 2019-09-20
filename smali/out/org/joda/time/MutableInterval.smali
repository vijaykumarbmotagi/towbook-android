.class public Lorg/joda/time/MutableInterval;
.super Lorg/joda/time/base/BaseInterval;
.source "MutableInterval.java"

# interfaces
.implements Lorg/joda/time/ReadWritableInterval;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x530742c09b58b1b6L


# direct methods
.method public constructor <init>()V
    .registers 7

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 79
    invoke-direct/range {v0 .. v5}, Lorg/joda/time/base/BaseInterval;-><init>(JJLorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(JJ)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 90
    invoke-direct/range {v0 .. v5}, Lorg/joda/time/base/BaseInterval;-><init>(JJLorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(JJLorg/joda/time/Chronology;)V
    .registers 6

    .line 102
    invoke-direct/range {p0 .. p5}, Lorg/joda/time/base/BaseInterval;-><init>(JJLorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3

    const/4 v0, 0x0

    .line 186
    invoke-direct {p0, p1, v0}, Lorg/joda/time/base/BaseInterval;-><init>(Ljava/lang/Object;Lorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/joda/time/Chronology;)V
    .registers 3

    .line 205
    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BaseInterval;-><init>(Ljava/lang/Object;Lorg/joda/time/Chronology;)V

    return-void
.end method

.method public constructor <init>(Lorg/joda/time/ReadableDuration;Lorg/joda/time/ReadableInstant;)V
    .registers 3

    .line 139
    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BaseInterval;-><init>(Lorg/joda/time/ReadableDuration;Lorg/joda/time/ReadableInstant;)V

    return-void
.end method

.method public constructor <init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableDuration;)V
    .registers 3

    .line 127
    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BaseInterval;-><init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableDuration;)V

    return-void
.end method

.method public constructor <init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;)V
    .registers 3

    .line 115
    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BaseInterval;-><init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;)V

    return-void
.end method

.method public constructor <init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadablePeriod;)V
    .registers 3

    .line 154
    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BaseInterval;-><init>(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadablePeriod;)V

    return-void
.end method

.method public constructor <init>(Lorg/joda/time/ReadablePeriod;Lorg/joda/time/ReadableInstant;)V
    .registers 3

    .line 169
    invoke-direct {p0, p1, p2}, Lorg/joda/time/base/BaseInterval;-><init>(Lorg/joda/time/ReadablePeriod;Lorg/joda/time/ReadableInstant;)V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lorg/joda/time/MutableInterval;
    .registers 2

    .line 71
    new-instance v0, Lorg/joda/time/MutableInterval;

    invoke-direct {v0, p0}, Lorg/joda/time/MutableInterval;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .line 408
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 410
    :catch_5
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "Clone error"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public copy()Lorg/joda/time/MutableInterval;
    .registers 2

    .line 398
    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joda/time/MutableInterval;

    return-object v0
.end method

.method public setChronology(Lorg/joda/time/Chronology;)V
    .registers 8

    .line 263
    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->getStartMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->getEndMillis()J

    move-result-wide v3

    move-object v0, p0

    move-object v5, p1

    invoke-super/range {v0 .. v5}, Lorg/joda/time/base/BaseInterval;->setInterval(JJLorg/joda/time/Chronology;)V

    return-void
.end method

.method public setDurationAfterStart(J)V
    .registers 5

    .line 319
    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->getStartMillis()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lorg/joda/time/field/FieldUtils;->safeAdd(JJ)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/joda/time/MutableInterval;->setEndMillis(J)V

    return-void
.end method

.method public setDurationAfterStart(Lorg/joda/time/ReadableDuration;)V
    .registers 6

    .line 342
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getDurationMillis(Lorg/joda/time/ReadableDuration;)J

    move-result-wide v0

    .line 343
    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->getStartMillis()J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Lorg/joda/time/field/FieldUtils;->safeAdd(JJ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/MutableInterval;->setEndMillis(J)V

    return-void
.end method

.method public setDurationBeforeEnd(J)V
    .registers 5

    .line 330
    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->getEndMillis()J

    move-result-wide v0

    neg-long p1, p1

    invoke-static {v0, v1, p1, p2}, Lorg/joda/time/field/FieldUtils;->safeAdd(JJ)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lorg/joda/time/MutableInterval;->setStartMillis(J)V

    return-void
.end method

.method public setDurationBeforeEnd(Lorg/joda/time/ReadableDuration;)V
    .registers 6

    .line 354
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getDurationMillis(Lorg/joda/time/ReadableDuration;)J

    move-result-wide v0

    .line 355
    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->getEndMillis()J

    move-result-wide v2

    neg-long v0, v0

    invoke-static {v2, v3, v0, v1}, Lorg/joda/time/field/FieldUtils;->safeAdd(JJ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/MutableInterval;->setStartMillis(J)V

    return-void
.end method

.method public setEnd(Lorg/joda/time/ReadableInstant;)V
    .registers 8

    .line 306
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getInstantMillis(Lorg/joda/time/ReadableInstant;)J

    move-result-wide v3

    .line 307
    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->getStartMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v5

    move-object v0, p0

    invoke-super/range {v0 .. v5}, Lorg/joda/time/base/BaseInterval;->setInterval(JJLorg/joda/time/Chronology;)V

    return-void
.end method

.method public setEndMillis(J)V
    .registers 9

    .line 296
    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->getStartMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v5

    move-object v0, p0

    move-wide v3, p1

    invoke-super/range {v0 .. v5}, Lorg/joda/time/base/BaseInterval;->setInterval(JJLorg/joda/time/Chronology;)V

    return-void
.end method

.method public setInterval(JJ)V
    .registers 11

    .line 217
    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v5

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-super/range {v0 .. v5}, Lorg/joda/time/base/BaseInterval;->setInterval(JJLorg/joda/time/Chronology;)V

    return-void
.end method

.method public setInterval(Lorg/joda/time/ReadableInstant;Lorg/joda/time/ReadableInstant;)V
    .registers 9

    if-nez p1, :cond_c

    if-nez p2, :cond_c

    .line 246
    invoke-static {}, Lorg/joda/time/DateTimeUtils;->currentTimeMillis()J

    move-result-wide p1

    .line 247
    invoke-virtual {p0, p1, p2, p1, p2}, Lorg/joda/time/MutableInterval;->setInterval(JJ)V

    goto :goto_1c

    .line 249
    :cond_c
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getInstantMillis(Lorg/joda/time/ReadableInstant;)J

    move-result-wide v1

    .line 250
    invoke-static {p2}, Lorg/joda/time/DateTimeUtils;->getInstantMillis(Lorg/joda/time/ReadableInstant;)J

    move-result-wide v3

    .line 251
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getInstantChronology(Lorg/joda/time/ReadableInstant;)Lorg/joda/time/Chronology;

    move-result-object v5

    move-object v0, p0

    .line 252
    invoke-super/range {v0 .. v5}, Lorg/joda/time/base/BaseInterval;->setInterval(JJLorg/joda/time/Chronology;)V

    :goto_1c
    return-void
.end method

.method public setInterval(Lorg/joda/time/ReadableInterval;)V
    .registers 9

    if-nez p1, :cond_a

    .line 228
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Interval must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 230
    :cond_a
    invoke-interface {p1}, Lorg/joda/time/ReadableInterval;->getStartMillis()J

    move-result-wide v2

    .line 231
    invoke-interface {p1}, Lorg/joda/time/ReadableInterval;->getEndMillis()J

    move-result-wide v4

    .line 232
    invoke-interface {p1}, Lorg/joda/time/ReadableInterval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v6

    move-object v1, p0

    .line 233
    invoke-super/range {v1 .. v6}, Lorg/joda/time/base/BaseInterval;->setInterval(JJLorg/joda/time/Chronology;)V

    return-void
.end method

.method public setPeriodAfterStart(Lorg/joda/time/ReadablePeriod;)V
    .registers 6

    if-nez p1, :cond_a

    .line 369
    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->getStartMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/MutableInterval;->setEndMillis(J)V

    goto :goto_1a

    .line 371
    :cond_a
    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->getStartMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v1, v2, v3}, Lorg/joda/time/Chronology;->add(Lorg/joda/time/ReadablePeriod;JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/MutableInterval;->setEndMillis(J)V

    :goto_1a
    return-void
.end method

.method public setPeriodBeforeEnd(Lorg/joda/time/ReadablePeriod;)V
    .registers 6

    if-nez p1, :cond_a

    .line 385
    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->getEndMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/MutableInterval;->setStartMillis(J)V

    goto :goto_1a

    .line 387
    :cond_a
    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->getEndMillis()J

    move-result-wide v1

    const/4 v3, -0x1

    invoke-virtual {v0, p1, v1, v2, v3}, Lorg/joda/time/Chronology;->add(Lorg/joda/time/ReadablePeriod;JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/MutableInterval;->setStartMillis(J)V

    :goto_1a
    return-void
.end method

.method public setStart(Lorg/joda/time/ReadableInstant;)V
    .registers 8

    .line 284
    invoke-static {p1}, Lorg/joda/time/DateTimeUtils;->getInstantMillis(Lorg/joda/time/ReadableInstant;)J

    move-result-wide v1

    .line 285
    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->getEndMillis()J

    move-result-wide v3

    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v5

    move-object v0, p0

    invoke-super/range {v0 .. v5}, Lorg/joda/time/base/BaseInterval;->setInterval(JJLorg/joda/time/Chronology;)V

    return-void
.end method

.method public setStartMillis(J)V
    .registers 9

    .line 274
    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->getEndMillis()J

    move-result-wide v3

    invoke-virtual {p0}, Lorg/joda/time/MutableInterval;->getChronology()Lorg/joda/time/Chronology;

    move-result-object v5

    move-object v0, p0

    move-wide v1, p1

    invoke-super/range {v0 .. v5}, Lorg/joda/time/base/BaseInterval;->setInterval(JJLorg/joda/time/Chronology;)V

    return-void
.end method
