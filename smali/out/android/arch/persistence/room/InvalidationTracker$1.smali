.class Landroid/arch/persistence/room/InvalidationTracker$1;
.super Ljava/lang/Object;
.source "InvalidationTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/persistence/room/InvalidationTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/arch/persistence/room/InvalidationTracker;


# direct methods
.method constructor <init>(Landroid/arch/persistence/room/InvalidationTracker;)V
    .registers 2

    .line 297
    iput-object p1, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkUpdatedTable()Z
    .registers 8

    .line 355
    iget-object v0, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-static {v0}, Landroid/arch/persistence/room/InvalidationTracker;->access$000(Landroid/arch/persistence/room/InvalidationTracker;)Landroid/arch/persistence/room/RoomDatabase;

    move-result-object v0

    const-string v1, "SELECT * FROM room_table_modification_log WHERE version  > ? ORDER BY version ASC;"

    iget-object v2, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-static {v2}, Landroid/arch/persistence/room/InvalidationTracker;->access$300(Landroid/arch/persistence/room/InvalidationTracker;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/arch/persistence/room/RoomDatabase;->query(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 358
    :goto_15
    :try_start_15
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 359
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 360
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 362
    iget-object v6, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    iget-object v6, v6, Landroid/arch/persistence/room/InvalidationTracker;->mTableVersions:[J

    aput-wide v3, v6, v5

    .line 365
    iget-object v5, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-static {v5, v3, v4}, Landroid/arch/persistence/room/InvalidationTracker;->access$402(Landroid/arch/persistence/room/InvalidationTracker;J)J
    :try_end_2e
    .catchall {:try_start_15 .. :try_end_2e} :catchall_34

    const/4 v3, 0x1

    goto :goto_15

    .line 368
    :cond_30
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v3

    :catchall_34
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 300
    iget-object v0, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-static {v0}, Landroid/arch/persistence/room/InvalidationTracker;->access$000(Landroid/arch/persistence/room/InvalidationTracker;)Landroid/arch/persistence/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->getCloseLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    const/4 v1, 0x0

    .line 303
    :try_start_b
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 305
    iget-object v2, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-static {v2}, Landroid/arch/persistence/room/InvalidationTracker;->access$100(Landroid/arch/persistence/room/InvalidationTracker;)Z

    move-result v2
    :try_end_14
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_14} :catch_91
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_14} :catch_91
    .catchall {:try_start_b .. :try_end_14} :catchall_8f

    if-nez v2, :cond_1a

    .line 342
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 309
    :cond_1a
    :try_start_1a
    iget-object v2, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    iget-object v2, v2, Landroid/arch/persistence/room/InvalidationTracker;->mPendingRefresh:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2
    :try_end_23
    .catch Ljava/lang/IllegalStateException; {:try_start_1a .. :try_end_23} :catch_91
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1a .. :try_end_23} :catch_91
    .catchall {:try_start_1a .. :try_end_23} :catchall_8f

    if-nez v2, :cond_29

    .line 342
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 314
    :cond_29
    :try_start_29
    iget-object v2, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-static {v2}, Landroid/arch/persistence/room/InvalidationTracker;->access$000(Landroid/arch/persistence/room/InvalidationTracker;)Landroid/arch/persistence/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/arch/persistence/room/RoomDatabase;->inTransaction()Z

    move-result v2
    :try_end_33
    .catch Ljava/lang/IllegalStateException; {:try_start_29 .. :try_end_33} :catch_91
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_29 .. :try_end_33} :catch_91
    .catchall {:try_start_29 .. :try_end_33} :catchall_8f

    if-eqz v2, :cond_39

    .line 342
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 321
    :cond_39
    :try_start_39
    iget-object v2, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-static {v2}, Landroid/arch/persistence/room/InvalidationTracker;->access$200(Landroid/arch/persistence/room/InvalidationTracker;)Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v2

    invoke-interface {v2}, Landroid/arch/persistence/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 322
    iget-object v2, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-static {v2}, Landroid/arch/persistence/room/InvalidationTracker;->access$300(Landroid/arch/persistence/room/InvalidationTracker;)[Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-static {v3}, Landroid/arch/persistence/room/InvalidationTracker;->access$400(Landroid/arch/persistence/room/InvalidationTracker;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v1

    .line 323
    iget-object v2, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-static {v2}, Landroid/arch/persistence/room/InvalidationTracker;->access$000(Landroid/arch/persistence/room/InvalidationTracker;)Landroid/arch/persistence/room/RoomDatabase;

    move-result-object v2

    iget-boolean v2, v2, Landroid/arch/persistence/room/RoomDatabase;->mWriteAheadLoggingEnabled:Z

    if-eqz v2, :cond_8a

    .line 326
    iget-object v2, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-static {v2}, Landroid/arch/persistence/room/InvalidationTracker;->access$000(Landroid/arch/persistence/room/InvalidationTracker;)Landroid/arch/persistence/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/arch/persistence/room/RoomDatabase;->getOpenHelper()Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    move-result-object v2

    invoke-interface {v2}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v2
    :try_end_6c
    .catch Ljava/lang/IllegalStateException; {:try_start_39 .. :try_end_6c} :catch_91
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_39 .. :try_end_6c} :catch_91
    .catchall {:try_start_39 .. :try_end_6c} :catchall_8f

    .line 328
    :try_start_6c
    invoke-interface {v2}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->beginTransaction()V

    .line 329
    invoke-direct {p0}, Landroid/arch/persistence/room/InvalidationTracker$1;->checkUpdatedTable()Z

    move-result v3
    :try_end_73
    .catchall {:try_start_6c .. :try_end_73} :catchall_82

    .line 330
    :try_start_73
    invoke-interface {v2}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->setTransactionSuccessful()V
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_7d

    .line 332
    :try_start_76
    invoke-interface {v2}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->endTransaction()V
    :try_end_79
    .catch Ljava/lang/IllegalStateException; {:try_start_76 .. :try_end_79} :catch_7a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_76 .. :try_end_79} :catch_7a
    .catchall {:try_start_76 .. :try_end_79} :catchall_8f

    goto :goto_9a

    :catch_7a
    move-exception v1

    move-object v2, v1

    goto :goto_93

    :catchall_7d
    move-exception v1

    move v5, v3

    move-object v3, v1

    move v1, v5

    goto :goto_83

    :catchall_82
    move-exception v3

    :goto_83
    :try_start_83
    invoke-interface {v2}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->endTransaction()V

    throw v3
    :try_end_87
    .catch Ljava/lang/IllegalStateException; {:try_start_83 .. :try_end_87} :catch_87
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_83 .. :try_end_87} :catch_87
    .catchall {:try_start_83 .. :try_end_87} :catchall_8f

    :catch_87
    move-exception v2

    move v3, v1

    goto :goto_93

    .line 335
    :cond_8a
    :try_start_8a
    invoke-direct {p0}, Landroid/arch/persistence/room/InvalidationTracker$1;->checkUpdatedTable()Z

    move-result v3
    :try_end_8e
    .catch Ljava/lang/IllegalStateException; {:try_start_8a .. :try_end_8e} :catch_91
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8a .. :try_end_8e} :catch_91
    .catchall {:try_start_8a .. :try_end_8e} :catchall_8f

    goto :goto_9a

    :catchall_8f
    move-exception v1

    goto :goto_cc

    :catch_91
    move-exception v2

    const/4 v3, 0x0

    :goto_93
    :try_start_93
    const-string v1, "ROOM"

    const-string v4, "Cannot run invalidation tracker. Is the db closed?"

    .line 339
    invoke-static {v1, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9a
    .catchall {:try_start_93 .. :try_end_9a} :catchall_8f

    .line 342
    :goto_9a
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    if-eqz v3, :cond_cb

    .line 345
    iget-object v0, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    iget-object v0, v0, Landroid/arch/persistence/room/InvalidationTracker;->mObserverMap:Landroid/arch/core/internal/SafeIterableMap;

    monitor-enter v0

    .line 346
    :try_start_a4
    iget-object v1, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    iget-object v1, v1, Landroid/arch/persistence/room/InvalidationTracker;->mObserverMap:Landroid/arch/core/internal/SafeIterableMap;

    invoke-virtual {v1}, Landroid/arch/core/internal/SafeIterableMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_ac
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 347
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;

    iget-object v3, p0, Landroid/arch/persistence/room/InvalidationTracker$1;->this$0:Landroid/arch/persistence/room/InvalidationTracker;

    iget-object v3, v3, Landroid/arch/persistence/room/InvalidationTracker;->mTableVersions:[J

    invoke-virtual {v2, v3}, Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;->checkForInvalidation([J)V

    goto :goto_ac

    .line 349
    :cond_c6
    monitor-exit v0

    goto :goto_cb

    :catchall_c8
    move-exception v1

    monitor-exit v0
    :try_end_ca
    .catchall {:try_start_a4 .. :try_end_ca} :catchall_c8

    throw v1

    :cond_cb
    :goto_cb
    return-void

    .line 342
    :goto_cc
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method
