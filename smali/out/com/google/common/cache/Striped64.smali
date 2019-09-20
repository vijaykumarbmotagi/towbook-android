.class abstract Lcom/google/common/cache/Striped64;
.super Ljava/lang/Number;
.source "Striped64.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/cache/Striped64$Cell;
    }
.end annotation


# static fields
.field static final NCPU:I

.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final baseOffset:J

.field private static final busyOffset:J

.field static final rng:Ljava/util/Random;

.field static final threadHashCode:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[I>;"
        }
    .end annotation
.end field


# instance fields
.field volatile transient base:J

.field volatile transient busy:I

.field volatile transient cells:[Lcom/google/common/cache/Striped64$Cell;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 126
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/google/common/cache/Striped64;->threadHashCode:Ljava/lang/ThreadLocal;

    .line 131
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/google/common/cache/Striped64;->rng:Ljava/util/Random;

    .line 134
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/google/common/cache/Striped64;->NCPU:I

    .line 299
    :try_start_18
    invoke-static {}, Lcom/google/common/cache/Striped64;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    .line 300
    const-class v0, Lcom/google/common/cache/Striped64;

    .line 301
    sget-object v1, Lcom/google/common/cache/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    const-string v2, "base"

    .line 302
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Lcom/google/common/cache/Striped64;->baseOffset:J

    .line 303
    sget-object v1, Lcom/google/common/cache/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    const-string v2, "busy"

    .line 304
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lcom/google/common/cache/Striped64;->busyOffset:J
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_3c} :catch_3d

    return-void

    :catch_3d
    move-exception v0

    .line 306
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>()V
    .registers 1

    .line 155
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lsun/misc/Unsafe;
    .registers 1

    .line 23
    invoke-static {}, Lcom/google/common/cache/Striped64;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    return-object v0
.end method

.method private static getUnsafe()Lsun/misc/Unsafe;
    .registers 3

    .line 319
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 322
    :catch_5
    :try_start_5
    new-instance v0, Lcom/google/common/cache/Striped64$1;

    invoke-direct {v0}, Lcom/google/common/cache/Striped64$1;-><init>()V

    .line 323
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_10
    .catch Ljava/security/PrivilegedActionException; {:try_start_5 .. :try_end_10} :catch_11

    return-object v0

    :catch_11
    move-exception v0

    .line 335
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not initialize intrinsics"

    .line 336
    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method final casBase(JJ)Z
    .registers 13

    .line 162
    sget-object v0, Lcom/google/common/cache/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/common/cache/Striped64;->baseOffset:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result p1

    return p1
.end method

.method final casBusy()Z
    .registers 7

    .line 169
    sget-object v0, Lcom/google/common/cache/Striped64;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/common/cache/Striped64;->busyOffset:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0
.end method

.method abstract fn(JJ)J
.end method

.method final internalReset(J)V
    .registers 7

    .line 281
    iget-object v0, p0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    .line 282
    iput-wide p1, p0, Lcom/google/common/cache/Striped64;->base:J

    if-eqz v0, :cond_13

    .line 284
    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_13

    .line 286
    aget-object v3, v0, v2

    if-eqz v3, :cond_10

    .line 288
    iput-wide p1, v3, Lcom/google/common/cache/Striped64$Cell;->value:J

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_13
    return-void
.end method

