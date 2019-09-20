.class public abstract Landroid/arch/persistence/room/paging/LimitOffsetDataSource;
.super Landroid/arch/paging/PositionalDataSource;
.source "LimitOffsetDataSource.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/arch/paging/PositionalDataSource<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mCountQuery:Ljava/lang/String;

.field private final mDb:Landroid/arch/persistence/room/RoomDatabase;

.field private final mInTransaction:Z

.field private final mLimitOffsetQuery:Ljava/lang/String;

.field private final mObserver:Landroid/arch/persistence/room/InvalidationTracker$Observer;

.field private final mSourceQuery:Landroid/arch/persistence/room/RoomSQLiteQuery;


# direct methods
.method protected varargs constructor <init>(Landroid/arch/persistence/room/RoomDatabase;Landroid/arch/persistence/db/SupportSQLiteQuery;Z[Ljava/lang/String;)V
    .registers 5

    .line 58
    invoke-static {p2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->copyFrom(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;-><init>(Landroid/arch/persistence/room/RoomDatabase;Landroid/arch/persistence/room/RoomSQLiteQuery;Z[Ljava/lang/String;)V

    return-void
.end method

.method protected varargs constructor <init>(Landroid/arch/persistence/room/RoomDatabase;Landroid/arch/persistence/room/RoomSQLiteQuery;Z[Ljava/lang/String;)V
    .registers 5

    .line 62
    invoke-direct {p0}, Landroid/arch/paging/PositionalDataSource;-><init>()V

    .line 63
    iput-object p1, p0, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->mDb:Landroid/arch/persistence/room/RoomDatabase;

    .line 64
    iput-object p2, p0, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->mSourceQuery:Landroid/arch/persistence/room/RoomSQLiteQuery;

    .line 65
    iput-boolean p3, p0, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->mInTransaction:Z

    .line 66
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SELECT COUNT(*) FROM ( "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->mSourceQuery:Landroid/arch/persistence/room/RoomSQLiteQuery;

    invoke-virtual {p3}, Landroid/arch/persistence/room/RoomSQLiteQuery;->getSql()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " )"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->mCountQuery:Ljava/lang/String;

    .line 67
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SELECT * FROM ( "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->mSourceQuery:Landroid/arch/persistence/room/RoomSQLiteQuery;

    invoke-virtual {p3}, Landroid/arch/persistence/room/RoomSQLiteQuery;->getSql()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " ) LIMIT ? OFFSET ?"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->mLimitOffsetQuery:Ljava/lang/String;

    .line 68
    new-instance p2, Landroid/arch/persistence/room/paging/LimitOffsetDataSource$1;

    invoke-direct {p2, p0, p4}, Landroid/arch/persistence/room/paging/LimitOffsetDataSource$1;-><init>(Landroid/arch/persistence/room/paging/LimitOffsetDataSource;[Ljava/lang/String;)V

    iput-object p2, p0, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->mObserver:Landroid/arch/persistence/room/InvalidationTracker$Observer;

    .line 74
    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase;->getInvalidationTracker()Landroid/arch/persistence/room/InvalidationTracker;

    move-result-object p1

    iget-object p2, p0, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->mObserver:Landroid/arch/persistence/room/InvalidationTracker$Observer;

    invoke-virtual {p1, p2}, Landroid/arch/persistence/room/InvalidationTracker;->addWeakObserver(Landroid/arch/persistence/room/InvalidationTracker$Observer;)V

    return-void
.end method


# virtual methods
.method protected abstract convertRows(Landroid/database/Cursor;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

.method public countItems()I
    .registers 5

    .line 82
    iget-object v0, p0, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->mCountQuery:Ljava/lang/String;

    iget-object v1, p0, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->mSourceQuery:Landroid/arch/persistence/room/RoomSQLiteQuery;

    .line 83
    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->getArgCount()I

    move-result v1

    .line 82
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    .line 84
    iget-object v1, p0, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->mSourceQuery:Landroid/arch/persistence/room/RoomSQLiteQuery;

    invoke-virtual {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->copyArgumentsFrom(Landroid/arch/persistence/room/RoomSQLiteQuery;)V

    .line 85
    iget-object v1, p0, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->mDb:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1, v0}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v1

    .line 87
    :try_start_17
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_29

    .line 88
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_30

    .line 92
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 93
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    return v2

    .line 92
    :cond_29
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 93
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    return v3

    :catchall_30
    move-exception v2

    .line 92
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 93
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    throw v2
.end method

.method public isInvalid()Z
    .registers 2

    .line 99
    iget-object v0, p0, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->mDb:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomDatabase;->getInvalidationTracker()Landroid/arch/persistence/room/InvalidationTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/persistence/room/InvalidationTracker;->refreshVersionsSync()V

    .line 100
    invoke-super {p0}, Landroid/arch/paging/PositionalDataSource;->isInvalid()Z

    move-result v0

    return v0
.end method

.method public loadInitial(Landroid/arch/paging/PositionalDataSource$LoadInitialParams;Landroid/arch/paging/PositionalDataSource$LoadInitialCallback;)V
    .registers 7
    .param p1    # Landroid/arch/paging/PositionalDataSource$LoadInitialParams;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/arch/paging/PositionalDataSource$LoadInitialCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/paging/PositionalDataSource$LoadInitialParams;",
            "Landroid/arch/paging/PositionalDataSource$LoadInitialCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 109
    invoke-virtual {p0}, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->countItems()I

    move-result v0

    if-nez v0, :cond_f

    .line 111
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, v0}, Landroid/arch/paging/PositionalDataSource$LoadInitialCallback;->onResult(Ljava/util/List;II)V

    return-void

    .line 116
    :cond_f
    invoke-static {p1, v0}, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->computeInitialLoadPosition(Landroid/arch/paging/PositionalDataSource$LoadInitialParams;I)I

    move-result v1

    .line 117
    invoke-static {p1, v1, v0}, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->computeInitialLoadSize(Landroid/arch/paging/PositionalDataSource$LoadInitialParams;II)I

    move-result p1

    .line 119
    invoke-virtual {p0, v1, p1}, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->loadRange(II)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_27

    .line 120
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, p1, :cond_27

    .line 121
    invoke-virtual {p2, v2, v1, v0}, Landroid/arch/paging/PositionalDataSource$LoadInitialCallback;->onResult(Ljava/util/List;II)V

    goto :goto_2a

    .line 124
    :cond_27
    invoke-virtual {p0}, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->invalidate()V

    :goto_2a
    return-void
.end method

.method public loadRange(II)Ljava/util/List;
    .registers 8
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->mLimitOffsetQuery:Ljava/lang/String;

    iget-object v1, p0, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->mSourceQuery:Landroid/arch/persistence/room/RoomSQLiteQuery;

    .line 145
    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->getArgCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    .line 144
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    .line 146
    iget-object v1, p0, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->mSourceQuery:Landroid/arch/persistence/room/RoomSQLiteQuery;

    invoke-virtual {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->copyArgumentsFrom(Landroid/arch/persistence/room/RoomSQLiteQuery;)V

    .line 147
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->getArgCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 148
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->getArgCount()I

    move-result p2

    int-to-long v1, p1

    invoke-virtual {v0, p2, v1, v2}, Landroid/arch/persistence/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 149
    iget-boolean p1, p0, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->mInTransaction:Z

    if-eqz p1, :cond_60

    .line 150
    iget-object p1, p0, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->mDb:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomDatabase;->beginTransaction()V

    const/4 p1, 0x0

    .line 153
    :try_start_2f
    iget-object p2, p0, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->mDb:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p2, v0}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_4e

    .line 154
    :try_start_35
    invoke-virtual {p0, p2}, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->convertRows(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p1

    .line 155
    iget-object v1, p0, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->mDb:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {v1}, Landroid/arch/persistence/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_4c

    if-eqz p2, :cond_43

    .line 159
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 161
    :cond_43
    iget-object p2, p0, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->mDb:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p2}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 162
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    return-object p1

    :catchall_4c
    move-exception p1

    goto :goto_52

    :catchall_4e
    move-exception p2

    move-object v4, p2

    move-object p2, p1

    move-object p1, v4

    :goto_52
    if-eqz p2, :cond_57

    .line 159
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 161
    :cond_57
    iget-object p2, p0, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->mDb:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p2}, Landroid/arch/persistence/room/RoomDatabase;->endTransaction()V

    .line 162
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    throw p1

    .line 165
    :cond_60
    iget-object p1, p0, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->mDb:Landroid/arch/persistence/room/RoomDatabase;

    invoke-virtual {p1, v0}, Landroid/arch/persistence/room/RoomDatabase;->query(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p1

    .line 168
    :try_start_66
    invoke-virtual {p0, p1}, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->convertRows(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p2
    :try_end_6a
    .catchall {:try_start_66 .. :try_end_6a} :catchall_71

    .line 170
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 171
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    return-object p2

    :catchall_71
    move-exception p2

    .line 170
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 171
    invoke-virtual {v0}, Landroid/arch/persistence/room/RoomSQLiteQuery;->release()V

    throw p2
.end method

.method public loadRange(Landroid/arch/paging/PositionalDataSource$LoadRangeParams;Landroid/arch/paging/PositionalDataSource$LoadRangeCallback;)V
    .registers 4
    .param p1    # Landroid/arch/paging/PositionalDataSource$LoadRangeParams;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/arch/paging/PositionalDataSource$LoadRangeCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/paging/PositionalDataSource$LoadRangeParams;",
            "Landroid/arch/paging/PositionalDataSource$LoadRangeCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 131
    iget v0, p1, Landroid/arch/paging/PositionalDataSource$LoadRangeParams;->startPosition:I

    iget p1, p1, Landroid/arch/paging/PositionalDataSource$LoadRangeParams;->loadSize:I

    invoke-virtual {p0, v0, p1}, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->loadRange(II)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 133
    invoke-virtual {p2, p1}, Landroid/arch/paging/PositionalDataSource$LoadRangeCallback;->onResult(Ljava/util/List;)V

    goto :goto_11

    .line 135
    :cond_e
    invoke-virtual {p0}, Landroid/arch/persistence/room/paging/LimitOffsetDataSource;->invalidate()V

    :goto_11
    return-void
.end method
