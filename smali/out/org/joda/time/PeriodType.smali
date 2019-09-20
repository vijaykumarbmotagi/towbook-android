.class public Lorg/joda/time/PeriodType;
.super Ljava/lang/Object;
.source "PeriodType.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static DAY_INDEX:I = 0x3

.field static HOUR_INDEX:I = 0x4

.field static MILLI_INDEX:I = 0x7

.field static MINUTE_INDEX:I = 0x5

.field static MONTH_INDEX:I = 0x1

.field static SECOND_INDEX:I = 0x6

.field static WEEK_INDEX:I = 0x2

.field static YEAR_INDEX:I = 0x0

.field private static cDTime:Lorg/joda/time/PeriodType; = null

.field private static cDays:Lorg/joda/time/PeriodType; = null

.field private static cHours:Lorg/joda/time/PeriodType; = null

.field private static cMillis:Lorg/joda/time/PeriodType; = null

.field private static cMinutes:Lorg/joda/time/PeriodType; = null

.field private static cMonths:Lorg/joda/time/PeriodType; = null

.field private static cSeconds:Lorg/joda/time/PeriodType; = null

.field private static cStandard:Lorg/joda/time/PeriodType; = null

.field private static cTime:Lorg/joda/time/PeriodType; = null

.field private static final cTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/joda/time/PeriodType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static cWeeks:Lorg/joda/time/PeriodType; = null

.field private static cYD:Lorg/joda/time/PeriodType; = null

.field private static cYDTime:Lorg/joda/time/PeriodType; = null

.field private static cYMD:Lorg/joda/time/PeriodType; = null

.field private static cYMDTime:Lorg/joda/time/PeriodType; = null

.field private static cYWD:Lorg/joda/time/PeriodType; = null

.field private static cYWDTime:Lorg/joda/time/PeriodType; = null

.field private static cYears:Lorg/joda/time/PeriodType; = null

.field private static final serialVersionUID:J = 0x1f900670aab2350eL


