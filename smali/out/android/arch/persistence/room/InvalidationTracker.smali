.class public Landroid/arch/persistence/room/InvalidationTracker;
.super Ljava/lang/Object;
.source "InvalidationTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/persistence/room/InvalidationTracker$WeakObserver;,
        Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;,
        Landroid/arch/persistence/room/InvalidationTracker$Observer;,
        Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;
    }
.end annotation


# static fields
.field static final CLEANUP_SQL:Ljava/lang/String; = "DELETE FROM room_table_modification_log WHERE version NOT IN( SELECT MAX(version) FROM room_table_modification_log GROUP BY table_id)"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final CREATE_VERSION_TABLE_SQL:Ljava/lang/String; = "CREATE TEMP TABLE room_table_modification_log(version INTEGER PRIMARY KEY AUTOINCREMENT, table_id INTEGER)"

.field static final SELECT_UPDATED_TABLES_SQL:Ljava/lang/String; = "SELECT * FROM room_table_modification_log WHERE version  > ? ORDER BY version ASC;"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final TABLE_ID_COLUMN_NAME:Ljava/lang/String; = "table_id"

.field private static final TRIGGERS:[Ljava/lang/String;

.field private static final UPDATE_TABLE_NAME:Ljava/lang/String; = "room_table_modification_log"

.field private static final VERSION_COLUMN_NAME:Ljava/lang/String; = "version"


# instance fields
.field private volatile mCleanupStatement:Landroid/arch/persistence/db/SupportSQLiteStatement;

.field private final mDatabase:Landroid/arch/persistence/room/RoomDatabase;

.field private volatile mInitialized:Z

.field private mMaxVersion:J

.field private mObservedTableTracker:Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;

.field final mObserverMap:Landroid/arch/core/internal/SafeIterableMap;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/core/internal/SafeIterableMap<",
            "Landroid/arch/persistence/room/InvalidationTracker$Observer;",
            "Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;",
            ">;"
        }
    .end annotation
.end field

