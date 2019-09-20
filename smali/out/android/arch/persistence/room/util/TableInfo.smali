.class public Landroid/arch/persistence/room/util/TableInfo;
.super Ljava/lang/Object;
.source "TableInfo.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/persistence/room/util/TableInfo$Index;,
        Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;,
        Landroid/arch/persistence/room/util/TableInfo$ForeignKey;,
        Landroid/arch/persistence/room/util/TableInfo$Column;
    }
.end annotation


# instance fields
.field public final columns:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/arch/persistence/room/util/TableInfo$Column;",
            ">;"
        }
    .end annotation
.end field

.field public final foreignKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/arch/persistence/room/util/TableInfo$ForeignKey;",
            ">;"
        }
    .end annotation
.end field

.field public final indices:Ljava/util/Set;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/arch/persistence/room/util/TableInfo$Index;",
            ">;"
        }
    .end annotation
.end field

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/arch/persistence/room/util/TableInfo$Column;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/arch/persistence/room/util/TableInfo$ForeignKey;",
            ">;)V"
        }
    .end annotation

    .line 85
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/arch/persistence/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/arch/persistence/room/util/TableInfo$Column;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/arch/persistence/room/util/TableInfo$ForeignKey;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/arch/persistence/room/util/TableInfo$Index;",
            ">;)V"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Landroid/arch/persistence/room/util/TableInfo;->name:Ljava/lang/String;

    .line 75
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Landroid/arch/persistence/room/util/TableInfo;->columns:Ljava/util/Map;

    .line 76
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroid/arch/persistence/room/util/TableInfo;->foreignKeys:Ljava/util/Set;

    if-nez p4, :cond_15

    const/4 p1, 0x0

    goto :goto_19

    .line 77
    :cond_15
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    :goto_19
    iput-object p1, p0, Landroid/arch/persistence/room/util/TableInfo;->indices:Ljava/util/Set;

    return-void
.end method

