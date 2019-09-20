.class public Landroidx/work/impl/WorkDatabase_Impl;
.super Landroidx/work/impl/WorkDatabase;
.source "WorkDatabase_Impl.java"


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# instance fields
.field private volatile _dependencyDao:Landroidx/work/impl/model/DependencyDao;

.field private volatile _systemIdInfoDao:Landroidx/work/impl/model/SystemIdInfoDao;

.field private volatile _workNameDao:Landroidx/work/impl/model/WorkNameDao;

.field private volatile _workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

.field private volatile _workTagDao:Landroidx/work/impl/model/WorkTagDao;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Landroidx/work/impl/WorkDatabase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .registers 1

    .line 34
    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .registers 1

    .line 34
    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .registers 1

    .line 34
    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$302(Landroidx/work/impl/WorkDatabase_Impl;Landroid/arch/persistence/db/SupportSQLiteDatabase;)Landroid/arch/persistence/db/SupportSQLiteDatabase;
    .registers 2

    .line 34
    iput-object p1, p0, Landroidx/work/impl/WorkDatabase_Impl;->mDatabase:Landroid/arch/persistence/db/SupportSQLiteDatabase;

    return-object p1
.end method

.method static synthetic access$400(Landroidx/work/impl/WorkDatabase_Impl;Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .registers 2

    .line 34
    invoke-virtual {p0, p1}, Landroidx/work/impl/WorkDatabase_Impl;->internalInitInvalidationTracker(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$500(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .registers 1

    .line 34
    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .registers 1

    .line 34
    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .registers 1

    .line 34
    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public clearAllTables()V
    .registers 5

    .line 204
    invoke-super {p0}, Landroidx/work/impl/WorkDatabase;->assertNotMainThread()V

    .line 205
    invoke-super {p0}, Landroidx/work/impl/WorkDatabase;->getOpenHelper()Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    move-result-object v0

    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v0

    .line 206
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    if-nez v1, :cond_2a

    :try_start_16
    const-string v2, "PRAGMA foreign_keys = FALSE"

    .line 209
    instance-of v3, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_20

    invoke-interface {v0, v2}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_2a

    :cond_20
    move-object v3, v0

    check-cast v3, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v3, v2}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_2a

    :catchall_27
    move-exception v2

    goto/16 :goto_c6

    .line 211
    :cond_2a
    :goto_2a
    invoke-super {p0}, Landroidx/work/impl/WorkDatabase;->beginTransaction()V

    if-eqz v1, :cond_3f

    const-string v2, "PRAGMA defer_foreign_keys = TRUE"

    .line 213
    instance-of v3, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_39

    invoke-interface {v0, v2}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_3f

    :cond_39
    move-object v3, v0

    check-cast v3, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v3, v2}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    :cond_3f
    :goto_3f
    const-string v2, "DELETE FROM `Dependency`"

    .line 215
    instance-of v3, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_49

    invoke-interface {v0, v2}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_4f

    :cond_49
    move-object v3, v0

    check-cast v3, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v3, v2}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    :goto_4f
    const-string v2, "DELETE FROM `WorkSpec`"

    .line 216
    instance-of v3, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_59

    invoke-interface {v0, v2}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_5f

    :cond_59
    move-object v3, v0

    check-cast v3, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v3, v2}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    :goto_5f
    const-string v2, "DELETE FROM `WorkTag`"

    .line 217
    instance-of v3, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_69

    invoke-interface {v0, v2}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_6f

    :cond_69
    move-object v3, v0

    check-cast v3, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v3, v2}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    :goto_6f
    const-string v2, "DELETE FROM `SystemIdInfo`"

    .line 218
    instance-of v3, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_79

    invoke-interface {v0, v2}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_7f

    :cond_79
    move-object v3, v0

    check-cast v3, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v3, v2}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    :goto_7f
    const-string v2, "DELETE FROM `WorkName`"

    .line 219
    instance-of v3, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_89

    invoke-interface {v0, v2}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_8f

    :cond_89
    move-object v3, v0

    check-cast v3, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v3, v2}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 220
    :goto_8f
    invoke-super {p0}, Landroidx/work/impl/WorkDatabase;->setTransactionSuccessful()V
    :try_end_92
    .catchall {:try_start_16 .. :try_end_92} :catchall_27

    .line 222
    invoke-super {p0}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    if-nez v1, :cond_a7

    const-string v1, "PRAGMA foreign_keys = TRUE"

    .line 224
    instance-of v2, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_a1

    invoke-interface {v0, v1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_a7

    :cond_a1
    move-object v2, v0

    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v2, v1}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    :cond_a7
    :goto_a7
    const-string v1, "PRAGMA wal_checkpoint(FULL)"

    .line 226
    invoke-interface {v0, v1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 227
    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_c5

    const-string v1, "VACUUM"

    .line 228
    instance-of v2, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_c0

    invoke-interface {v0, v1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_c5

    :cond_c0
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    :cond_c5
    :goto_c5
    return-void

    .line 222
    :goto_c6
    invoke-super {p0}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    if-nez v1, :cond_db

    const-string v1, "PRAGMA foreign_keys = TRUE"

    .line 224
    instance-of v3, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_d5

    invoke-interface {v0, v1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_db

    :cond_d5
    move-object v3, v0

    check-cast v3, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v3, v1}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    :cond_db
    :goto_db
    const-string v1, "PRAGMA wal_checkpoint(FULL)"

    .line 226
    invoke-interface {v0, v1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 227
    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_f9

    const-string v1, "VACUUM"

    .line 228
    instance-of v3, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_f4

    invoke-interface {v0, v1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_f9

    :cond_f4
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    :cond_f9
    :goto_f9
    throw v2
.end method

.method protected createInvalidationTracker()Landroid/arch/persistence/room/InvalidationTracker;
    .registers 7

    .line 199
    new-instance v0, Landroid/arch/persistence/room/InvalidationTracker;

    const-string v1, "Dependency"

    const-string v2, "WorkSpec"

    const-string v3, "WorkTag"

    const-string v4, "SystemIdInfo"

    const-string v5, "WorkName"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/arch/persistence/room/InvalidationTracker;-><init>(Landroid/arch/persistence/room/RoomDatabase;[Ljava/lang/String;)V

    return-object v0
.end method

.method protected createOpenHelper(Landroid/arch/persistence/room/DatabaseConfiguration;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper;
    .registers 6

    .line 47
    new-instance v0, Landroid/arch/persistence/room/RoomOpenHelper;

    new-instance v1, Landroidx/work/impl/WorkDatabase_Impl$1;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Landroidx/work/impl/WorkDatabase_Impl$1;-><init>(Landroidx/work/impl/WorkDatabase_Impl;I)V

    const-string v2, "c84d23ade98552f1cec71088c1f0794c"

    const-string v3, "1db8206f0da6aa81bbdd2d99a82d9e14"

    invoke-direct {v0, p1, v1, v2, v3}, Landroid/arch/persistence/room/RoomOpenHelper;-><init>(Landroid/arch/persistence/room/DatabaseConfiguration;Landroid/arch/persistence/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v1, p1, Landroid/arch/persistence/room/DatabaseConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;->builder(Landroid/content/Context;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    iget-object v2, p1, Landroid/arch/persistence/room/DatabaseConfiguration;->name:Ljava/lang/String;

    .line 190
    invoke-virtual {v1, v2}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->name(Ljava/lang/String;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    .line 191
    invoke-virtual {v1, v0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback(Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration$Builder;->build()Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object v0

    .line 193
    iget-object p1, p1, Landroid/arch/persistence/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Factory;->create(Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Configuration;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    move-result-object p1

    return-object p1
.end method

.method public dependencyDao()Landroidx/work/impl/model/DependencyDao;
    .registers 2

    .line 249
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_dependencyDao:Landroidx/work/impl/model/DependencyDao;

    if-eqz v0, :cond_7

    .line 250
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_dependencyDao:Landroidx/work/impl/model/DependencyDao;

    return-object v0

    .line 252
    :cond_7
    monitor-enter p0

    .line 253
    :try_start_8
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_dependencyDao:Landroidx/work/impl/model/DependencyDao;

    if-nez v0, :cond_13

    .line 254
    new-instance v0, Landroidx/work/impl/model/DependencyDao_Impl;

    invoke-direct {v0, p0}, Landroidx/work/impl/model/DependencyDao_Impl;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_dependencyDao:Landroidx/work/impl/model/DependencyDao;

    .line 256
    :cond_13
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_dependencyDao:Landroidx/work/impl/model/DependencyDao;

    monitor-exit p0

    return-object v0

    :catchall_17
    move-exception v0

    .line 257
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public systemIdInfoDao()Landroidx/work/impl/model/SystemIdInfoDao;
    .registers 2

    .line 277
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_systemIdInfoDao:Landroidx/work/impl/model/SystemIdInfoDao;

    if-eqz v0, :cond_7

    .line 278
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_systemIdInfoDao:Landroidx/work/impl/model/SystemIdInfoDao;

    return-object v0

    .line 280
    :cond_7
    monitor-enter p0

    .line 281
    :try_start_8
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_systemIdInfoDao:Landroidx/work/impl/model/SystemIdInfoDao;

    if-nez v0, :cond_13

    .line 282
    new-instance v0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;

    invoke-direct {v0, p0}, Landroidx/work/impl/model/SystemIdInfoDao_Impl;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_systemIdInfoDao:Landroidx/work/impl/model/SystemIdInfoDao;

    .line 284
    :cond_13
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_systemIdInfoDao:Landroidx/work/impl/model/SystemIdInfoDao;

    monitor-exit p0

    return-object v0

    :catchall_17
    move-exception v0

    .line 285
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public workNameDao()Landroidx/work/impl/model/WorkNameDao;
    .registers 2

    .line 291
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workNameDao:Landroidx/work/impl/model/WorkNameDao;

    if-eqz v0, :cond_7

    .line 292
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workNameDao:Landroidx/work/impl/model/WorkNameDao;

    return-object v0

    .line 294
    :cond_7
    monitor-enter p0

    .line 295
    :try_start_8
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workNameDao:Landroidx/work/impl/model/WorkNameDao;

    if-nez v0, :cond_13

    .line 296
    new-instance v0, Landroidx/work/impl/model/WorkNameDao_Impl;

    invoke-direct {v0, p0}, Landroidx/work/impl/model/WorkNameDao_Impl;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workNameDao:Landroidx/work/impl/model/WorkNameDao;

    .line 298
    :cond_13
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workNameDao:Landroidx/work/impl/model/WorkNameDao;

    monitor-exit p0

    return-object v0

    :catchall_17
    move-exception v0

    .line 299
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public workSpecDao()Landroidx/work/impl/model/WorkSpecDao;
    .registers 2

    .line 235
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    if-eqz v0, :cond_7

    .line 236
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    return-object v0

    .line 238
    :cond_7
    monitor-enter p0

    .line 239
    :try_start_8
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    if-nez v0, :cond_13

    .line 240
    new-instance v0, Landroidx/work/impl/model/WorkSpecDao_Impl;

    invoke-direct {v0, p0}, Landroidx/work/impl/model/WorkSpecDao_Impl;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 242
    :cond_13
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    monitor-exit p0

    return-object v0

    :catchall_17
    move-exception v0

    .line 243
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public workTagDao()Landroidx/work/impl/model/WorkTagDao;
    .registers 2

    .line 263
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workTagDao:Landroidx/work/impl/model/WorkTagDao;

    if-eqz v0, :cond_7

    .line 264
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workTagDao:Landroidx/work/impl/model/WorkTagDao;

    return-object v0

    .line 266
    :cond_7
    monitor-enter p0

    .line 267
    :try_start_8
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workTagDao:Landroidx/work/impl/model/WorkTagDao;

    if-nez v0, :cond_13

    .line 268
    new-instance v0, Landroidx/work/impl/model/WorkTagDao_Impl;

    invoke-direct {v0, p0}, Landroidx/work/impl/model/WorkTagDao_Impl;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workTagDao:Landroidx/work/impl/model/WorkTagDao;

    .line 270
    :cond_13
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workTagDao:Landroidx/work/impl/model/WorkTagDao;

    monitor-exit p0

    return-object v0

    :catchall_17
    move-exception v0

    .line 271
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_17

    throw v0
.end method
