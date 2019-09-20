.class public Landroidx/work/impl/model/WorkSpec;
.super Ljava/lang/Object;
.source "WorkSpec.java"


# annotations
.annotation build Landroid/arch/persistence/room/Entity;
    indices = {
        .subannotation Landroid/arch/persistence/room/Index;
            value = {
                "schedule_requested_at"
            }
        .end subannotation
    }
.end annotation

.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;,
        Landroidx/work/impl/model/WorkSpec$IdAndState;
    }
.end annotation


# static fields
.field public static final SCHEDULE_NOT_REQUESTED_YET:J = -0x1L

.field private static final TAG:Ljava/lang/String;

.field public static final WORK_INFO_MAPPER:Landroid/arch/core/util/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/core/util/Function<",
            "Ljava/util/List<",
            "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/work/WorkInfo;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public backoffDelayDuration:J
    .annotation build Landroid/arch/persistence/room/ColumnInfo;
        name = "backoff_delay_duration"
    .end annotation
.end field

.field public backoffPolicy:Landroidx/work/BackoffPolicy;
    .annotation build Landroid/arch/persistence/room/ColumnInfo;
        name = "backoff_policy"
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public constraints:Landroidx/work/Constraints;
    .annotation build Landroid/arch/persistence/room/Embedded;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public flexDuration:J
    .annotation build Landroid/arch/persistence/room/ColumnInfo;
        name = "flex_duration"
    .end annotation
.end field

.field public id:Ljava/lang/String;
    .annotation build Landroid/arch/persistence/room/ColumnInfo;
        name = "id"
    .end annotation

    .annotation build Landroid/arch/persistence/room/PrimaryKey;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public initialDelay:J
    .annotation build Landroid/arch/persistence/room/ColumnInfo;
        name = "initial_delay"
    .end annotation
.end field

.field public input:Landroidx/work/Data;
    .annotation build Landroid/arch/persistence/room/ColumnInfo;
        name = "input"
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public inputMergerClassName:Ljava/lang/String;
    .annotation build Landroid/arch/persistence/room/ColumnInfo;
        name = "input_merger_class_name"
    .end annotation
.end field

.field public intervalDuration:J
    .annotation build Landroid/arch/persistence/room/ColumnInfo;
        name = "interval_duration"
    .end annotation
.end field

.field public minimumRetentionDuration:J
    .annotation build Landroid/arch/persistence/room/ColumnInfo;
        name = "minimum_retention_duration"
    .end annotation
.end field

.field public output:Landroidx/work/Data;
    .annotation build Landroid/arch/persistence/room/ColumnInfo;
        name = "output"
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public periodStartTime:J
    .annotation build Landroid/arch/persistence/room/ColumnInfo;
        name = "period_start_time"
    .end annotation
.end field

.field public runAttemptCount:I
    .annotation build Landroid/arch/persistence/room/ColumnInfo;
        name = "run_attempt_count"
    .end annotation
.end field

.field public scheduleRequestedAt:J
    .annotation build Landroid/arch/persistence/room/ColumnInfo;
        name = "schedule_requested_at"
    .end annotation
.end field

