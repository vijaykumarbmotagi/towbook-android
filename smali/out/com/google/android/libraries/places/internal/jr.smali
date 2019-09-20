.class final Lcom/google/android/libraries/places/internal/jr;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/google/android/libraries/places/internal/kd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/places/internal/kd<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final a:[I

.field private static final b:Lsun/misc/Unsafe;


# instance fields
.field private final c:[I

.field private final d:[Ljava/lang/Object;

.field private final e:I

.field private final f:I

.field private final g:Lcom/google/android/libraries/places/internal/jo;

.field private final h:Z

.field private final i:Z

.field private final j:Z

.field private final k:Z

.field private final l:[I

.field private final m:I

.field private final n:I

.field private final o:Lcom/google/android/libraries/places/internal/ju;

.field private final p:Lcom/google/android/libraries/places/internal/ja;

.field private final q:Lcom/google/android/libraries/places/internal/kt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/kt<",
            "**>;"
        }
    .end annotation
.end field

.field private final r:Lcom/google/android/libraries/places/internal/ib;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/ib<",
            "*>;"
        }
    .end annotation
.end field

.field private final s:Lcom/google/android/libraries/places/internal/jk;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 2745
    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/libraries/places/internal/jr;->a:[I

    .line 2746
    invoke-static {}, Lcom/google/android/libraries/places/internal/ky;->a()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/jr;->b:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/google/android/libraries/places/internal/jo;ZZ[IIILcom/google/android/libraries/places/internal/ju;Lcom/google/android/libraries/places/internal/ja;Lcom/google/android/libraries/places/internal/kt;Lcom/google/android/libraries/places/internal/ib;Lcom/google/android/libraries/places/internal/jk;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/Object;",
            "II",
            "Lcom/google/android/libraries/places/internal/jo;",
            "ZZ[III",
            "Lcom/google/android/libraries/places/internal/ju;",
            "Lcom/google/android/libraries/places/internal/ja;",
            "Lcom/google/android/libraries/places/internal/kt<",
            "**>;",
            "Lcom/google/android/libraries/places/internal/ib<",
            "*>;",
            "Lcom/google/android/libraries/places/internal/jk;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    .line 3
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/jr;->d:[Ljava/lang/Object;

    .line 4
    iput p3, p0, Lcom/google/android/libraries/places/internal/jr;->e:I

    .line 5
    iput p4, p0, Lcom/google/android/libraries/places/internal/jr;->f:I

    .line 6
    instance-of p1, p5, Lcom/google/android/libraries/places/internal/ij;

    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/jr;->i:Z

    .line 7
    iput-boolean p6, p0, Lcom/google/android/libraries/places/internal/jr;->j:Z

    if-eqz p14, :cond_1b

    .line 8
    invoke-virtual {p14, p5}, Lcom/google/android/libraries/places/internal/ib;->a(Lcom/google/android/libraries/places/internal/jo;)Z

    move-result p1

    if-eqz p1, :cond_1b

    const/4 p1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    :goto_1c
    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/jr;->h:Z

    .line 9
    iput-boolean p7, p0, Lcom/google/android/libraries/places/internal/jr;->k:Z

    .line 10
    iput-object p8, p0, Lcom/google/android/libraries/places/internal/jr;->l:[I

    .line 11
    iput p9, p0, Lcom/google/android/libraries/places/internal/jr;->m:I

    .line 12
    iput p10, p0, Lcom/google/android/libraries/places/internal/jr;->n:I

    .line 13
    iput-object p11, p0, Lcom/google/android/libraries/places/internal/jr;->o:Lcom/google/android/libraries/places/internal/ju;

    .line 14
    iput-object p12, p0, Lcom/google/android/libraries/places/internal/jr;->p:Lcom/google/android/libraries/places/internal/ja;

    .line 15
    iput-object p13, p0, Lcom/google/android/libraries/places/internal/jr;->q:Lcom/google/android/libraries/places/internal/kt;

    .line 16
    iput-object p14, p0, Lcom/google/android/libraries/places/internal/jr;->r:Lcom/google/android/libraries/places/internal/ib;

    .line 17
    iput-object p5, p0, Lcom/google/android/libraries/places/internal/jr;->g:Lcom/google/android/libraries/places/internal/jo;

    .line 18
    iput-object p15, p0, Lcom/google/android/libraries/places/internal/jr;->s:Lcom/google/android/libraries/places/internal/jk;

    return-void
.end method

.method private static a(Lcom/google/android/libraries/places/internal/kt;Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/libraries/places/internal/kt<",
            "TUT;TUB;>;TT;)I"
        }
    .end annotation

    .line 1222
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/kt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1223
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/kt;->d(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static a(Lcom/google/android/libraries/places/internal/jm;Lcom/google/android/libraries/places/internal/ju;Lcom/google/android/libraries/places/internal/ja;Lcom/google/android/libraries/places/internal/kt;Lcom/google/android/libraries/places/internal/ib;Lcom/google/android/libraries/places/internal/jk;)Lcom/google/android/libraries/places/internal/jr;
    .registers 48
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/libraries/places/internal/jm;",
            "Lcom/google/android/libraries/places/internal/ju;",
            "Lcom/google/android/libraries/places/internal/ja;",
            "Lcom/google/android/libraries/places/internal/kt<",
            "**>;",
            "Lcom/google/android/libraries/places/internal/ib<",
            "*>;",
            "Lcom/google/android/libraries/places/internal/jk;",
            ")",
            "Lcom/google/android/libraries/places/internal/jr<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 20
    instance-of v1, v0, Lcom/google/android/libraries/places/internal/kc;

    if-eqz v1, :cond_454

    .line 21
    check-cast v0, Lcom/google/android/libraries/places/internal/kc;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/kc;->a()Lcom/google/android/libraries/places/internal/jz;

    move-result-object v1

    sget-object v2, Lcom/google/android/libraries/places/internal/jz;->b:Lcom/google/android/libraries/places/internal/jz;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_13

    const/4 v11, 0x1

    goto :goto_14

    :cond_13
    const/4 v11, 0x0

    .line 24
    :goto_14
    iget-object v1, v0, Lcom/google/android/libraries/places/internal/kc;->b:Ljava/lang/String;

    .line 26
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 28
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v7, 0xd800

    if-lt v5, v7, :cond_3c

    and-int/lit16 v5, v5, 0x1fff

    move v8, v5

    const/4 v5, 0x1

    const/16 v9, 0xd

    :goto_29
    add-int/lit8 v10, v5, 0x1

    .line 32
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v7, :cond_39

    and-int/lit16 v5, v5, 0x1fff

    shl-int/2addr v5, v9

    or-int/2addr v8, v5

    add-int/lit8 v9, v9, 0xd

    move v5, v10

    goto :goto_29

    :cond_39
    shl-int/2addr v5, v9

    or-int/2addr v5, v8

    goto :goto_3d

    :cond_3c
    const/4 v10, 0x1

    :goto_3d
    add-int/lit8 v8, v10, 0x1

    .line 37
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v7, :cond_5c

    and-int/lit16 v9, v9, 0x1fff

    const/16 v10, 0xd

    :goto_49
    add-int/lit8 v12, v8, 0x1

    .line 41
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_59

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v10

    or-int/2addr v9, v8

    add-int/lit8 v10, v10, 0xd

    move v8, v12

    goto :goto_49

    :cond_59
    shl-int/2addr v8, v10

    or-int/2addr v9, v8

    move v8, v12

    :cond_5c
    if-nez v9, :cond_6a

    .line 53
    sget-object v9, Lcom/google/android/libraries/places/internal/jr;->a:[I

    move-object/from16 v16, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    goto/16 :goto_19b

    :cond_6a
    add-int/lit8 v9, v8, 0x1

    .line 55
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_89

    and-int/lit16 v8, v8, 0x1fff

    const/16 v10, 0xd

    :goto_76
    add-int/lit8 v12, v9, 0x1

    .line 59
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v7, :cond_86

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v10

    or-int/2addr v8, v9

    add-int/lit8 v10, v10, 0xd

    move v9, v12

    goto :goto_76

    :cond_86
    shl-int/2addr v9, v10

    or-int/2addr v8, v9

    move v9, v12

    :cond_89
    add-int/lit8 v10, v9, 0x1

    .line 64
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v7, :cond_a8

    and-int/lit16 v9, v9, 0x1fff

    const/16 v12, 0xd

    :goto_95
    add-int/lit8 v13, v10, 0x1

    .line 68
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v7, :cond_a5

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v12

    or-int/2addr v9, v10

    add-int/lit8 v12, v12, 0xd

    move v10, v13

    goto :goto_95

    :cond_a5
    shl-int/2addr v10, v12

    or-int/2addr v9, v10

    move v10, v13

    :cond_a8
    add-int/lit8 v12, v10, 0x1

    .line 73
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v7, :cond_c7

    and-int/lit16 v10, v10, 0x1fff

    const/16 v13, 0xd

    :goto_b4
    add-int/lit8 v14, v12, 0x1

    .line 77
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v7, :cond_c4

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v10, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_b4

    :cond_c4
    shl-int/2addr v12, v13

    or-int/2addr v10, v12

    move v12, v14

    :cond_c7
    add-int/lit8 v13, v12, 0x1

    .line 82
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v7, :cond_e6

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_d3
    add-int/lit8 v15, v13, 0x1

    .line 86
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v7, :cond_e3

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_d3

    :cond_e3
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_e6
    add-int/lit8 v14, v13, 0x1

    .line 91
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v7, :cond_107

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_f2
    add-int/lit8 v16, v14, 0x1

    .line 95
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v7, :cond_103

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_f2

    :cond_103
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_107
    add-int/lit8 v15, v14, 0x1

    .line 100
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v7, :cond_12a

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_113
    add-int/lit8 v17, v15, 0x1

    .line 104
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v7, :cond_125

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_113

    :cond_125
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_12a
    add-int/lit8 v16, v15, 0x1

    .line 109
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v7, :cond_156

    and-int/lit16 v15, v15, 0x1fff

    const/16 v17, 0xd

    move/from16 v40, v16

    move/from16 v16, v15

    move/from16 v15, v40

    :goto_13c
    add-int/lit8 v18, v15, 0x1

    .line 113
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v7, :cond_14f

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v17

    or-int v16, v16, v15

    add-int/lit8 v17, v17, 0xd

    move/from16 v15, v18

    goto :goto_13c

    :cond_14f
    shl-int v15, v15, v17

    or-int v15, v16, v15

    move/from16 v3, v18

    goto :goto_158

    :cond_156
    move/from16 v3, v16

    :goto_158
    add-int/lit8 v16, v3, 0x1

    .line 118
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v7, :cond_183

    and-int/lit16 v3, v3, 0x1fff

    const/16 v17, 0xd

    move/from16 v40, v16

    move/from16 v16, v3

    move/from16 v3, v40

    :goto_16a
    add-int/lit8 v18, v3, 0x1

    .line 122
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v7, :cond_17d

    and-int/lit16 v3, v3, 0x1fff

    shl-int v3, v3, v17

    or-int v16, v16, v3

    add-int/lit8 v17, v17, 0xd

    move/from16 v3, v18

    goto :goto_16a

    :cond_17d
    shl-int v3, v3, v17

    or-int v3, v16, v3

    move/from16 v16, v18

    :cond_183
    add-int v17, v3, v14

    add-int v15, v17, v15

    .line 127
    new-array v15, v15, [I

    shl-int/lit8 v17, v8, 0x1

    add-int v9, v17, v9

    move/from16 v40, v14

    move v14, v3

    move/from16 v3, v40

    move/from16 v41, v9

    move v9, v8

    move/from16 v8, v16

    move-object/from16 v16, v15

    move/from16 v15, v41

    .line 129
    :goto_19b
    sget-object v6, Lcom/google/android/libraries/places/internal/jr;->b:Lsun/misc/Unsafe;

    .line 131
    iget-object v7, v0, Lcom/google/android/libraries/places/internal/kc;->c:[Ljava/lang/Object;

    .line 135
    iget-object v4, v0, Lcom/google/android/libraries/places/internal/kc;->a:Lcom/google/android/libraries/places/internal/jo;

    .line 136
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    move/from16 v23, v8

    mul-int/lit8 v8, v13, 0x3

    .line 137
    new-array v8, v8, [I

    const/16 v17, 0x1

    shl-int/lit8 v13, v13, 0x1

    .line 138
    new-array v13, v13, [Ljava/lang/Object;

    add-int/2addr v3, v14

    move/from16 v20, v14

    move/from16 v19, v15

    move/from16 v15, v23

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v23, v3

    :goto_1be
    if-ge v15, v2, :cond_428

    add-int/lit8 v24, v15, 0x1

    .line 143
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move/from16 v25, v2

    const v2, 0xd800

    if-lt v15, v2, :cond_1f4

    and-int/lit16 v15, v15, 0x1fff

    const/16 v26, 0xd

    move/from16 v40, v24

    move/from16 v24, v15

    move/from16 v15, v40

    :goto_1d7
    add-int/lit8 v27, v15, 0x1

    .line 147
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v2, :cond_1ed

    and-int/lit16 v2, v15, 0x1fff

    shl-int v2, v2, v26

    or-int v24, v24, v2

    add-int/lit8 v26, v26, 0xd

    move/from16 v15, v27

    const v2, 0xd800

    goto :goto_1d7

    :cond_1ed
    shl-int v2, v15, v26

    or-int v15, v24, v2

    move/from16 v2, v27

    goto :goto_1f6

    :cond_1f4
    move/from16 v2, v24

    :goto_1f6
    add-int/lit8 v24, v2, 0x1

    .line 152
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move/from16 v28, v3

    const v3, 0xd800

    if-lt v2, v3, :cond_22a

    and-int/lit16 v2, v2, 0x1fff

    const/16 v26, 0xd

    move/from16 v40, v24

    move/from16 v24, v2

    move/from16 v2, v40

    :goto_20d
    add-int/lit8 v27, v2, 0x1

    .line 156
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v3, :cond_223

    and-int/lit16 v2, v2, 0x1fff

    shl-int v2, v2, v26

    or-int v24, v24, v2

    add-int/lit8 v26, v26, 0xd

    move/from16 v2, v27

    const v3, 0xd800

    goto :goto_20d

    :cond_223
    shl-int v2, v2, v26

    or-int v2, v24, v2

    move/from16 v3, v27

    goto :goto_22c

    :cond_22a
    move/from16 v3, v24

    :goto_22c
    move/from16 v29, v14

    and-int/lit16 v14, v2, 0xff

    move/from16 v30, v11

    and-int/lit16 v11, v2, 0x400

    if-eqz v11, :cond_23c

    add-int/lit8 v11, v17, 0x1

    .line 163
    aput v18, v16, v17

    move/from16 v17, v11

    :cond_23c
    const/16 v11, 0x33

    move/from16 v31, v12

    if-lt v14, v11, :cond_2e2

    add-int/lit8 v11, v3, 0x1

    .line 165
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const v12, 0xd800

    if-lt v3, v12, :cond_26b

    and-int/lit16 v3, v3, 0x1fff

    const/16 v24, 0xd

    :goto_251
    add-int/lit8 v26, v11, 0x1

    .line 169
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v12, :cond_266

    and-int/lit16 v11, v11, 0x1fff

    shl-int v11, v11, v24

    or-int/2addr v3, v11

    add-int/lit8 v24, v24, 0xd

    move/from16 v11, v26

    const v12, 0xd800

    goto :goto_251

    :cond_266
    shl-int v11, v11, v24

    or-int/2addr v3, v11

    move/from16 v11, v26

    :cond_26b
    add-int/lit8 v12, v14, -0x33

    move/from16 v32, v11

    const/16 v11, 0x9

    if-eq v12, v11, :cond_28f

    const/16 v11, 0x11

    if-ne v12, v11, :cond_278

    goto :goto_28f

    :cond_278
    const/16 v11, 0xc

    if-ne v12, v11, :cond_28d

    and-int/lit8 v11, v5, 0x1

    const/4 v12, 0x1

    if-ne v11, v12, :cond_28d

    .line 179
    div-int/lit8 v11, v18, 0x3

    shl-int/2addr v11, v12

    add-int/2addr v11, v12

    add-int/lit8 v12, v19, 0x1

    aget-object v19, v7, v19

    aput-object v19, v13, v11

    move/from16 v19, v12

    :cond_28d
    const/4 v12, 0x1

    goto :goto_29c

    .line 176
    :cond_28f
    :goto_28f
    div-int/lit8 v11, v18, 0x3

    const/4 v12, 0x1

    shl-int/2addr v11, v12

    add-int/2addr v11, v12

    add-int/lit8 v22, v19, 0x1

    aget-object v19, v7, v19

    aput-object v19, v13, v11

    move/from16 v19, v22

    :goto_29c
    shl-int/2addr v3, v12

    .line 181
    aget-object v11, v7, v3

    .line 182
    instance-of v12, v11, Ljava/lang/reflect/Field;

    if-eqz v12, :cond_2a6

    .line 183
    check-cast v11, Ljava/lang/reflect/Field;

    goto :goto_2ae

    .line 184
    :cond_2a6
    check-cast v11, Ljava/lang/String;

    invoke-static {v4, v11}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 185
    aput-object v11, v7, v3

    .line 186
    :goto_2ae
    invoke-virtual {v6, v11}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v11

    long-to-int v11, v11

    add-int/lit8 v3, v3, 0x1

    .line 188
    aget-object v12, v7, v3

    move/from16 v33, v11

    .line 189
    instance-of v11, v12, Ljava/lang/reflect/Field;

    if-eqz v11, :cond_2c0

    .line 190
    check-cast v12, Ljava/lang/reflect/Field;

    goto :goto_2c8

    .line 191
    :cond_2c0
    check-cast v12, Ljava/lang/String;

    invoke-static {v4, v12}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    .line 192
    aput-object v12, v7, v3

    .line 193
    :goto_2c8
    invoke-virtual {v6, v12}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v11

    long-to-int v3, v11

    move-object/from16 v35, v0

    move-object/from16 v39, v4

    move/from16 v38, v5

    move/from16 v34, v10

    move/from16 v11, v19

    move/from16 v37, v32

    move/from16 v0, v33

    const/16 v19, 0x1

    move-object v10, v1

    move v1, v3

    const/4 v3, 0x0

    goto/16 :goto_3eb

    :cond_2e2
    add-int/lit8 v11, v19, 0x1

    .line 196
    aget-object v12, v7, v19

    check-cast v12, Ljava/lang/String;

    invoke-static {v4, v12}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    move/from16 v34, v10

    const/16 v10, 0x9

    if-eq v14, v10, :cond_364

    const/16 v10, 0x11

    if-ne v14, v10, :cond_2f8

    goto/16 :goto_364

    :cond_2f8
    const/16 v10, 0x1b

    if-eq v14, v10, :cond_352

    const/16 v10, 0x31

    if-ne v14, v10, :cond_301

    goto :goto_352

    :cond_301
    const/16 v10, 0xc

    if-eq v14, v10, :cond_340

    const/16 v10, 0x1e

    if-eq v14, v10, :cond_340

    const/16 v10, 0x2c

    if-ne v14, v10, :cond_30e

    goto :goto_340

    :cond_30e
    const/16 v10, 0x32

    if-ne v14, v10, :cond_33c

    add-int/lit8 v10, v20, 0x1

    .line 205
    aput v18, v16, v20

    .line 206
    div-int/lit8 v19, v18, 0x3

    const/16 v20, 0x1

    shl-int/lit8 v19, v19, 0x1

    add-int/lit8 v20, v11, 0x1

    aget-object v11, v7, v11

    aput-object v11, v13, v19

    and-int/lit16 v11, v2, 0x800

    if-eqz v11, :cond_333

    add-int/lit8 v19, v19, 0x1

    add-int/lit8 v11, v20, 0x1

    .line 208
    aget-object v20, v7, v20

    aput-object v20, v13, v19

    move-object/from16 v35, v0

    move-object/from16 v36, v1

    goto :goto_339

    :cond_333
    move-object/from16 v35, v0

    move-object/from16 v36, v1

    move/from16 v11, v20

    :goto_339
    move/from16 v20, v10

    goto :goto_373

    :cond_33c
    move-object/from16 v35, v0

    const/4 v0, 0x1

    goto :goto_371

    :cond_340
    :goto_340
    and-int/lit8 v10, v5, 0x1

    move-object/from16 v35, v0

    const/4 v0, 0x1

    if-ne v10, v0, :cond_371

    .line 203
    div-int/lit8 v10, v18, 0x3

    shl-int/2addr v10, v0

    add-int/2addr v10, v0

    add-int/lit8 v19, v11, 0x1

    aget-object v11, v7, v11

    aput-object v11, v13, v10

    goto :goto_35f

    :cond_352
    :goto_352
    move-object/from16 v35, v0

    const/4 v0, 0x1

    .line 200
    div-int/lit8 v10, v18, 0x3

    shl-int/2addr v10, v0

    add-int/2addr v10, v0

    add-int/lit8 v19, v11, 0x1

    aget-object v11, v7, v11

    aput-object v11, v13, v10

    :goto_35f
    move-object/from16 v36, v1

    move/from16 v11, v19

    goto :goto_373

    :cond_364
    :goto_364
    move-object/from16 v35, v0

    const/4 v0, 0x1

    .line 198
    div-int/lit8 v10, v18, 0x3

    shl-int/2addr v10, v0

    add-int/2addr v10, v0

    invoke-virtual {v12}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v19

    aput-object v19, v13, v10

    :cond_371
    :goto_371
    move-object/from16 v36, v1

    .line 209
    :goto_373
    invoke-virtual {v6, v12}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v0, v0

    and-int/lit8 v1, v5, 0x1

    const/4 v10, 0x1

    if-ne v1, v10, :cond_3d1

    const/16 v1, 0x11

    if-gt v14, v1, :cond_3d1

    add-int/lit8 v1, v3, 0x1

    move-object/from16 v10, v36

    .line 211
    invoke-virtual {v10, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const v12, 0xd800

    if-lt v3, v12, :cond_3a9

    and-int/lit16 v3, v3, 0x1fff

    const/16 v19, 0xd

    :goto_392
    add-int/lit8 v21, v1, 0x1

    .line 215
    invoke-virtual {v10, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v12, :cond_3a4

    and-int/lit16 v1, v1, 0x1fff

    shl-int v1, v1, v19

    or-int/2addr v3, v1

    add-int/lit8 v19, v19, 0xd

    move/from16 v1, v21

    goto :goto_392

    :cond_3a4
    shl-int v1, v1, v19

    or-int/2addr v3, v1

    move/from16 v1, v21

    :cond_3a9
    const/16 v19, 0x1

    shl-int/lit8 v21, v9, 0x1

    .line 220
    div-int/lit8 v22, v3, 0x20

    add-int v21, v21, v22

    .line 221
    aget-object v12, v7, v21

    move/from16 v37, v1

    .line 222
    instance-of v1, v12, Ljava/lang/reflect/Field;

    if-eqz v1, :cond_3c0

    .line 223
    check-cast v12, Ljava/lang/reflect/Field;

    :goto_3bb
    move-object/from16 v39, v4

    move/from16 v38, v5

    goto :goto_3c9

    .line 224
    :cond_3c0
    check-cast v12, Ljava/lang/String;

    invoke-static {v4, v12}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    .line 225
    aput-object v12, v7, v21

    goto :goto_3bb

    .line 226
    :goto_3c9
    invoke-virtual {v6, v12}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v1, v4

    .line 227
    rem-int/lit8 v3, v3, 0x20

    goto :goto_3dd

    :cond_3d1
    move-object/from16 v39, v4

    move/from16 v38, v5

    move-object/from16 v10, v36

    const/16 v19, 0x1

    move/from16 v37, v3

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_3dd
    const/16 v4, 0x12

    if-lt v14, v4, :cond_3eb

    const/16 v4, 0x31

    if-gt v14, v4, :cond_3eb

    add-int/lit8 v4, v23, 0x1

    .line 232
    aput v0, v16, v23

    move/from16 v23, v4

    :cond_3eb
    :goto_3eb
    add-int/lit8 v4, v18, 0x1

    .line 233
    aput v15, v8, v18

    add-int/lit8 v5, v4, 0x1

    and-int/lit16 v12, v2, 0x200

    if-eqz v12, :cond_3f8

    const/high16 v12, 0x20000000

    goto :goto_3f9

    :cond_3f8
    const/4 v12, 0x0

    :goto_3f9
    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_400

    const/high16 v2, 0x10000000

    goto :goto_401

    :cond_400
    const/4 v2, 0x0

    :goto_401
    or-int/2addr v2, v12

    shl-int/lit8 v12, v14, 0x14

    or-int/2addr v2, v12

    or-int/2addr v0, v2

    .line 236
    aput v0, v8, v4

    add-int/lit8 v18, v5, 0x1

    shl-int/lit8 v0, v3, 0x14

    or-int/2addr v0, v1

    .line 237
    aput v0, v8, v5

    move-object v1, v10

    move/from16 v19, v11

    move/from16 v2, v25

    move/from16 v3, v28

    move/from16 v14, v29

    move/from16 v11, v30

    move/from16 v12, v31

    move/from16 v10, v34

    move-object/from16 v0, v35

    move/from16 v15, v37

    move/from16 v5, v38

    move-object/from16 v4, v39

    goto/16 :goto_1be

    :cond_428
    move-object/from16 v35, v0

    move/from16 v28, v3

    move/from16 v34, v10

    move/from16 v30, v11

    move/from16 v31, v12

    move/from16 v29, v14

    .line 239
    new-instance v0, Lcom/google/android/libraries/places/internal/jr;

    move-object/from16 v1, v35

    .line 241
    iget-object v10, v1, Lcom/google/android/libraries/places/internal/kc;->a:Lcom/google/android/libraries/places/internal/jo;

    const/4 v12, 0x0

    move-object v5, v0

    move-object v6, v8

    move-object v7, v13

    move/from16 v8, v34

    move/from16 v9, v31

    move-object/from16 v13, v16

    move/from16 v15, v28

    move-object/from16 v16, p1

    move-object/from16 v17, p2

    move-object/from16 v18, p3

    move-object/from16 v19, p4

    move-object/from16 v20, p5

    .line 242
    invoke-direct/range {v5 .. v20}, Lcom/google/android/libraries/places/internal/jr;-><init>([I[Ljava/lang/Object;IILcom/google/android/libraries/places/internal/jo;ZZ[IIILcom/google/android/libraries/places/internal/ju;Lcom/google/android/libraries/places/internal/ja;Lcom/google/android/libraries/places/internal/kt;Lcom/google/android/libraries/places/internal/ib;Lcom/google/android/libraries/places/internal/jk;)V

    return-object v0

    .line 244
    :cond_454
    check-cast v0, Lcom/google/android/libraries/places/internal/kq;

    .line 246
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method

.method private final a(I)Lcom/google/android/libraries/places/internal/kd;
    .registers 5

    .line 2582
    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    .line 2583
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/jr;->d:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Lcom/google/android/libraries/places/internal/kd;

    if-eqz v0, :cond_d

    return-object v0

    .line 2586
    :cond_d
    sget-object v0, Lcom/google/android/libraries/places/internal/ka;->a:Lcom/google/android/libraries/places/internal/ka;

    .line 2587
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/jr;->d:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/ka;->a(Ljava/lang/Class;)Lcom/google/android/libraries/places/internal/kd;

    move-result-object v0

    .line 2588
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/jr;->d:[Ljava/lang/Object;

    aput-object v0, v1, p1

    return-object v0
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 247
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 249
    :catch_5
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 250
    array-length v1, v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_1d

    aget-object v3, v0, v2

    .line 251
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    return-object v3

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 254
    :cond_1d
    new-instance v1, Ljava/lang/RuntimeException;

    .line 255
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 256
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Field "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static a(Ljava/lang/Object;J)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 1224
    invoke-static {p0, p1, p2}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static a(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/lh;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2681
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 2682
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p0, p1}, Lcom/google/android/libraries/places/internal/lh;->a(ILjava/lang/String;)V

    return-void

    .line 2683
    :cond_a
    check-cast p1, Lcom/google/android/libraries/places/internal/hq;

    invoke-virtual {p2, p0, p1}, Lcom/google/android/libraries/places/internal/lh;->a(ILcom/google/android/libraries/places/internal/hq;)V

    return-void
.end method

.method private static a(Lcom/google/android/libraries/places/internal/kt;Ljava/lang/Object;Lcom/google/android/libraries/places/internal/lh;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/libraries/places/internal/kt<",
            "TUT;TUB;>;TT;",
            "Lcom/google/android/libraries/places/internal/lh;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2580
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/kt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/places/internal/kt;->a(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/lh;)V

    return-void
.end method

.method private final a(Lcom/google/android/libraries/places/internal/lh;ILjava/lang/Object;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/libraries/places/internal/lh;",
            "I",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_15

    .line 2575
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/jr;->s:Lcom/google/android/libraries/places/internal/jk;

    .line 2576
    invoke-direct {p0, p4}, Lcom/google/android/libraries/places/internal/jr;->b(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {v0, p4}, Lcom/google/android/libraries/places/internal/jk;->c(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/ji;

    move-result-object p4

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/jr;->s:Lcom/google/android/libraries/places/internal/jk;

    .line 2577
    invoke-virtual {v0, p3}, Lcom/google/android/libraries/places/internal/jk;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p3

    .line 2578
    invoke-virtual {p1, p2, p4, p3}, Lcom/google/android/libraries/places/internal/lh;->a(ILcom/google/android/libraries/places/internal/ji;Ljava/util/Map;)V

    :cond_15
    return-void
.end method

.method private final a(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 548
    invoke-direct {p0, p3}, Lcom/google/android/libraries/places/internal/jr;->c(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    .line 552
    invoke-direct {p0, p2, p3}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_10

    return-void

    .line 554
    :cond_10
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 555
    invoke-static {p2, v0, v1}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v2, :cond_27

    if-eqz p2, :cond_27

    .line 557
    invoke-static {v2, p2}, Lcom/google/android/libraries/places/internal/il;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 558
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 559
    invoke-direct {p0, p1, p3}, Lcom/google/android/libraries/places/internal/jr;->b(Ljava/lang/Object;I)V

    return-void

    :cond_27
    if-eqz p2, :cond_2f

    .line 561
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 562
    invoke-direct {p0, p1, p3}, Lcom/google/android/libraries/places/internal/jr;->b(Ljava/lang/Object;I)V

    :cond_2f
    return-void
.end method

.method private final a(Ljava/lang/Object;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    .line 2696
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/jr;->j:Z

    const v1, 0xfffff

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_e2

    .line 2697
    invoke-direct {p0, p2}, Lcom/google/android/libraries/places/internal/jr;->c(I)I

    move-result p2

    and-int v0, p2, v1

    int-to-long v0, v0

    const/high16 v4, 0xff00000

    and-int/2addr p2, v4

    ushr-int/lit8 p2, p2, 0x14

    const-wide/16 v4, 0x0

    packed-switch p2, :pswitch_data_f6

    .line 2727
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 2726
    :pswitch_20
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_27

    return v3

    :cond_27
    return v2

    .line 2725
    :pswitch_28
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/ky;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_31

    return v3

    :cond_31
    return v2

    .line 2724
    :pswitch_32
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_39

    return v3

    :cond_39
    return v2

    .line 2723
    :pswitch_3a
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/ky;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_43

    return v3

    :cond_43
    return v2

    .line 2722
    :pswitch_44
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_4b

    return v3

    :cond_4b
    return v2

    .line 2721
    :pswitch_4c
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_53

    return v3

    :cond_53
    return v2

    .line 2720
    :pswitch_54
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5b

    return v3

    :cond_5b
    return v2

    .line 2719
    :pswitch_5c
    sget-object p2, Lcom/google/android/libraries/places/internal/hq;->a:Lcom/google/android/libraries/places/internal/hq;

    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/libraries/places/internal/hq;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_69

    return v3

    :cond_69
    return v2

    .line 2718
    :pswitch_6a
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_71

    return v3

    :cond_71
    return v2

    .line 2712
    :pswitch_72
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 2713
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_84

    .line 2714
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_83

    return v3

    :cond_83
    return v2

    .line 2715
    :cond_84
    instance-of p2, p1, Lcom/google/android/libraries/places/internal/hq;

    if-eqz p2, :cond_92

    .line 2716
    sget-object p2, Lcom/google/android/libraries/places/internal/hq;->a:Lcom/google/android/libraries/places/internal/hq;

    invoke-virtual {p2, p1}, Lcom/google/android/libraries/places/internal/hq;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_91

    return v3

    :cond_91
    return v2

    .line 2717
    :cond_92
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 2711
    :pswitch_98
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/ky;->c(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 2710
    :pswitch_9d
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_a4

    return v3

    :cond_a4
    return v2

    .line 2709
    :pswitch_a5
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/ky;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_ae

    return v3

    :cond_ae
    return v2

    .line 2708
    :pswitch_af
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_b6

    return v3

    :cond_b6
    return v2

    .line 2707
    :pswitch_b7
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/ky;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_c0

    return v3

    :cond_c0
    return v2

    .line 2706
    :pswitch_c1
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/ky;->b(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-eqz v0, :cond_ca

    return v3

    :cond_ca
    return v2

    .line 2705
    :pswitch_cb
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/ky;->d(Ljava/lang/Object;J)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_d5

    return v3

    :cond_d5
    return v2

    .line 2704
    :pswitch_d6
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/ky;->e(Ljava/lang/Object;J)D

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmpl-double v4, p1, v0

    if-eqz v4, :cond_e1

    return v3

    :cond_e1
    return v2

    .line 2728
    :cond_e2
    invoke-direct {p0, p2}, Lcom/google/android/libraries/places/internal/jr;->d(I)I

    move-result p2

    ushr-int/lit8 v0, p2, 0x14

    shl-int v0, v3, v0

    and-int/2addr p2, v1

    int-to-long v4, p2

    .line 2730
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_f4

    return v3

    :cond_f4
    return v2

    nop

    :pswitch_data_f6
    .packed-switch 0x0
        :pswitch_d6
        :pswitch_cb
        :pswitch_c1
        :pswitch_b7
        :pswitch_af
        :pswitch_a5
        :pswitch_9d
        :pswitch_98
        :pswitch_72
        :pswitch_6a
        :pswitch_5c
        :pswitch_54
        :pswitch_4c
        :pswitch_44
        :pswitch_3a
        :pswitch_32
        :pswitch_28
        :pswitch_20
    .end packed-switch
.end method

.method private final a(Ljava/lang/Object;II)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    .line 2740
    invoke-direct {p0, p3}, Lcom/google/android/libraries/places/internal/jr;->d(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 2741
    invoke-static {p1, v0, v1}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_11

    const/4 p1, 0x1

    return p1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method private final a(Ljava/lang/Object;III)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;III)Z"
        }
    .end annotation

    .line 2693
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/jr;->j:Z

    if-eqz v0, :cond_9

    .line 2694
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result p1

    return p1

    :cond_9
    and-int p1, p3, p4

    if-eqz p1, :cond_f

    const/4 p1, 0x1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method private static a(Ljava/lang/Object;ILcom/google/android/libraries/places/internal/kd;)Z
    .registers 5

    const v0, 0xfffff

    and-int/2addr p1, v0

    int-to-long v0, p1

    .line 2679
    invoke-static {p0, v0, v1}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 2680
    invoke-interface {p2, p0}, Lcom/google/android/libraries/places/internal/kd;->d(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static b(Ljava/lang/Object;J)D
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    .line 2687
    invoke-static {p0, p1, p2}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private final b(I)Ljava/lang/Object;
    .registers 3

    .line 2590
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/jr;->d:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method private final b(Ljava/lang/Object;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 2731
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/jr;->j:Z

    if-eqz v0, :cond_5

    return-void

    .line 2733
    :cond_5
    invoke-direct {p0, p2}, Lcom/google/android/libraries/places/internal/jr;->d(I)I

    move-result p2

    const/4 v0, 0x1

    ushr-int/lit8 v1, p2, 0x14

    shl-int/2addr v0, v1

    const v1, 0xfffff

    and-int/2addr p2, v1

    int-to-long v1, p2

    .line 2737
    invoke-static {p1, v1, v2}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;J)I

    move-result p2

    or-int/2addr p2, v0

    .line 2738
    invoke-static {p1, v1, v2, p2}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final b(Ljava/lang/Object;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .line 2742
    invoke-direct {p0, p3}, Lcom/google/android/libraries/places/internal/jr;->d(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 2743
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final b(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/lh;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/libraries/places/internal/lh;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 2250
    iget-boolean v3, v0, Lcom/google/android/libraries/places/internal/jr;->h:Z

    if-eqz v3, :cond_23

    .line 2251
    iget-object v3, v0, Lcom/google/android/libraries/places/internal/jr;->r:Lcom/google/android/libraries/places/internal/ib;

    invoke-virtual {v3, v1}, Lcom/google/android/libraries/places/internal/ib;->a(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/id;

    move-result-object v3

    .line 2253
    iget-object v5, v3, Lcom/google/android/libraries/places/internal/id;->a:Lcom/google/android/libraries/places/internal/kg;

    invoke-virtual {v5}, Lcom/google/android/libraries/places/internal/kg;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_23

    .line 2255
    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/id;->b()Ljava/util/Iterator;

    move-result-object v3

    .line 2256
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_25

    :cond_23
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_25
    const/4 v6, -0x1

    .line 2259
    iget-object v7, v0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    array-length v7, v7

    .line 2260
    sget-object v8, Lcom/google/android/libraries/places/internal/jr;->b:Lsun/misc/Unsafe;

    move-object v10, v5

    const/4 v5, 0x0

    const/4 v11, 0x0

    :goto_2e
    if-ge v5, v7, :cond_527

    .line 2262
    invoke-direct {v0, v5}, Lcom/google/android/libraries/places/internal/jr;->c(I)I

    move-result v12

    .line 2264
    iget-object v13, v0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v13, v13, v5

    const/high16 v14, 0xff00000

    and-int/2addr v14, v12

    ushr-int/lit8 v14, v14, 0x14

    .line 2270
    iget-boolean v15, v0, Lcom/google/android/libraries/places/internal/jr;->j:Z

    const v16, 0xfffff

    if-nez v15, :cond_63

    const/16 v15, 0x11

    if-gt v14, v15, :cond_63

    .line 2271
    iget-object v15, v0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    add-int/lit8 v17, v5, 0x2

    aget v15, v15, v17

    and-int v9, v15, v16

    if-eq v9, v6, :cond_5b

    move/from16 v18, v5

    int-to-long v4, v9

    .line 2275
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v11

    move v6, v9

    goto :goto_5d

    :cond_5b
    move/from16 v18, v5

    :goto_5d
    ushr-int/lit8 v4, v15, 0x14

    const/4 v5, 0x1

    shl-int v9, v5, v4

    goto :goto_66

    :cond_63
    move/from16 v18, v5

    const/4 v9, 0x0

    :goto_66
    if-eqz v10, :cond_85

    .line 2277
    iget-object v4, v0, Lcom/google/android/libraries/places/internal/jr;->r:Lcom/google/android/libraries/places/internal/ib;

    invoke-virtual {v4, v10}, Lcom/google/android/libraries/places/internal/ib;->a(Ljava/util/Map$Entry;)I

    move-result v4

    if-gt v4, v13, :cond_85

    .line 2278
    iget-object v4, v0, Lcom/google/android/libraries/places/internal/jr;->r:Lcom/google/android/libraries/places/internal/ib;

    invoke-virtual {v4, v2, v10}, Lcom/google/android/libraries/places/internal/ib;->a(Lcom/google/android/libraries/places/internal/lh;Ljava/util/Map$Entry;)V

    .line 2279
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_83

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    move-object v10, v4

    goto :goto_66

    :cond_83
    const/4 v10, 0x0

    goto :goto_66

    :cond_85
    and-int v4, v12, v16

    int-to-long v4, v4

    packed-switch v14, :pswitch_data_544

    move/from16 v12, v18

    :cond_8d
    :goto_8d
    const/4 v14, 0x0

    goto/16 :goto_523

    :pswitch_90
    move/from16 v12, v18

    .line 2564
    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_8d

    .line 2566
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v12}, Lcom/google/android/libraries/places/internal/jr;->a(I)Lcom/google/android/libraries/places/internal/kd;

    move-result-object v5

    .line 2567
    invoke-virtual {v2, v13, v4, v5}, Lcom/google/android/libraries/places/internal/lh;->b(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/kd;)V

    goto :goto_8d

    :pswitch_a4
    move/from16 v12, v18

    .line 2562
    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_8d

    .line 2563
    invoke-static {v1, v4, v5}, Lcom/google/android/libraries/places/internal/jr;->e(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-virtual {v2, v13, v4, v5}, Lcom/google/android/libraries/places/internal/lh;->e(IJ)V

    goto :goto_8d

    :pswitch_b4
    move/from16 v12, v18

    .line 2560
    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_8d

    .line 2561
    invoke-static {v1, v4, v5}, Lcom/google/android/libraries/places/internal/jr;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v13, v4}, Lcom/google/android/libraries/places/internal/lh;->f(II)V

    goto :goto_8d

    :pswitch_c4
    move/from16 v12, v18

    .line 2558
    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_8d

    .line 2559
    invoke-static {v1, v4, v5}, Lcom/google/android/libraries/places/internal/jr;->e(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-virtual {v2, v13, v4, v5}, Lcom/google/android/libraries/places/internal/lh;->b(IJ)V

    goto :goto_8d

    :pswitch_d4
    move/from16 v12, v18

    .line 2556
    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_8d

    .line 2557
    invoke-static {v1, v4, v5}, Lcom/google/android/libraries/places/internal/jr;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v13, v4}, Lcom/google/android/libraries/places/internal/lh;->a(II)V

    goto :goto_8d

    :pswitch_e4
    move/from16 v12, v18

    .line 2554
    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_8d

    .line 2555
    invoke-static {v1, v4, v5}, Lcom/google/android/libraries/places/internal/jr;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v13, v4}, Lcom/google/android/libraries/places/internal/lh;->b(II)V

    goto :goto_8d

    :pswitch_f4
    move/from16 v12, v18

    .line 2552
    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_8d

    .line 2553
    invoke-static {v1, v4, v5}, Lcom/google/android/libraries/places/internal/jr;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v13, v4}, Lcom/google/android/libraries/places/internal/lh;->e(II)V

    goto :goto_8d

    :pswitch_104
    move/from16 v12, v18

    .line 2550
    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_8d

    .line 2551
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/libraries/places/internal/hq;

    invoke-virtual {v2, v13, v4}, Lcom/google/android/libraries/places/internal/lh;->a(ILcom/google/android/libraries/places/internal/hq;)V

    goto/16 :goto_8d

    :pswitch_117
    move/from16 v12, v18

    .line 2546
    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_8d

    .line 2547
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 2548
    invoke-direct {v0, v12}, Lcom/google/android/libraries/places/internal/jr;->a(I)Lcom/google/android/libraries/places/internal/kd;

    move-result-object v5

    invoke-virtual {v2, v13, v4, v5}, Lcom/google/android/libraries/places/internal/lh;->a(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/kd;)V

    goto/16 :goto_8d

    :pswitch_12c
    move/from16 v12, v18

    .line 2544
    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_8d

    .line 2545
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v13, v4, v2}, Lcom/google/android/libraries/places/internal/jr;->a(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/lh;)V

    goto/16 :goto_8d

    :pswitch_13d
    move/from16 v12, v18

    .line 2542
    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_8d

    .line 2543
    invoke-static {v1, v4, v5}, Lcom/google/android/libraries/places/internal/jr;->f(Ljava/lang/Object;J)Z

    move-result v4

    invoke-virtual {v2, v13, v4}, Lcom/google/android/libraries/places/internal/lh;->a(IZ)V

    goto/16 :goto_8d

    :pswitch_14e
    move/from16 v12, v18

    .line 2540
    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_8d

    .line 2541
    invoke-static {v1, v4, v5}, Lcom/google/android/libraries/places/internal/jr;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v13, v4}, Lcom/google/android/libraries/places/internal/lh;->d(II)V

    goto/16 :goto_8d

    :pswitch_15f
    move/from16 v12, v18

    .line 2538
    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_8d

    .line 2539
    invoke-static {v1, v4, v5}, Lcom/google/android/libraries/places/internal/jr;->e(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-virtual {v2, v13, v4, v5}, Lcom/google/android/libraries/places/internal/lh;->d(IJ)V

    goto/16 :goto_8d

    :pswitch_170
    move/from16 v12, v18

    .line 2536
    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_8d

    .line 2537
    invoke-static {v1, v4, v5}, Lcom/google/android/libraries/places/internal/jr;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v13, v4}, Lcom/google/android/libraries/places/internal/lh;->c(II)V

    goto/16 :goto_8d

    :pswitch_181
    move/from16 v12, v18

    .line 2534
    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_8d

    .line 2535
    invoke-static {v1, v4, v5}, Lcom/google/android/libraries/places/internal/jr;->e(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-virtual {v2, v13, v4, v5}, Lcom/google/android/libraries/places/internal/lh;->c(IJ)V

    goto/16 :goto_8d

    :pswitch_192
    move/from16 v12, v18

    .line 2532
    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_8d

    .line 2533
    invoke-static {v1, v4, v5}, Lcom/google/android/libraries/places/internal/jr;->e(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-virtual {v2, v13, v4, v5}, Lcom/google/android/libraries/places/internal/lh;->a(IJ)V

    goto/16 :goto_8d

    :pswitch_1a3
    move/from16 v12, v18

    .line 2530
    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_8d

    .line 2531
    invoke-static {v1, v4, v5}, Lcom/google/android/libraries/places/internal/jr;->c(Ljava/lang/Object;J)F

    move-result v4

    invoke-virtual {v2, v13, v4}, Lcom/google/android/libraries/places/internal/lh;->a(IF)V

    goto/16 :goto_8d

    :pswitch_1b4
    move/from16 v12, v18

    .line 2528
    invoke-direct {v0, v1, v13, v12}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v9

    if-eqz v9, :cond_8d

    .line 2529
    invoke-static {v1, v4, v5}, Lcom/google/android/libraries/places/internal/jr;->b(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-virtual {v2, v13, v4, v5}, Lcom/google/android/libraries/places/internal/lh;->a(ID)V

    goto/16 :goto_8d

    :pswitch_1c5
    move/from16 v12, v18

    .line 2526
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v2, v13, v4, v12}, Lcom/google/android/libraries/places/internal/jr;->a(Lcom/google/android/libraries/places/internal/lh;ILjava/lang/Object;I)V

    goto/16 :goto_8d

    :pswitch_1d0
    move/from16 v12, v18

    .line 2520
    iget-object v9, v0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v12

    .line 2522
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2523
    invoke-direct {v0, v12}, Lcom/google/android/libraries/places/internal/jr;->a(I)Lcom/google/android/libraries/places/internal/kd;

    move-result-object v5

    .line 2524
    invoke-static {v9, v4, v2, v5}, Lcom/google/android/libraries/places/internal/kf;->b(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Lcom/google/android/libraries/places/internal/kd;)V

    goto/16 :goto_8d

    :pswitch_1e5
    move/from16 v12, v18

    .line 2514
    iget-object v9, v0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v12

    .line 2515
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v13, 0x1

    .line 2516
    invoke-static {v9, v4, v2, v13}, Lcom/google/android/libraries/places/internal/kf;->e(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_8d

    :pswitch_1f7
    move/from16 v12, v18

    const/4 v13, 0x1

    .line 2508
    iget-object v9, v0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v12

    .line 2509
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2510
    invoke-static {v9, v4, v2, v13}, Lcom/google/android/libraries/places/internal/kf;->j(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_8d

    :pswitch_209
    move/from16 v12, v18

    const/4 v13, 0x1

    .line 2502
    iget-object v9, v0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v12

    .line 2503
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2504
    invoke-static {v9, v4, v2, v13}, Lcom/google/android/libraries/places/internal/kf;->g(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_8d

    :pswitch_21b
    move/from16 v12, v18

    const/4 v13, 0x1

    .line 2496
    iget-object v9, v0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v12

    .line 2497
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2498
    invoke-static {v9, v4, v2, v13}, Lcom/google/android/libraries/places/internal/kf;->l(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_8d

    :pswitch_22d
    move/from16 v12, v18

    const/4 v13, 0x1

    .line 2490
    iget-object v9, v0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v12

    .line 2491
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2492
    invoke-static {v9, v4, v2, v13}, Lcom/google/android/libraries/places/internal/kf;->m(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_8d

    :pswitch_23f
    move/from16 v12, v18

    const/4 v13, 0x1

    .line 2484
    iget-object v9, v0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v12

    .line 2485
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2486
    invoke-static {v9, v4, v2, v13}, Lcom/google/android/libraries/places/internal/kf;->i(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_8d

    :pswitch_251
    move/from16 v12, v18

    const/4 v13, 0x1

    .line 2478
    iget-object v9, v0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v12

    .line 2479
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2480
    invoke-static {v9, v4, v2, v13}, Lcom/google/android/libraries/places/internal/kf;->n(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_8d

    :pswitch_263
    move/from16 v12, v18

    const/4 v13, 0x1

    .line 2472
    iget-object v9, v0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v12

    .line 2473
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2474
    invoke-static {v9, v4, v2, v13}, Lcom/google/android/libraries/places/internal/kf;->k(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_8d

    :pswitch_275
    move/from16 v12, v18

    const/4 v13, 0x1

    .line 2466
    iget-object v9, v0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v12

    .line 2467
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2468
    invoke-static {v9, v4, v2, v13}, Lcom/google/android/libraries/places/internal/kf;->f(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_8d

    :pswitch_287
    move/from16 v12, v18

    const/4 v13, 0x1

    .line 2460
    iget-object v9, v0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v12

    .line 2461
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2462
    invoke-static {v9, v4, v2, v13}, Lcom/google/android/libraries/places/internal/kf;->h(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_8d

    :pswitch_299
    move/from16 v12, v18

    const/4 v13, 0x1

    .line 2454
    iget-object v9, v0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v12

    .line 2455
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2456
    invoke-static {v9, v4, v2, v13}, Lcom/google/android/libraries/places/internal/kf;->d(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_8d

    :pswitch_2ab
    move/from16 v12, v18

    const/4 v13, 0x1

    .line 2448
    iget-object v9, v0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v12

    .line 2449
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2450
    invoke-static {v9, v4, v2, v13}, Lcom/google/android/libraries/places/internal/kf;->c(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_8d

    :pswitch_2bd
    move/from16 v12, v18

    const/4 v13, 0x1

    .line 2442
    iget-object v9, v0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v12

    .line 2443
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2444
    invoke-static {v9, v4, v2, v13}, Lcom/google/android/libraries/places/internal/kf;->b(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_8d

    :pswitch_2cf
    move/from16 v12, v18

    const/4 v13, 0x1

    .line 2436
    iget-object v9, v0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v12

    .line 2437
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2438
    invoke-static {v9, v4, v2, v13}, Lcom/google/android/libraries/places/internal/kf;->a(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_8d

    :pswitch_2e1
    move/from16 v12, v18

    .line 2430
    iget-object v9, v0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v12

    .line 2431
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v13, 0x0

    .line 2432
    invoke-static {v9, v4, v2, v13}, Lcom/google/android/libraries/places/internal/kf;->e(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_8d

    :pswitch_2f3
    move/from16 v12, v18

    const/4 v13, 0x0

    .line 2424
    iget-object v9, v0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v12

    .line 2425
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2426
    invoke-static {v9, v4, v2, v13}, Lcom/google/android/libraries/places/internal/kf;->j(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_8d

    :pswitch_305
    move/from16 v12, v18

    const/4 v13, 0x0

    .line 2418
    iget-object v9, v0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v12

    .line 2419
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2420
    invoke-static {v9, v4, v2, v13}, Lcom/google/android/libraries/places/internal/kf;->g(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_8d

    :pswitch_317
    move/from16 v12, v18

    const/4 v13, 0x0

    .line 2412
    iget-object v9, v0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v12

    .line 2413
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2414
    invoke-static {v9, v4, v2, v13}, Lcom/google/android/libraries/places/internal/kf;->l(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_8d

    :pswitch_329
    move/from16 v12, v18

    const/4 v13, 0x0

    .line 2406
    iget-object v9, v0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v12

    .line 2407
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2408
    invoke-static {v9, v4, v2, v13}, Lcom/google/android/libraries/places/internal/kf;->m(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_8d

    :pswitch_33b
    move/from16 v12, v18

    const/4 v13, 0x0

    .line 2400
    iget-object v9, v0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v12

    .line 2401
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2402
    invoke-static {v9, v4, v2, v13}, Lcom/google/android/libraries/places/internal/kf;->i(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_8d

    :pswitch_34d
    move/from16 v12, v18

    .line 2394
    iget-object v9, v0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v12

    .line 2395
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2396
    invoke-static {v9, v4, v2}, Lcom/google/android/libraries/places/internal/kf;->b(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;)V

    goto/16 :goto_8d

    :pswitch_35e
    move/from16 v12, v18

    .line 2386
    iget-object v9, v0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v12

    .line 2388
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2389
    invoke-direct {v0, v12}, Lcom/google/android/libraries/places/internal/jr;->a(I)Lcom/google/android/libraries/places/internal/kd;

    move-result-object v5

    .line 2390
    invoke-static {v9, v4, v2, v5}, Lcom/google/android/libraries/places/internal/kf;->a(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Lcom/google/android/libraries/places/internal/kd;)V

    goto/16 :goto_8d

    :pswitch_373
    move/from16 v12, v18

    .line 2380
    iget-object v9, v0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v12

    .line 2381
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2382
    invoke-static {v9, v4, v2}, Lcom/google/android/libraries/places/internal/kf;->a(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;)V

    goto/16 :goto_8d

    :pswitch_384
    move/from16 v12, v18

    .line 2374
    iget-object v9, v0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v12

    .line 2375
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v14, 0x0

    .line 2376
    invoke-static {v9, v4, v2, v14}, Lcom/google/android/libraries/places/internal/kf;->n(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_523

    :pswitch_396
    move/from16 v12, v18

    const/4 v14, 0x0

    .line 2368
    iget-object v9, v0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v12

    .line 2369
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2370
    invoke-static {v9, v4, v2, v14}, Lcom/google/android/libraries/places/internal/kf;->k(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_523

    :pswitch_3a8
    move/from16 v12, v18

    const/4 v14, 0x0

    .line 2362
    iget-object v9, v0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v12

    .line 2363
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2364
    invoke-static {v9, v4, v2, v14}, Lcom/google/android/libraries/places/internal/kf;->f(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_523

    :pswitch_3ba
    move/from16 v12, v18

    const/4 v14, 0x0

    .line 2356
    iget-object v9, v0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v12

    .line 2357
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2358
    invoke-static {v9, v4, v2, v14}, Lcom/google/android/libraries/places/internal/kf;->h(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_523

    :pswitch_3cc
    move/from16 v12, v18

    const/4 v14, 0x0

    .line 2350
    iget-object v9, v0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v12

    .line 2351
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2352
    invoke-static {v9, v4, v2, v14}, Lcom/google/android/libraries/places/internal/kf;->d(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_523

    :pswitch_3de
    move/from16 v12, v18

    const/4 v14, 0x0

    .line 2344
    iget-object v9, v0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v12

    .line 2345
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2346
    invoke-static {v9, v4, v2, v14}, Lcom/google/android/libraries/places/internal/kf;->c(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_523

    :pswitch_3f0
    move/from16 v12, v18

    const/4 v14, 0x0

    .line 2338
    iget-object v9, v0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v12

    .line 2339
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2340
    invoke-static {v9, v4, v2, v14}, Lcom/google/android/libraries/places/internal/kf;->b(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_523

    :pswitch_402
    move/from16 v12, v18

    const/4 v14, 0x0

    .line 2332
    iget-object v9, v0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v12

    .line 2333
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2334
    invoke-static {v9, v4, v2, v14}, Lcom/google/android/libraries/places/internal/kf;->a(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_523

    :pswitch_414
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_523

    .line 2328
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v12}, Lcom/google/android/libraries/places/internal/jr;->a(I)Lcom/google/android/libraries/places/internal/kd;

    move-result-object v5

    .line 2329
    invoke-virtual {v2, v13, v4, v5}, Lcom/google/android/libraries/places/internal/lh;->b(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/kd;)V

    goto/16 :goto_523

    :pswitch_427
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_523

    .line 2325
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-virtual {v2, v13, v4, v5}, Lcom/google/android/libraries/places/internal/lh;->e(IJ)V

    goto/16 :goto_523

    :pswitch_436
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_523

    .line 2323
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v13, v4}, Lcom/google/android/libraries/places/internal/lh;->f(II)V

    goto/16 :goto_523

    :pswitch_445
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_523

    .line 2321
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-virtual {v2, v13, v4, v5}, Lcom/google/android/libraries/places/internal/lh;->b(IJ)V

    goto/16 :goto_523

    :pswitch_454
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_523

    .line 2319
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v13, v4}, Lcom/google/android/libraries/places/internal/lh;->a(II)V

    goto/16 :goto_523

    :pswitch_463
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_523

    .line 2317
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v13, v4}, Lcom/google/android/libraries/places/internal/lh;->b(II)V

    goto/16 :goto_523

    :pswitch_472
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_523

    .line 2315
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v13, v4}, Lcom/google/android/libraries/places/internal/lh;->e(II)V

    goto/16 :goto_523

    :pswitch_481
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_523

    .line 2313
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/libraries/places/internal/hq;

    invoke-virtual {v2, v13, v4}, Lcom/google/android/libraries/places/internal/lh;->a(ILcom/google/android/libraries/places/internal/hq;)V

    goto/16 :goto_523

    :pswitch_492
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_523

    .line 2309
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 2310
    invoke-direct {v0, v12}, Lcom/google/android/libraries/places/internal/jr;->a(I)Lcom/google/android/libraries/places/internal/kd;

    move-result-object v5

    invoke-virtual {v2, v13, v4, v5}, Lcom/google/android/libraries/places/internal/lh;->a(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/kd;)V

    goto/16 :goto_523

    :pswitch_4a5
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_523

    .line 2307
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v13, v4, v2}, Lcom/google/android/libraries/places/internal/jr;->a(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/lh;)V

    goto/16 :goto_523

    :pswitch_4b4
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_523

    .line 2304
    invoke-static {v1, v4, v5}, Lcom/google/android/libraries/places/internal/ky;->c(Ljava/lang/Object;J)Z

    move-result v4

    .line 2305
    invoke-virtual {v2, v13, v4}, Lcom/google/android/libraries/places/internal/lh;->a(IZ)V

    goto :goto_523

    :pswitch_4c2
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_523

    .line 2301
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v13, v4}, Lcom/google/android/libraries/places/internal/lh;->d(II)V

    goto :goto_523

    :pswitch_4d0
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_523

    .line 2299
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-virtual {v2, v13, v4, v5}, Lcom/google/android/libraries/places/internal/lh;->d(IJ)V

    goto :goto_523

    :pswitch_4de
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_523

    .line 2297
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-virtual {v2, v13, v4}, Lcom/google/android/libraries/places/internal/lh;->c(II)V

    goto :goto_523

    :pswitch_4ec
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_523

    .line 2295
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-virtual {v2, v13, v4, v5}, Lcom/google/android/libraries/places/internal/lh;->c(IJ)V

    goto :goto_523

    :pswitch_4fa
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_523

    .line 2293
    invoke-virtual {v8, v1, v4, v5}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-virtual {v2, v13, v4, v5}, Lcom/google/android/libraries/places/internal/lh;->a(IJ)V

    goto :goto_523

    :pswitch_508
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_523

    .line 2290
    invoke-static {v1, v4, v5}, Lcom/google/android/libraries/places/internal/ky;->d(Ljava/lang/Object;J)F

    move-result v4

    .line 2291
    invoke-virtual {v2, v13, v4}, Lcom/google/android/libraries/places/internal/lh;->a(IF)V

    goto :goto_523

    :pswitch_516
    move/from16 v12, v18

    const/4 v14, 0x0

    and-int/2addr v9, v11

    if-eqz v9, :cond_523

    .line 2286
    invoke-static {v1, v4, v5}, Lcom/google/android/libraries/places/internal/ky;->e(Ljava/lang/Object;J)D

    move-result-wide v4

    .line 2287
    invoke-virtual {v2, v13, v4, v5}, Lcom/google/android/libraries/places/internal/lh;->a(ID)V

    :cond_523
    :goto_523
    add-int/lit8 v5, v12, 0x3

    goto/16 :goto_2e

    :cond_527
    :goto_527
    if-eqz v10, :cond_53e

    .line 2570
    iget-object v4, v0, Lcom/google/android/libraries/places/internal/jr;->r:Lcom/google/android/libraries/places/internal/ib;

    invoke-virtual {v4, v2, v10}, Lcom/google/android/libraries/places/internal/ib;->a(Lcom/google/android/libraries/places/internal/lh;Ljava/util/Map$Entry;)V

    .line 2571
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_53c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    move-object v10, v4

    goto :goto_527

    :cond_53c
    const/4 v10, 0x0

    goto :goto_527

    .line 2572
    :cond_53e
    iget-object v3, v0, Lcom/google/android/libraries/places/internal/jr;->q:Lcom/google/android/libraries/places/internal/kt;

    invoke-static {v3, v1, v2}, Lcom/google/android/libraries/places/internal/jr;->a(Lcom/google/android/libraries/places/internal/kt;Ljava/lang/Object;Lcom/google/android/libraries/places/internal/lh;)V

    return-void

    :pswitch_data_544
    .packed-switch 0x0
        :pswitch_516
        :pswitch_508
        :pswitch_4fa
        :pswitch_4ec
        :pswitch_4de
        :pswitch_4d0
        :pswitch_4c2
        :pswitch_4b4
        :pswitch_4a5
        :pswitch_492
        :pswitch_481
        :pswitch_472
        :pswitch_463
        :pswitch_454
        :pswitch_445
        :pswitch_436
        :pswitch_427
        :pswitch_414
        :pswitch_402
        :pswitch_3f0
        :pswitch_3de
        :pswitch_3cc
        :pswitch_3ba
        :pswitch_3a8
        :pswitch_396
        :pswitch_384
        :pswitch_373
        :pswitch_35e
        :pswitch_34d
        :pswitch_33b
        :pswitch_329
        :pswitch_317
        :pswitch_305
        :pswitch_2f3
        :pswitch_2e1
        :pswitch_2cf
        :pswitch_2bd
        :pswitch_2ab
        :pswitch_299
        :pswitch_287
        :pswitch_275
        :pswitch_263
        :pswitch_251
        :pswitch_23f
        :pswitch_22d
        :pswitch_21b
        :pswitch_209
        :pswitch_1f7
        :pswitch_1e5
        :pswitch_1d0
        :pswitch_1c5
        :pswitch_1b4
        :pswitch_1a3
        :pswitch_192
        :pswitch_181
        :pswitch_170
        :pswitch_15f
        :pswitch_14e
        :pswitch_13d
        :pswitch_12c
        :pswitch_117
        :pswitch_104
        :pswitch_f4
        :pswitch_e4
        :pswitch_d4
        :pswitch_c4
        :pswitch_b4
        :pswitch_a4
        :pswitch_90
    .end packed-switch
.end method

.method private final b(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 564
    invoke-direct {p0, p3}, Lcom/google/android/libraries/places/internal/jr;->c(I)I

    move-result v0

    .line 566
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v1, v1, p3

    const v2, 0xfffff

    and-int/2addr v0, v2

    int-to-long v2, v0

    .line 571
    invoke-direct {p0, p2, v1, p3}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    .line 573
    :cond_14
    invoke-static {p1, v2, v3}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 574
    invoke-static {p2, v2, v3}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v0, :cond_2b

    if-eqz p2, :cond_2b

    .line 576
    invoke-static {v0, p2}, Lcom/google/android/libraries/places/internal/il;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 577
    invoke-static {p1, v2, v3, p2}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 578
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/libraries/places/internal/jr;->b(Ljava/lang/Object;II)V

    return-void

    :cond_2b
    if-eqz p2, :cond_33

    .line 580
    invoke-static {p1, v2, v3, p2}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 581
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/libraries/places/internal/jr;->b(Ljava/lang/Object;II)V

    :cond_33
    return-void
.end method

.method private static c(Ljava/lang/Object;J)F
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    .line 2688
    invoke-static {p0, p1, p2}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private final c(I)I
    .registers 3

    .line 2685
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method

.method private final c(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    .line 2692
    invoke-direct {p0, p1, p3}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result p1

    invoke-direct {p0, p2, p3}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method private final d(I)I
    .registers 3

    .line 2686
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1
.end method

.method private static d(Ljava/lang/Object;J)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    .line 2689
    invoke-static {p0, p1, p2}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static e(Ljava/lang/Object;J)J
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    .line 2690
    invoke-static {p0, p1, p2}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private static f(Ljava/lang/Object;J)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    .line 2691
    invoke-static {p0, p1, p2}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 355
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_5
    if-ge v1, v0, :cond_253

    .line 357
    invoke-direct {p0, v1}, Lcom/google/android/libraries/places/internal/jr;->c(I)I

    move-result v3

    .line 359
    iget-object v4, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v4, v4, v1

    const v5, 0xfffff

    and-int/2addr v5, v3

    int-to-long v5, v5

    const/high16 v7, 0xff00000

    and-int/2addr v3, v7

    ushr-int/lit8 v3, v3, 0x14

    const/16 v7, 0x25

    packed-switch v3, :pswitch_data_272

    goto/16 :goto_24f

    .line 455
    :pswitch_20
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_24f

    .line 456
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    .line 457
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_24f

    .line 453
    :pswitch_33
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_24f

    mul-int/lit8 v2, v2, 0x35

    .line 454
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/jr;->e(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/il;->a(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_24f

    .line 451
    :pswitch_46
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_24f

    mul-int/lit8 v2, v2, 0x35

    .line 452
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/jr;->d(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_24f

    .line 449
    :pswitch_55
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_24f

    mul-int/lit8 v2, v2, 0x35

    .line 450
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/jr;->e(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/il;->a(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_24f

    .line 447
    :pswitch_68
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_24f

    mul-int/lit8 v2, v2, 0x35

    .line 448
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/jr;->d(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_24f

    .line 445
    :pswitch_77
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_24f

    mul-int/lit8 v2, v2, 0x35

    .line 446
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/jr;->d(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_24f

    .line 443
    :pswitch_86
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_24f

    mul-int/lit8 v2, v2, 0x35

    .line 444
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/jr;->d(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_24f

    .line 441
    :pswitch_95
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_24f

    mul-int/lit8 v2, v2, 0x35

    .line 442
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_24f

    .line 437
    :pswitch_a8
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_24f

    .line 438
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    .line 439
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_24f

    .line 434
    :pswitch_bb
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_24f

    mul-int/lit8 v2, v2, 0x35

    .line 436
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_24f

    .line 432
    :pswitch_d0
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_24f

    mul-int/lit8 v2, v2, 0x35

    .line 433
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/jr;->f(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/libraries/places/internal/il;->a(Z)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_24f

    .line 430
    :pswitch_e3
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_24f

    mul-int/lit8 v2, v2, 0x35

    .line 431
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/jr;->d(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_24f

    .line 428
    :pswitch_f2
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_24f

    mul-int/lit8 v2, v2, 0x35

    .line 429
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/jr;->e(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/il;->a(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_24f

    .line 426
    :pswitch_105
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_24f

    mul-int/lit8 v2, v2, 0x35

    .line 427
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/jr;->d(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_24f

    .line 424
    :pswitch_114
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_24f

    mul-int/lit8 v2, v2, 0x35

    .line 425
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/jr;->e(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/il;->a(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_24f

    .line 422
    :pswitch_127
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_24f

    mul-int/lit8 v2, v2, 0x35

    .line 423
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/jr;->e(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/il;->a(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_24f

    .line 420
    :pswitch_13a
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_24f

    mul-int/lit8 v2, v2, 0x35

    .line 421
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/jr;->c(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_24f

    .line 417
    :pswitch_14d
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_24f

    mul-int/lit8 v2, v2, 0x35

    .line 419
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/jr;->b(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/il;->a(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_24f

    :pswitch_164
    mul-int/lit8 v2, v2, 0x35

    .line 415
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_24f

    :pswitch_171
    mul-int/lit8 v2, v2, 0x35

    .line 413
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_24f

    .line 408
    :pswitch_17e
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_188

    .line 410
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_188
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto/16 :goto_24f

    :pswitch_18d
    mul-int/lit8 v2, v2, 0x35

    .line 405
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/ky;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/il;->a(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_24f

    :pswitch_19a
    mul-int/lit8 v2, v2, 0x35

    .line 403
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_24f

    :pswitch_1a3
    mul-int/lit8 v2, v2, 0x35

    .line 401
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/ky;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/il;->a(J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_24f

    :pswitch_1b0
    mul-int/lit8 v2, v2, 0x35

    .line 399
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_24f

    :pswitch_1b9
    mul-int/lit8 v2, v2, 0x35

    .line 397
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_24f

    :pswitch_1c2
    mul-int/lit8 v2, v2, 0x35

    .line 395
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_24f

    :pswitch_1cb
    mul-int/lit8 v2, v2, 0x35

    .line 393
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto/16 :goto_24f

    .line 388
    :pswitch_1d8
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1e2

    .line 390
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_1e2
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto :goto_24f

    :pswitch_1e6
    mul-int/lit8 v2, v2, 0x35

    .line 385
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_24f

    :pswitch_1f4
    mul-int/lit8 v2, v2, 0x35

    .line 383
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/ky;->c(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/libraries/places/internal/il;->a(Z)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_24f

    :pswitch_200
    mul-int/lit8 v2, v2, 0x35

    .line 381
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_24f

    :pswitch_208
    mul-int/lit8 v2, v2, 0x35

    .line 379
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/ky;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/il;->a(J)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_24f

    :pswitch_214
    mul-int/lit8 v2, v2, 0x35

    .line 377
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;J)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_24f

    :pswitch_21c
    mul-int/lit8 v2, v2, 0x35

    .line 375
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/ky;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/il;->a(J)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_24f

    :pswitch_228
    mul-int/lit8 v2, v2, 0x35

    .line 373
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/ky;->b(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/il;->a(J)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_24f

    :pswitch_234
    mul-int/lit8 v2, v2, 0x35

    .line 371
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/ky;->d(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_24f

    :pswitch_240
    mul-int/lit8 v2, v2, 0x35

    .line 368
    invoke-static {p1, v5, v6}, Lcom/google/android/libraries/places/internal/ky;->e(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 369
    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/il;->a(J)I

    move-result v3

    add-int/2addr v2, v3

    :cond_24f
    :goto_24f
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_5

    :cond_253
    mul-int/lit8 v2, v2, 0x35

    .line 459
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/jr;->q:Lcom/google/android/libraries/places/internal/kt;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/kt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    .line 460
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/jr;->h:Z

    if-eqz v0, :cond_271

    mul-int/lit8 v2, v2, 0x35

    .line 461
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/jr;->r:Lcom/google/android/libraries/places/internal/ib;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/ib;->a(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/id;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/id;->hashCode()I

    move-result p1

    add-int/2addr v2, p1

    :cond_271
    return v2

    :pswitch_data_272
    .packed-switch 0x0
        :pswitch_240
        :pswitch_234
        :pswitch_228
        :pswitch_21c
        :pswitch_214
        :pswitch_208
        :pswitch_200
        :pswitch_1f4
        :pswitch_1e6
        :pswitch_1d8
        :pswitch_1cb
        :pswitch_1c2
        :pswitch_1b9
        :pswitch_1b0
        :pswitch_1a3
        :pswitch_19a
        :pswitch_18d
        :pswitch_17e
        :pswitch_171
        :pswitch_171
        :pswitch_171
        :pswitch_171
        :pswitch_171
        :pswitch_171
        :pswitch_171
        :pswitch_171
        :pswitch_171
        :pswitch_171
        :pswitch_171
        :pswitch_171
        :pswitch_171
        :pswitch_171
        :pswitch_171
        :pswitch_171
        :pswitch_171
        :pswitch_171
        :pswitch_171
        :pswitch_171
        :pswitch_171
        :pswitch_171
        :pswitch_171
        :pswitch_171
        :pswitch_171
        :pswitch_171
        :pswitch_171
        :pswitch_171
        :pswitch_171
        :pswitch_171
        :pswitch_171
        :pswitch_171
        :pswitch_164
        :pswitch_14d
        :pswitch_13a
        :pswitch_127
        :pswitch_114
        :pswitch_105
        :pswitch_f2
        :pswitch_e3
        :pswitch_d0
        :pswitch_bb
        :pswitch_a8
        :pswitch_95
        :pswitch_86
        :pswitch_77
        :pswitch_68
        :pswitch_55
        :pswitch_46
        :pswitch_33
        :pswitch_20
    .end packed-switch
.end method

.method public final a(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/lh;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/libraries/places/internal/lh;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1225
    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/lh;->a()Lcom/google/android/libraries/places/internal/li;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/internal/li;->b:Lcom/google/android/libraries/places/internal/li;

    const/high16 v2, 0xff00000

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const v6, 0xfffff

    if-ne v0, v1, :cond_544

    .line 1227
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/jr;->q:Lcom/google/android/libraries/places/internal/kt;

    invoke-static {v0, p1, p2}, Lcom/google/android/libraries/places/internal/jr;->a(Lcom/google/android/libraries/places/internal/kt;Ljava/lang/Object;Lcom/google/android/libraries/places/internal/lh;)V

    .line 1230
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/jr;->h:Z

    if-eqz v0, :cond_4d

    .line 1231
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/jr;->r:Lcom/google/android/libraries/places/internal/ib;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/ib;->a(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/id;

    move-result-object v0

    .line 1233
    iget-object v1, v0, Lcom/google/android/libraries/places/internal/id;->a:Lcom/google/android/libraries/places/internal/kg;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/kg;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4d

    .line 1236
    iget-boolean v1, v0, Lcom/google/android/libraries/places/internal/id;->c:Z

    if-eqz v1, :cond_3c

    .line 1237
    new-instance v1, Lcom/google/android/libraries/places/internal/iw;

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/id;->a:Lcom/google/android/libraries/places/internal/kg;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/kg;->d()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/libraries/places/internal/iw;-><init>(Ljava/util/Iterator;)V

    move-object v0, v1

    goto :goto_46

    .line 1238
    :cond_3c
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/id;->a:Lcom/google/android/libraries/places/internal/kg;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/kg;->d()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1240
    :goto_46
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_4f

    :cond_4d
    move-object v0, v3

    move-object v1, v0

    .line 1241
    :goto_4f
    iget-object v7, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    array-length v7, v7

    add-int/lit8 v7, v7, -0x3

    :goto_54
    if-ltz v7, :cond_52c

    .line 1242
    invoke-direct {p0, v7}, Lcom/google/android/libraries/places/internal/jr;->c(I)I

    move-result v8

    .line 1244
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v7

    :goto_5e
    if-eqz v1, :cond_7c

    .line 1246
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/jr;->r:Lcom/google/android/libraries/places/internal/ib;

    invoke-virtual {v10, v1}, Lcom/google/android/libraries/places/internal/ib;->a(Ljava/util/Map$Entry;)I

    move-result v10

    if-le v10, v9, :cond_7c

    .line 1247
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/jr;->r:Lcom/google/android/libraries/places/internal/ib;

    invoke-virtual {v10, p2, v1}, Lcom/google/android/libraries/places/internal/ib;->a(Lcom/google/android/libraries/places/internal/lh;Ljava/util/Map$Entry;)V

    .line 1248
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_5e

    :cond_7a
    move-object v1, v3

    goto :goto_5e

    :cond_7c
    and-int v10, v8, v2

    ushr-int/lit8 v10, v10, 0x14

    packed-switch v10, :pswitch_data_a66

    goto/16 :goto_528

    .line 1725
    :pswitch_85
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_528

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1729
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 1730
    invoke-direct {p0, v7}, Lcom/google/android/libraries/places/internal/jr;->a(I)Lcom/google/android/libraries/places/internal/kd;

    move-result-object v10

    .line 1731
    invoke-virtual {p2, v9, v8, v10}, Lcom/google/android/libraries/places/internal/lh;->b(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/kd;)V

    goto/16 :goto_528

    .line 1721
    :pswitch_9a
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_528

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1724
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/jr;->e(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-virtual {p2, v9, v10, v11}, Lcom/google/android/libraries/places/internal/lh;->e(IJ)V

    goto/16 :goto_528

    .line 1717
    :pswitch_ab
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_528

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1720
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/jr;->d(Ljava/lang/Object;J)I

    move-result v8

    invoke-virtual {p2, v9, v8}, Lcom/google/android/libraries/places/internal/lh;->f(II)V

    goto/16 :goto_528

    .line 1713
    :pswitch_bc
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_528

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1716
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/jr;->e(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-virtual {p2, v9, v10, v11}, Lcom/google/android/libraries/places/internal/lh;->b(IJ)V

    goto/16 :goto_528

    .line 1709
    :pswitch_cd
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_528

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1712
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/jr;->d(Ljava/lang/Object;J)I

    move-result v8

    invoke-virtual {p2, v9, v8}, Lcom/google/android/libraries/places/internal/lh;->a(II)V

    goto/16 :goto_528

    .line 1705
    :pswitch_de
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_528

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1708
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/jr;->d(Ljava/lang/Object;J)I

    move-result v8

    invoke-virtual {p2, v9, v8}, Lcom/google/android/libraries/places/internal/lh;->b(II)V

    goto/16 :goto_528

    .line 1701
    :pswitch_ef
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_528

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1704
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/jr;->d(Ljava/lang/Object;J)I

    move-result v8

    invoke-virtual {p2, v9, v8}, Lcom/google/android/libraries/places/internal/lh;->e(II)V

    goto/16 :goto_528

    .line 1695
    :pswitch_100
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_528

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1699
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/libraries/places/internal/hq;

    .line 1700
    invoke-virtual {p2, v9, v8}, Lcom/google/android/libraries/places/internal/lh;->a(ILcom/google/android/libraries/places/internal/hq;)V

    goto/16 :goto_528

    .line 1689
    :pswitch_113
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_528

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1692
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 1693
    invoke-direct {p0, v7}, Lcom/google/android/libraries/places/internal/jr;->a(I)Lcom/google/android/libraries/places/internal/kd;

    move-result-object v10

    invoke-virtual {p2, v9, v8, v10}, Lcom/google/android/libraries/places/internal/lh;->a(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/kd;)V

    goto/16 :goto_528

    .line 1685
    :pswitch_128
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_528

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1688
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9, v8, p2}, Lcom/google/android/libraries/places/internal/jr;->a(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/lh;)V

    goto/16 :goto_528

    .line 1681
    :pswitch_139
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_528

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1684
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/jr;->f(Ljava/lang/Object;J)Z

    move-result v8

    invoke-virtual {p2, v9, v8}, Lcom/google/android/libraries/places/internal/lh;->a(IZ)V

    goto/16 :goto_528

    .line 1677
    :pswitch_14a
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_528

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1680
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/jr;->d(Ljava/lang/Object;J)I

    move-result v8

    invoke-virtual {p2, v9, v8}, Lcom/google/android/libraries/places/internal/lh;->d(II)V

    goto/16 :goto_528

    .line 1673
    :pswitch_15b
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_528

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1676
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/jr;->e(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-virtual {p2, v9, v10, v11}, Lcom/google/android/libraries/places/internal/lh;->d(IJ)V

    goto/16 :goto_528

    .line 1669
    :pswitch_16c
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_528

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1672
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/jr;->d(Ljava/lang/Object;J)I

    move-result v8

    invoke-virtual {p2, v9, v8}, Lcom/google/android/libraries/places/internal/lh;->c(II)V

    goto/16 :goto_528

    .line 1665
    :pswitch_17d
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_528

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1668
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/jr;->e(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-virtual {p2, v9, v10, v11}, Lcom/google/android/libraries/places/internal/lh;->c(IJ)V

    goto/16 :goto_528

    .line 1661
    :pswitch_18e
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_528

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1664
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/jr;->e(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-virtual {p2, v9, v10, v11}, Lcom/google/android/libraries/places/internal/lh;->a(IJ)V

    goto/16 :goto_528

    .line 1657
    :pswitch_19f
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_528

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1660
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/jr;->c(Ljava/lang/Object;J)F

    move-result v8

    invoke-virtual {p2, v9, v8}, Lcom/google/android/libraries/places/internal/lh;->a(IF)V

    goto/16 :goto_528

    .line 1653
    :pswitch_1b0
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_528

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1656
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/jr;->b(Ljava/lang/Object;J)D

    move-result-wide v10

    invoke-virtual {p2, v9, v10, v11}, Lcom/google/android/libraries/places/internal/lh;->a(ID)V

    goto/16 :goto_528

    :pswitch_1c1
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1651
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, p2, v9, v8, v7}, Lcom/google/android/libraries/places/internal/jr;->a(Lcom/google/android/libraries/places/internal/lh;ILjava/lang/Object;I)V

    goto/16 :goto_528

    .line 1641
    :pswitch_1cc
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1645
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1646
    invoke-direct {p0, v7}, Lcom/google/android/libraries/places/internal/jr;->a(I)Lcom/google/android/libraries/places/internal/kd;

    move-result-object v10

    .line 1647
    invoke-static {v9, v8, p2, v10}, Lcom/google/android/libraries/places/internal/kf;->b(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Lcom/google/android/libraries/places/internal/kd;)V

    goto/16 :goto_528

    .line 1632
    :pswitch_1e1
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1636
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1637
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/libraries/places/internal/kf;->e(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_528

    .line 1623
    :pswitch_1f2
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1627
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1628
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/libraries/places/internal/kf;->j(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_528

    .line 1614
    :pswitch_203
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1618
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1619
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/libraries/places/internal/kf;->g(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_528

    .line 1605
    :pswitch_214
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1609
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1610
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/libraries/places/internal/kf;->l(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_528

    .line 1596
    :pswitch_225
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1600
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1601
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/libraries/places/internal/kf;->m(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_528

    .line 1587
    :pswitch_236
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1591
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1592
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/libraries/places/internal/kf;->i(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_528

    .line 1578
    :pswitch_247
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1582
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1583
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/libraries/places/internal/kf;->n(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_528

    .line 1569
    :pswitch_258
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1573
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1574
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/libraries/places/internal/kf;->k(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_528

    .line 1560
    :pswitch_269
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1564
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1565
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/libraries/places/internal/kf;->f(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_528

    .line 1551
    :pswitch_27a
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1555
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1556
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/libraries/places/internal/kf;->h(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_528

    .line 1542
    :pswitch_28b
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1546
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1547
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/libraries/places/internal/kf;->d(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_528

    .line 1533
    :pswitch_29c
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1537
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1538
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/libraries/places/internal/kf;->c(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_528

    .line 1524
    :pswitch_2ad
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1528
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1529
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/libraries/places/internal/kf;->b(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_528

    .line 1515
    :pswitch_2be
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1519
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1520
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/libraries/places/internal/kf;->a(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_528

    .line 1506
    :pswitch_2cf
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1510
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1511
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/libraries/places/internal/kf;->e(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_528

    .line 1497
    :pswitch_2e0
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1501
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1502
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/libraries/places/internal/kf;->j(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_528

    .line 1488
    :pswitch_2f1
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1492
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1493
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/libraries/places/internal/kf;->g(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_528

    .line 1479
    :pswitch_302
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1483
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1484
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/libraries/places/internal/kf;->l(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_528

    .line 1470
    :pswitch_313
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1474
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1475
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/libraries/places/internal/kf;->m(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_528

    .line 1461
    :pswitch_324
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1465
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1466
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/libraries/places/internal/kf;->i(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_528

    .line 1452
    :pswitch_335
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1456
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1457
    invoke-static {v9, v8, p2}, Lcom/google/android/libraries/places/internal/kf;->b(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;)V

    goto/16 :goto_528

    .line 1442
    :pswitch_346
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1446
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1447
    invoke-direct {p0, v7}, Lcom/google/android/libraries/places/internal/jr;->a(I)Lcom/google/android/libraries/places/internal/kd;

    move-result-object v10

    .line 1448
    invoke-static {v9, v8, p2, v10}, Lcom/google/android/libraries/places/internal/kf;->a(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Lcom/google/android/libraries/places/internal/kd;)V

    goto/16 :goto_528

    .line 1433
    :pswitch_35b
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1437
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1438
    invoke-static {v9, v8, p2}, Lcom/google/android/libraries/places/internal/kf;->a(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;)V

    goto/16 :goto_528

    .line 1424
    :pswitch_36c
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1428
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1429
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/libraries/places/internal/kf;->n(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_528

    .line 1415
    :pswitch_37d
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1419
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1420
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/libraries/places/internal/kf;->k(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_528

    .line 1406
    :pswitch_38e
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1410
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1411
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/libraries/places/internal/kf;->f(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_528

    .line 1397
    :pswitch_39f
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1401
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1402
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/libraries/places/internal/kf;->h(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_528

    .line 1388
    :pswitch_3b0
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1392
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1393
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/libraries/places/internal/kf;->d(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_528

    .line 1379
    :pswitch_3c1
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1383
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1384
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/libraries/places/internal/kf;->c(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_528

    .line 1370
    :pswitch_3d2
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1374
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1375
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/libraries/places/internal/kf;->b(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_528

    .line 1361
    :pswitch_3e3
    iget-object v9, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1365
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1366
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/libraries/places/internal/kf;->a(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_528

    .line 1352
    :pswitch_3f4
    invoke-direct {p0, p1, v7}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_528

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1356
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 1357
    invoke-direct {p0, v7}, Lcom/google/android/libraries/places/internal/jr;->a(I)Lcom/google/android/libraries/places/internal/kd;

    move-result-object v10

    .line 1358
    invoke-virtual {p2, v9, v8, v10}, Lcom/google/android/libraries/places/internal/lh;->b(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/kd;)V

    goto/16 :goto_528

    .line 1346
    :pswitch_409
    invoke-direct {p0, p1, v7}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_528

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1350
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/ky;->b(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 1351
    invoke-virtual {p2, v9, v10, v11}, Lcom/google/android/libraries/places/internal/lh;->e(IJ)V

    goto/16 :goto_528

    .line 1340
    :pswitch_41a
    invoke-direct {p0, p1, v7}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_528

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1344
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;J)I

    move-result v8

    .line 1345
    invoke-virtual {p2, v9, v8}, Lcom/google/android/libraries/places/internal/lh;->f(II)V

    goto/16 :goto_528

    .line 1334
    :pswitch_42b
    invoke-direct {p0, p1, v7}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_528

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1338
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/ky;->b(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 1339
    invoke-virtual {p2, v9, v10, v11}, Lcom/google/android/libraries/places/internal/lh;->b(IJ)V

    goto/16 :goto_528

    .line 1328
    :pswitch_43c
    invoke-direct {p0, p1, v7}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_528

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1332
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;J)I

    move-result v8

    .line 1333
    invoke-virtual {p2, v9, v8}, Lcom/google/android/libraries/places/internal/lh;->a(II)V

    goto/16 :goto_528

    .line 1322
    :pswitch_44d
    invoke-direct {p0, p1, v7}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_528

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1326
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;J)I

    move-result v8

    .line 1327
    invoke-virtual {p2, v9, v8}, Lcom/google/android/libraries/places/internal/lh;->b(II)V

    goto/16 :goto_528

    .line 1316
    :pswitch_45e
    invoke-direct {p0, p1, v7}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_528

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1320
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;J)I

    move-result v8

    .line 1321
    invoke-virtual {p2, v9, v8}, Lcom/google/android/libraries/places/internal/lh;->e(II)V

    goto/16 :goto_528

    .line 1310
    :pswitch_46f
    invoke-direct {p0, p1, v7}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_528

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1314
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/libraries/places/internal/hq;

    .line 1315
    invoke-virtual {p2, v9, v8}, Lcom/google/android/libraries/places/internal/lh;->a(ILcom/google/android/libraries/places/internal/hq;)V

    goto/16 :goto_528

    .line 1304
    :pswitch_482
    invoke-direct {p0, p1, v7}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_528

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1307
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 1308
    invoke-direct {p0, v7}, Lcom/google/android/libraries/places/internal/jr;->a(I)Lcom/google/android/libraries/places/internal/kd;

    move-result-object v10

    invoke-virtual {p2, v9, v8, v10}, Lcom/google/android/libraries/places/internal/lh;->a(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/kd;)V

    goto/16 :goto_528

    .line 1300
    :pswitch_497
    invoke-direct {p0, p1, v7}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_528

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1303
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9, v8, p2}, Lcom/google/android/libraries/places/internal/jr;->a(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/lh;)V

    goto/16 :goto_528

    .line 1294
    :pswitch_4a8
    invoke-direct {p0, p1, v7}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_528

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1298
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/ky;->c(Ljava/lang/Object;J)Z

    move-result v8

    .line 1299
    invoke-virtual {p2, v9, v8}, Lcom/google/android/libraries/places/internal/lh;->a(IZ)V

    goto/16 :goto_528

    .line 1288
    :pswitch_4b9
    invoke-direct {p0, p1, v7}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_528

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1292
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;J)I

    move-result v8

    .line 1293
    invoke-virtual {p2, v9, v8}, Lcom/google/android/libraries/places/internal/lh;->d(II)V

    goto :goto_528

    .line 1282
    :pswitch_4c9
    invoke-direct {p0, p1, v7}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_528

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1286
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/ky;->b(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 1287
    invoke-virtual {p2, v9, v10, v11}, Lcom/google/android/libraries/places/internal/lh;->d(IJ)V

    goto :goto_528

    .line 1276
    :pswitch_4d9
    invoke-direct {p0, p1, v7}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_528

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1280
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;J)I

    move-result v8

    .line 1281
    invoke-virtual {p2, v9, v8}, Lcom/google/android/libraries/places/internal/lh;->c(II)V

    goto :goto_528

    .line 1270
    :pswitch_4e9
    invoke-direct {p0, p1, v7}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_528

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1274
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/ky;->b(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 1275
    invoke-virtual {p2, v9, v10, v11}, Lcom/google/android/libraries/places/internal/lh;->c(IJ)V

    goto :goto_528

    .line 1264
    :pswitch_4f9
    invoke-direct {p0, p1, v7}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_528

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1268
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/ky;->b(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 1269
    invoke-virtual {p2, v9, v10, v11}, Lcom/google/android/libraries/places/internal/lh;->a(IJ)V

    goto :goto_528

    .line 1258
    :pswitch_509
    invoke-direct {p0, p1, v7}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_528

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1262
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/ky;->d(Ljava/lang/Object;J)F

    move-result v8

    .line 1263
    invoke-virtual {p2, v9, v8}, Lcom/google/android/libraries/places/internal/lh;->a(IF)V

    goto :goto_528

    .line 1252
    :pswitch_519
    invoke-direct {p0, p1, v7}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_528

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1256
    invoke-static {p1, v10, v11}, Lcom/google/android/libraries/places/internal/ky;->e(Ljava/lang/Object;J)D

    move-result-wide v10

    .line 1257
    invoke-virtual {p2, v9, v10, v11}, Lcom/google/android/libraries/places/internal/lh;->a(ID)V

    :cond_528
    :goto_528
    add-int/lit8 v7, v7, -0x3

    goto/16 :goto_54

    :cond_52c
    :goto_52c
    if-eqz v1, :cond_543

    .line 1734
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/jr;->r:Lcom/google/android/libraries/places/internal/ib;

    invoke-virtual {p1, p2, v1}, Lcom/google/android/libraries/places/internal/ib;->a(Lcom/google/android/libraries/places/internal/lh;Ljava/util/Map$Entry;)V

    .line 1735
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_541

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    move-object v1, p1

    goto :goto_52c

    :cond_541
    move-object v1, v3

    goto :goto_52c

    :cond_543
    return-void

    .line 1737
    :cond_544
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/jr;->j:Z

    if-eqz v0, :cond_a61

    .line 1741
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/jr;->h:Z

    if-eqz v0, :cond_565

    .line 1742
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/jr;->r:Lcom/google/android/libraries/places/internal/ib;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/ib;->a(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/id;

    move-result-object v0

    .line 1744
    iget-object v1, v0, Lcom/google/android/libraries/places/internal/id;->a:Lcom/google/android/libraries/places/internal/kg;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/kg;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_565

    .line 1746
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/id;->b()Ljava/util/Iterator;

    move-result-object v0

    .line 1747
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_567

    :cond_565
    move-object v0, v3

    move-object v1, v0

    .line 1748
    :goto_567
    iget-object v7, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    array-length v7, v7

    move-object v8, v1

    const/4 v1, 0x0

    :goto_56c
    if-ge v1, v7, :cond_a44

    .line 1750
    invoke-direct {p0, v1}, Lcom/google/android/libraries/places/internal/jr;->c(I)I

    move-result v9

    .line 1752
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v10, v10, v1

    :goto_576
    if-eqz v8, :cond_594

    .line 1754
    iget-object v11, p0, Lcom/google/android/libraries/places/internal/jr;->r:Lcom/google/android/libraries/places/internal/ib;

    invoke-virtual {v11, v8}, Lcom/google/android/libraries/places/internal/ib;->a(Ljava/util/Map$Entry;)I

    move-result v11

    if-gt v11, v10, :cond_594

    .line 1755
    iget-object v11, p0, Lcom/google/android/libraries/places/internal/jr;->r:Lcom/google/android/libraries/places/internal/ib;

    invoke-virtual {v11, p2, v8}, Lcom/google/android/libraries/places/internal/ib;->a(Lcom/google/android/libraries/places/internal/lh;Ljava/util/Map$Entry;)V

    .line 1756
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_592

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    goto :goto_576

    :cond_592
    move-object v8, v3

    goto :goto_576

    :cond_594
    and-int v11, v9, v2

    ushr-int/lit8 v11, v11, 0x14

    packed-switch v11, :pswitch_data_af4

    goto/16 :goto_a40

    .line 2233
    :pswitch_59d
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a40

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2237
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 2238
    invoke-direct {p0, v1}, Lcom/google/android/libraries/places/internal/jr;->a(I)Lcom/google/android/libraries/places/internal/kd;

    move-result-object v11

    .line 2239
    invoke-virtual {p2, v10, v9, v11}, Lcom/google/android/libraries/places/internal/lh;->b(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/kd;)V

    goto/16 :goto_a40

    .line 2229
    :pswitch_5b2
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a40

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2232
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/jr;->e(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-virtual {p2, v10, v11, v12}, Lcom/google/android/libraries/places/internal/lh;->e(IJ)V

    goto/16 :goto_a40

    .line 2225
    :pswitch_5c3
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a40

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2228
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/jr;->d(Ljava/lang/Object;J)I

    move-result v9

    invoke-virtual {p2, v10, v9}, Lcom/google/android/libraries/places/internal/lh;->f(II)V

    goto/16 :goto_a40

    .line 2221
    :pswitch_5d4
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a40

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2224
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/jr;->e(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-virtual {p2, v10, v11, v12}, Lcom/google/android/libraries/places/internal/lh;->b(IJ)V

    goto/16 :goto_a40

    .line 2217
    :pswitch_5e5
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a40

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2220
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/jr;->d(Ljava/lang/Object;J)I

    move-result v9

    invoke-virtual {p2, v10, v9}, Lcom/google/android/libraries/places/internal/lh;->a(II)V

    goto/16 :goto_a40

    .line 2213
    :pswitch_5f6
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a40

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2216
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/jr;->d(Ljava/lang/Object;J)I

    move-result v9

    invoke-virtual {p2, v10, v9}, Lcom/google/android/libraries/places/internal/lh;->b(II)V

    goto/16 :goto_a40

    .line 2209
    :pswitch_607
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a40

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2212
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/jr;->d(Ljava/lang/Object;J)I

    move-result v9

    invoke-virtual {p2, v10, v9}, Lcom/google/android/libraries/places/internal/lh;->e(II)V

    goto/16 :goto_a40

    .line 2203
    :pswitch_618
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a40

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2207
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/libraries/places/internal/hq;

    .line 2208
    invoke-virtual {p2, v10, v9}, Lcom/google/android/libraries/places/internal/lh;->a(ILcom/google/android/libraries/places/internal/hq;)V

    goto/16 :goto_a40

    .line 2197
    :pswitch_62b
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a40

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2200
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 2201
    invoke-direct {p0, v1}, Lcom/google/android/libraries/places/internal/jr;->a(I)Lcom/google/android/libraries/places/internal/kd;

    move-result-object v11

    invoke-virtual {p2, v10, v9, v11}, Lcom/google/android/libraries/places/internal/lh;->a(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/kd;)V

    goto/16 :goto_a40

    .line 2193
    :pswitch_640
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a40

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2196
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v10, v9, p2}, Lcom/google/android/libraries/places/internal/jr;->a(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/lh;)V

    goto/16 :goto_a40

    .line 2189
    :pswitch_651
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a40

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2192
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/jr;->f(Ljava/lang/Object;J)Z

    move-result v9

    invoke-virtual {p2, v10, v9}, Lcom/google/android/libraries/places/internal/lh;->a(IZ)V

    goto/16 :goto_a40

    .line 2185
    :pswitch_662
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a40

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2188
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/jr;->d(Ljava/lang/Object;J)I

    move-result v9

    invoke-virtual {p2, v10, v9}, Lcom/google/android/libraries/places/internal/lh;->d(II)V

    goto/16 :goto_a40

    .line 2181
    :pswitch_673
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a40

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2184
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/jr;->e(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-virtual {p2, v10, v11, v12}, Lcom/google/android/libraries/places/internal/lh;->d(IJ)V

    goto/16 :goto_a40

    .line 2177
    :pswitch_684
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a40

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2180
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/jr;->d(Ljava/lang/Object;J)I

    move-result v9

    invoke-virtual {p2, v10, v9}, Lcom/google/android/libraries/places/internal/lh;->c(II)V

    goto/16 :goto_a40

    .line 2173
    :pswitch_695
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a40

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2176
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/jr;->e(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-virtual {p2, v10, v11, v12}, Lcom/google/android/libraries/places/internal/lh;->c(IJ)V

    goto/16 :goto_a40

    .line 2169
    :pswitch_6a6
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a40

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2172
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/jr;->e(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-virtual {p2, v10, v11, v12}, Lcom/google/android/libraries/places/internal/lh;->a(IJ)V

    goto/16 :goto_a40

    .line 2165
    :pswitch_6b7
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a40

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2168
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/jr;->c(Ljava/lang/Object;J)F

    move-result v9

    invoke-virtual {p2, v10, v9}, Lcom/google/android/libraries/places/internal/lh;->a(IF)V

    goto/16 :goto_a40

    .line 2161
    :pswitch_6c8
    invoke-direct {p0, p1, v10, v1}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a40

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2164
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/jr;->b(Ljava/lang/Object;J)D

    move-result-wide v11

    invoke-virtual {p2, v10, v11, v12}, Lcom/google/android/libraries/places/internal/lh;->a(ID)V

    goto/16 :goto_a40

    :pswitch_6d9
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2159
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {p0, p2, v10, v9, v1}, Lcom/google/android/libraries/places/internal/jr;->a(Lcom/google/android/libraries/places/internal/lh;ILjava/lang/Object;I)V

    goto/16 :goto_a40

    .line 2149
    :pswitch_6e4
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2153
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2154
    invoke-direct {p0, v1}, Lcom/google/android/libraries/places/internal/jr;->a(I)Lcom/google/android/libraries/places/internal/kd;

    move-result-object v11

    .line 2155
    invoke-static {v10, v9, p2, v11}, Lcom/google/android/libraries/places/internal/kf;->b(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Lcom/google/android/libraries/places/internal/kd;)V

    goto/16 :goto_a40

    .line 2140
    :pswitch_6f9
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2144
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2145
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/libraries/places/internal/kf;->e(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_a40

    .line 2131
    :pswitch_70a
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2135
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2136
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/libraries/places/internal/kf;->j(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_a40

    .line 2122
    :pswitch_71b
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2126
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2127
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/libraries/places/internal/kf;->g(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_a40

    .line 2113
    :pswitch_72c
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2117
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2118
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/libraries/places/internal/kf;->l(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_a40

    .line 2104
    :pswitch_73d
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2108
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2109
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/libraries/places/internal/kf;->m(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_a40

    .line 2095
    :pswitch_74e
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2099
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2100
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/libraries/places/internal/kf;->i(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_a40

    .line 2086
    :pswitch_75f
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2090
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2091
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/libraries/places/internal/kf;->n(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_a40

    .line 2077
    :pswitch_770
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2081
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2082
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/libraries/places/internal/kf;->k(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_a40

    .line 2068
    :pswitch_781
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2072
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2073
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/libraries/places/internal/kf;->f(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_a40

    .line 2059
    :pswitch_792
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2063
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2064
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/libraries/places/internal/kf;->h(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_a40

    .line 2050
    :pswitch_7a3
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2054
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2055
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/libraries/places/internal/kf;->d(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_a40

    .line 2041
    :pswitch_7b4
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2045
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2046
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/libraries/places/internal/kf;->c(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_a40

    .line 2032
    :pswitch_7c5
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2036
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2037
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/libraries/places/internal/kf;->b(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_a40

    .line 2023
    :pswitch_7d6
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2027
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2028
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/libraries/places/internal/kf;->a(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_a40

    .line 2014
    :pswitch_7e7
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2018
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2019
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/libraries/places/internal/kf;->e(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_a40

    .line 2005
    :pswitch_7f8
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2009
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2010
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/libraries/places/internal/kf;->j(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_a40

    .line 1996
    :pswitch_809
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2000
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2001
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/libraries/places/internal/kf;->g(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_a40

    .line 1987
    :pswitch_81a
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1991
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1992
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/libraries/places/internal/kf;->l(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_a40

    .line 1978
    :pswitch_82b
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1982
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1983
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/libraries/places/internal/kf;->m(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_a40

    .line 1969
    :pswitch_83c
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1973
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1974
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/libraries/places/internal/kf;->i(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_a40

    .line 1960
    :pswitch_84d
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1964
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1965
    invoke-static {v10, v9, p2}, Lcom/google/android/libraries/places/internal/kf;->b(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;)V

    goto/16 :goto_a40

    .line 1950
    :pswitch_85e
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1954
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1955
    invoke-direct {p0, v1}, Lcom/google/android/libraries/places/internal/jr;->a(I)Lcom/google/android/libraries/places/internal/kd;

    move-result-object v11

    .line 1956
    invoke-static {v10, v9, p2, v11}, Lcom/google/android/libraries/places/internal/kf;->a(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Lcom/google/android/libraries/places/internal/kd;)V

    goto/16 :goto_a40

    .line 1941
    :pswitch_873
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1945
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1946
    invoke-static {v10, v9, p2}, Lcom/google/android/libraries/places/internal/kf;->a(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;)V

    goto/16 :goto_a40

    .line 1932
    :pswitch_884
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1936
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1937
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/libraries/places/internal/kf;->n(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_a40

    .line 1923
    :pswitch_895
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1927
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1928
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/libraries/places/internal/kf;->k(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_a40

    .line 1914
    :pswitch_8a6
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1918
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1919
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/libraries/places/internal/kf;->f(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_a40

    .line 1905
    :pswitch_8b7
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1909
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1910
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/libraries/places/internal/kf;->h(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_a40

    .line 1896
    :pswitch_8c8
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1900
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1901
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/libraries/places/internal/kf;->d(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_a40

    .line 1887
    :pswitch_8d9
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1891
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1892
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/libraries/places/internal/kf;->c(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_a40

    .line 1878
    :pswitch_8ea
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1882
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1883
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/libraries/places/internal/kf;->b(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_a40

    .line 1869
    :pswitch_8fb
    iget-object v10, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v10, v10, v1

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1873
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1874
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/libraries/places/internal/kf;->a(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V

    goto/16 :goto_a40

    .line 1860
    :pswitch_90c
    invoke-direct {p0, p1, v1}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a40

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1864
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 1865
    invoke-direct {p0, v1}, Lcom/google/android/libraries/places/internal/jr;->a(I)Lcom/google/android/libraries/places/internal/kd;

    move-result-object v11

    .line 1866
    invoke-virtual {p2, v10, v9, v11}, Lcom/google/android/libraries/places/internal/lh;->b(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/kd;)V

    goto/16 :goto_a40

    .line 1854
    :pswitch_921
    invoke-direct {p0, p1, v1}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a40

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1858
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/ky;->b(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 1859
    invoke-virtual {p2, v10, v11, v12}, Lcom/google/android/libraries/places/internal/lh;->e(IJ)V

    goto/16 :goto_a40

    .line 1848
    :pswitch_932
    invoke-direct {p0, p1, v1}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a40

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1852
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;J)I

    move-result v9

    .line 1853
    invoke-virtual {p2, v10, v9}, Lcom/google/android/libraries/places/internal/lh;->f(II)V

    goto/16 :goto_a40

    .line 1842
    :pswitch_943
    invoke-direct {p0, p1, v1}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a40

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1846
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/ky;->b(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 1847
    invoke-virtual {p2, v10, v11, v12}, Lcom/google/android/libraries/places/internal/lh;->b(IJ)V

    goto/16 :goto_a40

    .line 1836
    :pswitch_954
    invoke-direct {p0, p1, v1}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a40

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1840
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;J)I

    move-result v9

    .line 1841
    invoke-virtual {p2, v10, v9}, Lcom/google/android/libraries/places/internal/lh;->a(II)V

    goto/16 :goto_a40

    .line 1830
    :pswitch_965
    invoke-direct {p0, p1, v1}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a40

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1834
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;J)I

    move-result v9

    .line 1835
    invoke-virtual {p2, v10, v9}, Lcom/google/android/libraries/places/internal/lh;->b(II)V

    goto/16 :goto_a40

    .line 1824
    :pswitch_976
    invoke-direct {p0, p1, v1}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a40

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1828
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;J)I

    move-result v9

    .line 1829
    invoke-virtual {p2, v10, v9}, Lcom/google/android/libraries/places/internal/lh;->e(II)V

    goto/16 :goto_a40

    .line 1818
    :pswitch_987
    invoke-direct {p0, p1, v1}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a40

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1822
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/libraries/places/internal/hq;

    .line 1823
    invoke-virtual {p2, v10, v9}, Lcom/google/android/libraries/places/internal/lh;->a(ILcom/google/android/libraries/places/internal/hq;)V

    goto/16 :goto_a40

    .line 1812
    :pswitch_99a
    invoke-direct {p0, p1, v1}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a40

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1815
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 1816
    invoke-direct {p0, v1}, Lcom/google/android/libraries/places/internal/jr;->a(I)Lcom/google/android/libraries/places/internal/kd;

    move-result-object v11

    invoke-virtual {p2, v10, v9, v11}, Lcom/google/android/libraries/places/internal/lh;->a(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/kd;)V

    goto/16 :goto_a40

    .line 1808
    :pswitch_9af
    invoke-direct {p0, p1, v1}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a40

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1811
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v10, v9, p2}, Lcom/google/android/libraries/places/internal/jr;->a(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/lh;)V

    goto/16 :goto_a40

    .line 1802
    :pswitch_9c0
    invoke-direct {p0, p1, v1}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a40

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1806
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/ky;->c(Ljava/lang/Object;J)Z

    move-result v9

    .line 1807
    invoke-virtual {p2, v10, v9}, Lcom/google/android/libraries/places/internal/lh;->a(IZ)V

    goto/16 :goto_a40

    .line 1796
    :pswitch_9d1
    invoke-direct {p0, p1, v1}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a40

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1800
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;J)I

    move-result v9

    .line 1801
    invoke-virtual {p2, v10, v9}, Lcom/google/android/libraries/places/internal/lh;->d(II)V

    goto :goto_a40

    .line 1790
    :pswitch_9e1
    invoke-direct {p0, p1, v1}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a40

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1794
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/ky;->b(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 1795
    invoke-virtual {p2, v10, v11, v12}, Lcom/google/android/libraries/places/internal/lh;->d(IJ)V

    goto :goto_a40

    .line 1784
    :pswitch_9f1
    invoke-direct {p0, p1, v1}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a40

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1788
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;J)I

    move-result v9

    .line 1789
    invoke-virtual {p2, v10, v9}, Lcom/google/android/libraries/places/internal/lh;->c(II)V

    goto :goto_a40

    .line 1778
    :pswitch_a01
    invoke-direct {p0, p1, v1}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a40

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1782
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/ky;->b(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 1783
    invoke-virtual {p2, v10, v11, v12}, Lcom/google/android/libraries/places/internal/lh;->c(IJ)V

    goto :goto_a40

    .line 1772
    :pswitch_a11
    invoke-direct {p0, p1, v1}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a40

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1776
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/ky;->b(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 1777
    invoke-virtual {p2, v10, v11, v12}, Lcom/google/android/libraries/places/internal/lh;->a(IJ)V

    goto :goto_a40

    .line 1766
    :pswitch_a21
    invoke-direct {p0, p1, v1}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a40

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1770
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/ky;->d(Ljava/lang/Object;J)F

    move-result v9

    .line 1771
    invoke-virtual {p2, v10, v9}, Lcom/google/android/libraries/places/internal/lh;->a(IF)V

    goto :goto_a40

    .line 1760
    :pswitch_a31
    invoke-direct {p0, p1, v1}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a40

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1764
    invoke-static {p1, v11, v12}, Lcom/google/android/libraries/places/internal/ky;->e(Ljava/lang/Object;J)D

    move-result-wide v11

    .line 1765
    invoke-virtual {p2, v10, v11, v12}, Lcom/google/android/libraries/places/internal/lh;->a(ID)V

    :cond_a40
    :goto_a40
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_56c

    :cond_a44
    :goto_a44
    if-eqz v8, :cond_a5b

    .line 2242
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/jr;->r:Lcom/google/android/libraries/places/internal/ib;

    invoke-virtual {v1, p2, v8}, Lcom/google/android/libraries/places/internal/ib;->a(Lcom/google/android/libraries/places/internal/lh;Ljava/util/Map$Entry;)V

    .line 2243
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    move-object v8, v1

    goto :goto_a44

    :cond_a59
    move-object v8, v3

    goto :goto_a44

    .line 2244
    :cond_a5b
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/jr;->q:Lcom/google/android/libraries/places/internal/kt;

    invoke-static {v0, p1, p2}, Lcom/google/android/libraries/places/internal/jr;->a(Lcom/google/android/libraries/places/internal/kt;Ljava/lang/Object;Lcom/google/android/libraries/places/internal/lh;)V

    return-void

    .line 2246
    :cond_a61
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/places/internal/jr;->b(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/lh;)V

    return-void

    nop

    :pswitch_data_a66
    .packed-switch 0x0
        :pswitch_519
        :pswitch_509
        :pswitch_4f9
        :pswitch_4e9
        :pswitch_4d9
        :pswitch_4c9
        :pswitch_4b9
        :pswitch_4a8
        :pswitch_497
        :pswitch_482
        :pswitch_46f
        :pswitch_45e
        :pswitch_44d
        :pswitch_43c
        :pswitch_42b
        :pswitch_41a
        :pswitch_409
        :pswitch_3f4
        :pswitch_3e3
        :pswitch_3d2
        :pswitch_3c1
        :pswitch_3b0
        :pswitch_39f
        :pswitch_38e
        :pswitch_37d
        :pswitch_36c
        :pswitch_35b
        :pswitch_346
        :pswitch_335
        :pswitch_324
        :pswitch_313
        :pswitch_302
        :pswitch_2f1
        :pswitch_2e0
        :pswitch_2cf
        :pswitch_2be
        :pswitch_2ad
        :pswitch_29c
        :pswitch_28b
        :pswitch_27a
        :pswitch_269
        :pswitch_258
        :pswitch_247
        :pswitch_236
        :pswitch_225
        :pswitch_214
        :pswitch_203
        :pswitch_1f2
        :pswitch_1e1
        :pswitch_1cc
        :pswitch_1c1
        :pswitch_1b0
        :pswitch_19f
        :pswitch_18e
        :pswitch_17d
        :pswitch_16c
        :pswitch_15b
        :pswitch_14a
        :pswitch_139
        :pswitch_128
        :pswitch_113
        :pswitch_100
        :pswitch_ef
        :pswitch_de
        :pswitch_cd
        :pswitch_bc
        :pswitch_ab
        :pswitch_9a
        :pswitch_85
    .end packed-switch

    :pswitch_data_af4
    .packed-switch 0x0
        :pswitch_a31
        :pswitch_a21
        :pswitch_a11
        :pswitch_a01
        :pswitch_9f1
        :pswitch_9e1
        :pswitch_9d1
        :pswitch_9c0
        :pswitch_9af
        :pswitch_99a
        :pswitch_987
        :pswitch_976
        :pswitch_965
        :pswitch_954
        :pswitch_943
        :pswitch_932
        :pswitch_921
        :pswitch_90c
        :pswitch_8fb
        :pswitch_8ea
        :pswitch_8d9
        :pswitch_8c8
        :pswitch_8b7
        :pswitch_8a6
        :pswitch_895
        :pswitch_884
        :pswitch_873
        :pswitch_85e
        :pswitch_84d
        :pswitch_83c
        :pswitch_82b
        :pswitch_81a
        :pswitch_809
        :pswitch_7f8
        :pswitch_7e7
        :pswitch_7d6
        :pswitch_7c5
        :pswitch_7b4
        :pswitch_7a3
        :pswitch_792
        :pswitch_781
        :pswitch_770
        :pswitch_75f
        :pswitch_74e
        :pswitch_73d
        :pswitch_72c
        :pswitch_71b
        :pswitch_70a
        :pswitch_6f9
        :pswitch_6e4
        :pswitch_6d9
        :pswitch_6c8
        :pswitch_6b7
        :pswitch_6a6
        :pswitch_695
        :pswitch_684
        :pswitch_673
        :pswitch_662
        :pswitch_651
        :pswitch_640
        :pswitch_62b
        :pswitch_618
        :pswitch_607
        :pswitch_5f6
        :pswitch_5e5
        :pswitch_5d4
        :pswitch_5c3
        :pswitch_5b2
        :pswitch_59d
    .end packed-switch
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_5
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1cb

    .line 260
    invoke-direct {p0, v2}, Lcom/google/android/libraries/places/internal/jr;->c(I)I

    move-result v4

    const v5, 0xfffff

    and-int v6, v4, v5

    int-to-long v6, v6

    const/high16 v8, 0xff00000

    and-int/2addr v4, v8

    ushr-int/lit8 v4, v4, 0x14

    packed-switch v4, :pswitch_data_1f4

    goto/16 :goto_1c4

    .line 334
    :pswitch_1c
    invoke-direct {p0, v2}, Lcom/google/android/libraries/places/internal/jr;->d(I)I

    move-result v4

    and-int/2addr v4, v5

    int-to-long v4, v4

    .line 335
    invoke-static {p1, v4, v5}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;J)I

    move-result v8

    .line 336
    invoke-static {p2, v4, v5}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;J)I

    move-result v4

    if-ne v8, v4, :cond_1c3

    .line 338
    invoke-static {p1, v6, v7}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 339
    invoke-static {v4, v5}, Lcom/google/android/libraries/places/internal/kf;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c3

    goto/16 :goto_1c4

    .line 331
    :pswitch_3c
    invoke-static {p1, v6, v7}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v6, v7}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 332
    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/kf;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_1c4

    .line 328
    :pswitch_4a
    invoke-static {p1, v6, v7}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v6, v7}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 329
    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/kf;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_1c4

    .line 323
    :pswitch_58
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/libraries/places/internal/jr;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c3

    .line 324
    invoke-static {p1, v6, v7}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 325
    invoke-static {v4, v5}, Lcom/google/android/libraries/places/internal/kf;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c3

    goto/16 :goto_1c4

    .line 320
    :pswitch_6e
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/libraries/places/internal/jr;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c3

    .line 321
    invoke-static {p1, v6, v7}, Lcom/google/android/libraries/places/internal/ky;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/libraries/places/internal/ky;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_1c3

    goto/16 :goto_1c4

    .line 317
    :pswitch_82
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/libraries/places/internal/jr;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c3

    .line 318
    invoke-static {p1, v6, v7}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;J)I

    move-result v5

    if-ne v4, v5, :cond_1c3

    goto/16 :goto_1c4

    .line 314
    :pswitch_94
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/libraries/places/internal/jr;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c3

    .line 315
    invoke-static {p1, v6, v7}, Lcom/google/android/libraries/places/internal/ky;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/libraries/places/internal/ky;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_1c3

    goto/16 :goto_1c4

    .line 311
    :pswitch_a8
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/libraries/places/internal/jr;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c3

    .line 312
    invoke-static {p1, v6, v7}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;J)I

    move-result v5

    if-ne v4, v5, :cond_1c3

    goto/16 :goto_1c4

    .line 308
    :pswitch_ba
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/libraries/places/internal/jr;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c3

    .line 309
    invoke-static {p1, v6, v7}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;J)I

    move-result v5

    if-ne v4, v5, :cond_1c3

    goto/16 :goto_1c4

    .line 305
    :pswitch_cc
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/libraries/places/internal/jr;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c3

    .line 306
    invoke-static {p1, v6, v7}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;J)I

    move-result v5

    if-ne v4, v5, :cond_1c3

    goto/16 :goto_1c4

    .line 301
    :pswitch_de
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/libraries/places/internal/jr;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c3

    .line 302
    invoke-static {p1, v6, v7}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 303
    invoke-static {v4, v5}, Lcom/google/android/libraries/places/internal/kf;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c3

    goto/16 :goto_1c4

    .line 297
    :pswitch_f4
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/libraries/places/internal/jr;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c3

    .line 298
    invoke-static {p1, v6, v7}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 299
    invoke-static {v4, v5}, Lcom/google/android/libraries/places/internal/kf;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c3

    goto/16 :goto_1c4

    .line 293
    :pswitch_10a
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/libraries/places/internal/jr;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c3

    .line 294
    invoke-static {p1, v6, v7}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 295
    invoke-static {v4, v5}, Lcom/google/android/libraries/places/internal/kf;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c3

    goto/16 :goto_1c4

    .line 290
    :pswitch_120
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/libraries/places/internal/jr;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c3

    .line 291
    invoke-static {p1, v6, v7}, Lcom/google/android/libraries/places/internal/ky;->c(Ljava/lang/Object;J)Z

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/libraries/places/internal/ky;->c(Ljava/lang/Object;J)Z

    move-result v5

    if-ne v4, v5, :cond_1c3

    goto/16 :goto_1c4

    .line 287
    :pswitch_132
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/libraries/places/internal/jr;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c3

    .line 288
    invoke-static {p1, v6, v7}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;J)I

    move-result v5

    if-ne v4, v5, :cond_1c3

    goto/16 :goto_1c4

    .line 284
    :pswitch_144
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/libraries/places/internal/jr;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c3

    .line 285
    invoke-static {p1, v6, v7}, Lcom/google/android/libraries/places/internal/ky;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/libraries/places/internal/ky;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_1c3

    goto/16 :goto_1c4

    .line 281
    :pswitch_158
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/libraries/places/internal/jr;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c3

    .line 282
    invoke-static {p1, v6, v7}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;J)I

    move-result v5

    if-ne v4, v5, :cond_1c3

    goto :goto_1c4

    .line 278
    :pswitch_169
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/libraries/places/internal/jr;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c3

    .line 279
    invoke-static {p1, v6, v7}, Lcom/google/android/libraries/places/internal/ky;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/libraries/places/internal/ky;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_1c3

    goto :goto_1c4

    .line 275
    :pswitch_17c
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/libraries/places/internal/jr;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c3

    .line 276
    invoke-static {p1, v6, v7}, Lcom/google/android/libraries/places/internal/ky;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/libraries/places/internal/ky;->b(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_1c3

    goto :goto_1c4

    .line 271
    :pswitch_18f
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/libraries/places/internal/jr;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c3

    .line 272
    invoke-static {p1, v6, v7}, Lcom/google/android/libraries/places/internal/ky;->d(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    .line 273
    invoke-static {p2, v6, v7}, Lcom/google/android/libraries/places/internal/ky;->d(Ljava/lang/Object;J)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    if-ne v4, v5, :cond_1c3

    goto :goto_1c4

    .line 267
    :pswitch_1a8
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/libraries/places/internal/jr;->c(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c3

    .line 268
    invoke-static {p1, v6, v7}, Lcom/google/android/libraries/places/internal/ky;->e(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    .line 269
    invoke-static {p2, v6, v7}, Lcom/google/android/libraries/places/internal/ky;->e(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_1c3

    goto :goto_1c4

    :cond_1c3
    const/4 v3, 0x0

    :goto_1c4
    if-nez v3, :cond_1c7

    return v1

    :cond_1c7
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_5

    .line 345
    :cond_1cb
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/jr;->q:Lcom/google/android/libraries/places/internal/kt;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/kt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 346
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/jr;->q:Lcom/google/android/libraries/places/internal/kt;

    invoke-virtual {v2, p2}, Lcom/google/android/libraries/places/internal/kt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 347
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1de

    return v1

    .line 349
    :cond_1de
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/jr;->h:Z

    if-eqz v0, :cond_1f3

    .line 350
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/jr;->r:Lcom/google/android/libraries/places/internal/ib;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/ib;->a(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/id;

    move-result-object p1

    .line 351
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/jr;->r:Lcom/google/android/libraries/places/internal/ib;

    invoke-virtual {v0, p2}, Lcom/google/android/libraries/places/internal/ib;->a(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/id;

    move-result-object p2

    .line 352
    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/id;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1f3
    return v3

    :pswitch_data_1f4
    .packed-switch 0x0
        :pswitch_1a8
        :pswitch_18f
        :pswitch_17c
        :pswitch_169
        :pswitch_158
        :pswitch_144
        :pswitch_132
        :pswitch_120
        :pswitch_10a
        :pswitch_f4
        :pswitch_de
        :pswitch_cc
        :pswitch_ba
        :pswitch_a8
        :pswitch_94
        :pswitch_82
        :pswitch_6e
        :pswitch_58
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_3c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;)I
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 583
    iget-boolean v2, v0, Lcom/google/android/libraries/places/internal/jr;->j:Z

    const/high16 v3, 0xff00000

    const/4 v6, 0x0

    const v7, 0xfffff

    const/4 v8, 0x1

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    if-eqz v2, :cond_55b

    .line 584
    sget-object v2, Lcom/google/android/libraries/places/internal/jr;->b:Lsun/misc/Unsafe;

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 586
    :goto_16
    iget-object v14, v0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    array-length v14, v14

    if-ge v12, v14, :cond_553

    .line 587
    invoke-direct {v0, v12}, Lcom/google/android/libraries/places/internal/jr;->c(I)I

    move-result v14

    and-int v15, v14, v3

    ushr-int/lit8 v15, v15, 0x14

    .line 592
    iget-object v3, v0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v3, v3, v12

    and-int/2addr v14, v7

    int-to-long v4, v14

    .line 597
    sget-object v14, Lcom/google/android/libraries/places/internal/if;->d:Lcom/google/android/libraries/places/internal/if;

    .line 599
    iget v14, v14, Lcom/google/android/libraries/places/internal/if;->h:I

    if-lt v15, v14, :cond_3d

    .line 600
    sget-object v14, Lcom/google/android/libraries/places/internal/if;->e:Lcom/google/android/libraries/places/internal/if;

    .line 602
    iget v14, v14, Lcom/google/android/libraries/places/internal/if;->h:I

    if-gt v15, v14, :cond_3d

    .line 604
    iget-object v14, v0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    add-int/lit8 v17, v12, 0x2

    aget v14, v14, v17

    and-int/2addr v14, v7

    goto :goto_3e

    :cond_3d
    const/4 v14, 0x0

    :goto_3e
    packed-switch v15, :pswitch_data_b62

    goto/16 :goto_54d

    .line 868
    :pswitch_43
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_54d

    .line 870
    invoke-static {v1, v4, v5}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/libraries/places/internal/jo;

    .line 871
    invoke-direct {v0, v12}, Lcom/google/android/libraries/places/internal/jr;->a(I)Lcom/google/android/libraries/places/internal/kd;

    move-result-object v5

    .line 872
    invoke-static {v3, v4, v5}, Lcom/google/android/libraries/places/internal/hy;->c(ILcom/google/android/libraries/places/internal/jo;Lcom/google/android/libraries/places/internal/kd;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_54d

    .line 866
    :pswitch_5a
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_54d

    .line 867
    invoke-static {v1, v4, v5}, Lcom/google/android/libraries/places/internal/jr;->e(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/android/libraries/places/internal/hy;->f(IJ)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_54d

    .line 864
    :pswitch_6b
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_54d

    .line 865
    invoke-static {v1, v4, v5}, Lcom/google/android/libraries/places/internal/jr;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/hy;->h(II)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_54d

    .line 862
    :pswitch_7c
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_54d

    .line 863
    invoke-static {v3, v9, v10}, Lcom/google/android/libraries/places/internal/hy;->h(IJ)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_54d

    .line 860
    :pswitch_89
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_54d

    .line 861
    invoke-static {v3, v11}, Lcom/google/android/libraries/places/internal/hy;->j(II)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_54d

    .line 858
    :pswitch_96
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_54d

    .line 859
    invoke-static {v1, v4, v5}, Lcom/google/android/libraries/places/internal/jr;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/hy;->k(II)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_54d

    .line 856
    :pswitch_a7
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_54d

    .line 857
    invoke-static {v1, v4, v5}, Lcom/google/android/libraries/places/internal/jr;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/hy;->g(II)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_54d

    .line 852
    :pswitch_b8
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_54d

    .line 854
    invoke-static {v1, v4, v5}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/libraries/places/internal/hq;

    .line 855
    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/hy;->c(ILcom/google/android/libraries/places/internal/hq;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_54d

    .line 848
    :pswitch_cb
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_54d

    .line 849
    invoke-static {v1, v4, v5}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 850
    invoke-direct {v0, v12}, Lcom/google/android/libraries/places/internal/jr;->a(I)Lcom/google/android/libraries/places/internal/kd;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/google/android/libraries/places/internal/kf;->a(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/kd;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_54d

    .line 842
    :pswitch_e0
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_54d

    .line 843
    invoke-static {v1, v4, v5}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 844
    instance-of v5, v4, Lcom/google/android/libraries/places/internal/hq;

    if-eqz v5, :cond_f7

    .line 845
    check-cast v4, Lcom/google/android/libraries/places/internal/hq;

    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/hy;->c(ILcom/google/android/libraries/places/internal/hq;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_54d

    .line 846
    :cond_f7
    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/hy;->b(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_54d

    .line 840
    :pswitch_100
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_54d

    .line 841
    invoke-static {v3, v8}, Lcom/google/android/libraries/places/internal/hy;->b(IZ)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_54d

    .line 838
    :pswitch_10d
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_54d

    .line 839
    invoke-static {v3, v11}, Lcom/google/android/libraries/places/internal/hy;->i(II)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_54d

    .line 836
    :pswitch_11a
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_54d

    .line 837
    invoke-static {v3, v9, v10}, Lcom/google/android/libraries/places/internal/hy;->g(IJ)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_54d

    .line 834
    :pswitch_127
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_54d

    .line 835
    invoke-static {v1, v4, v5}, Lcom/google/android/libraries/places/internal/jr;->d(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/hy;->f(II)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_54d

    .line 832
    :pswitch_138
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_54d

    .line 833
    invoke-static {v1, v4, v5}, Lcom/google/android/libraries/places/internal/jr;->e(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/android/libraries/places/internal/hy;->e(IJ)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_54d

    .line 830
    :pswitch_149
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_54d

    .line 831
    invoke-static {v1, v4, v5}, Lcom/google/android/libraries/places/internal/jr;->e(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/android/libraries/places/internal/hy;->d(IJ)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_54d

    .line 828
    :pswitch_15a
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_54d

    .line 829
    invoke-static {v3, v6}, Lcom/google/android/libraries/places/internal/hy;->b(IF)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_54d

    .line 826
    :pswitch_167
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_54d

    const-wide/16 v4, 0x0

    .line 827
    invoke-static {v3, v4, v5}, Lcom/google/android/libraries/places/internal/hy;->b(ID)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_54d

    .line 822
    :pswitch_176
    iget-object v14, v0, Lcom/google/android/libraries/places/internal/jr;->s:Lcom/google/android/libraries/places/internal/jk;

    .line 823
    invoke-static {v1, v4, v5}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v12}, Lcom/google/android/libraries/places/internal/jr;->b(I)Ljava/lang/Object;

    move-result-object v5

    .line 824
    invoke-virtual {v14, v3, v4, v5}, Lcom/google/android/libraries/places/internal/jk;->a(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_54d

    .line 819
    :pswitch_187
    invoke-static {v1, v4, v5}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v12}, Lcom/google/android/libraries/places/internal/jr;->a(I)Lcom/google/android/libraries/places/internal/kd;

    move-result-object v5

    .line 820
    invoke-static {v3, v4, v5}, Lcom/google/android/libraries/places/internal/kf;->b(ILjava/util/List;Lcom/google/android/libraries/places/internal/kd;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_54d

    .line 810
    :pswitch_196
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 811
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/kf;->c(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_54d

    .line 813
    iget-boolean v5, v0, Lcom/google/android/libraries/places/internal/jr;->k:Z

    if-eqz v5, :cond_1aa

    int-to-long v14, v14

    .line 814
    invoke-virtual {v2, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 816
    :cond_1aa
    invoke-static {v3}, Lcom/google/android/libraries/places/internal/hy;->e(I)I

    move-result v3

    .line 817
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/hy;->g(I)I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v3, v4

    add-int/2addr v13, v3

    goto/16 :goto_54d

    .line 801
    :pswitch_1b7
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 802
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/kf;->g(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_54d

    .line 804
    iget-boolean v5, v0, Lcom/google/android/libraries/places/internal/jr;->k:Z

    if-eqz v5, :cond_1cb

    int-to-long v14, v14

    .line 805
    invoke-virtual {v2, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 807
    :cond_1cb
    invoke-static {v3}, Lcom/google/android/libraries/places/internal/hy;->e(I)I

    move-result v3

    .line 808
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/hy;->g(I)I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v3, v4

    add-int/2addr v13, v3

    goto/16 :goto_54d

    .line 792
    :pswitch_1d8
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 793
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/kf;->i(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_54d

    .line 795
    iget-boolean v5, v0, Lcom/google/android/libraries/places/internal/jr;->k:Z

    if-eqz v5, :cond_1ec

    int-to-long v14, v14

    .line 796
    invoke-virtual {v2, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 798
    :cond_1ec
    invoke-static {v3}, Lcom/google/android/libraries/places/internal/hy;->e(I)I

    move-result v3

    .line 799
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/hy;->g(I)I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v3, v4

    add-int/2addr v13, v3

    goto/16 :goto_54d

    .line 783
    :pswitch_1f9
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 784
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/kf;->h(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_54d

    .line 786
    iget-boolean v5, v0, Lcom/google/android/libraries/places/internal/jr;->k:Z

    if-eqz v5, :cond_20d

    int-to-long v14, v14

    .line 787
    invoke-virtual {v2, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 789
    :cond_20d
    invoke-static {v3}, Lcom/google/android/libraries/places/internal/hy;->e(I)I

    move-result v3

    .line 790
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/hy;->g(I)I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v3, v4

    add-int/2addr v13, v3

    goto/16 :goto_54d

    .line 774
    :pswitch_21a
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 775
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/kf;->d(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_54d

    .line 777
    iget-boolean v5, v0, Lcom/google/android/libraries/places/internal/jr;->k:Z

    if-eqz v5, :cond_22e

    int-to-long v14, v14

    .line 778
    invoke-virtual {v2, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 780
    :cond_22e
    invoke-static {v3}, Lcom/google/android/libraries/places/internal/hy;->e(I)I

    move-result v3

    .line 781
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/hy;->g(I)I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v3, v4

    add-int/2addr v13, v3

    goto/16 :goto_54d

    .line 765
    :pswitch_23b
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 766
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/kf;->f(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_54d

    .line 768
    iget-boolean v5, v0, Lcom/google/android/libraries/places/internal/jr;->k:Z

    if-eqz v5, :cond_24f

    int-to-long v14, v14

    .line 769
    invoke-virtual {v2, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 771
    :cond_24f
    invoke-static {v3}, Lcom/google/android/libraries/places/internal/hy;->e(I)I

    move-result v3

    .line 772
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/hy;->g(I)I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v3, v4

    add-int/2addr v13, v3

    goto/16 :goto_54d

    .line 756
    :pswitch_25c
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 757
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/kf;->j(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_54d

    .line 759
    iget-boolean v5, v0, Lcom/google/android/libraries/places/internal/jr;->k:Z

    if-eqz v5, :cond_270

    int-to-long v14, v14

    .line 760
    invoke-virtual {v2, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 762
    :cond_270
    invoke-static {v3}, Lcom/google/android/libraries/places/internal/hy;->e(I)I

    move-result v3

    .line 763
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/hy;->g(I)I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v3, v4

    add-int/2addr v13, v3

    goto/16 :goto_54d

    .line 747
    :pswitch_27d
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 748
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/kf;->h(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_54d

    .line 750
    iget-boolean v5, v0, Lcom/google/android/libraries/places/internal/jr;->k:Z

    if-eqz v5, :cond_291

    int-to-long v14, v14

    .line 751
    invoke-virtual {v2, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 753
    :cond_291
    invoke-static {v3}, Lcom/google/android/libraries/places/internal/hy;->e(I)I

    move-result v3

    .line 754
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/hy;->g(I)I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v3, v4

    add-int/2addr v13, v3

    goto/16 :goto_54d

    .line 738
    :pswitch_29e
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 739
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/kf;->i(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_54d

    .line 741
    iget-boolean v5, v0, Lcom/google/android/libraries/places/internal/jr;->k:Z

    if-eqz v5, :cond_2b2

    int-to-long v14, v14

    .line 742
    invoke-virtual {v2, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 744
    :cond_2b2
    invoke-static {v3}, Lcom/google/android/libraries/places/internal/hy;->e(I)I

    move-result v3

    .line 745
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/hy;->g(I)I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v3, v4

    add-int/2addr v13, v3

    goto/16 :goto_54d

    .line 729
    :pswitch_2bf
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 730
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/kf;->e(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_54d

    .line 732
    iget-boolean v5, v0, Lcom/google/android/libraries/places/internal/jr;->k:Z

    if-eqz v5, :cond_2d3

    int-to-long v14, v14

    .line 733
    invoke-virtual {v2, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 735
    :cond_2d3
    invoke-static {v3}, Lcom/google/android/libraries/places/internal/hy;->e(I)I

    move-result v3

    .line 736
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/hy;->g(I)I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v3, v4

    add-int/2addr v13, v3

    goto/16 :goto_54d

    .line 720
    :pswitch_2e0
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 721
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/kf;->b(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_54d

    .line 723
    iget-boolean v5, v0, Lcom/google/android/libraries/places/internal/jr;->k:Z

    if-eqz v5, :cond_2f4

    int-to-long v14, v14

    .line 724
    invoke-virtual {v2, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 726
    :cond_2f4
    invoke-static {v3}, Lcom/google/android/libraries/places/internal/hy;->e(I)I

    move-result v3

    .line 727
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/hy;->g(I)I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v3, v4

    add-int/2addr v13, v3

    goto/16 :goto_54d

    .line 711
    :pswitch_301
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 712
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/kf;->a(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_54d

    .line 714
    iget-boolean v5, v0, Lcom/google/android/libraries/places/internal/jr;->k:Z

    if-eqz v5, :cond_315

    int-to-long v14, v14

    .line 715
    invoke-virtual {v2, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 717
    :cond_315
    invoke-static {v3}, Lcom/google/android/libraries/places/internal/hy;->e(I)I

    move-result v3

    .line 718
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/hy;->g(I)I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v3, v4

    add-int/2addr v13, v3

    goto/16 :goto_54d

    .line 702
    :pswitch_322
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 703
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/kf;->h(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_54d

    .line 705
    iget-boolean v5, v0, Lcom/google/android/libraries/places/internal/jr;->k:Z

    if-eqz v5, :cond_336

    int-to-long v14, v14

    .line 706
    invoke-virtual {v2, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 708
    :cond_336
    invoke-static {v3}, Lcom/google/android/libraries/places/internal/hy;->e(I)I

    move-result v3

    .line 709
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/hy;->g(I)I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v3, v4

    add-int/2addr v13, v3

    goto/16 :goto_54d

    .line 693
    :pswitch_343
    invoke-virtual {v2, v1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 694
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/kf;->i(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_54d

    .line 696
    iget-boolean v5, v0, Lcom/google/android/libraries/places/internal/jr;->k:Z

    if-eqz v5, :cond_357

    int-to-long v14, v14

    .line 697
    invoke-virtual {v2, v1, v14, v15, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 699
    :cond_357
    invoke-static {v3}, Lcom/google/android/libraries/places/internal/hy;->e(I)I

    move-result v3

    .line 700
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/hy;->g(I)I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v3, v4

    add-int/2addr v13, v3

    goto/16 :goto_54d

    .line 690
    :pswitch_364
    invoke-static {v1, v4, v5}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v11}, Lcom/google/android/libraries/places/internal/kf;->c(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_54d

    .line 688
    :pswitch_36f
    invoke-static {v1, v4, v5}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v11}, Lcom/google/android/libraries/places/internal/kf;->g(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_54d

    .line 686
    :pswitch_37a
    invoke-static {v1, v4, v5}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v11}, Lcom/google/android/libraries/places/internal/kf;->i(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_54d

    .line 684
    :pswitch_385
    invoke-static {v1, v4, v5}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v11}, Lcom/google/android/libraries/places/internal/kf;->h(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_54d

    .line 682
    :pswitch_390
    invoke-static {v1, v4, v5}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v11}, Lcom/google/android/libraries/places/internal/kf;->d(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_54d

    .line 680
    :pswitch_39b
    invoke-static {v1, v4, v5}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v11}, Lcom/google/android/libraries/places/internal/kf;->f(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_54d

    .line 678
    :pswitch_3a6
    invoke-static {v1, v4, v5}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/kf;->b(ILjava/util/List;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_54d

    .line 675
    :pswitch_3b1
    invoke-static {v1, v4, v5}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v12}, Lcom/google/android/libraries/places/internal/jr;->a(I)Lcom/google/android/libraries/places/internal/kd;

    move-result-object v5

    .line 676
    invoke-static {v3, v4, v5}, Lcom/google/android/libraries/places/internal/kf;->a(ILjava/util/List;Lcom/google/android/libraries/places/internal/kd;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_54d

    .line 672
    :pswitch_3c0
    invoke-static {v1, v4, v5}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/kf;->a(ILjava/util/List;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_54d

    .line 670
    :pswitch_3cb
    invoke-static {v1, v4, v5}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v11}, Lcom/google/android/libraries/places/internal/kf;->j(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_54d

    .line 668
    :pswitch_3d6
    invoke-static {v1, v4, v5}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v11}, Lcom/google/android/libraries/places/internal/kf;->h(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_54d

    .line 666
    :pswitch_3e1
    invoke-static {v1, v4, v5}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v11}, Lcom/google/android/libraries/places/internal/kf;->i(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_54d

    .line 664
    :pswitch_3ec
    invoke-static {v1, v4, v5}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v11}, Lcom/google/android/libraries/places/internal/kf;->e(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_54d

    .line 662
    :pswitch_3f7
    invoke-static {v1, v4, v5}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v11}, Lcom/google/android/libraries/places/internal/kf;->b(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_54d

    .line 660
    :pswitch_402
    invoke-static {v1, v4, v5}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v11}, Lcom/google/android/libraries/places/internal/kf;->a(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_54d

    .line 658
    :pswitch_40d
    invoke-static {v1, v4, v5}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v11}, Lcom/google/android/libraries/places/internal/kf;->h(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_54d

    .line 656
    :pswitch_418
    invoke-static {v1, v4, v5}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4, v11}, Lcom/google/android/libraries/places/internal/kf;->i(ILjava/util/List;Z)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_54d

    .line 651
    :pswitch_423
    invoke-direct {v0, v1, v12}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_54d

    .line 653
    invoke-static {v1, v4, v5}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/libraries/places/internal/jo;

    .line 654
    invoke-direct {v0, v12}, Lcom/google/android/libraries/places/internal/jr;->a(I)Lcom/google/android/libraries/places/internal/kd;

    move-result-object v5

    .line 655
    invoke-static {v3, v4, v5}, Lcom/google/android/libraries/places/internal/hy;->c(ILcom/google/android/libraries/places/internal/jo;Lcom/google/android/libraries/places/internal/kd;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_54d

    .line 648
    :pswitch_43a
    invoke-direct {v0, v1, v12}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_54d

    .line 650
    invoke-static {v1, v4, v5}, Lcom/google/android/libraries/places/internal/ky;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/android/libraries/places/internal/hy;->f(IJ)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_54d

    .line 646
    :pswitch_44b
    invoke-direct {v0, v1, v12}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_54d

    .line 647
    invoke-static {v1, v4, v5}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/hy;->h(II)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_54d

    .line 644
    :pswitch_45c
    invoke-direct {v0, v1, v12}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_54d

    .line 645
    invoke-static {v3, v9, v10}, Lcom/google/android/libraries/places/internal/hy;->h(IJ)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_54d

    .line 642
    :pswitch_469
    invoke-direct {v0, v1, v12}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_54d

    .line 643
    invoke-static {v3, v11}, Lcom/google/android/libraries/places/internal/hy;->j(II)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_54d

    .line 640
    :pswitch_476
    invoke-direct {v0, v1, v12}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_54d

    .line 641
    invoke-static {v1, v4, v5}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/hy;->k(II)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_54d

    .line 638
    :pswitch_487
    invoke-direct {v0, v1, v12}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_54d

    .line 639
    invoke-static {v1, v4, v5}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/hy;->g(II)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_54d

    .line 634
    :pswitch_498
    invoke-direct {v0, v1, v12}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_54d

    .line 635
    invoke-static {v1, v4, v5}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/libraries/places/internal/hq;

    .line 636
    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/hy;->c(ILcom/google/android/libraries/places/internal/hq;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_54d

    .line 630
    :pswitch_4ab
    invoke-direct {v0, v1, v12}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_54d

    .line 631
    invoke-static {v1, v4, v5}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 632
    invoke-direct {v0, v12}, Lcom/google/android/libraries/places/internal/jr;->a(I)Lcom/google/android/libraries/places/internal/kd;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/google/android/libraries/places/internal/kf;->a(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/kd;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_54d

    .line 624
    :pswitch_4c0
    invoke-direct {v0, v1, v12}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_54d

    .line 625
    invoke-static {v1, v4, v5}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 626
    instance-of v5, v4, Lcom/google/android/libraries/places/internal/hq;

    if-eqz v5, :cond_4d7

    .line 627
    check-cast v4, Lcom/google/android/libraries/places/internal/hq;

    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/hy;->c(ILcom/google/android/libraries/places/internal/hq;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_54d

    .line 628
    :cond_4d7
    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/hy;->b(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v13, v3

    goto/16 :goto_54d

    .line 622
    :pswitch_4e0
    invoke-direct {v0, v1, v12}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_54d

    .line 623
    invoke-static {v3, v8}, Lcom/google/android/libraries/places/internal/hy;->b(IZ)I

    move-result v3

    add-int/2addr v13, v3

    goto :goto_54d

    .line 620
    :pswitch_4ec
    invoke-direct {v0, v1, v12}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_54d

    .line 621
    invoke-static {v3, v11}, Lcom/google/android/libraries/places/internal/hy;->i(II)I

    move-result v3

    add-int/2addr v13, v3

    goto :goto_54d

    .line 618
    :pswitch_4f8
    invoke-direct {v0, v1, v12}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_54d

    .line 619
    invoke-static {v3, v9, v10}, Lcom/google/android/libraries/places/internal/hy;->g(IJ)I

    move-result v3

    add-int/2addr v13, v3

    goto :goto_54d

    .line 616
    :pswitch_504
    invoke-direct {v0, v1, v12}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_54d

    .line 617
    invoke-static {v1, v4, v5}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/hy;->f(II)I

    move-result v3

    add-int/2addr v13, v3

    goto :goto_54d

    .line 613
    :pswitch_514
    invoke-direct {v0, v1, v12}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_54d

    .line 615
    invoke-static {v1, v4, v5}, Lcom/google/android/libraries/places/internal/ky;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/android/libraries/places/internal/hy;->e(IJ)I

    move-result v3

    add-int/2addr v13, v3

    goto :goto_54d

    .line 611
    :pswitch_524
    invoke-direct {v0, v1, v12}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_54d

    .line 612
    invoke-static {v1, v4, v5}, Lcom/google/android/libraries/places/internal/ky;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/android/libraries/places/internal/hy;->d(IJ)I

    move-result v3

    add-int/2addr v13, v3

    goto :goto_54d

    .line 609
    :pswitch_534
    invoke-direct {v0, v1, v12}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_54d

    .line 610
    invoke-static {v3, v6}, Lcom/google/android/libraries/places/internal/hy;->b(IF)I

    move-result v3

    add-int/2addr v13, v3

    goto :goto_54d

    .line 607
    :pswitch_540
    invoke-direct {v0, v1, v12}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_54d

    const-wide/16 v4, 0x0

    .line 608
    invoke-static {v3, v4, v5}, Lcom/google/android/libraries/places/internal/hy;->b(ID)I

    move-result v3

    add-int/2addr v13, v3

    :cond_54d
    :goto_54d
    add-int/lit8 v12, v12, 0x3

    const/high16 v3, 0xff00000

    goto/16 :goto_16

    .line 874
    :cond_553
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/jr;->q:Lcom/google/android/libraries/places/internal/kt;

    invoke-static {v2, v1}, Lcom/google/android/libraries/places/internal/jr;->a(Lcom/google/android/libraries/places/internal/kt;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v13, v1

    return v13

    .line 878
    :cond_55b
    sget-object v2, Lcom/google/android/libraries/places/internal/jr;->b:Lsun/misc/Unsafe;

    const/4 v3, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v12, 0x0

    .line 881
    :goto_562
    iget-object v13, v0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    array-length v13, v13

    if-ge v3, v13, :cond_b06

    .line 882
    invoke-direct {v0, v3}, Lcom/google/android/libraries/places/internal/jr;->c(I)I

    move-result v13

    .line 884
    iget-object v14, v0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v14, v14, v3

    const/high16 v15, 0xff00000

    and-int v16, v13, v15

    ushr-int/lit8 v15, v16, 0x14

    const/16 v6, 0x11

    if-gt v15, v6, :cond_58e

    .line 892
    iget-object v6, v0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    add-int/lit8 v16, v3, 0x2

    aget v6, v6, v16

    and-int v11, v6, v7

    ushr-int/lit8 v16, v6, 0x14

    shl-int v16, v8, v16

    if-eq v11, v5, :cond_5ab

    int-to-long v8, v11

    .line 897
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v12

    move v5, v11

    goto :goto_5ab

    .line 898
    :cond_58e
    iget-boolean v6, v0, Lcom/google/android/libraries/places/internal/jr;->k:Z

    if-eqz v6, :cond_5a8

    sget-object v6, Lcom/google/android/libraries/places/internal/if;->d:Lcom/google/android/libraries/places/internal/if;

    .line 900
    iget v6, v6, Lcom/google/android/libraries/places/internal/if;->h:I

    if-lt v15, v6, :cond_5a8

    .line 901
    sget-object v6, Lcom/google/android/libraries/places/internal/if;->e:Lcom/google/android/libraries/places/internal/if;

    .line 903
    iget v6, v6, Lcom/google/android/libraries/places/internal/if;->h:I

    if-gt v15, v6, :cond_5a8

    .line 905
    iget-object v6, v0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    add-int/lit8 v8, v3, 0x2

    aget v6, v6, v8

    and-int v11, v6, v7

    move v6, v11

    goto :goto_5a9

    :cond_5a8
    const/4 v6, 0x0

    :goto_5a9
    const/16 v16, 0x0

    :cond_5ab
    :goto_5ab
    and-int v8, v13, v7

    int-to-long v8, v8

    packed-switch v15, :pswitch_data_bf0

    goto/16 :goto_9c6

    .line 1201
    :pswitch_5b3
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_9c6

    .line 1203
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/libraries/places/internal/jo;

    .line 1204
    invoke-direct {v0, v3}, Lcom/google/android/libraries/places/internal/jr;->a(I)Lcom/google/android/libraries/places/internal/kd;

    move-result-object v8

    .line 1205
    invoke-static {v14, v6, v8}, Lcom/google/android/libraries/places/internal/hy;->c(ILcom/google/android/libraries/places/internal/jo;Lcom/google/android/libraries/places/internal/kd;)I

    move-result v6

    add-int/2addr v4, v6

    goto/16 :goto_9c6

    .line 1199
    :pswitch_5ca
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_9c6

    .line 1200
    invoke-static {v1, v8, v9}, Lcom/google/android/libraries/places/internal/jr;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v14, v8, v9}, Lcom/google/android/libraries/places/internal/hy;->f(IJ)I

    move-result v6

    add-int/2addr v4, v6

    goto/16 :goto_9c6

    .line 1197
    :pswitch_5db
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_9c6

    .line 1198
    invoke-static {v1, v8, v9}, Lcom/google/android/libraries/places/internal/jr;->d(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v14, v6}, Lcom/google/android/libraries/places/internal/hy;->h(II)I

    move-result v6

    add-int/2addr v4, v6

    goto/16 :goto_9c6

    .line 1195
    :pswitch_5ec
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_9c6

    const-wide/16 v8, 0x0

    .line 1196
    invoke-static {v14, v8, v9}, Lcom/google/android/libraries/places/internal/hy;->h(IJ)I

    move-result v6

    add-int/2addr v4, v6

    goto/16 :goto_9c6

    .line 1193
    :pswitch_5fb
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_9c6

    const/4 v6, 0x0

    .line 1194
    invoke-static {v14, v6}, Lcom/google/android/libraries/places/internal/hy;->j(II)I

    move-result v8

    add-int/2addr v4, v8

    goto/16 :goto_9c6

    .line 1191
    :pswitch_609
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_9c6

    .line 1192
    invoke-static {v1, v8, v9}, Lcom/google/android/libraries/places/internal/jr;->d(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v14, v6}, Lcom/google/android/libraries/places/internal/hy;->k(II)I

    move-result v6

    add-int/2addr v4, v6

    goto/16 :goto_9c6

    .line 1189
    :pswitch_61a
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_9c6

    .line 1190
    invoke-static {v1, v8, v9}, Lcom/google/android/libraries/places/internal/jr;->d(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v14, v6}, Lcom/google/android/libraries/places/internal/hy;->g(II)I

    move-result v6

    add-int/2addr v4, v6

    goto/16 :goto_9c6

    .line 1185
    :pswitch_62b
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_9c6

    .line 1187
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/libraries/places/internal/hq;

    .line 1188
    invoke-static {v14, v6}, Lcom/google/android/libraries/places/internal/hy;->c(ILcom/google/android/libraries/places/internal/hq;)I

    move-result v6

    add-int/2addr v4, v6

    goto/16 :goto_9c6

    .line 1181
    :pswitch_63e
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_9c6

    .line 1182
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 1183
    invoke-direct {v0, v3}, Lcom/google/android/libraries/places/internal/jr;->a(I)Lcom/google/android/libraries/places/internal/kd;

    move-result-object v8

    invoke-static {v14, v6, v8}, Lcom/google/android/libraries/places/internal/kf;->a(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/kd;)I

    move-result v6

    add-int/2addr v4, v6

    goto/16 :goto_9c6

    .line 1175
    :pswitch_653
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_9c6

    .line 1176
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 1177
    instance-of v8, v6, Lcom/google/android/libraries/places/internal/hq;

    if-eqz v8, :cond_66a

    .line 1178
    check-cast v6, Lcom/google/android/libraries/places/internal/hq;

    invoke-static {v14, v6}, Lcom/google/android/libraries/places/internal/hy;->c(ILcom/google/android/libraries/places/internal/hq;)I

    move-result v6

    add-int/2addr v4, v6

    goto/16 :goto_9c6

    .line 1179
    :cond_66a
    check-cast v6, Ljava/lang/String;

    invoke-static {v14, v6}, Lcom/google/android/libraries/places/internal/hy;->b(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v4, v6

    goto/16 :goto_9c6

    .line 1173
    :pswitch_673
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_9c6

    const/4 v6, 0x1

    .line 1174
    invoke-static {v14, v6}, Lcom/google/android/libraries/places/internal/hy;->b(IZ)I

    move-result v8

    add-int/2addr v4, v8

    goto/16 :goto_9c6

    .line 1171
    :pswitch_681
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_9c6

    const/4 v6, 0x0

    .line 1172
    invoke-static {v14, v6}, Lcom/google/android/libraries/places/internal/hy;->i(II)I

    move-result v8

    add-int/2addr v4, v8

    goto/16 :goto_9c6

    .line 1169
    :pswitch_68f
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_9c6

    const-wide/16 v8, 0x0

    .line 1170
    invoke-static {v14, v8, v9}, Lcom/google/android/libraries/places/internal/hy;->g(IJ)I

    move-result v6

    add-int/2addr v4, v6

    goto/16 :goto_9c6

    .line 1167
    :pswitch_69e
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_9c6

    .line 1168
    invoke-static {v1, v8, v9}, Lcom/google/android/libraries/places/internal/jr;->d(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v14, v6}, Lcom/google/android/libraries/places/internal/hy;->f(II)I

    move-result v6

    add-int/2addr v4, v6

    goto/16 :goto_9c6

    .line 1165
    :pswitch_6af
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_9c6

    .line 1166
    invoke-static {v1, v8, v9}, Lcom/google/android/libraries/places/internal/jr;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v14, v8, v9}, Lcom/google/android/libraries/places/internal/hy;->e(IJ)I

    move-result v6

    add-int/2addr v4, v6

    goto/16 :goto_9c6

    .line 1163
    :pswitch_6c0
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_9c6

    .line 1164
    invoke-static {v1, v8, v9}, Lcom/google/android/libraries/places/internal/jr;->e(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v14, v8, v9}, Lcom/google/android/libraries/places/internal/hy;->d(IJ)I

    move-result v6

    add-int/2addr v4, v6

    goto/16 :goto_9c6

    .line 1161
    :pswitch_6d1
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_9c6

    const/4 v6, 0x0

    .line 1162
    invoke-static {v14, v6}, Lcom/google/android/libraries/places/internal/hy;->b(IF)I

    move-result v8

    add-int/2addr v4, v8

    goto/16 :goto_9c6

    .line 1159
    :pswitch_6df
    invoke-direct {v0, v1, v14, v3}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_9c6

    const-wide/16 v8, 0x0

    .line 1160
    invoke-static {v14, v8, v9}, Lcom/google/android/libraries/places/internal/hy;->b(ID)I

    move-result v6

    add-int/2addr v4, v6

    goto/16 :goto_9c6

    .line 1155
    :pswitch_6ee
    iget-object v6, v0, Lcom/google/android/libraries/places/internal/jr;->s:Lcom/google/android/libraries/places/internal/jk;

    .line 1156
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v0, v3}, Lcom/google/android/libraries/places/internal/jr;->b(I)Ljava/lang/Object;

    move-result-object v9

    .line 1157
    invoke-virtual {v6, v14, v8, v9}, Lcom/google/android/libraries/places/internal/jk;->a(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    add-int/2addr v4, v6

    goto/16 :goto_9c6

    .line 1151
    :pswitch_6ff
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1152
    invoke-direct {v0, v3}, Lcom/google/android/libraries/places/internal/jr;->a(I)Lcom/google/android/libraries/places/internal/kd;

    move-result-object v8

    .line 1153
    invoke-static {v14, v6, v8}, Lcom/google/android/libraries/places/internal/kf;->b(ILjava/util/List;Lcom/google/android/libraries/places/internal/kd;)I

    move-result v6

    add-int/2addr v4, v6

    goto/16 :goto_9c6

    .line 1142
    :pswitch_710
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1143
    invoke-static {v8}, Lcom/google/android/libraries/places/internal/kf;->c(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_9c6

    .line 1145
    iget-boolean v9, v0, Lcom/google/android/libraries/places/internal/jr;->k:Z

    if-eqz v9, :cond_724

    int-to-long v9, v6

    .line 1146
    invoke-virtual {v2, v1, v9, v10, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1148
    :cond_724
    invoke-static {v14}, Lcom/google/android/libraries/places/internal/hy;->e(I)I

    move-result v6

    .line 1149
    invoke-static {v8}, Lcom/google/android/libraries/places/internal/hy;->g(I)I

    move-result v9

    add-int/2addr v6, v9

    add-int/2addr v6, v8

    add-int/2addr v4, v6

    goto/16 :goto_9c6

    .line 1133
    :pswitch_731
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1134
    invoke-static {v8}, Lcom/google/android/libraries/places/internal/kf;->g(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_9c6

    .line 1136
    iget-boolean v9, v0, Lcom/google/android/libraries/places/internal/jr;->k:Z

    if-eqz v9, :cond_745

    int-to-long v9, v6

    .line 1137
    invoke-virtual {v2, v1, v9, v10, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1139
    :cond_745
    invoke-static {v14}, Lcom/google/android/libraries/places/internal/hy;->e(I)I

    move-result v6

    .line 1140
    invoke-static {v8}, Lcom/google/android/libraries/places/internal/hy;->g(I)I

    move-result v9

    add-int/2addr v6, v9

    add-int/2addr v6, v8

    add-int/2addr v4, v6

    goto/16 :goto_9c6

    .line 1124
    :pswitch_752
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1125
    invoke-static {v8}, Lcom/google/android/libraries/places/internal/kf;->i(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_9c6

    .line 1127
    iget-boolean v9, v0, Lcom/google/android/libraries/places/internal/jr;->k:Z

    if-eqz v9, :cond_766

    int-to-long v9, v6

    .line 1128
    invoke-virtual {v2, v1, v9, v10, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1130
    :cond_766
    invoke-static {v14}, Lcom/google/android/libraries/places/internal/hy;->e(I)I

    move-result v6

    .line 1131
    invoke-static {v8}, Lcom/google/android/libraries/places/internal/hy;->g(I)I

    move-result v9

    add-int/2addr v6, v9

    add-int/2addr v6, v8

    add-int/2addr v4, v6

    goto/16 :goto_9c6

    .line 1115
    :pswitch_773
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1116
    invoke-static {v8}, Lcom/google/android/libraries/places/internal/kf;->h(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_9c6

    .line 1118
    iget-boolean v9, v0, Lcom/google/android/libraries/places/internal/jr;->k:Z

    if-eqz v9, :cond_787

    int-to-long v9, v6

    .line 1119
    invoke-virtual {v2, v1, v9, v10, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1121
    :cond_787
    invoke-static {v14}, Lcom/google/android/libraries/places/internal/hy;->e(I)I

    move-result v6

    .line 1122
    invoke-static {v8}, Lcom/google/android/libraries/places/internal/hy;->g(I)I

    move-result v9

    add-int/2addr v6, v9

    add-int/2addr v6, v8

    add-int/2addr v4, v6

    goto/16 :goto_9c6

    .line 1106
    :pswitch_794
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1107
    invoke-static {v8}, Lcom/google/android/libraries/places/internal/kf;->d(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_9c6

    .line 1109
    iget-boolean v9, v0, Lcom/google/android/libraries/places/internal/jr;->k:Z

    if-eqz v9, :cond_7a8

    int-to-long v9, v6

    .line 1110
    invoke-virtual {v2, v1, v9, v10, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1112
    :cond_7a8
    invoke-static {v14}, Lcom/google/android/libraries/places/internal/hy;->e(I)I

    move-result v6

    .line 1113
    invoke-static {v8}, Lcom/google/android/libraries/places/internal/hy;->g(I)I

    move-result v9

    add-int/2addr v6, v9

    add-int/2addr v6, v8

    add-int/2addr v4, v6

    goto/16 :goto_9c6

    .line 1097
    :pswitch_7b5
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1098
    invoke-static {v8}, Lcom/google/android/libraries/places/internal/kf;->f(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_9c6

    .line 1100
    iget-boolean v9, v0, Lcom/google/android/libraries/places/internal/jr;->k:Z

    if-eqz v9, :cond_7c9

    int-to-long v9, v6

    .line 1101
    invoke-virtual {v2, v1, v9, v10, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1103
    :cond_7c9
    invoke-static {v14}, Lcom/google/android/libraries/places/internal/hy;->e(I)I

    move-result v6

    .line 1104
    invoke-static {v8}, Lcom/google/android/libraries/places/internal/hy;->g(I)I

    move-result v9

    add-int/2addr v6, v9

    add-int/2addr v6, v8

    add-int/2addr v4, v6

    goto/16 :goto_9c6

    .line 1088
    :pswitch_7d6
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1089
    invoke-static {v8}, Lcom/google/android/libraries/places/internal/kf;->j(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_9c6

    .line 1091
    iget-boolean v9, v0, Lcom/google/android/libraries/places/internal/jr;->k:Z

    if-eqz v9, :cond_7ea

    int-to-long v9, v6

    .line 1092
    invoke-virtual {v2, v1, v9, v10, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1094
    :cond_7ea
    invoke-static {v14}, Lcom/google/android/libraries/places/internal/hy;->e(I)I

    move-result v6

    .line 1095
    invoke-static {v8}, Lcom/google/android/libraries/places/internal/hy;->g(I)I

    move-result v9

    add-int/2addr v6, v9

    add-int/2addr v6, v8

    add-int/2addr v4, v6

    goto/16 :goto_9c6

    .line 1079
    :pswitch_7f7
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1080
    invoke-static {v8}, Lcom/google/android/libraries/places/internal/kf;->h(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_9c6

    .line 1082
    iget-boolean v9, v0, Lcom/google/android/libraries/places/internal/jr;->k:Z

    if-eqz v9, :cond_80b

    int-to-long v9, v6

    .line 1083
    invoke-virtual {v2, v1, v9, v10, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1085
    :cond_80b
    invoke-static {v14}, Lcom/google/android/libraries/places/internal/hy;->e(I)I

    move-result v6

    .line 1086
    invoke-static {v8}, Lcom/google/android/libraries/places/internal/hy;->g(I)I

    move-result v9

    add-int/2addr v6, v9

    add-int/2addr v6, v8

    add-int/2addr v4, v6

    goto/16 :goto_9c6

    .line 1070
    :pswitch_818
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1071
    invoke-static {v8}, Lcom/google/android/libraries/places/internal/kf;->i(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_9c6

    .line 1073
    iget-boolean v9, v0, Lcom/google/android/libraries/places/internal/jr;->k:Z

    if-eqz v9, :cond_82c

    int-to-long v9, v6

    .line 1074
    invoke-virtual {v2, v1, v9, v10, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1076
    :cond_82c
    invoke-static {v14}, Lcom/google/android/libraries/places/internal/hy;->e(I)I

    move-result v6

    .line 1077
    invoke-static {v8}, Lcom/google/android/libraries/places/internal/hy;->g(I)I

    move-result v9

    add-int/2addr v6, v9

    add-int/2addr v6, v8

    add-int/2addr v4, v6

    goto/16 :goto_9c6

    .line 1061
    :pswitch_839
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1062
    invoke-static {v8}, Lcom/google/android/libraries/places/internal/kf;->e(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_9c6

    .line 1064
    iget-boolean v9, v0, Lcom/google/android/libraries/places/internal/jr;->k:Z

    if-eqz v9, :cond_84d

    int-to-long v9, v6

    .line 1065
    invoke-virtual {v2, v1, v9, v10, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1067
    :cond_84d
    invoke-static {v14}, Lcom/google/android/libraries/places/internal/hy;->e(I)I

    move-result v6

    .line 1068
    invoke-static {v8}, Lcom/google/android/libraries/places/internal/hy;->g(I)I

    move-result v9

    add-int/2addr v6, v9

    add-int/2addr v6, v8

    add-int/2addr v4, v6

    goto/16 :goto_9c6

    .line 1052
    :pswitch_85a
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1053
    invoke-static {v8}, Lcom/google/android/libraries/places/internal/kf;->b(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_9c6

    .line 1055
    iget-boolean v9, v0, Lcom/google/android/libraries/places/internal/jr;->k:Z

    if-eqz v9, :cond_86e

    int-to-long v9, v6

    .line 1056
    invoke-virtual {v2, v1, v9, v10, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1058
    :cond_86e
    invoke-static {v14}, Lcom/google/android/libraries/places/internal/hy;->e(I)I

    move-result v6

    .line 1059
    invoke-static {v8}, Lcom/google/android/libraries/places/internal/hy;->g(I)I

    move-result v9

    add-int/2addr v6, v9

    add-int/2addr v6, v8

    add-int/2addr v4, v6

    goto/16 :goto_9c6

    .line 1043
    :pswitch_87b
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1044
    invoke-static {v8}, Lcom/google/android/libraries/places/internal/kf;->a(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_9c6

    .line 1046
    iget-boolean v9, v0, Lcom/google/android/libraries/places/internal/jr;->k:Z

    if-eqz v9, :cond_88f

    int-to-long v9, v6

    .line 1047
    invoke-virtual {v2, v1, v9, v10, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1049
    :cond_88f
    invoke-static {v14}, Lcom/google/android/libraries/places/internal/hy;->e(I)I

    move-result v6

    .line 1050
    invoke-static {v8}, Lcom/google/android/libraries/places/internal/hy;->g(I)I

    move-result v9

    add-int/2addr v6, v9

    add-int/2addr v6, v8

    add-int/2addr v4, v6

    goto/16 :goto_9c6

    .line 1034
    :pswitch_89c
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1035
    invoke-static {v8}, Lcom/google/android/libraries/places/internal/kf;->h(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_9c6

    .line 1037
    iget-boolean v9, v0, Lcom/google/android/libraries/places/internal/jr;->k:Z

    if-eqz v9, :cond_8b0

    int-to-long v9, v6

    .line 1038
    invoke-virtual {v2, v1, v9, v10, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1040
    :cond_8b0
    invoke-static {v14}, Lcom/google/android/libraries/places/internal/hy;->e(I)I

    move-result v6

    .line 1041
    invoke-static {v8}, Lcom/google/android/libraries/places/internal/hy;->g(I)I

    move-result v9

    add-int/2addr v6, v9

    add-int/2addr v6, v8

    add-int/2addr v4, v6

    goto/16 :goto_9c6

    .line 1025
    :pswitch_8bd
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1026
    invoke-static {v8}, Lcom/google/android/libraries/places/internal/kf;->i(Ljava/util/List;)I

    move-result v8

    if-lez v8, :cond_9c6

    .line 1028
    iget-boolean v9, v0, Lcom/google/android/libraries/places/internal/jr;->k:Z

    if-eqz v9, :cond_8d1

    int-to-long v9, v6

    .line 1029
    invoke-virtual {v2, v1, v9, v10, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1031
    :cond_8d1
    invoke-static {v14}, Lcom/google/android/libraries/places/internal/hy;->e(I)I

    move-result v6

    .line 1032
    invoke-static {v8}, Lcom/google/android/libraries/places/internal/hy;->g(I)I

    move-result v9

    add-int/2addr v6, v9

    add-int/2addr v6, v8

    add-int/2addr v4, v6

    goto/16 :goto_9c6

    .line 1021
    :pswitch_8de
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    const/4 v10, 0x0

    .line 1022
    invoke-static {v14, v6, v10}, Lcom/google/android/libraries/places/internal/kf;->c(ILjava/util/List;Z)I

    move-result v6

    add-int/2addr v4, v6

    goto/16 :goto_9b6

    :pswitch_8ec
    const/4 v10, 0x0

    .line 1017
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1018
    invoke-static {v14, v6, v10}, Lcom/google/android/libraries/places/internal/kf;->g(ILjava/util/List;Z)I

    move-result v6

    add-int/2addr v4, v6

    goto/16 :goto_9b6

    :pswitch_8fa
    const/4 v10, 0x0

    .line 1013
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1014
    invoke-static {v14, v6, v10}, Lcom/google/android/libraries/places/internal/kf;->i(ILjava/util/List;Z)I

    move-result v6

    add-int/2addr v4, v6

    goto/16 :goto_9b6

    :pswitch_908
    const/4 v10, 0x0

    .line 1009
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1010
    invoke-static {v14, v6, v10}, Lcom/google/android/libraries/places/internal/kf;->h(ILjava/util/List;Z)I

    move-result v6

    add-int/2addr v4, v6

    goto/16 :goto_9b6

    :pswitch_916
    const/4 v10, 0x0

    .line 1005
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1006
    invoke-static {v14, v6, v10}, Lcom/google/android/libraries/places/internal/kf;->d(ILjava/util/List;Z)I

    move-result v6

    add-int/2addr v4, v6

    goto/16 :goto_9b6

    :pswitch_924
    const/4 v10, 0x0

    .line 1001
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 1002
    invoke-static {v14, v6, v10}, Lcom/google/android/libraries/places/internal/kf;->f(ILjava/util/List;Z)I

    move-result v6

    add-int/2addr v4, v6

    goto/16 :goto_9c6

    .line 997
    :pswitch_932
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 998
    invoke-static {v14, v6}, Lcom/google/android/libraries/places/internal/kf;->b(ILjava/util/List;)I

    move-result v6

    add-int/2addr v4, v6

    goto/16 :goto_9c6

    .line 993
    :pswitch_93f
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-direct {v0, v3}, Lcom/google/android/libraries/places/internal/jr;->a(I)Lcom/google/android/libraries/places/internal/kd;

    move-result-object v8

    .line 994
    invoke-static {v14, v6, v8}, Lcom/google/android/libraries/places/internal/kf;->a(ILjava/util/List;Lcom/google/android/libraries/places/internal/kd;)I

    move-result v6

    add-int/2addr v4, v6

    goto/16 :goto_9c6

    .line 990
    :pswitch_950
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v14, v6}, Lcom/google/android/libraries/places/internal/kf;->a(ILjava/util/List;)I

    move-result v6

    add-int/2addr v4, v6

    goto :goto_9c6

    .line 986
    :pswitch_95c
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    const/4 v10, 0x0

    .line 987
    invoke-static {v14, v6, v10}, Lcom/google/android/libraries/places/internal/kf;->j(ILjava/util/List;Z)I

    move-result v6

    add-int/2addr v4, v6

    goto :goto_9b6

    :pswitch_969
    const/4 v10, 0x0

    .line 982
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 983
    invoke-static {v14, v6, v10}, Lcom/google/android/libraries/places/internal/kf;->h(ILjava/util/List;Z)I

    move-result v6

    add-int/2addr v4, v6

    goto :goto_9b6

    :pswitch_976
    const/4 v10, 0x0

    .line 978
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 979
    invoke-static {v14, v6, v10}, Lcom/google/android/libraries/places/internal/kf;->i(ILjava/util/List;Z)I

    move-result v6

    add-int/2addr v4, v6

    goto :goto_9b6

    :pswitch_983
    const/4 v10, 0x0

    .line 974
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 975
    invoke-static {v14, v6, v10}, Lcom/google/android/libraries/places/internal/kf;->e(ILjava/util/List;Z)I

    move-result v6

    add-int/2addr v4, v6

    goto :goto_9b6

    :pswitch_990
    const/4 v10, 0x0

    .line 970
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 971
    invoke-static {v14, v6, v10}, Lcom/google/android/libraries/places/internal/kf;->b(ILjava/util/List;Z)I

    move-result v6

    add-int/2addr v4, v6

    goto :goto_9b6

    :pswitch_99d
    const/4 v10, 0x0

    .line 966
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 967
    invoke-static {v14, v6, v10}, Lcom/google/android/libraries/places/internal/kf;->a(ILjava/util/List;Z)I

    move-result v6

    add-int/2addr v4, v6

    goto :goto_9b6

    :pswitch_9aa
    const/4 v10, 0x0

    .line 962
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 963
    invoke-static {v14, v6, v10}, Lcom/google/android/libraries/places/internal/kf;->h(ILjava/util/List;Z)I

    move-result v6

    add-int/2addr v4, v6

    :cond_9b6
    :goto_9b6
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    goto :goto_9ca

    :pswitch_9ba
    const/4 v10, 0x0

    .line 958
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 959
    invoke-static {v14, v6, v10}, Lcom/google/android/libraries/places/internal/kf;->i(ILjava/util/List;Z)I

    move-result v6

    add-int/2addr v4, v6

    :cond_9c6
    :goto_9c6
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_9ca
    const-wide/16 v18, 0x0

    goto/16 :goto_afa

    :pswitch_9ce
    and-int v6, v12, v16

    if-eqz v6, :cond_9c6

    .line 954
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/libraries/places/internal/jo;

    .line 955
    invoke-direct {v0, v3}, Lcom/google/android/libraries/places/internal/jr;->a(I)Lcom/google/android/libraries/places/internal/kd;

    move-result-object v8

    .line 956
    invoke-static {v14, v6, v8}, Lcom/google/android/libraries/places/internal/hy;->c(ILcom/google/android/libraries/places/internal/jo;Lcom/google/android/libraries/places/internal/kd;)I

    move-result v6

    add-int/2addr v4, v6

    goto :goto_9c6

    :pswitch_9e2
    and-int v6, v12, v16

    if-eqz v6, :cond_9c6

    .line 951
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v14, v8, v9}, Lcom/google/android/libraries/places/internal/hy;->f(IJ)I

    move-result v6

    add-int/2addr v4, v6

    goto :goto_9c6

    :pswitch_9f0
    and-int v6, v12, v16

    if-eqz v6, :cond_9c6

    .line 949
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v14, v6}, Lcom/google/android/libraries/places/internal/hy;->h(II)I

    move-result v6

    add-int/2addr v4, v6

    goto :goto_9c6

    :pswitch_9fe
    and-int v6, v12, v16

    if-eqz v6, :cond_9c6

    const-wide/16 v8, 0x0

    .line 947
    invoke-static {v14, v8, v9}, Lcom/google/android/libraries/places/internal/hy;->h(IJ)I

    move-result v6

    add-int/2addr v4, v6

    goto :goto_9c6

    :pswitch_a0a
    and-int v6, v12, v16

    if-eqz v6, :cond_9c6

    const/4 v6, 0x0

    .line 945
    invoke-static {v14, v6}, Lcom/google/android/libraries/places/internal/hy;->j(II)I

    move-result v8

    add-int/2addr v4, v8

    goto :goto_9c6

    :pswitch_a15
    and-int v6, v12, v16

    if-eqz v6, :cond_9c6

    .line 943
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v14, v6}, Lcom/google/android/libraries/places/internal/hy;->k(II)I

    move-result v6

    add-int/2addr v4, v6

    goto :goto_9c6

    :pswitch_a23
    and-int v6, v12, v16

    if-eqz v6, :cond_9c6

    .line 941
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {v14, v6}, Lcom/google/android/libraries/places/internal/hy;->g(II)I

    move-result v6

    add-int/2addr v4, v6

    goto :goto_9c6

    :pswitch_a31
    and-int v6, v12, v16

    if-eqz v6, :cond_9c6

    .line 937
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/libraries/places/internal/hq;

    .line 938
    invoke-static {v14, v6}, Lcom/google/android/libraries/places/internal/hy;->c(ILcom/google/android/libraries/places/internal/hq;)I

    move-result v6

    add-int/2addr v4, v6

    goto :goto_9c6

    :pswitch_a41
    and-int v6, v12, v16

    if-eqz v6, :cond_9c6

    .line 933
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 934
    invoke-direct {v0, v3}, Lcom/google/android/libraries/places/internal/jr;->a(I)Lcom/google/android/libraries/places/internal/kd;

    move-result-object v8

    invoke-static {v14, v6, v8}, Lcom/google/android/libraries/places/internal/kf;->a(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/kd;)I

    move-result v6

    add-int/2addr v4, v6

    goto/16 :goto_9c6

    :pswitch_a54
    and-int v6, v12, v16

    if-eqz v6, :cond_9c6

    .line 927
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 928
    instance-of v8, v6, Lcom/google/android/libraries/places/internal/hq;

    if-eqz v8, :cond_a69

    .line 929
    check-cast v6, Lcom/google/android/libraries/places/internal/hq;

    invoke-static {v14, v6}, Lcom/google/android/libraries/places/internal/hy;->c(ILcom/google/android/libraries/places/internal/hq;)I

    move-result v6

    add-int/2addr v4, v6

    goto/16 :goto_9c6

    .line 930
    :cond_a69
    check-cast v6, Ljava/lang/String;

    invoke-static {v14, v6}, Lcom/google/android/libraries/places/internal/hy;->b(ILjava/lang/String;)I

    move-result v6

    add-int/2addr v4, v6

    goto/16 :goto_9c6

    :pswitch_a72
    and-int v6, v12, v16

    if-eqz v6, :cond_9c6

    const/4 v6, 0x1

    .line 925
    invoke-static {v14, v6}, Lcom/google/android/libraries/places/internal/hy;->b(IZ)I

    move-result v8

    add-int/2addr v4, v8

    goto/16 :goto_9c6

    :pswitch_a7e
    const/4 v6, 0x1

    and-int v8, v12, v16

    if-eqz v8, :cond_a8b

    const/4 v10, 0x0

    .line 923
    invoke-static {v14, v10}, Lcom/google/android/libraries/places/internal/hy;->i(II)I

    move-result v8

    add-int/2addr v4, v8

    goto/16 :goto_9b6

    :cond_a8b
    const/4 v10, 0x0

    goto/16 :goto_9b6

    :pswitch_a8e
    const/4 v6, 0x1

    const/4 v10, 0x0

    and-int v8, v12, v16

    if-eqz v8, :cond_9b6

    const-wide/16 v8, 0x0

    .line 921
    invoke-static {v14, v8, v9}, Lcom/google/android/libraries/places/internal/hy;->g(IJ)I

    move-result v11

    add-int/2addr v4, v11

    move-wide/from16 v18, v8

    goto :goto_ad3

    :pswitch_a9e
    const/4 v6, 0x1

    const/4 v10, 0x0

    const-wide/16 v18, 0x0

    and-int v11, v12, v16

    if-eqz v11, :cond_ad3

    .line 919
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-static {v14, v8}, Lcom/google/android/libraries/places/internal/hy;->f(II)I

    move-result v8

    add-int/2addr v4, v8

    goto :goto_ad3

    :pswitch_ab0
    const/4 v6, 0x1

    const/4 v10, 0x0

    const-wide/16 v18, 0x0

    and-int v11, v12, v16

    if-eqz v11, :cond_ad3

    .line 917
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v14, v8, v9}, Lcom/google/android/libraries/places/internal/hy;->e(IJ)I

    move-result v8

    add-int/2addr v4, v8

    goto :goto_ad3

    :pswitch_ac2
    const/4 v6, 0x1

    const/4 v10, 0x0

    const-wide/16 v18, 0x0

    and-int v11, v12, v16

    if-eqz v11, :cond_ad3

    .line 915
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v14, v8, v9}, Lcom/google/android/libraries/places/internal/hy;->d(IJ)I

    move-result v8

    add-int/2addr v4, v8

    :cond_ad3
    :goto_ad3
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    goto :goto_afa

    :pswitch_ad7
    const/4 v6, 0x1

    const/4 v10, 0x0

    const-wide/16 v18, 0x0

    and-int v8, v12, v16

    if-eqz v8, :cond_ae8

    const/4 v8, 0x0

    .line 913
    invoke-static {v14, v8}, Lcom/google/android/libraries/places/internal/hy;->b(IF)I

    move-result v9

    add-int/2addr v4, v9

    :cond_ae5
    :goto_ae5
    const-wide/16 v6, 0x0

    goto :goto_afa

    :cond_ae8
    const/4 v8, 0x0

    goto :goto_ae5

    :pswitch_aea
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    const-wide/16 v18, 0x0

    and-int v9, v12, v16

    if-eqz v9, :cond_ae5

    const-wide/16 v6, 0x0

    .line 911
    invoke-static {v14, v6, v7}, Lcom/google/android/libraries/places/internal/hy;->b(ID)I

    move-result v9

    add-int/2addr v4, v9

    :goto_afa
    add-int/lit8 v3, v3, 0x3

    move-wide/from16 v9, v18

    const/4 v6, 0x0

    const v7, 0xfffff

    const/4 v8, 0x1

    const/4 v11, 0x0

    goto/16 :goto_562

    :cond_b06
    const/4 v10, 0x0

    .line 1207
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/jr;->q:Lcom/google/android/libraries/places/internal/kt;

    invoke-static {v2, v1}, Lcom/google/android/libraries/places/internal/jr;->a(Lcom/google/android/libraries/places/internal/kt;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v4, v2

    .line 1208
    iget-boolean v2, v0, Lcom/google/android/libraries/places/internal/jr;->h:Z

    if-eqz v2, :cond_b60

    .line 1209
    iget-object v2, v0, Lcom/google/android/libraries/places/internal/jr;->r:Lcom/google/android/libraries/places/internal/ib;

    invoke-virtual {v2, v1}, Lcom/google/android/libraries/places/internal/ib;->a(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/id;

    move-result-object v1

    const/4 v2, 0x0

    .line 1211
    :goto_b19
    iget-object v3, v1, Lcom/google/android/libraries/places/internal/id;->a:Lcom/google/android/libraries/places/internal/kg;

    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/kg;->b()I

    move-result v3

    if-ge v10, v3, :cond_b39

    .line 1212
    iget-object v3, v1, Lcom/google/android/libraries/places/internal/id;->a:Lcom/google/android/libraries/places/internal/kg;

    invoke-virtual {v3, v10}, Lcom/google/android/libraries/places/internal/kg;->b(I)Ljava/util/Map$Entry;

    move-result-object v3

    .line 1213
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/libraries/places/internal/ie;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/android/libraries/places/internal/id;->b(Lcom/google/android/libraries/places/internal/ie;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v10, v10, 0x1

    goto :goto_b19

    .line 1215
    :cond_b39
    iget-object v1, v1, Lcom/google/android/libraries/places/internal/id;->a:Lcom/google/android/libraries/places/internal/kg;

    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/kg;->c()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b43
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b5f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1216
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/libraries/places/internal/ie;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/android/libraries/places/internal/id;->b(Lcom/google/android/libraries/places/internal/ie;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_b43

    :cond_b5f
    add-int/2addr v4, v2

    :cond_b60
    return v4

    nop

    :pswitch_data_b62
    .packed-switch 0x0
        :pswitch_540
        :pswitch_534
        :pswitch_524
        :pswitch_514
        :pswitch_504
        :pswitch_4f8
        :pswitch_4ec
        :pswitch_4e0
        :pswitch_4c0
        :pswitch_4ab
        :pswitch_498
        :pswitch_487
        :pswitch_476
        :pswitch_469
        :pswitch_45c
        :pswitch_44b
        :pswitch_43a
        :pswitch_423
        :pswitch_418
        :pswitch_40d
        :pswitch_402
        :pswitch_3f7
        :pswitch_3ec
        :pswitch_3e1
        :pswitch_3d6
        :pswitch_3cb
        :pswitch_3c0
        :pswitch_3b1
        :pswitch_3a6
        :pswitch_39b
        :pswitch_390
        :pswitch_385
        :pswitch_37a
        :pswitch_36f
        :pswitch_364
        :pswitch_343
        :pswitch_322
        :pswitch_301
        :pswitch_2e0
        :pswitch_2bf
        :pswitch_29e
        :pswitch_27d
        :pswitch_25c
        :pswitch_23b
        :pswitch_21a
        :pswitch_1f9
        :pswitch_1d8
        :pswitch_1b7
        :pswitch_196
        :pswitch_187
        :pswitch_176
        :pswitch_167
        :pswitch_15a
        :pswitch_149
        :pswitch_138
        :pswitch_127
        :pswitch_11a
        :pswitch_10d
        :pswitch_100
        :pswitch_e0
        :pswitch_cb
        :pswitch_b8
        :pswitch_a7
        :pswitch_96
        :pswitch_89
        :pswitch_7c
        :pswitch_6b
        :pswitch_5a
        :pswitch_43
    .end packed-switch

    :pswitch_data_bf0
    .packed-switch 0x0
        :pswitch_aea
        :pswitch_ad7
        :pswitch_ac2
        :pswitch_ab0
        :pswitch_a9e
        :pswitch_a8e
        :pswitch_a7e
        :pswitch_a72
        :pswitch_a54
        :pswitch_a41
        :pswitch_a31
        :pswitch_a23
        :pswitch_a15
        :pswitch_a0a
        :pswitch_9fe
        :pswitch_9f0
        :pswitch_9e2
        :pswitch_9ce
        :pswitch_9ba
        :pswitch_9aa
        :pswitch_99d
        :pswitch_990
        :pswitch_983
        :pswitch_976
        :pswitch_969
        :pswitch_95c
        :pswitch_950
        :pswitch_93f
        :pswitch_932
        :pswitch_924
        :pswitch_916
        :pswitch_908
        :pswitch_8fa
        :pswitch_8ec
        :pswitch_8de
        :pswitch_8bd
        :pswitch_89c
        :pswitch_87b
        :pswitch_85a
        :pswitch_839
        :pswitch_818
        :pswitch_7f7
        :pswitch_7d6
        :pswitch_7b5
        :pswitch_794
        :pswitch_773
        :pswitch_752
        :pswitch_731
        :pswitch_710
        :pswitch_6ff
        :pswitch_6ee
        :pswitch_6df
        :pswitch_6d1
        :pswitch_6c0
        :pswitch_6af
        :pswitch_69e
        :pswitch_68f
        :pswitch_681
        :pswitch_673
        :pswitch_653
        :pswitch_63e
        :pswitch_62b
        :pswitch_61a
        :pswitch_609
        :pswitch_5fb
        :pswitch_5ec
        :pswitch_5db
        :pswitch_5ca
        :pswitch_5b3
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    if-nez p2, :cond_8

    .line 464
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_8
    const/4 v0, 0x0

    .line 465
    :goto_9
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    array-length v1, v1

    if-ge v0, v1, :cond_187

    .line 467
    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/jr;->c(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v2, v1

    int-to-long v2, v2

    .line 472
    iget-object v4, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v4, v4, v0

    const/high16 v5, 0xff00000

    and-int/2addr v1, v5

    ushr-int/lit8 v1, v1, 0x14

    packed-switch v1, :pswitch_data_19a

    goto/16 :goto_183

    .line 541
    :pswitch_25
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/libraries/places/internal/jr;->b(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_183

    .line 538
    :pswitch_2a
    invoke-direct {p0, p2, v4, v0}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_183

    .line 539
    invoke-static {p2, v2, v3}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 540
    invoke-direct {p0, p1, v4, v0}, Lcom/google/android/libraries/places/internal/jr;->b(Ljava/lang/Object;II)V

    goto/16 :goto_183

    .line 536
    :pswitch_3c
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/libraries/places/internal/jr;->b(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_183

    .line 533
    :pswitch_41
    invoke-direct {p0, p2, v4, v0}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_183

    .line 534
    invoke-static {p2, v2, v3}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 535
    invoke-direct {p0, p1, v4, v0}, Lcom/google/android/libraries/places/internal/jr;->b(Ljava/lang/Object;II)V

    goto/16 :goto_183

    .line 531
    :pswitch_53
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/jr;->s:Lcom/google/android/libraries/places/internal/jk;

    invoke-static {v1, p1, p2, v2, v3}, Lcom/google/android/libraries/places/internal/kf;->a(Lcom/google/android/libraries/places/internal/jk;Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_183

    .line 529
    :pswitch_5a
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/jr;->p:Lcom/google/android/libraries/places/internal/ja;

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/google/android/libraries/places/internal/ja;->a(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_183

    .line 527
    :pswitch_61
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_183

    .line 524
    :pswitch_66
    invoke-direct {p0, p2, v0}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_183

    .line 525
    invoke-static {p2, v2, v3}, Lcom/google/android/libraries/places/internal/ky;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;JJ)V

    .line 526
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/jr;->b(Ljava/lang/Object;I)V

    goto/16 :goto_183

    .line 521
    :pswitch_78
    invoke-direct {p0, p2, v0}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_183

    .line 522
    invoke-static {p2, v2, v3}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;JI)V

    .line 523
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/jr;->b(Ljava/lang/Object;I)V

    goto/16 :goto_183

    .line 518
    :pswitch_8a
    invoke-direct {p0, p2, v0}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_183

    .line 519
    invoke-static {p2, v2, v3}, Lcom/google/android/libraries/places/internal/ky;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;JJ)V

    .line 520
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/jr;->b(Ljava/lang/Object;I)V

    goto/16 :goto_183

    .line 515
    :pswitch_9c
    invoke-direct {p0, p2, v0}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_183

    .line 516
    invoke-static {p2, v2, v3}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;JI)V

    .line 517
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/jr;->b(Ljava/lang/Object;I)V

    goto/16 :goto_183

    .line 512
    :pswitch_ae
    invoke-direct {p0, p2, v0}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_183

    .line 513
    invoke-static {p2, v2, v3}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;JI)V

    .line 514
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/jr;->b(Ljava/lang/Object;I)V

    goto/16 :goto_183

    .line 509
    :pswitch_c0
    invoke-direct {p0, p2, v0}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_183

    .line 510
    invoke-static {p2, v2, v3}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;JI)V

    .line 511
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/jr;->b(Ljava/lang/Object;I)V

    goto/16 :goto_183

    .line 506
    :pswitch_d2
    invoke-direct {p0, p2, v0}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_183

    .line 507
    invoke-static {p2, v2, v3}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 508
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/jr;->b(Ljava/lang/Object;I)V

    goto/16 :goto_183

    .line 504
    :pswitch_e4
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_183

    .line 501
    :pswitch_e9
    invoke-direct {p0, p2, v0}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_183

    .line 502
    invoke-static {p2, v2, v3}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 503
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/jr;->b(Ljava/lang/Object;I)V

    goto/16 :goto_183

    .line 498
    :pswitch_fb
    invoke-direct {p0, p2, v0}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_183

    .line 499
    invoke-static {p2, v2, v3}, Lcom/google/android/libraries/places/internal/ky;->c(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;JZ)V

    .line 500
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/jr;->b(Ljava/lang/Object;I)V

    goto/16 :goto_183

    .line 495
    :pswitch_10d
    invoke-direct {p0, p2, v0}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_183

    .line 496
    invoke-static {p2, v2, v3}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;JI)V

    .line 497
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/jr;->b(Ljava/lang/Object;I)V

    goto :goto_183

    .line 492
    :pswitch_11e
    invoke-direct {p0, p2, v0}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_183

    .line 493
    invoke-static {p2, v2, v3}, Lcom/google/android/libraries/places/internal/ky;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;JJ)V

    .line 494
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/jr;->b(Ljava/lang/Object;I)V

    goto :goto_183

    .line 489
    :pswitch_12f
    invoke-direct {p0, p2, v0}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_183

    .line 490
    invoke-static {p2, v2, v3}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;JI)V

    .line 491
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/jr;->b(Ljava/lang/Object;I)V

    goto :goto_183

    .line 486
    :pswitch_140
    invoke-direct {p0, p2, v0}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_183

    .line 487
    invoke-static {p2, v2, v3}, Lcom/google/android/libraries/places/internal/ky;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;JJ)V

    .line 488
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/jr;->b(Ljava/lang/Object;I)V

    goto :goto_183

    .line 483
    :pswitch_151
    invoke-direct {p0, p2, v0}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_183

    .line 484
    invoke-static {p2, v2, v3}, Lcom/google/android/libraries/places/internal/ky;->b(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;JJ)V

    .line 485
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/jr;->b(Ljava/lang/Object;I)V

    goto :goto_183

    .line 480
    :pswitch_162
    invoke-direct {p0, p2, v0}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_183

    .line 481
    invoke-static {p2, v2, v3}, Lcom/google/android/libraries/places/internal/ky;->d(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;JF)V

    .line 482
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/jr;->b(Ljava/lang/Object;I)V

    goto :goto_183

    .line 477
    :pswitch_173
    invoke-direct {p0, p2, v0}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_183

    .line 478
    invoke-static {p2, v2, v3}, Lcom/google/android/libraries/places/internal/ky;->e(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;JD)V

    .line 479
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/places/internal/jr;->b(Ljava/lang/Object;I)V

    :cond_183
    :goto_183
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_9

    .line 543
    :cond_187
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/jr;->j:Z

    if-nez v0, :cond_199

    .line 544
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/jr;->q:Lcom/google/android/libraries/places/internal/kt;

    invoke-static {v0, p1, p2}, Lcom/google/android/libraries/places/internal/kf;->a(Lcom/google/android/libraries/places/internal/kt;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 545
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/jr;->h:Z

    if-eqz v0, :cond_199

    .line 546
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/jr;->r:Lcom/google/android/libraries/places/internal/ib;

    invoke-static {v0, p1, p2}, Lcom/google/android/libraries/places/internal/kf;->a(Lcom/google/android/libraries/places/internal/ib;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_199
    return-void

    :pswitch_data_19a
    .packed-switch 0x0
        :pswitch_173
        :pswitch_162
        :pswitch_151
        :pswitch_140
        :pswitch_12f
        :pswitch_11e
        :pswitch_10d
        :pswitch_fb
        :pswitch_e9
        :pswitch_e4
        :pswitch_d2
        :pswitch_c0
        :pswitch_ae
        :pswitch_9c
        :pswitch_8a
        :pswitch_78
        :pswitch_66
        :pswitch_61
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_53
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_41
        :pswitch_3c
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_25
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 2591
    iget v0, p0, Lcom/google/android/libraries/places/internal/jr;->m:I

    :goto_2
    iget v1, p0, Lcom/google/android/libraries/places/internal/jr;->n:I

    if-ge v0, v1, :cond_25

    .line 2592
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/jr;->l:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcom/google/android/libraries/places/internal/jr;->c(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    .line 2595
    invoke-static {p1, v1, v2}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_22

    .line 2597
    iget-object v4, p0, Lcom/google/android/libraries/places/internal/jr;->s:Lcom/google/android/libraries/places/internal/jk;

    invoke-virtual {v4, v3}, Lcom/google/android/libraries/places/internal/jk;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2599
    :cond_25
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/jr;->l:[I

    array-length v0, v0

    .line 2600
    iget v1, p0, Lcom/google/android/libraries/places/internal/jr;->n:I

    :goto_2a
    if-ge v1, v0, :cond_39

    .line 2601
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/jr;->p:Lcom/google/android/libraries/places/internal/ja;

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/jr;->l:[I

    aget v3, v3, v1

    int-to-long v3, v3

    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/libraries/places/internal/ja;->a(Ljava/lang/Object;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 2603
    :cond_39
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/jr;->q:Lcom/google/android/libraries/places/internal/kt;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/kt;->b(Ljava/lang/Object;)V

    .line 2604
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/jr;->h:Z

    if-eqz v0, :cond_47

    .line 2605
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/jr;->r:Lcom/google/android/libraries/places/internal/ib;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/ib;->c(Ljava/lang/Object;)V

    :cond_47
    return-void
.end method

.method public final d(Ljava/lang/Object;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 2609
    :goto_5
    iget v4, p0, Lcom/google/android/libraries/places/internal/jr;->m:I

    const/4 v5, 0x1

    if-ge v1, v4, :cond_104

    .line 2610
    iget-object v4, p0, Lcom/google/android/libraries/places/internal/jr;->l:[I

    aget v4, v4, v1

    .line 2612
    iget-object v6, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    aget v6, v6, v4

    .line 2614
    invoke-direct {p0, v4}, Lcom/google/android/libraries/places/internal/jr;->c(I)I

    move-result v7

    .line 2616
    iget-boolean v8, p0, Lcom/google/android/libraries/places/internal/jr;->j:Z

    const v9, 0xfffff

    if-nez v8, :cond_35

    .line 2617
    iget-object v8, p0, Lcom/google/android/libraries/places/internal/jr;->c:[I

    add-int/lit8 v10, v4, 0x2

    aget v8, v8, v10

    and-int v10, v8, v9

    ushr-int/lit8 v8, v8, 0x14

    shl-int v8, v5, v8

    if-eq v10, v2, :cond_36

    .line 2622
    sget-object v2, Lcom/google/android/libraries/places/internal/jr;->b:Lsun/misc/Unsafe;

    int-to-long v11, v10

    invoke-virtual {v2, p1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    move v3, v2

    move v2, v10

    goto :goto_36

    :cond_35
    const/4 v8, 0x0

    :cond_36
    :goto_36
    const/high16 v10, 0x10000000

    and-int/2addr v10, v7

    if-eqz v10, :cond_3d

    const/4 v10, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v10, 0x0

    :goto_3e
    if-eqz v10, :cond_47

    .line 2626
    invoke-direct {p0, p1, v4, v3, v8}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;III)Z

    move-result v10

    if-nez v10, :cond_47

    return v0

    :cond_47
    const/high16 v10, 0xff00000

    and-int/2addr v10, v7

    ushr-int/lit8 v10, v10, 0x14

    const/16 v11, 0x9

    if-eq v10, v11, :cond_ef

    const/16 v11, 0x11

    if-eq v10, v11, :cond_ef

    const/16 v8, 0x1b

    if-eq v10, v8, :cond_c3

    const/16 v8, 0x3c

    if-eq v10, v8, :cond_b2

    const/16 v8, 0x44

    if-eq v10, v8, :cond_b2

    packed-switch v10, :pswitch_data_116

    goto/16 :goto_100

    .line 2652
    :pswitch_65
    iget-object v6, p0, Lcom/google/android/libraries/places/internal/jr;->s:Lcom/google/android/libraries/places/internal/jk;

    and-int/2addr v7, v9

    int-to-long v7, v7

    .line 2654
    invoke-static {p1, v7, v8}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/libraries/places/internal/jk;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    .line 2655
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_af

    .line 2656
    invoke-direct {p0, v4}, Lcom/google/android/libraries/places/internal/jr;->b(I)Ljava/lang/Object;

    move-result-object v4

    .line 2657
    iget-object v7, p0, Lcom/google/android/libraries/places/internal/jr;->s:Lcom/google/android/libraries/places/internal/jk;

    invoke-virtual {v7, v4}, Lcom/google/android/libraries/places/internal/jk;->c(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/ji;

    move-result-object v4

    .line 2658
    iget-object v4, v4, Lcom/google/android/libraries/places/internal/ji;->b:Lcom/google/android/libraries/places/internal/lf;

    .line 2659
    iget-object v4, v4, Lcom/google/android/libraries/places/internal/lf;->s:Lcom/google/android/libraries/places/internal/lg;

    .line 2660
    sget-object v7, Lcom/google/android/libraries/places/internal/lg;->i:Lcom/google/android/libraries/places/internal/lg;

    if-ne v4, v7, :cond_af

    const/4 v4, 0x0

    .line 2662
    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_92
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_af

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    if-nez v4, :cond_a8

    .line 2664
    sget-object v4, Lcom/google/android/libraries/places/internal/ka;->a:Lcom/google/android/libraries/places/internal/ka;

    .line 2665
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/google/android/libraries/places/internal/ka;->a(Ljava/lang/Class;)Lcom/google/android/libraries/places/internal/kd;

    move-result-object v4

    .line 2666
    :cond_a8
    invoke-interface {v4, v7}, Lcom/google/android/libraries/places/internal/kd;->d(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_92

    const/4 v5, 0x0

    :cond_af
    if-nez v5, :cond_100

    return v0

    .line 2648
    :cond_b2
    invoke-direct {p0, p1, v6, v4}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_100

    .line 2649
    invoke-direct {p0, v4}, Lcom/google/android/libraries/places/internal/jr;->a(I)Lcom/google/android/libraries/places/internal/kd;

    move-result-object v4

    invoke-static {p1, v7, v4}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;ILcom/google/android/libraries/places/internal/kd;)Z

    move-result v4

    if-nez v4, :cond_100

    return v0

    :cond_c3
    :pswitch_c3
    and-int v6, v7, v9

    int-to-long v6, v6

    .line 2637
    invoke-static {p1, v6, v7}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 2638
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_ec

    .line 2639
    invoke-direct {p0, v4}, Lcom/google/android/libraries/places/internal/jr;->a(I)Lcom/google/android/libraries/places/internal/kd;

    move-result-object v4

    const/4 v7, 0x0

    .line 2640
    :goto_d7
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_ec

    .line 2641
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 2642
    invoke-interface {v4, v8}, Lcom/google/android/libraries/places/internal/kd;->d(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e9

    const/4 v5, 0x0

    goto :goto_ec

    :cond_e9
    add-int/lit8 v7, v7, 0x1

    goto :goto_d7

    :cond_ec
    :goto_ec
    if-nez v5, :cond_100

    return v0

    .line 2631
    :cond_ef
    invoke-direct {p0, p1, v4, v3, v8}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_100

    .line 2632
    invoke-direct {p0, v4}, Lcom/google/android/libraries/places/internal/jr;->a(I)Lcom/google/android/libraries/places/internal/kd;

    move-result-object v4

    invoke-static {p1, v7, v4}, Lcom/google/android/libraries/places/internal/jr;->a(Ljava/lang/Object;ILcom/google/android/libraries/places/internal/kd;)Z

    move-result v4

    if-nez v4, :cond_100

    return v0

    :cond_100
    :goto_100
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 2673
    :cond_104
    iget-boolean v1, p0, Lcom/google/android/libraries/places/internal/jr;->h:Z

    if-eqz v1, :cond_115

    .line 2674
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/jr;->r:Lcom/google/android/libraries/places/internal/ib;

    invoke-virtual {v1, p1}, Lcom/google/android/libraries/places/internal/ib;->a(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/id;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/id;->c()Z

    move-result p1

    if-nez p1, :cond_115

    return v0

    :cond_115
    return v5

    :pswitch_data_116
    .packed-switch 0x31
        :pswitch_c3
        :pswitch_65
    .end packed-switch
.end method
