.class public abstract Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;
.super Landroid/arch/persistence/room/SharedSQLiteStatement;
.source "EntityDeletionOrUpdateAdapter.java"


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

    .line 40
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

.method protected abstract createQuery()Ljava/lang/String;
.end method

.method public final handle(Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;->acquire()Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v0

    .line 69
    :try_start_4
    invoke-virtual {p0, v0, p1}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;->bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Ljava/lang/Object;)V

    .line 70
    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result p1
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_f

    .line 72
    invoke-virtual {p0, v0}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    return p1

    :catchall_f
    move-exception p1

    invoke-virtual {p0, v0}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    throw p1
.end method

.method public final handleMultiple(Ljava/lang/Iterable;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "TT;>;)I"
        }
    .end annotation

    .line 83
    invoke-virtual {p0}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;->acquire()Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v0

    const/4 v1, 0x0

    .line 86
    :try_start_5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 87
    invoke-virtual {p0, v0, v2}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;->bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Ljava/lang/Object;)V

    .line 88
    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result v2
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_20

    add-int/2addr v1, v2

    goto :goto_9

    .line 92
    :cond_1c
    invoke-virtual {p0, v0}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    return v1

    :catchall_20
    move-exception p1

    invoke-virtual {p0, v0}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    throw p1
.end method

.method public final handleMultiple([Ljava/lang/Object;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)I"
        }
    .end annotation

    .line 103
    invoke-virtual {p0}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;->acquire()Landroid/arch/persistence/db/SupportSQLiteStatement;

    move-result-object v0

    .line 106
    :try_start_4
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    if-ge v2, v1, :cond_16

    aget-object v4, p1, v2

    .line 107
    invoke-virtual {p0, v0, v4}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;->bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Ljava/lang/Object;)V

    .line 108
    invoke-interface {v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result v4
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_1a

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 112
    :cond_16
    invoke-virtual {p0, v0}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    return v3

    :catchall_1a
    move-exception p1

    invoke-virtual {p0, v0}, Landroid/arch/persistence/room/EntityDeletionOrUpdateAdapter;->release(Landroid/arch/persistence/db/SupportSQLiteStatement;)V

    throw p1
.end method