.field public state:Landroidx/work/WorkInfo$State;
    .annotation build Landroid/arch/persistence/room/ColumnInfo;
        name = "state"
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public workerClassName:Ljava/lang/String;
    .annotation build Landroid/arch/persistence/room/ColumnInfo;
        name = "worker_class_name"
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "WorkSpec"

    .line 58
    invoke-static {v0}, Landroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/model/WorkSpec;->TAG:Ljava/lang/String;

    .line 433
    new-instance v0, Landroidx/work/impl/model/WorkSpec$1;

    invoke-direct {v0}, Landroidx/work/impl/model/WorkSpec$1;-><init>()V

    sput-object v0, Landroidx/work/impl/model/WorkSpec;->WORK_INFO_MAPPER:Landroid/arch/core/util/Function;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/model/WorkSpec;)V
    .registers 4
    .param p1    # Landroidx/work/impl/model/WorkSpec;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    sget-object v0, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 77
    sget-object v0, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 81
    sget-object v0, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    .line 94
    sget-object v0, Landroidx/work/Constraints;->NONE:Landroidx/work/Constraints;

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    .line 101
    sget-object v0, Landroidx/work/BackoffPolicy;->EXPONENTIAL:Landroidx/work/BackoffPolicy;

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    const-wide/16 v0, 0x7530

    .line 105
    iput-wide v0, p0, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    const-wide/16 v0, -0x1

    .line 126
    iput-wide v0, p0, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    .line 135
    iget-object v0, p1, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    .line 136
    iget-object v0, p1, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    .line 137
    iget-object v0, p1, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 138
    iget-object v0, p1, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    .line 139
    new-instance v0, Landroidx/work/Data;

    iget-object v1, p1, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    invoke-direct {v0, v1}, Landroidx/work/Data;-><init>(Landroidx/work/Data;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 140
    new-instance v0, Landroidx/work/Data;

    iget-object v1, p1, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    invoke-direct {v0, v1}, Landroidx/work/Data;-><init>(Landroidx/work/Data;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    .line 141
    iget-wide v0, p1, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    iput-wide v0, p0, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    .line 142
    iget-wide v0, p1, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    iput-wide v0, p0, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    .line 143
    iget-wide v0, p1, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    iput-wide v0, p0, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    .line 144
    new-instance v0, Landroidx/work/Constraints;

    iget-object v1, p1, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    invoke-direct {v0, v1}, Landroidx/work/Constraints;-><init>(Landroidx/work/Constraints;)V

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    .line 145
    iget v0, p1, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    iput v0, p0, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    .line 146
    iget-object v0, p1, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    .line 147
    iget-wide v0, p1, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    iput-wide v0, p0, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    .line 148
    iget-wide v0, p1, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    iput-wide v0, p0, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    .line 149
    iget-wide v0, p1, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    iput-wide v0, p0, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    .line 150
    iget-wide v0, p1, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    iput-wide v0, p0, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    sget-object v0, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 77
    sget-object v0, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 81
    sget-object v0, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    .line 94
    sget-object v0, Landroidx/work/Constraints;->NONE:Landroidx/work/Constraints;

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    .line 101
    sget-object v0, Landroidx/work/BackoffPolicy;->EXPONENTIAL:Landroidx/work/BackoffPolicy;

    iput-object v0, p0, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    const-wide/16 v0, 0x7530

    .line 105
    iput-wide v0, p0, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    const-wide/16 v0, -0x1

    .line 126
    iput-wide v0, p0, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    .line 130
    iput-object p1, p0, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    .line 131
    iput-object p2, p0, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public calculateNextRunTime()J
    .registers 9

    .line 247
    invoke-virtual {p0}, Landroidx/work/impl/model/WorkSpec;->isBackedOff()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_30

    .line 248
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    sget-object v3, Landroidx/work/BackoffPolicy;->LINEAR:Landroidx/work/BackoffPolicy;

    if-ne v0, v3, :cond_f

    const/4 v1, 0x1

    :cond_f
    if-eqz v1, :cond_19

    .line 249
    iget-wide v0, p0, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    iget v2, p0, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    int-to-long v2, v2

    mul-long v0, v0, v2

    goto :goto_24

    :cond_19
    iget-wide v0, p0, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    long-to-float v0, v0

    iget v1, p0, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    sub-int/2addr v1, v2

    .line 250
    invoke-static {v0, v1}, Ljava/lang/Math;->scalb(FI)F

    move-result v0

    float-to-long v0, v0

    .line 251
    :goto_24
    iget-wide v2, p0, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    const-wide/32 v4, 0x112a880

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    add-long v4, v2, v0

    return-wide v4

    .line 252
    :cond_30
    invoke-virtual {p0}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 253
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-gt v0, v3, :cond_72

    .line 256
    iget-wide v3, p0, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    iget-wide v5, p0, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    cmp-long v0, v3, v5

    if-eqz v0, :cond_45

    const/4 v1, 0x1

    :cond_45
    if-eqz v1, :cond_6b

    .line 269
    iget-wide v0, p0, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_56

    const-wide/16 v0, -0x1

    iget-wide v4, p0, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    mul-long v0, v0, v4

    goto :goto_57

    :cond_56
    move-wide v0, v2

    .line 270
    :goto_57
    iget-wide v4, p0, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    cmp-long v6, v4, v2

    if-nez v6, :cond_62

    .line 271
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    goto :goto_64

    :cond_62
    iget-wide v2, p0, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    .line 272
    :goto_64
    iget-wide v4, p0, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    add-long v6, v2, v4

    add-long v2, v6, v0

    return-wide v2

    .line 277
    :cond_6b
    iget-wide v0, p0, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    iget-wide v2, p0, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    add-long v4, v0, v2

    return-wide v4

    .line 281
    :cond_72
    iget-wide v0, p0, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    iget-wide v2, p0, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    add-long v4, v0, v2

    iget-wide v0, p0, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    sub-long v2, v4, v0

    return-wide v2

    .line 284
    :cond_7d
    iget-wide v0, p0, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    iget-wide v2, p0, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    add-long v4, v0, v2

    return-wide v4
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_b6

    .line 298
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    goto/16 :goto_b6

    .line 300
    :cond_13
    check-cast p1, Landroidx/work/impl/model/WorkSpec;

    .line 302
    iget-wide v2, p0, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    iget-wide v4, p1, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1e

    return v1

    .line 303
    :cond_1e
    iget-wide v2, p0, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    iget-wide v4, p1, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_27

    return v1

    .line 304
    :cond_27
    iget-wide v2, p0, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    iget-wide v4, p1, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_30

    return v1

    .line 305
    :cond_30
    iget v2, p0, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    iget v3, p1, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    if-eq v2, v3, :cond_37

    return v1

    .line 306
    :cond_37
    iget-wide v2, p0, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    iget-wide v4, p1, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_40

    return v1

    .line 307
    :cond_40
    iget-wide v2, p0, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    iget-wide v4, p1, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_49

    return v1

    .line 308
    :cond_49
    iget-wide v2, p0, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    iget-wide v4, p1, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_52

    return v1

    .line 309
    :cond_52
    iget-wide v2, p0, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    iget-wide v4, p1, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_5b

    return v1

    .line 310
    :cond_5b
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    iget-object v3, p1, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_66

    return v1

    .line 311
    :cond_66
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    iget-object v3, p1, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    if-eq v2, v3, :cond_6d

    return v1

    .line 312
    :cond_6d
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    iget-object v3, p1, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_78

    return v1

    .line 313
    :cond_78
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    if-eqz v2, :cond_87

    iget-object v2, p0, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    iget-object v3, p1, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8c

    goto :goto_8b

    :cond_87
    iget-object v2, p1, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    if-eqz v2, :cond_8c

    :goto_8b
    return v1

    .line 318
    :cond_8c
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    iget-object v3, p1, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    invoke-virtual {v2, v3}, Landroidx/work/Data;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_97

    return v1

    .line 319
    :cond_97
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    iget-object v3, p1, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    invoke-virtual {v2, v3}, Landroidx/work/Data;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a2

    return v1

    .line 320
    :cond_a2
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    iget-object v3, p1, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    invoke-virtual {v2, v3}, Landroidx/work/Constraints;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ad

    return v1

    .line 321
    :cond_ad
    iget-object v2, p0, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    iget-object p1, p1, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    if-ne v2, p1, :cond_b4

    goto :goto_b5

    :cond_b4
    const/4 v0, 0x0

    :goto_b5
    return v0

    :cond_b6
    :goto_b6
    return v1
.end method

.method public hasConstraints()Z
    .registers 3

    .line 292
    sget-object v0, Landroidx/work/Constraints;->NONE:Landroidx/work/Constraints;

    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    invoke-virtual {v0, v1}, Landroidx/work/Constraints;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hashCode()I
    .registers 9

    .line 326
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 327
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    invoke-virtual {v1}, Landroidx/work/WorkInfo$State;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 328
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 329
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    if-eqz v1, :cond_25

    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 330
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    invoke-virtual {v1}, Landroidx/work/Data;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 331
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    invoke-virtual {v1}, Landroidx/work/Data;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 332
    iget-wide v1, p0, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    iget-wide v3, p0, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    xor-long v6, v1, v3

    long-to-int v1, v6

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 333
    iget-wide v1, p0, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    iget-wide v3, p0, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    ushr-long/2addr v3, v5

    xor-long v6, v1, v3

    long-to-int v1, v6

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 334
    iget-wide v1, p0, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    iget-wide v3, p0, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    ushr-long/2addr v3, v5

    xor-long v6, v1, v3

    long-to-int v1, v6

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 335
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    invoke-virtual {v1}, Landroidx/work/Constraints;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 336
    iget v1, p0, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 337
    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    invoke-virtual {v1}, Landroidx/work/BackoffPolicy;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 338
    iget-wide v1, p0, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    iget-wide v3, p0, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    ushr-long/2addr v3, v5

    xor-long v6, v1, v3

    long-to-int v1, v6

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 339
    iget-wide v1, p0, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    iget-wide v3, p0, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    ushr-long/2addr v3, v5

    xor-long v6, v1, v3

    long-to-int v1, v6

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 340
    iget-wide v1, p0, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    iget-wide v3, p0, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    ushr-long/2addr v3, v5

    xor-long v6, v1, v3

    long-to-int v1, v6

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 341
    iget-wide v1, p0, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    iget-wide v3, p0, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    ushr-long/2addr v3, v5

    xor-long v5, v1, v3

    long-to-int v1, v5

    add-int/2addr v0, v1

    return v0
.end method

.method public isBackedOff()Z
    .registers 3

    .line 174
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    sget-object v1, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    if-ne v0, v1, :cond_c

    iget v0, p0, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    if-lez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isPeriodic()Z
    .registers 6

    .line 170
    iget-wide v0, p0, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public setBackoffDelayDuration(J)V
    .registers 8

    const-wide/32 v0, 0x112a880

    cmp-long v2, p1, v0

    const/4 v3, 0x0

    if-lez v2, :cond_16

    .line 158
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object p1

    sget-object p2, Landroidx/work/impl/model/WorkSpec;->TAG:Ljava/lang/String;

    const-string v2, "Backoff delay duration exceeds maximum value"

    new-array v4, v3, [Ljava/lang/Throwable;

    invoke-virtual {p1, p2, v2, v4}, Landroidx/work/Logger;->warning(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    move-wide p1, v0

    :cond_16
    const-wide/16 v0, 0x2710

    cmp-long v2, p1, v0

    if-gez v2, :cond_2a

    .line 162
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object p1

    sget-object p2, Landroidx/work/impl/model/WorkSpec;->TAG:Ljava/lang/String;

    const-string v2, "Backoff delay duration less than minimum value"

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {p1, p2, v2, v3}, Landroidx/work/Logger;->warning(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    move-wide p1, v0

    .line 165
    :cond_2a
    iput-wide p1, p0, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    return-void
.end method

.method public setPeriodic(J)V
    .registers 9

    const-wide/32 v0, 0xdbba0

    cmp-long v2, p1, v0

    if-gez v2, :cond_23

    .line 184
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object p1

    sget-object p2, Landroidx/work/impl/model/WorkSpec;->TAG:Ljava/lang/String;

    const-string v2, "Interval duration lesser than minimum allowed value; Changed to %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 186
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 184
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Throwable;

    invoke-virtual {p1, p2, v2, v3}, Landroidx/work/Logger;->warning(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    move-wide p1, v0

    .line 189
    :cond_23
    invoke-virtual {p0, p1, p2, p1, p2}, Landroidx/work/impl/model/WorkSpec;->setPeriodic(JJ)V

    return-void
.end method

.method public setPeriodic(JJ)V
    .registers 12

    const-wide/32 v0, 0xdbba0

    cmp-long v2, p1, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gez v2, :cond_23

    .line 200
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object p1

    sget-object p2, Landroidx/work/impl/model/WorkSpec;->TAG:Ljava/lang/String;

    const-string v2, "Interval duration lesser than minimum allowed value; Changed to %s"

    new-array v5, v3, [Ljava/lang/Object;

    .line 202
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v4

    .line 200
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Throwable;

    invoke-virtual {p1, p2, v2, v5}, Landroidx/work/Logger;->warning(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    move-wide p1, v0

    :cond_23
    const-wide/32 v0, 0x493e0

    cmp-long v2, p3, v0

    if-gez v2, :cond_44

    .line 206
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object p3

    sget-object p4, Landroidx/work/impl/model/WorkSpec;->TAG:Ljava/lang/String;

    const-string v2, "Flex duration lesser than minimum allowed value; Changed to %s"

    new-array v5, v3, [Ljava/lang/Object;

    .line 208
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v4

    .line 207
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Throwable;

    .line 206
    invoke-virtual {p3, p4, v2, v5}, Landroidx/work/Logger;->warning(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    move-wide p3, v0

    :cond_44
    cmp-long v0, p3, p1

    if-lez v0, :cond_62

    .line 212
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object p3

    sget-object p4, Landroidx/work/impl/model/WorkSpec;->TAG:Ljava/lang/String;

    const-string v0, "Flex duration greater than interval duration; Changed to %s"

    new-array v1, v3, [Ljava/lang/Object;

    .line 214
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    .line 213
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Throwable;

    .line 212
    invoke-virtual {p3, p4, v0, v1}, Landroidx/work/Logger;->warning(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    move-wide p3, p1

    .line 217
    :cond_62
    iput-wide p1, p0, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    .line 218
    iput-wide p3, p0, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{WorkSpec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
