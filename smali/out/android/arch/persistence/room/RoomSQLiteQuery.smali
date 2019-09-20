.class public Landroid/arch/persistence/room/RoomSQLiteQuery;
.super Ljava/lang/Object;
.source "RoomSQLiteQuery.java"

# interfaces
.implements Landroid/arch/persistence/db/SupportSQLiteQuery;
.implements Landroid/arch/persistence/db/SupportSQLiteProgram;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final BLOB:I = 0x5

.field static final DESIRED_POOL_SIZE:I = 0xa
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final DOUBLE:I = 0x3

.field private static final LONG:I = 0x2

.field private static final NULL:I = 0x1

.field static final POOL_LIMIT:I = 0xf
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final STRING:I = 0x4

.field static final sQueryPool:Ljava/util/TreeMap;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Landroid/arch/persistence/room/RoomSQLiteQuery;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mArgCount:I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mBindingTypes:[I

.field final mBlobBindings:[[B
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field final mCapacity:I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field final mDoubleBindings:[D
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field final mLongBindings:[J
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private volatile mQuery:Ljava/lang/String;

.field final mStringBindings:[Ljava/lang/String;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 79
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Landroid/arch/persistence/room/RoomSQLiteQuery;->sQueryPool:Ljava/util/TreeMap;

    return-void
.end method

.method private constructor <init>(I)V
    .registers 3

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput p1, p0, Landroid/arch/persistence/room/RoomSQLiteQuery;->mCapacity:I

    add-int/lit8 p1, p1, 0x1

    .line 161
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/arch/persistence/room/RoomSQLiteQuery;->mBindingTypes:[I

    .line 162
    new-array v0, p1, [J

    iput-object v0, p0, Landroid/arch/persistence/room/RoomSQLiteQuery;->mLongBindings:[J

    .line 163
    new-array v0, p1, [D

    iput-object v0, p0, Landroid/arch/persistence/room/RoomSQLiteQuery;->mDoubleBindings:[D

    .line 164
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Landroid/arch/persistence/room/RoomSQLiteQuery;->mStringBindings:[Ljava/lang/String;

    .line 165
    new-array p1, p1, [[B

    iput-object p1, p0, Landroid/arch/persistence/room/RoomSQLiteQuery;->mBlobBindings:[[B

    return-void
.end method

.method public static acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;
    .registers 6

    .line 141
    sget-object v0, Landroid/arch/persistence/room/RoomSQLiteQuery;->sQueryPool:Ljava/util/TreeMap;

    monitor-enter v0

    .line 142
    :try_start_3
    sget-object v1, Landroid/arch/persistence/room/RoomSQLiteQuery;->sQueryPool:Ljava/util/TreeMap;

    .line 143
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 145
    sget-object v2, Landroid/arch/persistence/room/RoomSQLiteQuery;->sQueryPool:Ljava/util/TreeMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/arch/persistence/room/RoomSQLiteQuery;

    .line 147
    invoke-virtual {v1, p0, p1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->init(Ljava/lang/String;I)V

    .line 148
    monitor-exit v0

    return-object v1

    .line 150
    :cond_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_2d

    .line 151
    new-instance v0, Landroid/arch/persistence/room/RoomSQLiteQuery;

    invoke-direct {v0, p1}, Landroid/arch/persistence/room/RoomSQLiteQuery;-><init>(I)V

    .line 152
    invoke-virtual {v0, p0, p1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->init(Ljava/lang/String;I)V

    return-object v0

    :catchall_2d
    move-exception p0

    .line 150
    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method public static copyFrom(Landroid/arch/persistence/db/SupportSQLiteQuery;)Landroid/arch/persistence/room/RoomSQLiteQuery;
    .registers 3

    .line 89
    invoke-interface {p0}, Landroid/arch/persistence/db/SupportSQLiteQuery;->getSql()Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-interface {p0}, Landroid/arch/persistence/db/SupportSQLiteQuery;->getArgCount()I

    move-result v1

    .line 88
    invoke-static {v0, v1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroid/arch/persistence/room/RoomSQLiteQuery;

    move-result-object v0

    .line 91
    new-instance v1, Landroid/arch/persistence/room/RoomSQLiteQuery$1;

    invoke-direct {v1, v0}, Landroid/arch/persistence/room/RoomSQLiteQuery$1;-><init>(Landroid/arch/persistence/room/RoomSQLiteQuery;)V

    invoke-interface {p0, v1}, Landroid/arch/persistence/db/SupportSQLiteQuery;->bindTo(Landroid/arch/persistence/db/SupportSQLiteProgram;)V

    return-object v0
.end method

.method private static prunePoolLocked()V
    .registers 3

    .line 189
    sget-object v0, Landroid/arch/persistence/room/RoomSQLiteQuery;->sQueryPool:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    const/16 v1, 0xf

    if-le v0, v1, :cond_28

    .line 190
    sget-object v0, Landroid/arch/persistence/room/RoomSQLiteQuery;->sQueryPool:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0xa

    .line 191
    sget-object v1, Landroid/arch/persistence/room/RoomSQLiteQuery;->sQueryPool:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->descendingKeySet()Ljava/util/NavigableSet;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_28

    .line 193
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 194
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    move v0, v2

    goto :goto_1c

    :cond_28
    return-void
.end method


# virtual methods
.method public bindBlob(I[B)V
    .registers 5

    .line 257
    iget-object v0, p0, Landroid/arch/persistence/room/RoomSQLiteQuery;->mBindingTypes:[I

    const/4 v1, 0x5

    aput v1, v0, p1

    .line 258
    iget-object v0, p0, Landroid/arch/persistence/room/RoomSQLiteQuery;->mBlobBindings:[[B

    aput-object p2, v0, p1

    return-void
.end method

.method public bindDouble(ID)V
    .registers 6

    .line 245
    iget-object v0, p0, Landroid/arch/persistence/room/RoomSQLiteQuery;->mBindingTypes:[I

    const/4 v1, 0x3

    aput v1, v0, p1

    .line 246
    iget-object v0, p0, Landroid/arch/persistence/room/RoomSQLiteQuery;->mDoubleBindings:[D

    aput-wide p2, v0, p1

    return-void
.end method

.method public bindLong(IJ)V
    .registers 6

    .line 239
    iget-object v0, p0, Landroid/arch/persistence/room/RoomSQLiteQuery;->mBindingTypes:[I

    const/4 v1, 0x2

    aput v1, v0, p1

    .line 240
    iget-object v0, p0, Landroid/arch/persistence/room/RoomSQLiteQuery;->mLongBindings:[J

    aput-wide p2, v0, p1

    return-void
.end method

.method public bindNull(I)V
    .registers 4

    .line 234
    iget-object v0, p0, Landroid/arch/persistence/room/RoomSQLiteQuery;->mBindingTypes:[I

    const/4 v1, 0x1

    aput v1, v0, p1

    return-void
.end method

.method public bindString(ILjava/lang/String;)V
    .registers 5

    .line 251
    iget-object v0, p0, Landroid/arch/persistence/room/RoomSQLiteQuery;->mBindingTypes:[I

    const/4 v1, 0x4

    aput v1, v0, p1

    .line 252
    iget-object v0, p0, Landroid/arch/persistence/room/RoomSQLiteQuery;->mStringBindings:[Ljava/lang/String;

    aput-object p2, v0, p1

    return-void
.end method

.method public bindTo(Landroid/arch/persistence/db/SupportSQLiteProgram;)V
    .registers 6

    const/4 v0, 0x1

    .line 211
    :goto_1
    iget v1, p0, Landroid/arch/persistence/room/RoomSQLiteQuery;->mArgCount:I

    if-gt v0, v1, :cond_33

    .line 212
    iget-object v1, p0, Landroid/arch/persistence/room/RoomSQLiteQuery;->mBindingTypes:[I

    aget v1, v1, v0

    packed-switch v1, :pswitch_data_34

    goto :goto_30

    .line 226
    :pswitch_d
    iget-object v1, p0, Landroid/arch/persistence/room/RoomSQLiteQuery;->mBlobBindings:[[B

    aget-object v1, v1, v0

    invoke-interface {p1, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteProgram;->bindBlob(I[B)V

    goto :goto_30

    .line 223
    :pswitch_15
    iget-object v1, p0, Landroid/arch/persistence/room/RoomSQLiteQuery;->mStringBindings:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-interface {p1, v0, v1}, Landroid/arch/persistence/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    goto :goto_30

    .line 220
    :pswitch_1d
    iget-object v1, p0, Landroid/arch/persistence/room/RoomSQLiteQuery;->mDoubleBindings:[D

    aget-wide v2, v1, v0

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/db/SupportSQLiteProgram;->bindDouble(ID)V

    goto :goto_30

    .line 217
    :pswitch_25
    iget-object v1, p0, Landroid/arch/persistence/room/RoomSQLiteQuery;->mLongBindings:[J

    aget-wide v2, v1, v0

    invoke-interface {p1, v0, v2, v3}, Landroid/arch/persistence/db/SupportSQLiteProgram;->bindLong(IJ)V

    goto :goto_30

    .line 214
    :pswitch_2d
    invoke-interface {p1, v0}, Landroid/arch/persistence/db/SupportSQLiteProgram;->bindNull(I)V

    :goto_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_33
    return-void

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_25
        :pswitch_1d
        :pswitch_15
        :pswitch_d
    .end packed-switch
.end method

.method public clearBindings()V
    .registers 3

    .line 282
    iget-object v0, p0, Landroid/arch/persistence/room/RoomSQLiteQuery;->mBindingTypes:[I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 283
    iget-object v0, p0, Landroid/arch/persistence/room/RoomSQLiteQuery;->mStringBindings:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 284
    iget-object v0, p0, Landroid/arch/persistence/room/RoomSQLiteQuery;->mBlobBindings:[[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 285
    iput-object v1, p0, Landroid/arch/persistence/room/RoomSQLiteQuery;->mQuery:Ljava/lang/String;

    return-void
.end method

.method public close()V
    .registers 1

    return-void
.end method

.method public copyArgumentsFrom(Landroid/arch/persistence/room/RoomSQLiteQuery;)V
    .registers 6

    .line 272
    invoke-virtual {p1}, Landroid/arch/persistence/room/RoomSQLiteQuery;->getArgCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 273
    iget-object v1, p1, Landroid/arch/persistence/room/RoomSQLiteQuery;->mBindingTypes:[I

    iget-object v2, p0, Landroid/arch/persistence/room/RoomSQLiteQuery;->mBindingTypes:[I

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 274
    iget-object v1, p1, Landroid/arch/persistence/room/RoomSQLiteQuery;->mLongBindings:[J

    iget-object v2, p0, Landroid/arch/persistence/room/RoomSQLiteQuery;->mLongBindings:[J

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 275
    iget-object v1, p1, Landroid/arch/persistence/room/RoomSQLiteQuery;->mStringBindings:[Ljava/lang/String;

    iget-object v2, p0, Landroid/arch/persistence/room/RoomSQLiteQuery;->mStringBindings:[Ljava/lang/String;

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    iget-object v1, p1, Landroid/arch/persistence/room/RoomSQLiteQuery;->mBlobBindings:[[B

    iget-object v2, p0, Landroid/arch/persistence/room/RoomSQLiteQuery;->mBlobBindings:[[B

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 277
    iget-object p1, p1, Landroid/arch/persistence/room/RoomSQLiteQuery;->mDoubleBindings:[D

    iget-object v1, p0, Landroid/arch/persistence/room/RoomSQLiteQuery;->mDoubleBindings:[D

    invoke-static {p1, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public getArgCount()I
    .registers 2

    .line 206
    iget v0, p0, Landroid/arch/persistence/room/RoomSQLiteQuery;->mArgCount:I

    return v0
.end method

.method public getSql()Ljava/lang/String;
    .registers 2

    .line 201
    iget-object v0, p0, Landroid/arch/persistence/room/RoomSQLiteQuery;->mQuery:Ljava/lang/String;

    return-object v0
.end method

.method init(Ljava/lang/String;I)V
    .registers 3

    .line 170
    iput-object p1, p0, Landroid/arch/persistence/room/RoomSQLiteQuery;->mQuery:Ljava/lang/String;

    .line 171
    iput p2, p0, Landroid/arch/persistence/room/RoomSQLiteQuery;->mArgCount:I

    return-void
.end method

.method public release()V
    .registers 4

    .line 182
    sget-object v0, Landroid/arch/persistence/room/RoomSQLiteQuery;->sQueryPool:Ljava/util/TreeMap;

    monitor-enter v0

    .line 183
    :try_start_3
    sget-object v1, Landroid/arch/persistence/room/RoomSQLiteQuery;->sQueryPool:Ljava/util/TreeMap;

    iget v2, p0, Landroid/arch/persistence/room/RoomSQLiteQuery;->mCapacity:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    invoke-static {}, Landroid/arch/persistence/room/RoomSQLiteQuery;->prunePoolLocked()V

    .line 185
    monitor-exit v0

    return-void

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method
