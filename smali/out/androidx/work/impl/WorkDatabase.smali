.class public abstract Landroidx/work/impl/WorkDatabase;
.super Landroid/arch/persistence/room/RoomDatabase;
.source "WorkDatabase.java"


# annotations
.annotation build Landroid/arch/persistence/room/Database;
    entities = {
        Landroidx/work/impl/model/Dependency;,
        Landroidx/work/impl/model/WorkSpec;,
        Landroidx/work/impl/model/WorkTag;,
        Landroidx/work/impl/model/SystemIdInfo;,
        Landroidx/work/impl/model/WorkName;
    }
    version = 0x5
.end annotation

.annotation build Landroid/arch/persistence/room/TypeConverters;
    value = {
        Landroidx/work/Data;,
        Landroidx/work/impl/model/WorkTypeConverters;
    }
.end annotation

.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final CLEANUP_SQL:Ljava/lang/String; = "UPDATE workspec SET state=0, schedule_requested_at=-1 WHERE state=1"

.field private static final DB_NAME:Ljava/lang/String; = "androidx.work.workdb"

.field private static final PRUNE_SQL_FORMAT_PREFIX:Ljava/lang/String; = "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (period_start_time + minimum_retention_duration) < "

.field private static final PRUNE_SQL_FORMAT_SUFFIX:Ljava/lang/String; = " AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))"

.field private static final PRUNE_THRESHOLD_MILLIS:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 86
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Landroidx/work/impl/WorkDatabase;->PRUNE_THRESHOLD_MILLIS:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 65
    invoke-direct {p0}, Landroid/arch/persistence/room/RoomDatabase;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Z)Landroidx/work/impl/WorkDatabase;
    .registers 8

    if-eqz p1, :cond_d

    .line 99
    const-class p1, Landroidx/work/impl/WorkDatabase;

    invoke-static {p0, p1}, Landroid/arch/persistence/room/Room;->inMemoryDatabaseBuilder(Landroid/content/Context;Ljava/lang/Class;)Landroid/arch/persistence/room/RoomDatabase$Builder;

    move-result-object p1

    .line 100
    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase$Builder;->allowMainThreadQueries()Landroid/arch/persistence/room/RoomDatabase$Builder;

    move-result-object p1

    goto :goto_15

    .line 102
    :cond_d
    const-class p1, Landroidx/work/impl/WorkDatabase;

    const-string v0, "androidx.work.workdb"

    invoke-static {p0, p1, v0}, Landroid/arch/persistence/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/arch/persistence/room/RoomDatabase$Builder;

    move-result-object p1

    .line 105
    :goto_15
    invoke-static {}, Landroidx/work/impl/WorkDatabase;->generateCleanupCallback()Landroid/arch/persistence/room/RoomDatabase$Callback;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/arch/persistence/room/RoomDatabase$Builder;->addCallback(Landroid/arch/persistence/room/RoomDatabase$Callback;)Landroid/arch/persistence/room/RoomDatabase$Builder;

    move-result-object p1

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/arch/persistence/room/migration/Migration;

    sget-object v2, Landroidx/work/impl/WorkDatabaseMigrations;->MIGRATION_1_2:Landroid/arch/persistence/room/migration/Migration;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 106
    invoke-virtual {p1, v1}, Landroid/arch/persistence/room/RoomDatabase$Builder;->addMigrations([Landroid/arch/persistence/room/migration/Migration;)Landroid/arch/persistence/room/RoomDatabase$Builder;

    move-result-object p1

    new-array v1, v0, [Landroid/arch/persistence/room/migration/Migration;

    new-instance v2, Landroidx/work/impl/WorkDatabaseMigrations$WorkMigration;

    const/4 v4, 0x2

    const/4 v5, 0x3

    invoke-direct {v2, p0, v4, v5}, Landroidx/work/impl/WorkDatabaseMigrations$WorkMigration;-><init>(Landroid/content/Context;II)V

    aput-object v2, v1, v3

    .line 107
    invoke-virtual {p1, v1}, Landroid/arch/persistence/room/RoomDatabase$Builder;->addMigrations([Landroid/arch/persistence/room/migration/Migration;)Landroid/arch/persistence/room/RoomDatabase$Builder;

    move-result-object p0

    new-array p1, v0, [Landroid/arch/persistence/room/migration/Migration;

    sget-object v1, Landroidx/work/impl/WorkDatabaseMigrations;->MIGRATION_3_4:Landroid/arch/persistence/room/migration/Migration;

    aput-object v1, p1, v3

    .line 109
    invoke-virtual {p0, p1}, Landroid/arch/persistence/room/RoomDatabase$Builder;->addMigrations([Landroid/arch/persistence/room/migration/Migration;)Landroid/arch/persistence/room/RoomDatabase$Builder;

    move-result-object p0

    new-array p1, v0, [Landroid/arch/persistence/room/migration/Migration;

    sget-object v0, Landroidx/work/impl/WorkDatabaseMigrations;->MIGRATION_4_5:Landroid/arch/persistence/room/migration/Migration;

    aput-object v0, p1, v3

    .line 110
    invoke-virtual {p0, p1}, Landroid/arch/persistence/room/RoomDatabase$Builder;->addMigrations([Landroid/arch/persistence/room/migration/Migration;)Landroid/arch/persistence/room/RoomDatabase$Builder;

    move-result-object p0

    .line 111
    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase$Builder;->fallbackToDestructiveMigration()Landroid/arch/persistence/room/RoomDatabase$Builder;

    move-result-object p0

    .line 112
    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase$Builder;->build()Landroid/arch/persistence/room/RoomDatabase;

    move-result-object p0

    check-cast p0, Landroidx/work/impl/WorkDatabase;

    return-object p0
.end method

.method static generateCleanupCallback()Landroid/arch/persistence/room/RoomDatabase$Callback;
    .registers 1

    .line 116
    new-instance v0, Landroidx/work/impl/WorkDatabase$1;

    invoke-direct {v0}, Landroidx/work/impl/WorkDatabase$1;-><init>()V

    return-object v0
.end method

.method static getPruneDate()J
    .registers 6

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Landroidx/work/impl/WorkDatabase;->PRUNE_THRESHOLD_MILLIS:J

    sub-long v4, v0, v2

    return-wide v4
.end method

.method static getPruneSQL()Ljava/lang/String;
    .registers 3

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (period_start_time + minimum_retention_duration) < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroidx/work/impl/WorkDatabase;->getPruneDate()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract dependencyDao()Landroidx/work/impl/model/DependencyDao;
.end method

.method public abstract systemIdInfoDao()Landroidx/work/impl/model/SystemIdInfoDao;
.end method

.method public abstract workNameDao()Landroidx/work/impl/model/WorkNameDao;
.end method

.method public abstract workSpecDao()Landroidx/work/impl/model/WorkSpecDao;
.end method

.method public abstract workTagDao()Landroidx/work/impl/model/WorkTagDao;
.end method
