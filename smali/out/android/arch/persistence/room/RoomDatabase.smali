.class public abstract Landroid/arch/persistence/room/RoomDatabase;
.super Ljava/lang/Object;
.source "RoomDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/persistence/room/RoomDatabase$Callback;,
        Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;,
        Landroid/arch/persistence/room/RoomDatabase$Builder;,
        Landroid/arch/persistence/room/RoomDatabase$JournalMode;
    }
.end annotation


# static fields
.field private static final DB_IMPL_SUFFIX:Ljava/lang/String; = "_Impl"

.field public static final MAX_BIND_PARAMETER_CNT:I = 0x3e7
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field


# instance fields
.field private mAllowMainThreadQueries:Z

.field protected mCallbacks:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/arch/persistence/room/RoomDatabase$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mCloseLock:Ljava/util/concurrent/locks/ReentrantLock;

.field protected volatile mDatabase:Landroid/arch/persistence/db/SupportSQLiteDatabase;

.field private final mInvalidationTracker:Landroid/arch/persistence/room/InvalidationTracker;

.field private mOpenHelper:Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

.field mWriteAheadLoggingEnabled:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/arch/persistence/room/RoomDatabase;->mCloseLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 100
    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->createInvalidationTracker()Landroid/arch/persistence/room/InvalidationTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/arch/persistence/room/RoomDatabase;->mInvalidationTracker:Landroid/arch/persistence/room/InvalidationTracker;

    return-void
.end method


# virtual methods
.method public assertNotMainThread()V
    .registers 3
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 200
    iget-boolean v0, p0, Landroid/arch/persistence/room/RoomDatabase;->mAllowMainThreadQueries:Z

    if-eqz v0, :cond_5

    return-void

    .line 203
    :cond_5
    invoke-static {}, Landroid/arch/core/executor/ArchTaskExecutor;->getInstance()Landroid/arch/core/executor/ArchTaskExecutor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/core/executor/ArchTaskExecutor;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 204
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access database on the main thread since it may potentially lock the UI for a long period of time."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    return-void
.end method

