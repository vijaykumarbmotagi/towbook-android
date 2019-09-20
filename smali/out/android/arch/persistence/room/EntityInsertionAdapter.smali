.class public abstract Landroid/arch/persistence/room/EntityInsertionAdapter;
.super Landroid/arch/persistence/room/SharedSQLiteStatement;
.source "EntityInsertionAdapter.java"


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
        "Landroid/arch/persistence/room/SharedSQLiteStatement;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/arch/persistence/room/RoomDatabase;)V
    .registers 2

    .line 43
    invoke-direct {p0, p1}, Landroid/arch/persistence/room/SharedSQLiteStatement;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method protected abstract bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/persistence/db/SupportSQLiteStatement;",
            "TT;)V"
        }
    .end annotation
.end method

.method public final insert(Ljava/lang/Iterable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TT;>;)V"
        }
    .end annotation

    .line 93
    invoke-virtual {p0}, Landroid/arch/persistence/room/EntityInsertionAdapter;->acquire()Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v0

    .line 95
    :try_start_4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 96
    invoke-virtual {p0, v0, v1}, Landroid/arch/persistence/room/EntityInsertionAdapter;->bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Ljava/lang/Object;)V

    .line 97
    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->executeInsert()J
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_1d

    goto :goto_8

    .line 100
    :cond_19
    invoke-virtual {p0, v0}, Landroid/arch/persistence/room/EntityInsertionAdapter;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    return-void

    :catchall_1d
    move-exception p1

    invoke-virtual {p0, v0}, Landroid/arch/persistence/room/EntityInsertionAdapter;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    throw p1
.end method

.method public final insert(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 61
    invoke-virtual {p0}, Landroid/arch/persistence/room/EntityInsertionAdapter;->acquire()Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v0

    .line 63
    :try_start_4
    invoke-virtual {p0, v0, p1}, Landroid/arch/persistence/room/EntityInsertionAdapter;->bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Ljava/lang/Object;)V

    .line 64
    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->executeInsert()J
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 66
    invoke-virtual {p0, v0}, Landroid/arch/persistence/room/EntityInsertionAdapter;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    return-void

    :catchall_e
    move-exception p1

    invoke-virtual {p0, v0}, Landroid/arch/persistence/room/EntityInsertionAdapter;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    throw p1
.end method

.method public final insert([Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 76
    invoke-virtual {p0}, Landroid/arch/persistence/room/EntityInsertionAdapter;->acquire()Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v0

    .line 78
    :try_start_4
    array-length v1, p1

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_13

    aget-object v3, p1, v2

    .line 79
    invoke-virtual {p0, v0, v3}, Landroid/arch/persistence/room/EntityInsertionAdapter;->bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Ljava/lang/Object;)V

    .line 80
    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->executeInsert()J
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_17

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 83
    :cond_13
    invoke-virtual {p0, v0}, Landroid/arch/persistence/room/EntityInsertionAdapter;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    return-void

    :catchall_17
    move-exception p1

    invoke-virtual {p0, v0}, Landroid/arch/persistence/room/EntityInsertionAdapter;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    throw p1
.end method

.method public final insertAndReturnId(Ljava/lang/Object;)J
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    .line 111
    invoke-virtual {p0}, Landroid/arch/persistence/room/EntityInsertionAdapter;->acquire()Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v0

    .line 113
    :try_start_4
    invoke-virtual {p0, v0, p1}, Landroid/arch/persistence/room/EntityInsertionAdapter;->bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Ljava/lang/Object;)V

    .line 114
    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->executeInsert()J

    move-result-wide v1
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_f

    .line 116
    invoke-virtual {p0, v0}, Landroid/arch/persistence/room/EntityInsertionAdapter;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    return-wide v1

    :catchall_f
    move-exception p1

    invoke-virtual {p0, v0}, Landroid/arch/persistence/room/EntityInsertionAdapter;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    throw p1
.end method

.method public final insertAndReturnIdsArray(Ljava/util/Collection;)[J
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)[J"
        }
    .end annotation

    .line 127
    invoke-virtual {p0}, Landroid/arch/persistence/room/EntityInsertionAdapter;->acquire()Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v0

    .line 129
    :try_start_4
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [J

    const/4 v2, 0x0

    .line 131
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 132
    invoke-virtual {p0, v0, v3}, Landroid/arch/persistence/room/EntityInsertionAdapter;->bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Ljava/lang/Object;)V

    .line 133
    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->executeInsert()J

    move-result-wide v3

    aput-wide v3, v1, v2
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_29

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 138
    :cond_25
    invoke-virtual {p0, v0}, Landroid/arch/persistence/room/EntityInsertionAdapter;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    return-object v1

    :catchall_29
    move-exception p1

    invoke-virtual {p0, v0}, Landroid/arch/persistence/room/EntityInsertionAdapter;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    throw p1
