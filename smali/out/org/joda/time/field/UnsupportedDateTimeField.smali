.class public final Lorg/joda/time/field/UnsupportedDateTimeField;
.super Lorg/joda/time/DateTimeField;
.source "UnsupportedDateTimeField.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static cCache:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/joda/time/DateTimeFieldType;",
            "Lorg/joda/time/field/UnsupportedDateTimeField;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x1ad9252e642f962fL


# instance fields
.field private final iDurationField:Lorg/joda/time/DurationField;

.field private final iType:Lorg/joda/time/DateTimeFieldType;


# direct methods
.method private constructor <init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DurationField;)V
    .registers 3

    .line 82
    invoke-direct {p0}, Lorg/joda/time/DateTimeField;-><init>()V

    if-eqz p1, :cond_d

    if-nez p2, :cond_8

    goto :goto_d

    .line 86
    :cond_8
    iput-object p1, p0, Lorg/joda/time/field/UnsupportedDateTimeField;->iType:Lorg/joda/time/DateTimeFieldType;

    .line 87
    iput-object p2, p0, Lorg/joda/time/field/UnsupportedDateTimeField;->iDurationField:Lorg/joda/time/DurationField;

    return-void

    .line 84
    :cond_d
    :goto_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public static declared-synchronized getInstance(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DurationField;)Lorg/joda/time/field/UnsupportedDateTimeField;
    .registers 6

    const-class v0, Lorg/joda/time/field/UnsupportedDateTimeField;

    monitor-enter v0

    .line 55
    :try_start_3
    sget-object v1, Lorg/joda/time/field/UnsupportedDateTimeField;->cCache:Ljava/util/HashMap;

    const/4 v2, 0x0

    if-nez v1, :cond_11

    .line 56
    new-instance v1, Ljava/util/HashMap;

    const/4 v3, 0x7

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Lorg/joda/time/field/UnsupportedDateTimeField;->cCache:Ljava/util/HashMap;

    goto :goto_23

    .line 59
    :cond_11
    sget-object v1, Lorg/joda/time/field/UnsupportedDateTimeField;->cCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/joda/time/field/UnsupportedDateTimeField;

    if-eqz v1, :cond_22

    .line 60
    invoke-virtual {v1}, Lorg/joda/time/field/UnsupportedDateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    move-result-object v3

    if-eq v3, p1, :cond_22

    goto :goto_23

    :cond_22
    move-object v2, v1

    :goto_23
    if-nez v2, :cond_2f

    .line 65
    new-instance v2, Lorg/joda/time/field/UnsupportedDateTimeField;

    invoke-direct {v2, p0, p1}, Lorg/joda/time/field/UnsupportedDateTimeField;-><init>(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DurationField;)V

    .line 66
    sget-object p1, Lorg/joda/time/field/UnsupportedDateTimeField;->cCache:Ljava/util/HashMap;

    invoke-virtual {p1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_31

    .line 68
    :cond_2f
    monitor-exit v0

    return-object v2

    :catchall_31
    move-exception p0

    .line 54
    monitor-exit v0

    throw p0
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 3

    .line 540
    iget-object v0, p0, Lorg/joda/time/field/UnsupportedDateTimeField;->iType:Lorg/joda/time/DateTimeFieldType;

    iget-object v1, p0, Lorg/joda/time/field/UnsupportedDateTimeField;->iDurationField:Lorg/joda/time/DurationField;

    invoke-static {v0, v1}, Lorg/joda/time/field/UnsupportedDateTimeField;->getInstance(Lorg/joda/time/DateTimeFieldType;Lorg/joda/time/DurationField;)Lorg/joda/time/field/UnsupportedDateTimeField;

    move-result-object v0

    return-object v0
.end method

.method private unsupported()Ljava/lang/UnsupportedOperationException;
    .registers 4

    .line 544
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/joda/time/field/UnsupportedDateTimeField;->iType:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " field is unsupported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public add(JI)J
    .registers 5

    .line 225
    invoke-virtual {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/DurationField;->add(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public add(JJ)J
    .registers 6

    .line 234
    invoke-virtual {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DurationField;->add(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public add(Lorg/joda/time/ReadablePartial;I[II)[I
    .registers 5

    .line 243
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public addWrapField(JI)J
    .registers 4

    .line 261
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public addWrapField(Lorg/joda/time/ReadablePartial;I[II)[I
    .registers 5

    .line 270
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public addWrapPartial(Lorg/joda/time/ReadablePartial;I[II)[I
    .registers 5

    .line 252
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public get(J)I
    .registers 3

    .line 126
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public getAsShortText(ILjava/util/Locale;)Ljava/lang/String;
    .registers 3

    .line 216
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public getAsShortText(J)Ljava/lang/String;
    .registers 3

    .line 189
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public getAsShortText(JLjava/util/Locale;)Ljava/lang/String;
    .registers 4

    .line 180
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public getAsShortText(Lorg/joda/time/ReadablePartial;ILjava/util/Locale;)Ljava/lang/String;
    .registers 4

    .line 198
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public getAsShortText(Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)Ljava/lang/String;
    .registers 3

    .line 207
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public getAsText(ILjava/util/Locale;)Ljava/lang/String;
    .registers 3

    .line 171
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public getAsText(J)Ljava/lang/String;
    .registers 3

    .line 144
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public getAsText(JLjava/util/Locale;)Ljava/lang/String;
    .registers 4

    .line 135
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public getAsText(Lorg/joda/time/ReadablePartial;ILjava/util/Locale;)Ljava/lang/String;
    .registers 4

    .line 153
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public getAsText(Lorg/joda/time/ReadablePartial;Ljava/util/Locale;)Ljava/lang/String;
    .registers 3

    .line 162
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public getDifference(JJ)I
    .registers 6

    .line 279
    invoke-virtual {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DurationField;->getDifference(JJ)I

    move-result p1

    return p1
.end method

.method public getDifferenceAsLong(JJ)J
    .registers 6

    .line 288
    invoke-virtual {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->getDurationField()Lorg/joda/time/DurationField;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/DurationField;->getDifferenceAsLong(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public getDurationField()Lorg/joda/time/DurationField;
    .registers 2

    .line 343
    iget-object v0, p0, Lorg/joda/time/field/UnsupportedDateTimeField;->iDurationField:Lorg/joda/time/DurationField;

    return-object v0
.end method

.method public getLeapAmount(J)I
    .registers 3

    .line 370
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public getLeapDurationField()Lorg/joda/time/DurationField;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMaximumShortTextLength(Ljava/util/Locale;)I
    .registers 2

    .line 469
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public getMaximumTextLength(Ljava/util/Locale;)I
    .registers 2

    .line 460
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public getMaximumValue()I
    .registers 2

    .line 424
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public getMaximumValue(J)I
    .registers 3

    .line 433
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public getMaximumValue(Lorg/joda/time/ReadablePartial;)I
    .registers 2

    .line 442
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public getMaximumValue(Lorg/joda/time/ReadablePartial;[I)I
    .registers 3

    .line 451
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public getMinimumValue()I
    .registers 2

    .line 388
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public getMinimumValue(J)I
    .registers 3

    .line 397
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public getMinimumValue(Lorg/joda/time/ReadablePartial;)I
    .registers 2

    .line 406
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public getMinimumValue(Lorg/joda/time/ReadablePartial;[I)I
    .registers 3

    .line 415
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 99
    iget-object v0, p0, Lorg/joda/time/field/UnsupportedDateTimeField;->iType:Lorg/joda/time/DateTimeFieldType;

    invoke-virtual {v0}, Lorg/joda/time/DateTimeFieldType;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRangeDurationField()Lorg/joda/time/DurationField;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Lorg/joda/time/DateTimeFieldType;
    .registers 2

    .line 95
    iget-object v0, p0, Lorg/joda/time/field/UnsupportedDateTimeField;->iType:Lorg/joda/time/DateTimeFieldType;

    return-object v0
.end method

.method public isLeap(J)Z
    .registers 3

    .line 361
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public isLenient()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isSupported()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public remainder(J)J
    .registers 3

    .line 523
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public roundCeiling(J)J
    .registers 3

    .line 487
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public roundFloor(J)J
    .registers 3

    .line 478
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public roundHalfCeiling(J)J
    .registers 3

    .line 505
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public roundHalfEven(J)J
    .registers 3

    .line 514
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public roundHalfFloor(J)J
    .registers 3

    .line 496
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public set(JI)J
    .registers 4

    .line 297
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public set(JLjava/lang/String;)J
    .registers 4

    .line 324
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public set(JLjava/lang/String;Ljava/util/Locale;)J
    .registers 5

    .line 315
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public set(Lorg/joda/time/ReadablePartial;I[II)[I
    .registers 5

    .line 306
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public set(Lorg/joda/time/ReadablePartial;I[ILjava/lang/String;Ljava/util/Locale;)[I
    .registers 6

    .line 333
    invoke-direct {p0}, Lorg/joda/time/field/UnsupportedDateTimeField;->unsupported()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "UnsupportedDateTimeField"

    return-object v0
.end method