.method final retryUpdate(J[IZ)V
    .registers 22

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez p3, :cond_20

    .line 197
    sget-object v4, Lcom/google/common/cache/Striped64;->threadHashCode:Ljava/lang/ThreadLocal;

    new-array v7, v5, [I

    invoke-virtual {v4, v7}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 198
    sget-object v4, Lcom/google/common/cache/Striped64;->rng:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    if-nez v4, :cond_18

    const/4 v4, 0x1

    :cond_18
    aput v4, v7, v6

    move-object/from16 v16, v7

    move v7, v4

    move-object/from16 v4, v16

    goto :goto_24

    .line 202
    :cond_20
    aget v7, p3, v6

    move-object/from16 v4, p3

    :goto_24
    move/from16 v8, p4

    :goto_26
    const/4 v9, 0x0

    .line 206
    :cond_27
    :goto_27
    iget-object v10, v1, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    if-eqz v10, :cond_c6

    array-length v11, v10

    if-lez v11, :cond_c6

    add-int/lit8 v12, v11, -0x1

    and-int/2addr v12, v7

    .line 207
    aget-object v12, v10, v12

    if-nez v12, :cond_68

    .line 208
    iget v10, v1, Lcom/google/common/cache/Striped64;->busy:I

    if-nez v10, :cond_66

    .line 209
    new-instance v10, Lcom/google/common/cache/Striped64$Cell;

    invoke-direct {v10, v2, v3}, Lcom/google/common/cache/Striped64$Cell;-><init>(J)V

    .line 210
    iget v11, v1, Lcom/google/common/cache/Striped64;->busy:I

    if-nez v11, :cond_66

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/Striped64;->casBusy()Z

    move-result v11

    if-eqz v11, :cond_66

    .line 214
    :try_start_48
    iget-object v11, v1, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    if-eqz v11, :cond_5a

    array-length v12, v11

    if-lez v12, :cond_5a

    add-int/lit8 v12, v12, -0x1

    and-int/2addr v12, v7

    aget-object v13, v11, v12

    if-nez v13, :cond_5a

    .line 217
    aput-object v10, v11, v12
    :try_end_58
    .catchall {:try_start_48 .. :try_end_58} :catchall_61

    const/4 v10, 0x1

    goto :goto_5b

    :cond_5a
    const/4 v10, 0x0

    .line 221
    :goto_5b
    iput v6, v1, Lcom/google/common/cache/Striped64;->busy:I

    if-eqz v10, :cond_27

    goto/16 :goto_107

    :catchall_61
    move-exception v0

    move-object v2, v0

    iput v6, v1, Lcom/google/common/cache/Striped64;->busy:I

    throw v2

    :cond_66
    :goto_66
    const/4 v9, 0x0

    goto :goto_b7

    :cond_68
    if-nez v8, :cond_6c

    const/4 v8, 0x1

    goto :goto_b7

    .line 232
    :cond_6c
    iget-wide v13, v12, Lcom/google/common/cache/Striped64$Cell;->value:J

    invoke-virtual {v1, v13, v14, v2, v3}, Lcom/google/common/cache/Striped64;->fn(JJ)J

    move-result-wide v5

    invoke-virtual {v12, v13, v14, v5, v6}, Lcom/google/common/cache/Striped64$Cell;->cas(JJ)Z

    move-result v5

    if-eqz v5, :cond_7a

    goto/16 :goto_107

    .line 234
    :cond_7a
    sget v5, Lcom/google/common/cache/Striped64;->NCPU:I

    if-ge v11, v5, :cond_66

    iget-object v5, v1, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    if-eq v5, v10, :cond_83

    goto :goto_66

    :cond_83
    if-nez v9, :cond_87

    const/4 v9, 0x1

    goto :goto_b7

    .line 238
    :cond_87
    iget v5, v1, Lcom/google/common/cache/Striped64;->busy:I

    if-nez v5, :cond_b7

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/Striped64;->casBusy()Z

    move-result v5

    if-eqz v5, :cond_b7

    .line 240
    :try_start_91
    iget-object v5, v1, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;
    :try_end_93
    .catchall {:try_start_91 .. :try_end_93} :catchall_b1

    if-ne v5, v10, :cond_aa

    shl-int/lit8 v5, v11, 0x1

    .line 241
    :try_start_97
    new-array v5, v5, [Lcom/google/common/cache/Striped64$Cell;

    const/4 v6, 0x0

    :goto_9a
    if-ge v6, v11, :cond_a3

    .line 243
    aget-object v9, v10, v6

    aput-object v9, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_9a

    .line 244
    :cond_a3
    iput-object v5, v1, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;
    :try_end_a5
    .catchall {:try_start_97 .. :try_end_a5} :catchall_a6

    goto :goto_aa

    :catchall_a6
    move-exception v0

    move-object v2, v0

    const/4 v5, 0x0

    goto :goto_b4

    :cond_aa
    :goto_aa
    const/4 v5, 0x0

    .line 247
    iput v5, v1, Lcom/google/common/cache/Striped64;->busy:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto/16 :goto_26

    :catchall_b1
    move-exception v0

    const/4 v5, 0x0

    move-object v2, v0

    :goto_b4
    iput v5, v1, Lcom/google/common/cache/Striped64;->busy:I

    throw v2

    :cond_b7
    :goto_b7
    shl-int/lit8 v5, v7, 0xd

    xor-int/2addr v5, v7

    ushr-int/lit8 v6, v5, 0x11

    xor-int/2addr v5, v6

    shl-int/lit8 v6, v5, 0x5

    xor-int/2addr v5, v6

    const/4 v6, 0x0

    .line 255
    aput v5, v4, v6

    move v7, v5

    const/4 v5, 0x0

    goto :goto_108

    .line 257
    :cond_c6
    iget v5, v1, Lcom/google/common/cache/Striped64;->busy:I

    if-nez v5, :cond_fa

    iget-object v5, v1, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    if-ne v5, v10, :cond_fa

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/Striped64;->casBusy()Z

    move-result v5

    if-eqz v5, :cond_fa

    .line 260
    :try_start_d4
    iget-object v5, v1, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;
    :try_end_d6
    .catchall {:try_start_d4 .. :try_end_d6} :catchall_f4

    if-ne v5, v10, :cond_ed

    const/4 v5, 0x2

    .line 261
    :try_start_d9
    new-array v5, v5, [Lcom/google/common/cache/Striped64$Cell;

    and-int/lit8 v6, v7, 0x1

    .line 262
    new-instance v10, Lcom/google/common/cache/Striped64$Cell;

    invoke-direct {v10, v2, v3}, Lcom/google/common/cache/Striped64$Cell;-><init>(J)V

    aput-object v10, v5, v6

    .line 263
    iput-object v5, v1, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;
    :try_end_e6
    .catchall {:try_start_d9 .. :try_end_e6} :catchall_e9

    const/4 v5, 0x0

    const/4 v15, 0x1

    goto :goto_ef

    :catchall_e9
    move-exception v0

    move-object v2, v0

    const/4 v5, 0x0

    goto :goto_f7

    :cond_ed
    const/4 v5, 0x0

    const/4 v15, 0x0

    .line 267
    :goto_ef
    iput v5, v1, Lcom/google/common/cache/Striped64;->busy:I

    if-eqz v15, :cond_108

    goto :goto_107

    :catchall_f4
    move-exception v0

    const/4 v5, 0x0

    move-object v2, v0

    :goto_f7
    iput v5, v1, Lcom/google/common/cache/Striped64;->busy:I

    throw v2

    :cond_fa
    const/4 v5, 0x0

    .line 272
    iget-wide v10, v1, Lcom/google/common/cache/Striped64;->base:J

    invoke-virtual {v1, v10, v11, v2, v3}, Lcom/google/common/cache/Striped64;->fn(JJ)J

    move-result-wide v12

    invoke-virtual {v1, v10, v11, v12, v13}, Lcom/google/common/cache/Striped64;->casBase(JJ)Z

    move-result v6

    if-eqz v6, :cond_108

    :goto_107
    return-void

    :cond_108
    :goto_108
    const/4 v5, 0x1

    const/4 v6, 0x0

    goto/16 :goto_27
.end method
