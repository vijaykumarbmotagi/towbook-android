.class Landroidx/work/impl/model/WorkSpecDao_Impl$1;
.super Landroid/arch/persistence/room/EntityInsertionAdapter;
.source "WorkSpecDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/model/WorkSpecDao_Impl;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/arch/persistence/room/EntityInsertionAdapter<",
        "Landroidx/work/impl/model/WorkSpec;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/work/impl/model/WorkSpecDao_Impl;


# direct methods
.method constructor <init>(Landroidx/work/impl/model/WorkSpecDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V
    .registers 3

    .line 52
    iput-object p1, p0, Landroidx/work/impl/model/WorkSpecDao_Impl$1;->this$0:Landroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-direct {p0, p2}, Landroid/arch/persistence/room/EntityInsertionAdapter;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Landroidx/work/impl/model/WorkSpec;)V
    .registers 13

    .line 60
    iget-object v0, p2, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_9

    .line 61
    invoke-interface {p1, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_e

    .line 63
    :cond_9
    iget-object v0, p2, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 66
    :goto_e
    iget-object v0, p2, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    invoke-static {v0}, Landroidx/work/impl/model/WorkTypeConverters;->stateToInt(Landroidx/work/WorkInfo$State;)I

    move-result v0

    const/4 v1, 0x2

    int-to-long v2, v0

    .line 67
    invoke-interface {p1, v1, v2, v3}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 68
    iget-object v0, p2, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    const/4 v1, 0x3

    if-nez v0, :cond_22

    .line 69
    invoke-interface {p1, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_27

    .line 71
    :cond_22
    iget-object v0, p2, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 73
    :goto_27
    iget-object v0, p2, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    const/4 v1, 0x4

    if-nez v0, :cond_30

    .line 74
    invoke-interface {p1, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_35

    .line 76
    :cond_30
    iget-object v0, p2, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 79
    :goto_35
    iget-object v0, p2, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    invoke-static {v0}, Landroidx/work/Data;->toByteArray(Landroidx/work/Data;)[B

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_42

    .line 81
    invoke-interface {p1, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_45

    .line 83
    :cond_42
    invoke-interface {p1, v1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindBlob(I[B)V

    .line 86
    :goto_45
    iget-object v0, p2, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    invoke-static {v0}, Landroidx/work/Data;->toByteArray(Landroidx/work/Data;)[B

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_52

    .line 88
    invoke-interface {p1, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_55

    .line 90
    :cond_52
    invoke-interface {p1, v1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindBlob(I[B)V

    :goto_55
    const/4 v0, 0x7

    .line 92
    iget-wide v1, p2, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    invoke-interface {p1, v0, v1, v2}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x8

    .line 93
    iget-wide v1, p2, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    invoke-interface {p1, v0, v1, v2}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0x9

    .line 94
    iget-wide v1, p2, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    invoke-interface {p1, v0, v1, v2}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0xa

    .line 95
    iget v1, p2, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 97
    iget-object v0, p2, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    invoke-static {v0}, Landroidx/work/impl/model/WorkTypeConverters;->backoffPolicyToInt(Landroidx/work/BackoffPolicy;)I

    move-result v0

    const/16 v1, 0xb

    int-to-long v2, v0

    .line 98
    invoke-interface {p1, v1, v2, v3}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0xc

    .line 99
    iget-wide v1, p2, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    invoke-interface {p1, v0, v1, v2}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0xd

    .line 100
    iget-wide v1, p2, Landroidx/work/impl/model/WorkSpec;->periodStartTime:J

    invoke-interface {p1, v0, v1, v2}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0xe

    .line 101
    iget-wide v1, p2, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    invoke-interface {p1, v0, v1, v2}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/16 v0, 0xf

    .line 102
    iget-wide v1, p2, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    invoke-interface {p1, v0, v1, v2}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 103
    iget-object p2, p2, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    const/16 v0, 0x16

    const/16 v1, 0x15

    const/16 v2, 0x14

    const/16 v3, 0x13

    const/16 v4, 0x12

    const/16 v5, 0x11

    const/16 v6, 0x10

    const/16 v7, 0x17

    if-eqz p2, :cond_f9

    .line 106
    invoke-virtual {p2}, Landroidx/work/Constraints;->getRequiredNetworkType()Landroidx/work/NetworkType;

    move-result-object v8

    invoke-static {v8}, Landroidx/work/impl/model/WorkTypeConverters;->networkTypeToInt(Landroidx/work/NetworkType;)I

    move-result v8

    int-to-long v8, v8

    .line 107
    invoke-interface {p1, v6, v8, v9}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 109
    invoke-virtual {p2}, Landroidx/work/Constraints;->requiresCharging()Z

    move-result v6

    int-to-long v8, v6

    .line 110
    invoke-interface {p1, v5, v8, v9}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 112
    invoke-virtual {p2}, Landroidx/work/Constraints;->requiresDeviceIdle()Z

    move-result v5

    int-to-long v5, v5

    .line 113
    invoke-interface {p1, v4, v5, v6}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 115
    invoke-virtual {p2}, Landroidx/work/Constraints;->requiresBatteryNotLow()Z

    move-result v4

    int-to-long v4, v4

    .line 116
    invoke-interface {p1, v3, v4, v5}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 118
    invoke-virtual {p2}, Landroidx/work/Constraints;->requiresStorageNotLow()Z

    move-result v3

    int-to-long v3, v3

    .line 119
    invoke-interface {p1, v2, v3, v4}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 120
    invoke-virtual {p2}, Landroidx/work/Constraints;->getTriggerContentUpdateDelay()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 121
    invoke-virtual {p2}, Landroidx/work/Constraints;->getTriggerMaxContentDelay()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 123
    invoke-virtual {p2}, Landroidx/work/Constraints;->getContentUriTriggers()Landroidx/work/ContentUriTriggers;

    move-result-object p2

    invoke-static {p2}, Landroidx/work/impl/model/WorkTypeConverters;->contentUriTriggersToByteArray(Landroidx/work/ContentUriTriggers;)[B

    move-result-object p2

    if-nez p2, :cond_f5

    .line 125
    invoke-interface {p1, v7}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_111

    .line 127
    :cond_f5
    invoke-interface {p1, v7, p2}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindBlob(I[B)V

    goto :goto_111

    .line 130
    :cond_f9
    invoke-interface {p1, v6}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    .line 131
    invoke-interface {p1, v5}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    .line 132
    invoke-interface {p1, v4}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    .line 133
    invoke-interface {p1, v3}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    .line 134
    invoke-interface {p1, v2}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    .line 135
    invoke-interface {p1, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    .line 136
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    .line 137
    invoke-interface {p1, v7}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    :goto_111
    return-void
.end method

.method public bridge synthetic bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .registers 3

    .line 52
    check-cast p2, Landroidx/work/impl/model/WorkSpec;

    invoke-virtual {p0, p1, p2}, Landroidx/work/impl/model/WorkSpecDao_Impl$1;->bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Landroidx/work/impl/model/WorkSpec;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .registers 2

    const-string v0, "INSERT OR IGNORE INTO `WorkSpec`(`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`period_start_time`,`minimum_retention_duration`,`schedule_requested_at`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method
