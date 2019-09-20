.class public Landroid/arch/persistence/room/RoomOpenHelper;
.super Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;
.source "RoomOpenHelper.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/persistence/room/RoomOpenHelper$Delegate;
    }
.end annotation


# instance fields
.field private mConfiguration:Landroid/arch/persistence/room/DatabaseConfiguration;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mDelegate:Landroid/arch/persistence/room/RoomOpenHelper$Delegate;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mIdentityHash:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mLegacyHash:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/arch/persistence/room/DatabaseConfiguration;Landroid/arch/persistence/room/RoomOpenHelper$Delegate;Ljava/lang/String;)V
    .registers 5
    .param p1    # Landroid/arch/persistence/room/DatabaseConfiguration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/arch/persistence/room/RoomOpenHelper$Delegate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, ""

    .line 62
    invoke-direct {p0, p1, p2, v0, p3}, Landroid/arch/persistence/room/RoomOpenHelper;-><init>(Landroid/arch/persistence/room/DatabaseConfiguration;Landroid/arch/persistence/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/arch/persistence/room/DatabaseConfiguration;Landroid/arch/persistence/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1    # Landroid/arch/persistence/room/DatabaseConfiguration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/arch/persistence/room/RoomOpenHelper$Delegate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 53
    iget v0, p2, Landroid/arch/persistence/room/RoomOpenHelper$Delegate;->version:I

    invoke-direct {p0, v0}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;-><init>(I)V

    .line 54
    iput-object p1, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mConfiguration:Landroid/arch/persistence/room/DatabaseConfiguration;

    .line 55
    iput-object p2, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mDelegate:Landroid/arch/persistence/room/RoomOpenHelper$Delegate;

    .line 56
    iput-object p3, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mIdentityHash:Ljava/lang/String;

    .line 57
    iput-object p4, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mLegacyHash:Ljava/lang/String;

    return-void
.end method

.method private checkIdentity(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .registers 5

    .line 123
    invoke-static {p1}, Landroid/arch/persistence/room/RoomOpenHelper;->hasRoomMasterTable(Landroid/arch/persistence/db/SupportSQLiteDatabase;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    .line 124
    new-instance v0, Landroid/arch/persistence/db/SimpleSQLiteQuery;

    const-string v2, "SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"

    invoke-direct {v0, v2}, Landroid/arch/persistence/db/SimpleSQLiteQuery;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p1

    .line 127
    :try_start_12
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x0

    .line 128
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_22

    move-object v1, v0

    .line 131
    :cond_1e
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_27

    :catchall_22
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 134
    :cond_27
    :goto_27
    iget-object p1, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mIdentityHash:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3f

    iget-object p1, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mLegacyHash:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3f

    .line 135
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Room cannot verify the data integrity. Looks like you\'ve changed schema but forgot to update the version number. You can simply fix this by increasing the version number."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3f
    return-void
.end method

.method private createMasterTableIfNotExists(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .registers 3

    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 147
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private static hasRoomMasterTable(Landroid/arch/persistence/db/SupportSQLiteDatabase;)Z
    .registers 3

    const-string v0, "SELECT 1 FROM sqlite_master WHERE type = \'table\' AND name=\'room_master_table\'"

    .line 151
    invoke-interface {p0, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 155
    :try_start_6
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_18

    if-eqz v0, :cond_14

    const/4 v1, 0x1

    .line 157
    :cond_14
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return v1

    :catchall_18
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private updateIdentity(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .registers 3

    .line 142
    invoke-direct {p0, p1}, Landroid/arch/persistence/room/RoomOpenHelper;->createMasterTableIfNotExists(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 143
    iget-object v0, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mIdentityHash:Ljava/lang/String;

    invoke-static {v0}, Landroid/arch/persistence/room/RoomMasterTable;->createInsertQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onConfigure(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .registers 2

    .line 67
    invoke-super {p0, p1}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;->onConfigure(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method public onCreate(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .registers 3

    .line 72
    invoke-direct {p0, p1}, Landroid/arch/persistence/room/RoomOpenHelper;->updateIdentity(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 73
    iget-object v0, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mDelegate:Landroid/arch/persistence/room/RoomOpenHelper$Delegate;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/RoomOpenHelper$Delegate;->createAllTables(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 74
    iget-object v0, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mDelegate:Landroid/arch/persistence/room/RoomOpenHelper$Delegate;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/RoomOpenHelper$Delegate;->onCreate(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method public onDowngrade(Landroid/arch/persistence/db/SupportSQLiteDatabase;II)V
    .registers 4

    .line 109
    invoke-virtual {p0, p1, p2, p3}, Landroid/arch/persistence/room/RoomOpenHelper;->onUpgrade(Landroid/arch/persistence/db/SupportSQLiteDatabase;II)V

    return-void
.end method

.method public onOpen(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .registers 3

    .line 114
    invoke-super {p0, p1}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;->onOpen(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 115
    invoke-direct {p0, p1}, Landroid/arch/persistence/room/RoomOpenHelper;->checkIdentity(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 116
    iget-object v0, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mDelegate:Landroid/arch/persistence/room/RoomOpenHelper$Delegate;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/RoomOpenHelper$Delegate;->onOpen(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    const/4 p1, 0x0

    .line 118
    iput-object p1, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mConfiguration:Landroid/arch/persistence/room/DatabaseConfiguration;

    return-void
.end method

.method public onUpgrade(Landroid/arch/persistence/db/SupportSQLiteDatabase;II)V
    .registers 6

    .line 80
    iget-object v0, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mConfiguration:Landroid/arch/persistence/room/DatabaseConfiguration;

    if-eqz v0, :cond_2c

    .line 81
    iget-object v0, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mConfiguration:Landroid/arch/persistence/room/DatabaseConfiguration;

    iget-object v0, v0, Landroid/arch/persistence/room/DatabaseConfiguration;->migrationContainer:Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;

    invoke-virtual {v0, p2, p3}, Landroid/arch/persistence/room/RoomDatabase$MigrationContainer;->findMigrationPath(II)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 84
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/arch/persistence/room/migration/Migration;

    .line 85
    invoke-virtual {v1, p1}, Landroid/arch/persistence/room/migration/Migration;->migrate(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    goto :goto_12

    .line 87
    :cond_22
    iget-object v0, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mDelegate:Landroid/arch/persistence/room/RoomOpenHelper$Delegate;

    invoke-virtual {v0, p1}, Landroid/arch/persistence/room/RoomOpenHelper$Delegate;->validateMigration(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 88
    invoke-direct {p0, p1}, Landroid/arch/persistence/room/RoomOpenHelper;->updateIdentity(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    const/4 v0, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x0

    :goto_2d
    if-nez v0, :cond_7e

    .line 93
    iget-object v0, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mConfiguration:Landroid/arch/persistence/room/DatabaseConfiguration;

    if-eqz v0, :cond_46

    iget-object v0, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mConfiguration:Landroid/arch/persistence/room/DatabaseConfiguration;

    invoke-virtual {v0, p2}, Landroid/arch/persistence/room/DatabaseConfiguration;->isMigrationRequiredFrom(I)Z

    move-result v0

    if-nez v0, :cond_46

    .line 94
    iget-object p2, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mDelegate:Landroid/arch/persistence/room/RoomOpenHelper$Delegate;

    invoke-virtual {p2, p1}, Landroid/arch/persistence/room/RoomOpenHelper$Delegate;->dropAllTables(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    .line 95
    iget-object p2, p0, Landroid/arch/persistence/room/RoomOpenHelper;->mDelegate:Landroid/arch/persistence/room/RoomOpenHelper$Delegate;

    invoke-virtual {p2, p1}, Landroid/arch/persistence/room/RoomOpenHelper$Delegate;->createAllTables(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    goto :goto_7e

    .line 97
    :cond_46
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A migration from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " was required but not found. Please provide the "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "necessary Migration path via "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "RoomDatabase.Builder.addMigration(Migration ...) or allow for "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "destructive migrations via one of the "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "RoomDatabase.Builder.fallbackToDestructiveMigration* methods."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7e
    :goto_7e
    return-void
.end method
