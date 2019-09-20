.class public final Lokio/Options;
.super Ljava/util/AbstractList;
.source "Options.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Lokio/ByteString;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field final byteStrings:[Lokio/ByteString;

.field final trie:[I


# direct methods
.method private constructor <init>([Lokio/ByteString;[I)V
    .registers 3

    .line 30
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 31
    iput-object p1, p0, Lokio/Options;->byteStrings:[Lokio/ByteString;

    .line 32
    iput-object p2, p0, Lokio/Options;->trie:[I

    return-void
.end method

.method private static buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lokio/Buffer;",
            "I",
            "Ljava/util/List<",
            "Lokio/ByteString;",
            ">;II",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v12, p4

    move/from16 v4, p5

    move/from16 v13, p6

    move-object/from16 v14, p7

    if-lt v4, v13, :cond_14

    .line 123
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_14
    move v5, v4

    :goto_15
    if-ge v5, v13, :cond_2c

    .line 125
    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lokio/ByteString;

    invoke-virtual {v6}, Lokio/ByteString;->size()I

    move-result v6

    if-ge v6, v3, :cond_29

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_29
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 128
    :cond_2c
    invoke-interface/range {p4 .. p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokio/ByteString;

    add-int/lit8 v6, v13, -0x1

    .line 129
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lokio/ByteString;

    const/4 v7, -0x1

    .line 133
    invoke-virtual {v5}, Lokio/ByteString;->size()I

    move-result v8

    if-ne v3, v8, :cond_53

    .line 134
    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v4, v4, 0x1

    .line 136
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokio/ByteString;

    :cond_53
    move v8, v4

    .line 139
    invoke-virtual {v5, v3}, Lokio/ByteString;->getByte(I)B

    move-result v4

    invoke-virtual {v6, v3}, Lokio/ByteString;->getByte(I)B

    move-result v9

    const-wide/16 v10, 0x2

    if-eq v4, v9, :cond_12b

    add-int/lit8 v4, v8, 0x1

    const/4 v5, 0x1

    :goto_63
    if-ge v4, v13, :cond_82

    add-int/lit8 v6, v4, -0x1

    .line 143
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lokio/ByteString;

    invoke-virtual {v6, v3}, Lokio/ByteString;->getByte(I)B

    move-result v6

    .line 144
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lokio/ByteString;

    invoke-virtual {v9, v3}, Lokio/ByteString;->getByte(I)B

    move-result v9

    if-eq v6, v9, :cond_7f

    add-int/lit8 v5, v5, 0x1

    :cond_7f
    add-int/lit8 v4, v4, 0x1

    goto :goto_63

    .line 150
    :cond_82
    invoke-static/range {p2 .. p2}, Lokio/Options;->intCount(Lokio/Buffer;)I

    move-result v4

    int-to-long v14, v4

    add-long v17, p0, v14

    add-long v0, v17, v10

    mul-int/lit8 v4, v5, 0x2

    int-to-long v9, v4

    add-long v14, v0, v9

    .line 152
    invoke-virtual {v2, v5}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 153
    invoke-virtual {v2, v7}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move v0, v8

    :goto_97
    if-ge v0, v13, :cond_bb

    .line 156
    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokio/ByteString;

    invoke-virtual {v1, v3}, Lokio/ByteString;->getByte(I)B

    move-result v1

    if-eq v0, v8, :cond_b3

    add-int/lit8 v4, v0, -0x1

    .line 157
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokio/ByteString;

    invoke-virtual {v4, v3}, Lokio/ByteString;->getByte(I)B

    move-result v4

    if-eq v1, v4, :cond_b8

    :cond_b3
    and-int/lit16 v1, v1, 0xff

    .line 158
    invoke-virtual {v2, v1}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    :cond_b8
    add-int/lit8 v0, v0, 0x1

    goto :goto_97

    .line 162
    :cond_bb
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    move v9, v8

    :goto_c1
    if-ge v9, v13, :cond_122

    .line 165
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokio/ByteString;

    invoke-virtual {v1, v3}, Lokio/ByteString;->getByte(I)B

    move-result v1

    add-int/lit8 v4, v9, 0x1

    move v5, v4

    :goto_d0
    if-ge v5, v13, :cond_e3

    .line 168
    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lokio/ByteString;

    invoke-virtual {v6, v3}, Lokio/ByteString;->getByte(I)B

    move-result v6

    if-eq v1, v6, :cond_e0

    move v1, v5

    goto :goto_e4

    :cond_e0
    add-int/lit8 v5, v5, 0x1

    goto :goto_d0

    :cond_e3
    move v1, v13

    :goto_e4
    if-ne v4, v1, :cond_104

    add-int/lit8 v4, v3, 0x1

    .line 175
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokio/ByteString;

    invoke-virtual {v5}, Lokio/ByteString;->size()I

    move-result v5

    if-ne v4, v5, :cond_104

    move-object/from16 v11, p7

    .line 177
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    goto :goto_120

    :cond_104
    move-object/from16 v11, p7

    .line 180
    invoke-static {v0}, Lokio/Options;->intCount(Lokio/Buffer;)I

    move-result v4

    int-to-long v4, v4

    add-long v6, v14, v4

    const-wide/16 v4, -0x1

    mul-long v6, v6, v4

    long-to-int v4, v6

    invoke-virtual {v2, v4}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    add-int/lit8 v7, v3, 0x1

    move-wide v4, v14

    move-object v6, v0

    move-object v8, v12

    move v10, v1

    move-object/from16 v11, p7

    .line 181
    invoke-static/range {v4 .. v11}, Lokio/Options;->buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V

    :goto_120
    move v9, v1

    goto :goto_c1

    .line 194
    :cond_122
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    goto/16 :goto_1c2

    :cond_12b
    const/4 v4, 0x0

    .line 199
    invoke-virtual {v5}, Lokio/ByteString;->size()I

    move-result v9

    invoke-virtual {v6}, Lokio/ByteString;->size()I

    move-result v14

    invoke-static {v9, v14}, Ljava/lang/Math;->min(II)I

    move-result v9

    move v4, v3

    const/4 v14, 0x0

    :goto_13a
    if-ge v4, v9, :cond_14d

    .line 200
    invoke-virtual {v5, v4}, Lokio/ByteString;->getByte(I)B

    move-result v15

    invoke-virtual {v6, v4}, Lokio/ByteString;->getByte(I)B

    move-result v10

    if-ne v15, v10, :cond_14d

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v4, v4, 0x1

    const-wide/16 v10, 0x2

    goto :goto_13a

    .line 208
    :cond_14d
    invoke-static/range {p2 .. p2}, Lokio/Options;->intCount(Lokio/Buffer;)I

    move-result v4

    int-to-long v9, v4

    add-long v15, p0, v9

    const-wide/16 v0, 0x2

    add-long v9, v15, v0

    int-to-long v0, v14

    add-long v15, v9, v0

    const-wide/16 v0, 0x1

    add-long v9, v15, v0

    neg-int v0, v14

    .line 210
    invoke-virtual {v2, v0}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 211
    invoke-virtual {v2, v7}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move v0, v3

    :goto_167
    add-int v6, v3, v14

    if-ge v0, v6, :cond_177

    .line 214
    invoke-virtual {v5, v0}, Lokio/ByteString;->getByte(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v2, v1}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_167

    :cond_177
    add-int/lit8 v0, v8, 0x1

    if-ne v0, v13, :cond_19d

    .line 219
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    if-eq v6, v0, :cond_18d

    .line 220
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_18d
    move-object/from16 v0, p7

    .line 222
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    goto :goto_1c2

    :cond_19d
    move-object/from16 v0, p7

    .line 225
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    .line 226
    invoke-static {v1}, Lokio/Options;->intCount(Lokio/Buffer;)I

    move-result v3

    int-to-long v3, v3

    add-long v14, v9, v3

    const-wide/16 v3, -0x1

    mul-long v14, v14, v3

    long-to-int v3, v14

    invoke-virtual {v2, v3}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-wide v3, v9

    move-object v5, v1

    move-object v7, v12

    move v9, v13

    move-object v10, v0

    .line 227
    invoke-static/range {v3 .. v10}, Lokio/Options;->buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V

    .line 235
    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    :goto_1c2
    return-void
.end method

.method private static intCount(Lokio/Buffer;)I
    .registers 5

    .line 249
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    div-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public static varargs of([Lokio/ByteString;)Lokio/Options;
    .registers 11

    .line 36
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    .line 38
    new-instance p0, Lokio/Options;

    new-array v0, v1, [Lokio/ByteString;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_102

    invoke-direct {p0, v0, v1}, Lokio/Options;-><init>([Lokio/ByteString;[I)V

    return-object p0

    .line 43
    :cond_12
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 44
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 45
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 46
    :goto_24
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_35

    const/4 v2, -0x1

    .line 47
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_35
    const/4 v0, 0x0

    .line 49
    :goto_36
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4c

    .line 50
    aget-object v2, p0, v0

    invoke-static {v6, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v2

    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v9, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .line 53
    :cond_4c
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    if-nez v0, :cond_60

    .line 54
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "the empty byte string is not a supported option"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_60
    const/4 v0, 0x0

    .line 60
    :goto_61
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_c6

    .line 61
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokio/ByteString;

    add-int/lit8 v3, v0, 0x1

    move v4, v3

    .line 62
    :goto_70
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_c4

    .line 63
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokio/ByteString;

    .line 64
    invoke-virtual {v5, v2}, Lokio/ByteString;->startsWith(Lokio/ByteString;)Z

    move-result v7

    if-nez v7, :cond_83

    goto :goto_c4

    .line 65
    :cond_83
    invoke-virtual {v5}, Lokio/ByteString;->size()I

    move-result v7

    invoke-virtual {v2}, Lokio/ByteString;->size()I

    move-result v8

    if-ne v7, v8, :cond_a4

    .line 66
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "duplicate option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 68
    :cond_a4
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-le v5, v7, :cond_c1

    .line 69
    invoke-interface {v6, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 70
    invoke-interface {v9, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_70

    :cond_c1
    add-int/lit8 v4, v4, 0x1

    goto :goto_70

    :cond_c4
    :goto_c4
    move v0, v3

    goto :goto_61

    .line 77
    :cond_c6
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 78
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    move-object v4, v0

    invoke-static/range {v2 .. v9}, Lokio/Options;->buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V

    .line 80
    invoke-static {v0}, Lokio/Options;->intCount(Lokio/Buffer;)I

    move-result v2

    new-array v2, v2, [I

    .line 81
    :goto_dd
    array-length v3, v2

    if-ge v1, v3, :cond_e9

    .line 82
    invoke-virtual {v0}, Lokio/Buffer;->readInt()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_dd

    .line 84
    :cond_e9
    invoke-virtual {v0}, Lokio/Buffer;->exhausted()Z

    move-result v0

    if-nez v0, :cond_f5

    .line 85
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 88
    :cond_f5
    new-instance v0, Lokio/Options;

    invoke-virtual {p0}, [Lokio/ByteString;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lokio/ByteString;

    invoke-direct {v0, p0, v2}, Lokio/Options;-><init>([Lokio/ByteString;[I)V

    return-object v0

    nop

    :array_102
    .array-data 4
        0x0
        -0x1
    .end array-data
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    .line 26
    invoke-virtual {p0, p1}, Lokio/Options;->get(I)Lokio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lokio/ByteString;
    .registers 3

    .line 241
    iget-object v0, p0, Lokio/Options;->byteStrings:[Lokio/ByteString;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final size()I
    .registers 2

    .line 245
    iget-object v0, p0, Lokio/Options;->byteStrings:[Lokio/ByteString;

    array-length v0, v0

    return v0
.end method