.method public beginTransaction()V
    .registers 3

    .line 251
    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->assertNotMainThread()V

    .line 252
    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase;->mOpenHelper:Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v0

    .line 253
    iget-object v1, p0, Landroid/arch/persistence/room/RoomDatabase;->mInvalidationTracker:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-virtual {v1, v0}, Landroid/arch/persistence/room/InvalidationTracker;->syncTriggers(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 254
    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->beginTransaction()V

    return-void
.end method

.method public abstract clearAllTables()V
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation
.end method

.method public close()V
    .registers 3

    .line 181
    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 183
    :try_start_6
    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase;->mCloseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 184
    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase;->mOpenHelper:Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper;->close()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_16

    .line 186
    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase;->mCloseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1d

    :catchall_16
    move-exception v0

    iget-object v1, p0, Landroid/arch/persistence/room/RoomDatabase;->mCloseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_1d
    :goto_1d
    return-void
.end method

.method public compileStatement(Ljava/lang/String;)Landroid/arch/persistence/db/SupportSQLiteStatement;
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 243
    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->assertNotMainThread()V

    .line 244
    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase;->mOpenHelper:Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object p1

    return-object p1
.end method

.method protected abstract createInvalidationTracker()Landroid/arch/persistence/room/InvalidationTracker;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method protected abstract createOpenHelper(Landroid/arch/persistence/room/DatabaseConfiguration;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public endTransaction()V
    .registers 2

    .line 261
    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase;->mOpenHelper:Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v0

    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->endTransaction()V

    .line 262
    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->inTransaction()Z

    move-result v0

    if-nez v0, :cond_14

    .line 265
    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase;->mInvalidationTracker:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-virtual {v0}, Landroid/arch/persistence/room/InvalidationTracker;->refreshVersionsAsync()V

    :cond_14
    return-void
.end method

.method getCloseLock()Ljava/util/concurrent/locks/Lock;
    .registers 2

    .line 89
    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase;->mCloseLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method public getInvalidationTracker()Landroid/arch/persistence/room/InvalidationTracker;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 336
    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase;->mInvalidationTracker:Landroid/arch/persistence/room/InvalidationTracker;

    return-object v0
.end method

.method public getOpenHelper()Landroid/arch/persistence/db/SupportSQLiteOpenHelper;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 128
    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase;->mOpenHelper:Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    return-object v0
.end method

.method public inTransaction()Z
    .registers 2

    .line 347
    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase;->mOpenHelper:Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v0

    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v0

    return v0
.end method

.method public init(Landroid/arch/persistence/room/DatabaseConfiguration;)V
    .registers 5
    .param p1    # Landroid/arch/persistence/room/DatabaseConfiguration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 110
    invoke-virtual {p0, p1}, Landroid/arch/persistence/room/RoomDatabase;->createOpenHelper(Landroid/arch/persistence/room/DatabaseConfiguration;)Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    move-result-object v0

    iput-object v0, p0, Landroid/arch/persistence/room/RoomDatabase;->mOpenHelper:Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    .line 112
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-lt v0, v2, :cond_1a

    .line 113
    iget-object v0, p1, Landroid/arch/persistence/room/DatabaseConfiguration;->journalMode:Landroid/arch/persistence/room/RoomDatabase$JournalMode;

    sget-object v2, Landroid/arch/persistence/room/RoomDatabase$JournalMode;->WRITE_AHEAD_LOGGING:Landroid/arch/persistence/room/RoomDatabase$JournalMode;

    if-ne v0, v2, :cond_15

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 114
    :cond_15
    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase;->mOpenHelper:Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    invoke-interface {v0, v1}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    .line 116
    :cond_1a
    iget-object v0, p1, Landroid/arch/persistence/room/DatabaseConfiguration;->callbacks:Ljava/util/List;

    iput-object v0, p0, Landroid/arch/persistence/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    .line 117
    iget-boolean p1, p1, Landroid/arch/persistence/room/DatabaseConfiguration;->allowMainThreadQueries:Z

    iput-boolean p1, p0, Landroid/arch/persistence/room/RoomDatabase;->mAllowMainThreadQueries:Z

    .line 118
    iput-boolean v1, p0, Landroid/arch/persistence/room/RoomDatabase;->mWriteAheadLoggingEnabled:Z

    return-void
.end method

.method protected internalInitInvalidationTracker(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .registers 3
    .param p1    # Landroid/arch/persistence/db/SupportSQLiteDatabase;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 323
    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase;->mInvalidationTracker:Landroid/arch/persistence/room/InvalidationTracker;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/InvalidationTracker;->internalInit(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method public isOpen()Z
    .registers 2

    .line 173
    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase;->mDatabase:Landroid/arch/persistence/db/SupportSQLiteDatabase;

    if-eqz v0, :cond_c

    .line 174
    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;
    .registers 3

    .line 232
    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->assertNotMainThread()V

    .line 233
    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase;->mOpenHelper:Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public query(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;
    .registers 5
    .param p2    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 222
    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase;->mOpenHelper:Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v0

    new-instance v1, Landroid/arch/persistence/db/SimpleSQLiteQuery;

    invoke-direct {v1, p1, p2}, Landroid/arch/persistence/db/SimpleSQLiteQuery;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .registers 4
    .param p1    # Ljava/util/concurrent/Callable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 301
    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 303
    :try_start_3
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1

    .line 304
    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_a} :catch_19
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_10
    .catchall {:try_start_3 .. :try_end_a} :catchall_e

    .line 311
    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    return-object p1

    :catchall_e
    move-exception p1

    goto :goto_1b

    :catch_10
    move-exception p1

    .line 309
    :try_start_11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Exception in transaction"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_19
    move-exception p1

    .line 307
    throw p1
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_e

    .line 311
    :goto_1b
    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public runInTransaction(Ljava/lang/Runnable;)V
    .registers 2
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 283
    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    .line 285
    :try_start_3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 286
    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 288
    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_d
    move-exception p1

    invoke-virtual {p0}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    throw p1
.end method

.method public setTransactionSuccessful()V
    .registers 2

    .line 273
    iget-object v0, p0, Landroid/arch/persistence/room/RoomDatabase;->mOpenHelper:Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v0

    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->setTransactionSuccessful()V

    return-void
.end method