.end method

.method public final insertAndReturnIdsArray([Ljava/lang/Object;)[J
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[J"
        }
    .end annotation

    .line 149
    invoke-virtual {p0}, Landroid/arch/persistence/room/EntityInsertionAdapter;->acquire()Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v0

    .line 151
    :try_start_4
    array-length v1, p1

    new-array v1, v1, [J

    .line 153
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_a
    if-ge v3, v2, :cond_1c

    aget-object v5, p1, v3

    .line 154
    invoke-virtual {p0, v0, v5}, Landroid/arch/persistence/room/EntityInsertionAdapter;->bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Ljava/lang/Object;)V

    .line 155
    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->executeInsert()J

    move-result-wide v5

    aput-wide v5, v1, v4
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_20

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 160
    :cond_1c
    invoke-virtual {p0, v0}, Landroid/arch/persistence/room/EntityInsertionAdapter;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    return-object v1

    :catchall_20
    move-exception p1

    invoke-virtual {p0, v0}, Landroid/arch/persistence/room/EntityInsertionAdapter;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    throw p1
.end method

.method public final insertAndReturnIdsArrayBox(Ljava/util/Collection;)[Ljava/lang/Long;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)[",
            "Ljava/lang/Long;"
        }
    .end annotation

    .line 171
    invoke-virtual {p0}, Landroid/arch/persistence/room/EntityInsertionAdapter;->acquire()Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v0

    .line 173
    :try_start_4
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Long;

    const/4 v2, 0x0

    .line 175
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 176
    invoke-virtual {p0, v0, v3}, Landroid/arch/persistence/room/EntityInsertionAdapter;->bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Ljava/lang/Object;)V

    .line 177
    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->executeInsert()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_2d

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 182
    :cond_29
    invoke-virtual {p0, v0}, Landroid/arch/persistence/room/EntityInsertionAdapter;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    return-object v1

    :catchall_2d
    move-exception p1

    invoke-virtual {p0, v0}, Landroid/arch/persistence/room/EntityInsertionAdapter;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    throw p1
.end method

.method public final insertAndReturnIdsArrayBox([Ljava/lang/Object;)[Ljava/lang/Long;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[",
            "Ljava/lang/Long;"
        }
    .end annotation

    .line 193
    invoke-virtual {p0}, Landroid/arch/persistence/room/EntityInsertionAdapter;->acquire()Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v0

    .line 195
    :try_start_4
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/Long;

    .line 197
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_a
    if-ge v3, v2, :cond_20

    aget-object v5, p1, v3

    .line 198
    invoke-virtual {p0, v0, v5}, Landroid/arch/persistence/room/EntityInsertionAdapter;->bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Ljava/lang/Object;)V

    .line 199
    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->executeInsert()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v1, v4
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_24

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 204
    :cond_20
    invoke-virtual {p0, v0}, Landroid/arch/persistence/room/EntityInsertionAdapter;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    return-object v1

    :catchall_24
    move-exception p1

    invoke-virtual {p0, v0}, Landroid/arch/persistence/room/EntityInsertionAdapter;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    throw p1
.end method

.method public final insertAndReturnIdsList(Ljava/util/Collection;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 237
    invoke-virtual {p0}, Landroid/arch/persistence/room/EntityInsertionAdapter;->acquire()Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v0

    .line 239
    :try_start_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    .line 241
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 242
    invoke-virtual {p0, v0, v3}, Landroid/arch/persistence/room/EntityInsertionAdapter;->bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Ljava/lang/Object;)V

    .line 243
    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->executeInsert()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_31

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 248
    :cond_2d
    invoke-virtual {p0, v0}, Landroid/arch/persistence/room/EntityInsertionAdapter;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    return-object v1

    :catchall_31
    move-exception p1

    invoke-virtual {p0, v0}, Landroid/arch/persistence/room/EntityInsertionAdapter;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    throw p1
.end method

.method public final insertAndReturnIdsList([Ljava/lang/Object;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 215
    invoke-virtual {p0}, Landroid/arch/persistence/room/EntityInsertionAdapter;->acquire()Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v0

    .line 217
    :try_start_4
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 219
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_d
    if-ge v3, v2, :cond_24

    aget-object v5, p1, v3

    .line 220
    invoke-virtual {p0, v0, v5}, Landroid/arch/persistence/room/EntityInsertionAdapter;->bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Ljava/lang/Object;)V

    .line 221
    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->executeInsert()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_28

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 226
    :cond_24
    invoke-virtual {p0, v0}, Landroid/arch/persistence/room/EntityInsertionAdapter;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    return-object v1

    :catchall_28
    move-exception p1

    invoke-virtual {p0, v0}, Landroid/arch/persistence/room/EntityInsertionAdapter;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    throw p1
.end method