.method public static read(Landroid/arch/persistence/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroid/arch/persistence/room/util/TableInfo;
    .registers 5

    .line 139
    invoke-static {p0, p1}, Landroid/arch/persistence/room/util/TableInfo;->readColumns(Landroid/arch/persistence/db/SupportSQLiteDatabase;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 140
    invoke-static {p0, p1}, Landroid/arch/persistence/room/util/TableInfo;->readForeignKeys(Landroid/arch/persistence/db/SupportSQLiteDatabase;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 141
    invoke-static {p0, p1}, Landroid/arch/persistence/room/util/TableInfo;->readIndices(Landroid/arch/persistence/db/SupportSQLiteDatabase;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    .line 142
    new-instance v2, Landroid/arch/persistence/room/util/TableInfo;

    invoke-direct {v2, p1, v0, v1, p0}, Landroid/arch/persistence/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    return-object v2
.end method

.method private static readColumns(Landroid/arch/persistence/db/SupportSQLiteDatabase;Ljava/lang/String;)Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/persistence/db/SupportSQLiteDatabase;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/arch/persistence/room/util/TableInfo$Column;",
            ">;"
        }
    .end annotation

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PRAGMA table_info(`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "`)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 211
    invoke-interface {p0, p1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 213
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 215
    :try_start_1f
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-lez v0, :cond_61

    const-string v0, "name"

    .line 216
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "type"

    .line 217
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "notnull"

    .line 218
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "pk"

    .line 219
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 221
    :goto_3d
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_61

    .line 222
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 223
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 224
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_53

    const/4 v6, 0x1

    goto :goto_54

    :cond_53
    const/4 v6, 0x0

    .line 225
    :goto_54
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 226
    new-instance v8, Landroid/arch/persistence/room/util/TableInfo$Column;

    invoke-direct {v8, v4, v5, v6, v7}, Landroid/arch/persistence/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-interface {p1, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_60
    .catchall {:try_start_1f .. :try_end_60} :catchall_65

    goto :goto_3d

    .line 230
    :cond_61
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_65
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1
.end method

.method private static readForeignKeyFieldMappings(Landroid/database/Cursor;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;",
            ">;"
        }
    .end annotation

    const-string v0, "id"

    .line 189
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "seq"

    .line 190
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "from"

    .line 191
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "to"

    .line 192
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 193
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 194
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :goto_22
    if-ge v6, v4, :cond_42

    .line 196
    invoke-interface {p0, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 197
    new-instance v7, Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;

    .line 198
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 199
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 200
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 201
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    .line 204
    :cond_42
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v5
.end method

.method private static readForeignKeys(Landroid/arch/persistence/db/SupportSQLiteDatabase;Ljava/lang/String;)Ljava/util/Set;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/persistence/db/SupportSQLiteDatabase;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Landroid/arch/persistence/room/util/TableInfo$ForeignKey;",
            ">;"
        }
    .end annotation

    .line 147
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PRAGMA foreign_key_list(`"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "`)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p0

    invoke-interface {v3, v2}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_23
    const-string v3, "id"

    .line 151
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "seq"

    .line 152
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "table"

    .line 153
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "on_delete"

    .line 154
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "on_update"

    .line 155
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 157
    invoke-static {v2}, Landroid/arch/persistence/room/util/TableInfo;->readForeignKeyFieldMappings(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v8

    .line 158
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v9

    const/4 v10, 0x0

    :goto_4a
    if-ge v10, v9, :cond_ad

    .line 160
    invoke-interface {v2, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 161
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-eqz v11, :cond_58

    move/from16 v18, v3

    goto :goto_a8

    .line 165
    :cond_58
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 166
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 167
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 168
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_6a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_89

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;

    move/from16 v18, v3

    .line 169
    iget v3, v13, Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;->mId:I

    if-ne v3, v11, :cond_86

    .line 170
    iget-object v3, v13, Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;->mFrom:Ljava/lang/String;

    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    iget-object v3, v13, Landroid/arch/persistence/room/util/TableInfo$ForeignKeyWithSequence;->mTo:Ljava/lang/String;

    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_86
    move/from16 v3, v18

    goto :goto_6a

    :cond_89
    move/from16 v18, v3

    .line 174
    new-instance v3, Landroid/arch/persistence/room/util/TableInfo$ForeignKey;

    .line 175
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 176
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 177
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object v12, v3

    move-object/from16 v17, v14

    move-object v14, v11

    move-object v11, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v11

    invoke-direct/range {v12 .. v17}, Landroid/arch/persistence/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 174
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_a8
    .catchall {:try_start_23 .. :try_end_a8} :catchall_b1

    :goto_a8
    add-int/lit8 v10, v10, 0x1

    move/from16 v3, v18

    goto :goto_4a

    .line 183
    :cond_ad
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_b1
    move-exception v0

    move-object v1, v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private static readIndex(Landroid/arch/persistence/db/SupportSQLiteDatabase;Ljava/lang/String;Z)Landroid/arch/persistence/room/util/TableInfo$Index;
    .registers 9
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PRAGMA index_xinfo(`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "`)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_1a
    const-string v0, "seqno"

    .line 278
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "cid"

    .line 279
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "name"

    .line 280
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v0, v3, :cond_6f

    if-eq v1, v3, :cond_6f

    if-ne v2, v3, :cond_34

    goto :goto_6f

    .line 285
    :cond_34
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 287
    :goto_39
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_56

    .line 288
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-gez v4, :cond_46

    goto :goto_39

    .line 293
    :cond_46
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 294
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 295
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_39

    .line 297
    :cond_56
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/TreeMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 298
    invoke-virtual {v3}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 299
    new-instance v1, Landroid/arch/persistence/room/util/TableInfo$Index;

    invoke-direct {v1, p1, p2, v0}, Landroid/arch/persistence/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;)V
    :try_end_6b
    .catchall {:try_start_1a .. :try_end_6b} :catchall_74

    .line 301
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v1

    :cond_6f
    :goto_6f
    const/4 p1, 0x0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_74
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1
.end method

.method private static readIndices(Landroid/arch/persistence/db/SupportSQLiteDatabase;Ljava/lang/String;)Ljava/util/Set;
    .registers 10
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/persistence/db/SupportSQLiteDatabase;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Landroid/arch/persistence/room/util/TableInfo$Index;",
            ">;"
        }
    .end annotation

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PRAGMA index_list(`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "`)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_1a
    const-string v0, "name"

    .line 242
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "origin"

    .line 243
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "unique"

    .line 244
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_6c

    if-eq v1, v4, :cond_6c

    if-ne v2, v4, :cond_35

    goto :goto_6c

    .line 249
    :cond_35
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 250
    :goto_3a
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_68

    .line 251
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "c"

    .line 252
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4d

    goto :goto_3a

    .line 256
    :cond_4d
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 257
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_59

    goto :goto_5a

    :cond_59
    const/4 v7, 0x0

    .line 258
    :goto_5a
    invoke-static {p0, v5, v7}, Landroid/arch/persistence/room/util/TableInfo;->readIndex(Landroid/arch/persistence/db/SupportSQLiteDatabase;Ljava/lang/String;Z)Landroid/arch/persistence/room/util/TableInfo$Index;

    move-result-object v5
    :try_end_5e
    .catchall {:try_start_1a .. :try_end_5e} :catchall_70

    if-nez v5, :cond_64

    .line 267
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v3

    .line 263
    :cond_64
    :try_start_64
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_70

    goto :goto_3a

    .line 267
    :cond_68
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v4

    :cond_6c
    :goto_6c
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v3

    :catchall_70
    move-exception p0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_63

    .line 91
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_63

    .line 93
    :cond_12
    check-cast p1, Landroid/arch/persistence/room/util/TableInfo;

    .line 95
    iget-object v2, p0, Landroid/arch/persistence/room/util/TableInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_23

    iget-object v2, p0, Landroid/arch/persistence/room/util/TableInfo;->name:Ljava/lang/String;

    iget-object v3, p1, Landroid/arch/persistence/room/util/TableInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    goto :goto_27

    :cond_23
    iget-object v2, p1, Landroid/arch/persistence/room/util/TableInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_28

    :goto_27
    return v1

    .line 96
    :cond_28
    iget-object v2, p0, Landroid/arch/persistence/room/util/TableInfo;->columns:Ljava/util/Map;

    if-eqz v2, :cond_37

    iget-object v2, p0, Landroid/arch/persistence/room/util/TableInfo;->columns:Ljava/util/Map;

    iget-object v3, p1, Landroid/arch/persistence/room/util/TableInfo;->columns:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    goto :goto_3b

    :cond_37
    iget-object v2, p1, Landroid/arch/persistence/room/util/TableInfo;->columns:Ljava/util/Map;

    if-eqz v2, :cond_3c

    :goto_3b
    return v1

    .line 99
    :cond_3c
    iget-object v2, p0, Landroid/arch/persistence/room/util/TableInfo;->foreignKeys:Ljava/util/Set;

    if-eqz v2, :cond_4b

    iget-object v2, p0, Landroid/arch/persistence/room/util/TableInfo;->foreignKeys:Ljava/util/Set;

    iget-object v3, p1, Landroid/arch/persistence/room/util/TableInfo;->foreignKeys:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_50

    goto :goto_4f

    :cond_4b
    iget-object v2, p1, Landroid/arch/persistence/room/util/TableInfo;->foreignKeys:Ljava/util/Set;

    if-eqz v2, :cond_50

    :goto_4f
    return v1

    .line 103
    :cond_50
    iget-object v1, p0, Landroid/arch/persistence/room/util/TableInfo;->indices:Ljava/util/Set;

    if-eqz v1, :cond_62

    iget-object v1, p1, Landroid/arch/persistence/room/util/TableInfo;->indices:Ljava/util/Set;

    if-nez v1, :cond_59

    goto :goto_62

    .line 108
    :cond_59
    iget-object v0, p0, Landroid/arch/persistence/room/util/TableInfo;->indices:Ljava/util/Set;

    iget-object p1, p1, Landroid/arch/persistence/room/util/TableInfo;->indices:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_62
    :goto_62
    return v0

    :cond_63
    :goto_63
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 113
    iget-object v0, p0, Landroid/arch/persistence/room/util/TableInfo;->name:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/arch/persistence/room/util/TableInfo;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    mul-int/lit8 v0, v0, 0x1f

    .line 114
    iget-object v2, p0, Landroid/arch/persistence/room/util/TableInfo;->columns:Ljava/util/Map;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Landroid/arch/persistence/room/util/TableInfo;->columns:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x0

    :goto_1b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 115
    iget-object v2, p0, Landroid/arch/persistence/room/util/TableInfo;->foreignKeys:Ljava/util/Set;

    if-eqz v2, :cond_28

    iget-object v1, p0, Landroid/arch/persistence/room/util/TableInfo;->foreignKeys:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    :cond_28
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TableInfo{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/arch/persistence/room/util/TableInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", columns="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/arch/persistence/room/util/TableInfo;->columns:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", foreignKeys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/arch/persistence/room/util/TableInfo;->foreignKeys:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", indices="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/arch/persistence/room/util/TableInfo;->indices:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