.field mPendingRefresh:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mQueryArgs:[Ljava/lang/Object;

.field mRefreshRunnable:Ljava/lang/Runnable;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field mTableIdLookup:Landroid/support/v4/util/ArrayMap;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTableNames:[Ljava/lang/String;

.field mTableVersions:[J
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "UPDATE"

    const-string v1, "DELETE"

    const-string v2, "INSERT"

    .line 64
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/arch/persistence/room/InvalidationTracker;->TRIGGERS:[Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>(Landroid/arch/persistence/room/RoomDatabase;[Ljava/lang/String;)V
    .registers 9
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 100
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/arch/persistence/room/InvalidationTracker;->mQueryArgs:[Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 103
    iput-wide v0, p0, Landroid/arch/persistence/room/InvalidationTracker;->mMaxVersion:J

    .line 107
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Landroid/arch/persistence/room/InvalidationTracker;->mPendingRefresh:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 109
    iput-boolean v3, p0, Landroid/arch/persistence/room/InvalidationTracker;->mInitialized:Z

    .line 116
    new-instance v2, Landroid/arch/core/internal/SafeIterableMap;

    invoke-direct {v2}, Landroid/arch/core/internal/SafeIterableMap;-><init>()V

    iput-object v2, p0, Landroid/arch/persistence/room/InvalidationTracker;->mObserverMap:Landroid/arch/core/internal/SafeIterableMap;

    .line 296
    new-instance v2, Landroid/arch/persistence/room/InvalidationTracker$1;

    invoke-direct {v2, p0}, Landroid/arch/persistence/room/InvalidationTracker$1;-><init>(Landroid/arch/persistence/room/InvalidationTracker;)V

    iput-object v2, p0, Landroid/arch/persistence/room/InvalidationTracker;->mRefreshRunnable:Ljava/lang/Runnable;

    .line 127
    iput-object p1, p0, Landroid/arch/persistence/room/InvalidationTracker;->mDatabase:Landroid/arch/persistence/room/RoomDatabase;

    .line 128
    new-instance p1, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;

    array-length v2, p2

    invoke-direct {p1, v2}, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;-><init>(I)V

    iput-object p1, p0, Landroid/arch/persistence/room/InvalidationTracker;->mObservedTableTracker:Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;

    .line 129
    new-instance p1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {p1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object p1, p0, Landroid/arch/persistence/room/InvalidationTracker;->mTableIdLookup:Landroid/support/v4/util/ArrayMap;

    .line 130
    array-length p1, p2

    .line 131
    new-array v2, p1, [Ljava/lang/String;

    iput-object v2, p0, Landroid/arch/persistence/room/InvalidationTracker;->mTableNames:[Ljava/lang/String;

    :goto_3a
    if-ge v3, p1, :cond_54

    .line 133
    aget-object v2, p2, v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 134
    iget-object v4, p0, Landroid/arch/persistence/room/InvalidationTracker;->mTableIdLookup:Landroid/support/v4/util/ArrayMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v4, p0, Landroid/arch/persistence/room/InvalidationTracker;->mTableNames:[Ljava/lang/String;

    aput-object v2, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 137
    :cond_54
    array-length p1, p2

    new-array p1, p1, [J

    iput-object p1, p0, Landroid/arch/persistence/room/InvalidationTracker;->mTableVersions:[J

    .line 138
    iget-object p1, p0, Landroid/arch/persistence/room/InvalidationTracker;->mTableVersions:[J

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    return-void
.end method

.method static synthetic access$000(Landroid/arch/persistence/room/InvalidationTracker;)Landroid/arch/persistence/room/RoomDatabase;
    .registers 1

    .line 62
    iget-object p0, p0, Landroid/arch/persistence/room/InvalidationTracker;->mDatabase:Landroid/arch/persistence/room/RoomDatabase;

    return-object p0
.end method

.method static synthetic access$100(Landroid/arch/persistence/room/InvalidationTracker;)Z
    .registers 1

    .line 62
    invoke-direct {p0}, Landroid/arch/persistence/room/InvalidationTracker;->ensureInitialization()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Landroid/arch/persistence/room/InvalidationTracker;)Landroid/arch/persistence/db/SupportSQLiteStatement;
    .registers 1

    .line 62
    iget-object p0, p0, Landroid/arch/persistence/room/InvalidationTracker;->mCleanupStatement:Landroid/arch/persistence/db/SupportSQLiteStatement;

    return-object p0
.end method

.method static synthetic access$300(Landroid/arch/persistence/room/InvalidationTracker;)[Ljava/lang/Object;
    .registers 1

    .line 62
    iget-object p0, p0, Landroid/arch/persistence/room/InvalidationTracker;->mQueryArgs:[Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$400(Landroid/arch/persistence/room/InvalidationTracker;)J
    .registers 3

    .line 62
    iget-wide v0, p0, Landroid/arch/persistence/room/InvalidationTracker;->mMaxVersion:J

    return-wide v0
.end method

.method static synthetic access$402(Landroid/arch/persistence/room/InvalidationTracker;J)J
    .registers 3

    .line 62
    iput-wide p1, p0, Landroid/arch/persistence/room/InvalidationTracker;->mMaxVersion:J

    return-wide p1
.end method

.method private static appendTriggerName(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "`"

    .line 170
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "room_table_modification_trigger_"

    .line 171
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    .line 173
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "`"

    .line 175
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private ensureInitialization()Z
    .registers 4

    .line 282
    iget-object v0, p0, Landroid/arch/persistence/room/InvalidationTracker;->mDatabase:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->isOpen()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 285
    :cond_a
    iget-boolean v0, p0, Landroid/arch/persistence/room/InvalidationTracker;->mInitialized:Z

    if-nez v0, :cond_17

    .line 287
    iget-object v0, p0, Landroid/arch/persistence/room/InvalidationTracker;->mDatabase:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->getOpenHelper()Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    move-result-object v0

    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    .line 289
    :cond_17
    iget-boolean v0, p0, Landroid/arch/persistence/room/InvalidationTracker;->mInitialized:Z

    if-nez v0, :cond_23

    const-string v0, "ROOM"

    const-string v2, "database is not initialized even though it is open"

    .line 290
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_23
    const/4 v0, 0x1

    return v0
.end method

.method private startTrackingTable(Landroid/arch/persistence/db/SupportSQLiteDatabase;I)V
    .registers 11

    .line 190
    iget-object v0, p0, Landroid/arch/persistence/room/InvalidationTracker;->mTableNames:[Ljava/lang/String;

    aget-object v0, v0, p2

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    sget-object v2, Landroid/arch/persistence/room/InvalidationTracker;->TRIGGERS:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_e
    if-ge v5, v3, :cond_4e

    aget-object v6, v2, v5

    .line 193
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v7, "CREATE TEMP TRIGGER IF NOT EXISTS "

    .line 194
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-static {v1, v0, v6}, Landroid/arch/persistence/room/InvalidationTracker;->appendTriggerName(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, " AFTER "

    .line 196
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ON `"

    .line 198
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "` BEGIN INSERT OR REPLACE INTO "

    .line 200
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "room_table_modification_log"

    .line 201
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " VALUES(null, "

    .line 202
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "); END"

    .line 204
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_4e
    return-void
.end method

.method private stopTrackingTable(Landroid/arch/persistence/db/SupportSQLiteDatabase;I)V
    .registers 10

    .line 179
    iget-object v0, p0, Landroid/arch/persistence/room/InvalidationTracker;->mTableNames:[Ljava/lang/String;

    aget-object p2, v0, p2

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    sget-object v1, Landroid/arch/persistence/room/InvalidationTracker;->TRIGGERS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v2, :cond_27

    aget-object v5, v1, v4

    .line 182
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v6, "DROP TRIGGER IF EXISTS "

    .line 183
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-static {v0, p2, v5}, Landroid/arch/persistence/room/InvalidationTracker;->appendTriggerName(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_27
    return-void
.end method


# virtual methods
.method public addObserver(Landroid/arch/persistence/room/InvalidationTracker$Observer;)V
    .registers 10
    .param p1    # Landroid/arch/persistence/room/InvalidationTracker$Observer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 225
    iget-object v0, p1, Landroid/arch/persistence/room/InvalidationTracker$Observer;->mTables:[Ljava/lang/String;

    .line 226
    array-length v1, v0

    new-array v1, v1, [I

    .line 227
    array-length v2, v0

    .line 228
    array-length v3, v0

    new-array v3, v3, [J

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v2, :cond_44

    .line 232
    iget-object v5, p0, Landroid/arch/persistence/room/InvalidationTracker;->mTableIdLookup:Landroid/support/v4/util/ArrayMap;

    aget-object v6, v0, v4

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-nez v5, :cond_37

    .line 234
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is no table with name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 236
    :cond_37
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v1, v4

    .line 237
    iget-wide v5, p0, Landroid/arch/persistence/room/InvalidationTracker;->mMaxVersion:J

    aput-wide v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 239
    :cond_44
    new-instance v2, Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;

    invoke-direct {v2, p1, v1, v0, v3}, Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;-><init>(Landroid/arch/persistence/room/InvalidationTracker$Observer;[I[Ljava/lang/String;[J)V

    .line 241
    iget-object v0, p0, Landroid/arch/persistence/room/InvalidationTracker;->mObserverMap:Landroid/arch/core/internal/SafeIterableMap;

    monitor-enter v0

    .line 242
    :try_start_4c
    iget-object v3, p0, Landroid/arch/persistence/room/InvalidationTracker;->mObserverMap:Landroid/arch/core/internal/SafeIterableMap;

    invoke-virtual {v3, p1, v2}, Landroid/arch/core/internal/SafeIterableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;

    .line 243
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_4c .. :try_end_55} :catchall_63

    if-nez p1, :cond_62

    .line 244
    iget-object p1, p0, Landroid/arch/persistence/room/InvalidationTracker;->mObservedTableTracker:Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;

    invoke-virtual {p1, v1}, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->onAdded([I)Z

    move-result p1

    if-eqz p1, :cond_62

    .line 245
    invoke-virtual {p0}, Landroid/arch/persistence/room/InvalidationTracker;->syncTriggers()V

    :cond_62
    return-void

    :catchall_63
    move-exception p1

    .line 243
    :try_start_64
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw p1
.end method

.method public addWeakObserver(Landroid/arch/persistence/room/InvalidationTracker$Observer;)V
    .registers 3
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 261
    new-instance v0, Landroid/arch/persistence/room/InvalidationTracker$WeakObserver;

    invoke-direct {v0, p0, p1}, Landroid/arch/persistence/room/InvalidationTracker$WeakObserver;-><init>(Landroid/arch/persistence/room/InvalidationTracker;Landroid/arch/persistence/room/InvalidationTracker$Observer;)V

    invoke-virtual {p0, v0}, Landroid/arch/persistence/room/InvalidationTracker;->addObserver(Landroid/arch/persistence/room/InvalidationTracker$Observer;)V

    return-void
.end method

.method internalInit(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .registers 3

    .line 147
    monitor-enter p0

    .line 148
    :try_start_1
    iget-boolean v0, p0, Landroid/arch/persistence/room/InvalidationTracker;->mInitialized:Z

    if-eqz v0, :cond_e

    const-string p1, "ROOM"

    const-string v0, "Invalidation tracker is initialized twice :/."

    .line 149
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    monitor-exit p0

    return-void

    .line 153
    :cond_e
    invoke-interface {p1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->beginTransaction()V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_3b

    :try_start_11
    const-string v0, "PRAGMA temp_store = MEMORY;"

    .line 155
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "PRAGMA recursive_triggers=\'ON\';"

    .line 156
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TEMP TABLE room_table_modification_log(version INTEGER PRIMARY KEY AUTOINCREMENT, table_id INTEGER)"

    .line 157
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 158
    invoke-interface {p1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->setTransactionSuccessful()V
    :try_end_23
    .catchall {:try_start_11 .. :try_end_23} :catchall_36

    .line 160
    :try_start_23
    invoke-interface {p1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->endTransaction()V

    .line 162
    invoke-virtual {p0, p1}, Landroid/arch/persistence/room/InvalidationTracker;->syncTriggers(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    const-string v0, "DELETE FROM room_table_modification_log WHERE version NOT IN( SELECT MAX(version) FROM room_table_modification_log GROUP BY table_id)"

    .line 163
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object p1

    iput-object p1, p0, Landroid/arch/persistence/room/InvalidationTracker;->mCleanupStatement:Landroid/arch/persistence/db/SupportSQLiteStatement;

    const/4 p1, 0x1

    .line 164
    iput-boolean p1, p0, Landroid/arch/persistence/room/InvalidationTracker;->mInitialized:Z

    .line 165
    monitor-exit p0

    return-void

    :catchall_36
    move-exception v0

    .line 160
    invoke-interface {p1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->endTransaction()V

    throw v0

    :catchall_3b
    move-exception p1

    .line 165
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_23 .. :try_end_3d} :catchall_3b

    throw p1
.end method

.method public refreshVersionsAsync()V
    .registers 4

    .line 384
    iget-object v0, p0, Landroid/arch/persistence/room/InvalidationTracker;->mPendingRefresh:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 385
    invoke-static {}, Landroid/arch/core/executor/ArchTaskExecutor;->getInstance()Landroid/arch/core/executor/ArchTaskExecutor;

    move-result-object v0

    iget-object v1, p0, Landroid/arch/persistence/room/InvalidationTracker;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/arch/core/executor/ArchTaskExecutor;->executeOnDiskIO(Ljava/lang/Runnable;)V

    :cond_13
    return-void
.end method

.method public refreshVersionsSync()V
    .registers 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 397
    invoke-virtual {p0}, Landroid/arch/persistence/room/InvalidationTracker;->syncTriggers()V

    .line 398
    iget-object v0, p0, Landroid/arch/persistence/room/InvalidationTracker;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public removeObserver(Landroid/arch/persistence/room/InvalidationTracker$Observer;)V
    .registers 4
    .param p1    # Landroid/arch/persistence/room/InvalidationTracker$Observer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 273
    iget-object v0, p0, Landroid/arch/persistence/room/InvalidationTracker;->mObserverMap:Landroid/arch/core/internal/SafeIterableMap;

    monitor-enter v0

    .line 274
    :try_start_3
    iget-object v1, p0, Landroid/arch/persistence/room/InvalidationTracker;->mObserverMap:Landroid/arch/core/internal/SafeIterableMap;

    invoke-virtual {v1, p1}, Landroid/arch/core/internal/SafeIterableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;

    .line 275
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1c

    if-eqz p1, :cond_1b

    .line 276
    iget-object v0, p0, Landroid/arch/persistence/room/InvalidationTracker;->mObservedTableTracker:Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;

    iget-object p1, p1, Landroid/arch/persistence/room/InvalidationTracker$ObserverWrapper;->mTableIds:[I

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->onRemoved([I)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 277
    invoke-virtual {p0}, Landroid/arch/persistence/room/InvalidationTracker;->syncTriggers()V

    :cond_1b
    return-void

    :catchall_1c
    move-exception p1

    .line 275
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method syncTriggers()V
    .registers 2

    .line 457
    iget-object v0, p0, Landroid/arch/persistence/room/InvalidationTracker;->mDatabase:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 460
    :cond_9
    iget-object v0, p0, Landroid/arch/persistence/room/InvalidationTracker;->mDatabase:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->getOpenHelper()Landroid/arch/persistence/db/SupportSQLiteOpenHelper;

    move-result-object v0

    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroid/arch/persistence/db/SupportSQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/arch/persistence/room/InvalidationTracker;->syncTriggers(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method syncTriggers(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .registers 7

    .line 402
    invoke-interface {p1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 410
    :cond_7
    :goto_7
    :try_start_7
    iget-object v0, p0, Landroid/arch/persistence/room/InvalidationTracker;->mDatabase:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->getCloseLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 411
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_10
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_10} :catch_4c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_10} :catch_4c

    .line 415
    :try_start_10
    iget-object v1, p0, Landroid/arch/persistence/room/InvalidationTracker;->mObservedTableTracker:Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;

    invoke-virtual {v1}, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->getTablesToSync()[I

    move-result-object v1
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_47

    if-nez v1, :cond_1c

    .line 438
    :try_start_18
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_1b
    .catch Ljava/lang/IllegalStateException; {:try_start_18 .. :try_end_1b} :catch_4c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18 .. :try_end_1b} :catch_4c

    return-void

    .line 419
    :cond_1c
    :try_start_1c
    array-length v2, v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_47

    .line 421
    :try_start_1d
    invoke-interface {p1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->beginTransaction()V

    const/4 v3, 0x0

    :goto_21
    if-ge v3, v2, :cond_33

    .line 423
    aget v4, v1, v3

    packed-switch v4, :pswitch_data_56

    goto :goto_30

    .line 428
    :pswitch_29
    invoke-direct {p0, p1, v3}, Landroid/arch/persistence/room/InvalidationTracker;->stopTrackingTable(Landroid/arch/persistence/db/SupportSQLiteDatabase;I)V

    goto :goto_30

    .line 425
    :pswitch_2d
    invoke-direct {p0, p1, v3}, Landroid/arch/persistence/room/InvalidationTracker;->startTrackingTable(Landroid/arch/persistence/db/SupportSQLiteDatabase;I)V

    :goto_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 432
    :cond_33
    invoke-interface {p1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->setTransactionSuccessful()V
    :try_end_36
    .catchall {:try_start_1d .. :try_end_36} :catchall_42

    .line 434
    :try_start_36
    invoke-interface {p1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->endTransaction()V

    .line 436
    iget-object v1, p0, Landroid/arch/persistence/room/InvalidationTracker;->mObservedTableTracker:Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;

    invoke-virtual {v1}, Landroid/arch/persistence/room/InvalidationTracker$ObservedTableTracker;->onSyncCompleted()V
    :try_end_3e
    .catchall {:try_start_36 .. :try_end_3e} :catchall_47

    .line 438
    :try_start_3e
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_41
    .catch Ljava/lang/IllegalStateException; {:try_start_3e .. :try_end_41} :catch_4c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3e .. :try_end_41} :catch_4c

    goto :goto_7

    :catchall_42
    move-exception v1

    .line 434
    :try_start_43
    invoke-interface {p1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->endTransaction()V

    throw v1
    :try_end_47
    .catchall {:try_start_43 .. :try_end_47} :catchall_47

    :catchall_47
    move-exception p1

    .line 438
    :try_start_48
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
    :try_end_4c
    .catch Ljava/lang/IllegalStateException; {:try_start_48 .. :try_end_4c} :catch_4c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_48 .. :try_end_4c} :catch_4c

    :catch_4c
    move-exception p1

    const-string v0, "ROOM"

    const-string v1, "Cannot run invalidation tracker. Is the db closed?"

    .line 443
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_29
    .end packed-switch
.end method