# instance fields
.field private final iIndices:[I

.field private final iName:Ljava/lang/String;

.field private final iTypes:[Lorg/joda/time/DurationFieldType;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 56
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/joda/time/PeriodType;->cTypes:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;[Lorg/joda/time/DurationFieldType;[I)V
    .registers 4

    .line 595
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 596
    iput-object p1, p0, Lorg/joda/time/PeriodType;->iName:Ljava/lang/String;

    .line 597
    iput-object p2, p0, Lorg/joda/time/PeriodType;->iTypes:[Lorg/joda/time/DurationFieldType;

    .line 598
    iput-object p3, p0, Lorg/joda/time/PeriodType;->iIndices:[I

    return-void
.end method

.method public static dayTime()Lorg/joda/time/PeriodType;
    .registers 5

    .line 305
    sget-object v0, Lorg/joda/time/PeriodType;->cDTime:Lorg/joda/time/PeriodType;

    if-nez v0, :cond_3a

    .line 307
    new-instance v0, Lorg/joda/time/PeriodType;

    const-string v1, "DayTime"

    const/4 v2, 0x5

    new-array v2, v2, [Lorg/joda/time/DurationFieldType;

    const/4 v3, 0x0

    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Lorg/joda/time/DurationFieldType;->hours()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {}, Lorg/joda/time/DurationFieldType;->minutes()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {}, Lorg/joda/time/DurationFieldType;->seconds()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {}, Lorg/joda/time/DurationFieldType;->millis()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_3c

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/PeriodType;-><init>(Ljava/lang/String;[Lorg/joda/time/DurationFieldType;[I)V

    .line 316
    sput-object v0, Lorg/joda/time/PeriodType;->cDTime:Lorg/joda/time/PeriodType;

    :cond_3a
    return-object v0

    nop

    :array_3c
    .array-data 4
        -0x1
        -0x1
        -0x1
        0x0
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method public static days()Lorg/joda/time/PeriodType;
    .registers 5

    .line 408
    sget-object v0, Lorg/joda/time/PeriodType;->cDays:Lorg/joda/time/PeriodType;

    if-nez v0, :cond_1e

    .line 410
    new-instance v0, Lorg/joda/time/PeriodType;

    const-string v1, "Days"

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/joda/time/DurationFieldType;

    const/4 v3, 0x0

    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_20

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/PeriodType;-><init>(Ljava/lang/String;[Lorg/joda/time/DurationFieldType;[I)V

    .line 415
    sput-object v0, Lorg/joda/time/PeriodType;->cDays:Lorg/joda/time/PeriodType;

    :cond_1e
    return-object v0

    nop

    :array_20
    .array-data 4
        -0x1
        -0x1
        -0x1
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public static declared-synchronized forFields([Lorg/joda/time/DurationFieldType;)Lorg/joda/time/PeriodType;
    .registers 7

    const-class v0, Lorg/joda/time/PeriodType;

    monitor-enter v0

    if-eqz p0, :cond_1c3

    .line 502
    :try_start_5
    array-length v1, p0

    if-nez v1, :cond_a

    goto/16 :goto_1c3

    :cond_a
    const/4 v1, 0x0

    .line 505
    :goto_b
    array-length v2, p0

    if-ge v1, v2, :cond_1d

    .line 506
    aget-object v2, p0, v1

    if-nez v2, :cond_1a

    .line 507
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Types array must not contain null"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 510
    :cond_1d
    sget-object v1, Lorg/joda/time/PeriodType;->cTypes:Ljava/util/Map;

    .line 511
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e0

    .line 512
    invoke-static {}, Lorg/joda/time/PeriodType;->standard()Lorg/joda/time/PeriodType;

    move-result-object v2

    invoke-static {}, Lorg/joda/time/PeriodType;->standard()Lorg/joda/time/PeriodType;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    invoke-static {}, Lorg/joda/time/PeriodType;->yearMonthDayTime()Lorg/joda/time/PeriodType;

    move-result-object v2

    invoke-static {}, Lorg/joda/time/PeriodType;->yearMonthDayTime()Lorg/joda/time/PeriodType;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    invoke-static {}, Lorg/joda/time/PeriodType;->yearMonthDay()Lorg/joda/time/PeriodType;

    move-result-object v2

    invoke-static {}, Lorg/joda/time/PeriodType;->yearMonthDay()Lorg/joda/time/PeriodType;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    invoke-static {}, Lorg/joda/time/PeriodType;->yearWeekDayTime()Lorg/joda/time/PeriodType;

    move-result-object v2

    invoke-static {}, Lorg/joda/time/PeriodType;->yearWeekDayTime()Lorg/joda/time/PeriodType;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    invoke-static {}, Lorg/joda/time/PeriodType;->yearWeekDay()Lorg/joda/time/PeriodType;

    move-result-object v2

    invoke-static {}, Lorg/joda/time/PeriodType;->yearWeekDay()Lorg/joda/time/PeriodType;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    invoke-static {}, Lorg/joda/time/PeriodType;->yearDayTime()Lorg/joda/time/PeriodType;

    move-result-object v2

    invoke-static {}, Lorg/joda/time/PeriodType;->yearDayTime()Lorg/joda/time/PeriodType;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    invoke-static {}, Lorg/joda/time/PeriodType;->yearDay()Lorg/joda/time/PeriodType;

    move-result-object v2

    invoke-static {}, Lorg/joda/time/PeriodType;->yearDay()Lorg/joda/time/PeriodType;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    invoke-static {}, Lorg/joda/time/PeriodType;->dayTime()Lorg/joda/time/PeriodType;

    move-result-object v2

    invoke-static {}, Lorg/joda/time/PeriodType;->dayTime()Lorg/joda/time/PeriodType;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    invoke-static {}, Lorg/joda/time/PeriodType;->time()Lorg/joda/time/PeriodType;

    move-result-object v2

    invoke-static {}, Lorg/joda/time/PeriodType;->time()Lorg/joda/time/PeriodType;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    invoke-static {}, Lorg/joda/time/PeriodType;->years()Lorg/joda/time/PeriodType;

    move-result-object v2

    invoke-static {}, Lorg/joda/time/PeriodType;->years()Lorg/joda/time/PeriodType;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    invoke-static {}, Lorg/joda/time/PeriodType;->months()Lorg/joda/time/PeriodType;

    move-result-object v2

    invoke-static {}, Lorg/joda/time/PeriodType;->months()Lorg/joda/time/PeriodType;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    invoke-static {}, Lorg/joda/time/PeriodType;->weeks()Lorg/joda/time/PeriodType;

    move-result-object v2

    invoke-static {}, Lorg/joda/time/PeriodType;->weeks()Lorg/joda/time/PeriodType;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    invoke-static {}, Lorg/joda/time/PeriodType;->days()Lorg/joda/time/PeriodType;

    move-result-object v2

    invoke-static {}, Lorg/joda/time/PeriodType;->days()Lorg/joda/time/PeriodType;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    invoke-static {}, Lorg/joda/time/PeriodType;->hours()Lorg/joda/time/PeriodType;

    move-result-object v2

    invoke-static {}, Lorg/joda/time/PeriodType;->hours()Lorg/joda/time/PeriodType;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    invoke-static {}, Lorg/joda/time/PeriodType;->minutes()Lorg/joda/time/PeriodType;

    move-result-object v2

    invoke-static {}, Lorg/joda/time/PeriodType;->minutes()Lorg/joda/time/PeriodType;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    invoke-static {}, Lorg/joda/time/PeriodType;->seconds()Lorg/joda/time/PeriodType;

    move-result-object v2

    invoke-static {}, Lorg/joda/time/PeriodType;->seconds()Lorg/joda/time/PeriodType;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    invoke-static {}, Lorg/joda/time/PeriodType;->millis()Lorg/joda/time/PeriodType;

    move-result-object v2

    invoke-static {}, Lorg/joda/time/PeriodType;->millis()Lorg/joda/time/PeriodType;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    :cond_e0
    new-instance v2, Lorg/joda/time/PeriodType;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0, v3}, Lorg/joda/time/PeriodType;-><init>(Ljava/lang/String;[Lorg/joda/time/DurationFieldType;[I)V

    .line 531
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 532
    instance-of v5, v4, Lorg/joda/time/PeriodType;

    if-eqz v5, :cond_f2

    .line 533
    check-cast v4, Lorg/joda/time/PeriodType;
    :try_end_f0
    .catchall {:try_start_5 .. :try_end_f0} :catchall_1c1

    monitor-exit v0

    return-object v4

    :cond_f2
    if-eqz v4, :cond_10b

    .line 536
    :try_start_f4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PeriodType does not support fields: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 538
    :cond_10b
    invoke-static {}, Lorg/joda/time/PeriodType;->standard()Lorg/joda/time/PeriodType;

    move-result-object v4

    .line 539
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v5, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 540
    invoke-static {}, Lorg/joda/time/DurationFieldType;->years()Lorg/joda/time/DurationFieldType;

    move-result-object p0

    invoke-interface {v5, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_126

    .line 541
    invoke-virtual {v4}, Lorg/joda/time/PeriodType;->withYearsRemoved()Lorg/joda/time/PeriodType;

    move-result-object v4

    .line 543
    :cond_126
    invoke-static {}, Lorg/joda/time/DurationFieldType;->months()Lorg/joda/time/DurationFieldType;

    move-result-object p0

    invoke-interface {v5, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_134

    .line 544
    invoke-virtual {v4}, Lorg/joda/time/PeriodType;->withMonthsRemoved()Lorg/joda/time/PeriodType;

    move-result-object v4

    .line 546
    :cond_134
    invoke-static {}, Lorg/joda/time/DurationFieldType;->weeks()Lorg/joda/time/DurationFieldType;

    move-result-object p0

    invoke-interface {v5, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_142

    .line 547
    invoke-virtual {v4}, Lorg/joda/time/PeriodType;->withWeeksRemoved()Lorg/joda/time/PeriodType;

    move-result-object v4

    .line 549
    :cond_142
    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    move-result-object p0

    invoke-interface {v5, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_150

    .line 550
    invoke-virtual {v4}, Lorg/joda/time/PeriodType;->withDaysRemoved()Lorg/joda/time/PeriodType;

    move-result-object v4

    .line 552
    :cond_150
    invoke-static {}, Lorg/joda/time/DurationFieldType;->hours()Lorg/joda/time/DurationFieldType;

    move-result-object p0

    invoke-interface {v5, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15e

    .line 553
    invoke-virtual {v4}, Lorg/joda/time/PeriodType;->withHoursRemoved()Lorg/joda/time/PeriodType;

    move-result-object v4

    .line 555
    :cond_15e
    invoke-static {}, Lorg/joda/time/DurationFieldType;->minutes()Lorg/joda/time/DurationFieldType;

    move-result-object p0

    invoke-interface {v5, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16c

    .line 556
    invoke-virtual {v4}, Lorg/joda/time/PeriodType;->withMinutesRemoved()Lorg/joda/time/PeriodType;

    move-result-object v4

    .line 558
    :cond_16c
    invoke-static {}, Lorg/joda/time/DurationFieldType;->seconds()Lorg/joda/time/DurationFieldType;

    move-result-object p0

    invoke-interface {v5, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17a

    .line 559
    invoke-virtual {v4}, Lorg/joda/time/PeriodType;->withSecondsRemoved()Lorg/joda/time/PeriodType;

    move-result-object v4

    .line 561
    :cond_17a
    invoke-static {}, Lorg/joda/time/DurationFieldType;->millis()Lorg/joda/time/DurationFieldType;

    move-result-object p0

    invoke-interface {v5, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_188

    .line 562
    invoke-virtual {v4}, Lorg/joda/time/PeriodType;->withMillisRemoved()Lorg/joda/time/PeriodType;

    move-result-object v4

    .line 564
    :cond_188
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_1a8

    .line 565
    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PeriodType does not support fields: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 569
    :cond_1a8
    new-instance p0, Lorg/joda/time/PeriodType;

    iget-object v2, v4, Lorg/joda/time/PeriodType;->iTypes:[Lorg/joda/time/DurationFieldType;

    invoke-direct {p0, v3, v2, v3}, Lorg/joda/time/PeriodType;-><init>(Ljava/lang/String;[Lorg/joda/time/DurationFieldType;[I)V

    .line 570
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/joda/time/PeriodType;

    if-eqz v2, :cond_1bc

    .line 572
    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1ba
    .catchall {:try_start_f4 .. :try_end_1ba} :catchall_1c1

    .line 573
    monitor-exit v0

    return-object v2

    .line 575
    :cond_1bc
    :try_start_1bc
    invoke-interface {v1, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1bf
    .catchall {:try_start_1bc .. :try_end_1bf} :catchall_1c1

    .line 576
    monitor-exit v0

    return-object v4

    :catchall_1c1
    move-exception p0

    goto :goto_1cb

    .line 503
    :cond_1c3
    :goto_1c3
    :try_start_1c3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Types array must not be null or empty"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1cb
    .catchall {:try_start_1c3 .. :try_end_1cb} :catchall_1c1

    .line 501
    :goto_1cb
    monitor-exit v0

    throw p0
.end method

.method public static hours()Lorg/joda/time/PeriodType;
    .registers 5

    .line 426
    sget-object v0, Lorg/joda/time/PeriodType;->cHours:Lorg/joda/time/PeriodType;

    if-nez v0, :cond_1e

    .line 428
    new-instance v0, Lorg/joda/time/PeriodType;

    const-string v1, "Hours"

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/joda/time/DurationFieldType;

    const/4 v3, 0x0

    invoke-static {}, Lorg/joda/time/DurationFieldType;->hours()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_20

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/PeriodType;-><init>(Ljava/lang/String;[Lorg/joda/time/DurationFieldType;[I)V

    .line 433
    sput-object v0, Lorg/joda/time/PeriodType;->cHours:Lorg/joda/time/PeriodType;

    :cond_1e
    return-object v0

    nop

    :array_20
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        0x0
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public static millis()Lorg/joda/time/PeriodType;
    .registers 5

    .line 480
    sget-object v0, Lorg/joda/time/PeriodType;->cMillis:Lorg/joda/time/PeriodType;

    if-nez v0, :cond_1e

    .line 482
    new-instance v0, Lorg/joda/time/PeriodType;

    const-string v1, "Millis"

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/joda/time/DurationFieldType;

    const/4 v3, 0x0

    invoke-static {}, Lorg/joda/time/DurationFieldType;->millis()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_20

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/PeriodType;-><init>(Ljava/lang/String;[Lorg/joda/time/DurationFieldType;[I)V

    .line 487
    sput-object v0, Lorg/joda/time/PeriodType;->cMillis:Lorg/joda/time/PeriodType;

    :cond_1e
    return-object v0

    nop

    :array_20
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x0
    .end array-data
.end method

.method public static minutes()Lorg/joda/time/PeriodType;
    .registers 5

    .line 444
    sget-object v0, Lorg/joda/time/PeriodType;->cMinutes:Lorg/joda/time/PeriodType;

    if-nez v0, :cond_1e

    .line 446
    new-instance v0, Lorg/joda/time/PeriodType;

    const-string v1, "Minutes"

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/joda/time/DurationFieldType;

    const/4 v3, 0x0

    invoke-static {}, Lorg/joda/time/DurationFieldType;->minutes()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_20

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/PeriodType;-><init>(Ljava/lang/String;[Lorg/joda/time/DurationFieldType;[I)V

    .line 451
    sput-object v0, Lorg/joda/time/PeriodType;->cMinutes:Lorg/joda/time/PeriodType;

    :cond_1e
    return-object v0

    nop

    :array_20
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x0
        -0x1
        -0x1
    .end array-data
.end method

.method public static months()Lorg/joda/time/PeriodType;
    .registers 5

    .line 372
    sget-object v0, Lorg/joda/time/PeriodType;->cMonths:Lorg/joda/time/PeriodType;

    if-nez v0, :cond_1e

    .line 374
    new-instance v0, Lorg/joda/time/PeriodType;

    const-string v1, "Months"

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/joda/time/DurationFieldType;

    const/4 v3, 0x0

    invoke-static {}, Lorg/joda/time/DurationFieldType;->months()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_20

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/PeriodType;-><init>(Ljava/lang/String;[Lorg/joda/time/DurationFieldType;[I)V

    .line 379
    sput-object v0, Lorg/joda/time/PeriodType;->cMonths:Lorg/joda/time/PeriodType;

    :cond_1e
    return-object v0

    nop

    :array_20
    .array-data 4
        -0x1
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public static seconds()Lorg/joda/time/PeriodType;
    .registers 5

    .line 462
    sget-object v0, Lorg/joda/time/PeriodType;->cSeconds:Lorg/joda/time/PeriodType;

    if-nez v0, :cond_1e

    .line 464
    new-instance v0, Lorg/joda/time/PeriodType;

    const-string v1, "Seconds"

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/joda/time/DurationFieldType;

    const/4 v3, 0x0

    invoke-static {}, Lorg/joda/time/DurationFieldType;->seconds()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_20

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/PeriodType;-><init>(Ljava/lang/String;[Lorg/joda/time/DurationFieldType;[I)V

    .line 469
    sput-object v0, Lorg/joda/time/PeriodType;->cSeconds:Lorg/joda/time/PeriodType;

    :cond_1e
    return-object v0

    nop

    :array_20
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x0
        -0x1
    .end array-data
.end method

.method public static standard()Lorg/joda/time/PeriodType;
    .registers 6

    .line 102
    sget-object v0, Lorg/joda/time/PeriodType;->cStandard:Lorg/joda/time/PeriodType;

    if-nez v0, :cond_4e

    .line 104
    new-instance v0, Lorg/joda/time/PeriodType;

    const-string v1, "Standard"

    const/16 v2, 0x8

    new-array v3, v2, [Lorg/joda/time/DurationFieldType;

    const/4 v4, 0x0

    invoke-static {}, Lorg/joda/time/DurationFieldType;->years()Lorg/joda/time/DurationFieldType;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {}, Lorg/joda/time/DurationFieldType;->months()Lorg/joda/time/DurationFieldType;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {}, Lorg/joda/time/DurationFieldType;->weeks()Lorg/joda/time/DurationFieldType;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {}, Lorg/joda/time/DurationFieldType;->hours()Lorg/joda/time/DurationFieldType;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-static {}, Lorg/joda/time/DurationFieldType;->minutes()Lorg/joda/time/DurationFieldType;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    invoke-static {}, Lorg/joda/time/DurationFieldType;->seconds()Lorg/joda/time/DurationFieldType;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x7

    invoke-static {}, Lorg/joda/time/DurationFieldType;->millis()Lorg/joda/time/DurationFieldType;

    move-result-object v5

    aput-object v5, v3, v4

    new-array v2, v2, [I

    fill-array-data v2, :array_50

    invoke-direct {v0, v1, v3, v2}, Lorg/joda/time/PeriodType;-><init>(Ljava/lang/String;[Lorg/joda/time/DurationFieldType;[I)V

    .line 114
    sput-object v0, Lorg/joda/time/PeriodType;->cStandard:Lorg/joda/time/PeriodType;

    :cond_4e
    return-object v0

    nop

    :array_50
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method public static time()Lorg/joda/time/PeriodType;
    .registers 5

    .line 333
    sget-object v0, Lorg/joda/time/PeriodType;->cTime:Lorg/joda/time/PeriodType;

    if-nez v0, :cond_33

    .line 335
    new-instance v0, Lorg/joda/time/PeriodType;

    const-string v1, "Time"

    const/4 v2, 0x4

    new-array v2, v2, [Lorg/joda/time/DurationFieldType;

    const/4 v3, 0x0

    invoke-static {}, Lorg/joda/time/DurationFieldType;->hours()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Lorg/joda/time/DurationFieldType;->minutes()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {}, Lorg/joda/time/DurationFieldType;->seconds()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {}, Lorg/joda/time/DurationFieldType;->millis()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_34

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/PeriodType;-><init>(Ljava/lang/String;[Lorg/joda/time/DurationFieldType;[I)V

    .line 343
    sput-object v0, Lorg/joda/time/PeriodType;->cTime:Lorg/joda/time/PeriodType;

    :cond_33
    return-object v0

    :array_34
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        0x0
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public static weeks()Lorg/joda/time/PeriodType;
    .registers 5

    .line 390
    sget-object v0, Lorg/joda/time/PeriodType;->cWeeks:Lorg/joda/time/PeriodType;

    if-nez v0, :cond_1e

    .line 392
    new-instance v0, Lorg/joda/time/PeriodType;

    const-string v1, "Weeks"

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/joda/time/DurationFieldType;

    const/4 v3, 0x0

    invoke-static {}, Lorg/joda/time/DurationFieldType;->weeks()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_20

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/PeriodType;-><init>(Ljava/lang/String;[Lorg/joda/time/DurationFieldType;[I)V

    .line 397
    sput-object v0, Lorg/joda/time/PeriodType;->cWeeks:Lorg/joda/time/PeriodType;

    :cond_1e
    return-object v0

    nop

    :array_20
    .array-data 4
        -0x1
        -0x1
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method private withFieldRemoved(ILjava/lang/String;)Lorg/joda/time/PeriodType;
    .registers 10

    .line 799
    iget-object v0, p0, Lorg/joda/time/PeriodType;->iIndices:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    return-object p0

    .line 804
    :cond_8
    invoke-virtual {p0}, Lorg/joda/time/PeriodType;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    new-array v2, v2, [Lorg/joda/time/DurationFieldType;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 805
    :goto_12
    iget-object v5, p0, Lorg/joda/time/PeriodType;->iTypes:[Lorg/joda/time/DurationFieldType;

    array-length v5, v5

    if-ge v4, v5, :cond_2d

    if-ge v4, v0, :cond_20

    .line 807
    iget-object v5, p0, Lorg/joda/time/PeriodType;->iTypes:[Lorg/joda/time/DurationFieldType;

    aget-object v5, v5, v4

    aput-object v5, v2, v4

    goto :goto_2a

    :cond_20
    if-le v4, v0, :cond_2a

    add-int/lit8 v5, v4, -0x1

    .line 809
    iget-object v6, p0, Lorg/joda/time/PeriodType;->iTypes:[Lorg/joda/time/DurationFieldType;

    aget-object v6, v6, v4

    aput-object v6, v2, v5

    :cond_2a
    :goto_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_2d
    const/16 v0, 0x8

    .line 813
    new-array v0, v0, [I

    .line 814
    :goto_31
    array-length v4, v0

    if-ge v3, v4, :cond_55

    if-ge v3, p1, :cond_3d

    .line 816
    iget-object v4, p0, Lorg/joda/time/PeriodType;->iIndices:[I

    aget v4, v4, v3

    aput v4, v0, v3

    goto :goto_52

    :cond_3d
    if-le v3, p1, :cond_50

    .line 818
    iget-object v4, p0, Lorg/joda/time/PeriodType;->iIndices:[I

    aget v4, v4, v3

    if-ne v4, v1, :cond_47

    const/4 v4, -0x1

    goto :goto_4d

    :cond_47
    iget-object v4, p0, Lorg/joda/time/PeriodType;->iIndices:[I

    aget v4, v4, v3

    add-int/lit8 v4, v4, -0x1

    :goto_4d
    aput v4, v0, v3

    goto :goto_52

    .line 820
    :cond_50
    aput v1, v0, v3

    :goto_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    .line 823
    :cond_55
    new-instance p1, Lorg/joda/time/PeriodType;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/joda/time/PeriodType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v2, v0}, Lorg/joda/time/PeriodType;-><init>(Ljava/lang/String;[Lorg/joda/time/DurationFieldType;[I)V

    return-object p1
.end method

.method public static yearDay()Lorg/joda/time/PeriodType;
    .registers 5

    .line 278
    sget-object v0, Lorg/joda/time/PeriodType;->cYD:Lorg/joda/time/PeriodType;

    if-nez v0, :cond_25

    .line 280
    new-instance v0, Lorg/joda/time/PeriodType;

    const-string v1, "YearDay"

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/joda/time/DurationFieldType;

    const/4 v3, 0x0

    invoke-static {}, Lorg/joda/time/DurationFieldType;->years()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_26

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/PeriodType;-><init>(Ljava/lang/String;[Lorg/joda/time/DurationFieldType;[I)V

    .line 287
    sput-object v0, Lorg/joda/time/PeriodType;->cYD:Lorg/joda/time/PeriodType;

    :cond_25
    return-object v0

    :array_26
    .array-data 4
        0x0
        -0x1
        -0x1
        0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public static yearDayTime()Lorg/joda/time/PeriodType;
    .registers 5

    .line 251
    sget-object v0, Lorg/joda/time/PeriodType;->cYDTime:Lorg/joda/time/PeriodType;

    if-nez v0, :cond_41

    .line 253
    new-instance v0, Lorg/joda/time/PeriodType;

    const-string v1, "YearDayTime"

    const/4 v2, 0x6

    new-array v2, v2, [Lorg/joda/time/DurationFieldType;

    const/4 v3, 0x0

    invoke-static {}, Lorg/joda/time/DurationFieldType;->years()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {}, Lorg/joda/time/DurationFieldType;->hours()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {}, Lorg/joda/time/DurationFieldType;->minutes()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {}, Lorg/joda/time/DurationFieldType;->seconds()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-static {}, Lorg/joda/time/DurationFieldType;->millis()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_42

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/PeriodType;-><init>(Ljava/lang/String;[Lorg/joda/time/DurationFieldType;[I)V

    .line 262
    sput-object v0, Lorg/joda/time/PeriodType;->cYDTime:Lorg/joda/time/PeriodType;

    :cond_41
    return-object v0

    :array_42
    .array-data 4
        0x0
        -0x1
        -0x1
        0x1
        0x2
        0x3
        0x4
        0x5
    .end array-data
.end method

.method public static yearMonthDay()Lorg/joda/time/PeriodType;
    .registers 5

    .line 163
    sget-object v0, Lorg/joda/time/PeriodType;->cYMD:Lorg/joda/time/PeriodType;

    if-nez v0, :cond_2c

    .line 165
    new-instance v0, Lorg/joda/time/PeriodType;

    const-string v1, "YearMonthDay"

    const/4 v2, 0x3

    new-array v2, v2, [Lorg/joda/time/DurationFieldType;

    const/4 v3, 0x0

    invoke-static {}, Lorg/joda/time/DurationFieldType;->years()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Lorg/joda/time/DurationFieldType;->months()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_2e

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/PeriodType;-><init>(Ljava/lang/String;[Lorg/joda/time/DurationFieldType;[I)V

    .line 173
    sput-object v0, Lorg/joda/time/PeriodType;->cYMD:Lorg/joda/time/PeriodType;

    :cond_2c
    return-object v0

    nop

    :array_2e
    .array-data 4
        0x0
        0x1
        -0x1
        0x2
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public static yearMonthDayTime()Lorg/joda/time/PeriodType;
    .registers 5

    .line 134
    sget-object v0, Lorg/joda/time/PeriodType;->cYMDTime:Lorg/joda/time/PeriodType;

    if-nez v0, :cond_48

    .line 136
    new-instance v0, Lorg/joda/time/PeriodType;

    const-string v1, "YearMonthDayTime"

    const/4 v2, 0x7

    new-array v2, v2, [Lorg/joda/time/DurationFieldType;

    const/4 v3, 0x0

    invoke-static {}, Lorg/joda/time/DurationFieldType;->years()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Lorg/joda/time/DurationFieldType;->months()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {}, Lorg/joda/time/DurationFieldType;->hours()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {}, Lorg/joda/time/DurationFieldType;->minutes()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-static {}, Lorg/joda/time/DurationFieldType;->seconds()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    invoke-static {}, Lorg/joda/time/DurationFieldType;->millis()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_4a

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/PeriodType;-><init>(Ljava/lang/String;[Lorg/joda/time/DurationFieldType;[I)V

    .line 146
    sput-object v0, Lorg/joda/time/PeriodType;->cYMDTime:Lorg/joda/time/PeriodType;

    :cond_48
    return-object v0

    nop

    :array_4a
    .array-data 4
        0x0
        0x1
        -0x1
        0x2
        0x3
        0x4
        0x5
        0x6
    .end array-data
.end method

.method public static yearWeekDay()Lorg/joda/time/PeriodType;
    .registers 5

    .line 222
    sget-object v0, Lorg/joda/time/PeriodType;->cYWD:Lorg/joda/time/PeriodType;

    if-nez v0, :cond_2c

    .line 224
    new-instance v0, Lorg/joda/time/PeriodType;

    const-string v1, "YearWeekDay"

    const/4 v2, 0x3

    new-array v2, v2, [Lorg/joda/time/DurationFieldType;

    const/4 v3, 0x0

    invoke-static {}, Lorg/joda/time/DurationFieldType;->years()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Lorg/joda/time/DurationFieldType;->weeks()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_2e

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/PeriodType;-><init>(Ljava/lang/String;[Lorg/joda/time/DurationFieldType;[I)V

    .line 232
    sput-object v0, Lorg/joda/time/PeriodType;->cYWD:Lorg/joda/time/PeriodType;

    :cond_2c
    return-object v0

    nop

    :array_2e
    .array-data 4
        0x0
        -0x1
        0x1
        0x2
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public static yearWeekDayTime()Lorg/joda/time/PeriodType;
    .registers 5

    .line 193
    sget-object v0, Lorg/joda/time/PeriodType;->cYWDTime:Lorg/joda/time/PeriodType;

    if-nez v0, :cond_48

    .line 195
    new-instance v0, Lorg/joda/time/PeriodType;

    const-string v1, "YearWeekDayTime"

    const/4 v2, 0x7

    new-array v2, v2, [Lorg/joda/time/DurationFieldType;

    const/4 v3, 0x0

    invoke-static {}, Lorg/joda/time/DurationFieldType;->years()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Lorg/joda/time/DurationFieldType;->weeks()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {}, Lorg/joda/time/DurationFieldType;->days()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {}, Lorg/joda/time/DurationFieldType;->hours()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {}, Lorg/joda/time/DurationFieldType;->minutes()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-static {}, Lorg/joda/time/DurationFieldType;->seconds()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    invoke-static {}, Lorg/joda/time/DurationFieldType;->millis()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_4a

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/PeriodType;-><init>(Ljava/lang/String;[Lorg/joda/time/DurationFieldType;[I)V

    .line 205
    sput-object v0, Lorg/joda/time/PeriodType;->cYWDTime:Lorg/joda/time/PeriodType;

    :cond_48
    return-object v0

    nop

    :array_4a
    .array-data 4
        0x0
        -0x1
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
    .end array-data
.end method

.method public static years()Lorg/joda/time/PeriodType;
    .registers 5

    .line 354
    sget-object v0, Lorg/joda/time/PeriodType;->cYears:Lorg/joda/time/PeriodType;

    if-nez v0, :cond_1e

    .line 356
    new-instance v0, Lorg/joda/time/PeriodType;

    const-string v1, "Years"

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/joda/time/DurationFieldType;

    const/4 v3, 0x0

    invoke-static {}, Lorg/joda/time/DurationFieldType;->years()Lorg/joda/time/DurationFieldType;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_20

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/PeriodType;-><init>(Ljava/lang/String;[Lorg/joda/time/DurationFieldType;[I)V

    .line 361
    sput-object v0, Lorg/joda/time/PeriodType;->cYears:Lorg/joda/time/PeriodType;

    :cond_1e
    return-object v0

    nop

    :array_20
    .array-data 4
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method


# virtual methods
.method addIndexedField(Lorg/joda/time/ReadablePeriod;I[II)Z
    .registers 5

    if-nez p4, :cond_4

    const/4 p1, 0x0

    return p1

    .line 710
    :cond_4
    iget-object p1, p0, Lorg/joda/time/PeriodType;->iIndices:[I

    aget p1, p1, p2

    const/4 p2, -0x1

    if-ne p1, p2, :cond_13

    .line 712
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Field is not supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 714
    :cond_13
    aget p2, p3, p1

    invoke-static {p2, p4}, Lorg/joda/time/field/FieldUtils;->safeAdd(II)I

    move-result p2

    aput p2, p3, p1

    const/4 p1, 0x1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 838
    :cond_4
    instance-of v0, p1, Lorg/joda/time/PeriodType;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 841
    :cond_a
    check-cast p1, Lorg/joda/time/PeriodType;

    .line 842
    iget-object v0, p0, Lorg/joda/time/PeriodType;->iTypes:[Lorg/joda/time/DurationFieldType;

    iget-object p1, p1, Lorg/joda/time/PeriodType;->iTypes:[Lorg/joda/time/DurationFieldType;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getFieldType(I)Lorg/joda/time/DurationFieldType;
    .registers 3

    .line 628
    iget-object v0, p0, Lorg/joda/time/PeriodType;->iTypes:[Lorg/joda/time/DurationFieldType;

    aget-object p1, v0, p1

    return-object p1
.end method

.method getIndexedField(Lorg/joda/time/ReadablePeriod;I)I
    .registers 4

    .line 674
    iget-object v0, p0, Lorg/joda/time/PeriodType;->iIndices:[I

    aget p2, v0, p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_9

    const/4 p1, 0x0

    goto :goto_d

    .line 675
    :cond_9
    invoke-interface {p1, p2}, Lorg/joda/time/ReadablePeriod;->getValue(I)I

    move-result p1

    :goto_d
    return p1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 608
    iget-object v0, p0, Lorg/joda/time/PeriodType;->iName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 852
    :goto_2
    iget-object v2, p0, Lorg/joda/time/PeriodType;->iTypes:[Lorg/joda/time/DurationFieldType;

    array-length v2, v2

    if-ge v0, v2, :cond_13

    .line 853
    iget-object v2, p0, Lorg/joda/time/PeriodType;->iTypes:[Lorg/joda/time/DurationFieldType;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_13
    return v1
.end method

.method public indexOf(Lorg/joda/time/DurationFieldType;)I
    .registers 5

    .line 648
    invoke-virtual {p0}, Lorg/joda/time/PeriodType;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_11

    .line 649
    iget-object v2, p0, Lorg/joda/time/PeriodType;->iTypes:[Lorg/joda/time/DurationFieldType;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_e

    return v1

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_11
    const/4 p1, -0x1

    return p1
.end method

.method public isSupported(Lorg/joda/time/DurationFieldType;)Z
    .registers 2

    .line 638
    invoke-virtual {p0, p1}, Lorg/joda/time/PeriodType;->indexOf(Lorg/joda/time/DurationFieldType;)I

    move-result p1

    if-ltz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method setIndexedField(Lorg/joda/time/ReadablePeriod;I[II)Z
    .registers 5

    .line 688
    iget-object p1, p0, Lorg/joda/time/PeriodType;->iIndices:[I

    aget p1, p1, p2

    const/4 p2, -0x1

    if-ne p1, p2, :cond_f

    .line 690
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Field is not supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 692
    :cond_f
    aput p4, p3, p1

    const/4 p1, 0x1

    return p1
.end method

.method public size()I
    .registers 2

    .line 617
    iget-object v0, p0, Lorg/joda/time/PeriodType;->iTypes:[Lorg/joda/time/DurationFieldType;

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PeriodType["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/joda/time/PeriodType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withDaysRemoved()Lorg/joda/time/PeriodType;
    .registers 3

    const-string v0, "NoDays"

    const/4 v1, 0x3

    .line 752
    invoke-direct {p0, v1, v0}, Lorg/joda/time/PeriodType;->withFieldRemoved(ILjava/lang/String;)Lorg/joda/time/PeriodType;

    move-result-object v0

    return-object v0
.end method

.method public withHoursRemoved()Lorg/joda/time/PeriodType;
    .registers 3

    const-string v0, "NoHours"

    const/4 v1, 0x4

    .line 761
    invoke-direct {p0, v1, v0}, Lorg/joda/time/PeriodType;->withFieldRemoved(ILjava/lang/String;)Lorg/joda/time/PeriodType;

    move-result-object v0

    return-object v0
.end method

.method public withMillisRemoved()Lorg/joda/time/PeriodType;
    .registers 3

    const-string v0, "NoMillis"

    const/4 v1, 0x7

    .line 788
    invoke-direct {p0, v1, v0}, Lorg/joda/time/PeriodType;->withFieldRemoved(ILjava/lang/String;)Lorg/joda/time/PeriodType;

    move-result-object v0

    return-object v0
.end method

.method public withMinutesRemoved()Lorg/joda/time/PeriodType;
    .registers 3

    const-string v0, "NoMinutes"

    const/4 v1, 0x5

    .line 770
    invoke-direct {p0, v1, v0}, Lorg/joda/time/PeriodType;->withFieldRemoved(ILjava/lang/String;)Lorg/joda/time/PeriodType;

    move-result-object v0

    return-object v0
.end method

.method public withMonthsRemoved()Lorg/joda/time/PeriodType;
    .registers 3

    const-string v0, "NoMonths"

    const/4 v1, 0x1

    .line 734
    invoke-direct {p0, v1, v0}, Lorg/joda/time/PeriodType;->withFieldRemoved(ILjava/lang/String;)Lorg/joda/time/PeriodType;

    move-result-object v0

    return-object v0
.end method

.method public withSecondsRemoved()Lorg/joda/time/PeriodType;
    .registers 3

    const-string v0, "NoSeconds"

    const/4 v1, 0x6

    .line 779
    invoke-direct {p0, v1, v0}, Lorg/joda/time/PeriodType;->withFieldRemoved(ILjava/lang/String;)Lorg/joda/time/PeriodType;

    move-result-object v0

    return-object v0
.end method

.method public withWeeksRemoved()Lorg/joda/time/PeriodType;
    .registers 3

    const-string v0, "NoWeeks"

    const/4 v1, 0x2

    .line 743
    invoke-direct {p0, v1, v0}, Lorg/joda/time/PeriodType;->withFieldRemoved(ILjava/lang/String;)Lorg/joda/time/PeriodType;

    move-result-object v0

    return-object v0
.end method

.method public withYearsRemoved()Lorg/joda/time/PeriodType;
    .registers 3

    const-string v0, "NoYears"

    const/4 v1, 0x0

    .line 725
    invoke-direct {p0, v1, v0}, Lorg/joda/time/PeriodType;->withFieldRemoved(ILjava/lang/String;)Lorg/joda/time/PeriodType;

    move-result-object v0

    return-object v0
.end method
