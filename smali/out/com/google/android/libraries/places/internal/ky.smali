.class final Lcom/google/android/libraries/places/internal/ky;
.super Ljava/lang/Object;
.source "PG"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/places/internal/ky$a;,
        Lcom/google/android/libraries/places/internal/ky$b;,
        Lcom/google/android/libraries/places/internal/ky$c;,
        Lcom/google/android/libraries/places/internal/ky$d;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/libraries/places/internal/ky$d;

.field public static final b:Z

.field public static final c:Z

.field public static final d:Z

.field private static final e:Ljava/util/logging/Logger;

.field private static final f:Lsun/misc/Unsafe;

.field private static final g:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final h:Z

.field private static final i:Z

.field private static final j:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 131
    const-class v0, Lcom/google/android/libraries/places/internal/ky;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/ky;->e:Ljava/util/logging/Logger;

    .line 132
    invoke-static {}, Lcom/google/android/libraries/places/internal/ky;->a()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/ky;->f:Lsun/misc/Unsafe;

    .line 133
    sget-object v0, Lcom/google/android/libraries/places/internal/hn;->a:Ljava/lang/Class;

    .line 134
    sput-object v0, Lcom/google/android/libraries/places/internal/ky;->g:Ljava/lang/Class;

    .line 135
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/ky;->d(Ljava/lang/Class;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/libraries/places/internal/ky;->h:Z

    .line 136
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/ky;->d(Ljava/lang/Class;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/libraries/places/internal/ky;->i:Z

    .line 137
    sget-object v0, Lcom/google/android/libraries/places/internal/ky;->f:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    if-nez v0, :cond_2c

    goto :goto_51

    .line 139
    :cond_2c
    invoke-static {}, Lcom/google/android/libraries/places/internal/hn;->a()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 140
    sget-boolean v0, Lcom/google/android/libraries/places/internal/ky;->h:Z

    if-eqz v0, :cond_3e

    .line 141
    new-instance v1, Lcom/google/android/libraries/places/internal/ky$b;

    sget-object v0, Lcom/google/android/libraries/places/internal/ky;->f:Lsun/misc/Unsafe;

    invoke-direct {v1, v0}, Lcom/google/android/libraries/places/internal/ky$b;-><init>(Lsun/misc/Unsafe;)V

    goto :goto_51

    .line 142
    :cond_3e
    sget-boolean v0, Lcom/google/android/libraries/places/internal/ky;->i:Z

    if-eqz v0, :cond_51

    .line 143
    new-instance v1, Lcom/google/android/libraries/places/internal/ky$a;

    sget-object v0, Lcom/google/android/libraries/places/internal/ky;->f:Lsun/misc/Unsafe;

    invoke-direct {v1, v0}, Lcom/google/android/libraries/places/internal/ky$a;-><init>(Lsun/misc/Unsafe;)V

    goto :goto_51

    .line 145
    :cond_4a
    new-instance v1, Lcom/google/android/libraries/places/internal/ky$c;

    sget-object v0, Lcom/google/android/libraries/places/internal/ky;->f:Lsun/misc/Unsafe;

    invoke-direct {v1, v0}, Lcom/google/android/libraries/places/internal/ky$c;-><init>(Lsun/misc/Unsafe;)V

    .line 146
    :cond_51
    :goto_51
    sput-object v1, Lcom/google/android/libraries/places/internal/ky;->a:Lcom/google/android/libraries/places/internal/ky$d;

    .line 147
    invoke-static {}, Lcom/google/android/libraries/places/internal/ky;->c()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/libraries/places/internal/ky;->b:Z

    .line 148
    invoke-static {}, Lcom/google/android/libraries/places/internal/ky;->b()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/libraries/places/internal/ky;->c:Z

    .line 149
    const-class v0, [B

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/ky;->b(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/libraries/places/internal/ky;->j:J

    .line 150
    const-class v0, [Z

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/ky;->b(Ljava/lang/Class;)I

    .line 151
    const-class v0, [Z

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/ky;->c(Ljava/lang/Class;)I

    .line 152
    const-class v0, [I

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/ky;->b(Ljava/lang/Class;)I

    .line 153
    const-class v0, [I

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/ky;->c(Ljava/lang/Class;)I

    .line 154
    const-class v0, [J

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/ky;->b(Ljava/lang/Class;)I

    .line 155
    const-class v0, [J

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/ky;->c(Ljava/lang/Class;)I

    .line 156
    const-class v0, [F

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/ky;->b(Ljava/lang/Class;)I

    .line 157
    const-class v0, [F

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/ky;->c(Ljava/lang/Class;)I

    .line 158
    const-class v0, [D

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/ky;->b(Ljava/lang/Class;)I

    .line 159
    const-class v0, [D

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/ky;->c(Ljava/lang/Class;)I

    .line 160
    const-class v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/ky;->b(Ljava/lang/Class;)I

    .line 161
    const-class v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/ky;->c(Ljava/lang/Class;)I

    .line 162
    invoke-static {}, Lcom/google/android/libraries/places/internal/ky;->d()Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_b4

    .line 163
    sget-object v1, Lcom/google/android/libraries/places/internal/ky;->a:Lcom/google/android/libraries/places/internal/ky$d;

    if-nez v1, :cond_af

    goto :goto_b4

    :cond_af
    sget-object v1, Lcom/google/android/libraries/places/internal/ky;->a:Lcom/google/android/libraries/places/internal/ky$d;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/ky$d;->a(Ljava/lang/reflect/Field;)J

    .line 165
    :cond_b4
    :goto_b4
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_be

    const/4 v0, 0x1

    goto :goto_bf

    :cond_be
    const/4 v0, 0x0

    :goto_bf
    sput-boolean v0, Lcom/google/android/libraries/places/internal/ky;->d:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a([BJ)B
    .registers 8

    .line 32
    sget-object v0, Lcom/google/android/libraries/places/internal/ky;->a:Lcom/google/android/libraries/places/internal/ky$d;

    sget-wide v1, Lcom/google/android/libraries/places/internal/ky;->j:J

    add-long v3, v1, p1

    invoke-virtual {v0, p0, v3, v4}, Lcom/google/android/libraries/places/internal/ky$d;->a(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method static a(Ljava/lang/Object;J)I
    .registers 4

    .line 11
    sget-object v0, Lcom/google/android/libraries/places/internal/ky;->a:Lcom/google/android/libraries/places/internal/ky$d;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/libraries/places/internal/ky$d;->e(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method static a(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 2
    :try_start_0
    sget-object v0, Lcom/google/android/libraries/places/internal/ky;->f:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_6
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    .line 4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 2
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

    .line 108
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_6

    :catch_5
    const/4 p0, 0x0

    :goto_6
    return-object p0
.end method

.method static a()Lsun/misc/Unsafe;
    .registers 1

    .line 36
    :try_start_0
    new-instance v0, Lcom/google/android/libraries/places/internal/kz;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/kz;-><init>()V

    .line 37
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_d

    :catch_c
    const/4 v0, 0x0

    :goto_d
    return-object v0
.end method

.method static a(Ljava/lang/Object;JB)V
    .registers 8

    const-wide/16 v0, -0x4

    and-long v2, p1, v0

    .line 115
    invoke-static {p0, v2, v3}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;J)I

    move-result v0

    long-to-int p1, p1

    xor-int/lit8 p1, p1, -0x1

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v1, p2, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v0

    .line 118
    invoke-static {p0, v2, v3, p1}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;JI)V

    return-void
.end method

.method static a(Ljava/lang/Object;JD)V
    .registers 11

    .line 24
    sget-object v0, Lcom/google/android/libraries/places/internal/ky;->a:Lcom/google/android/libraries/places/internal/ky$d;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/ky$d;->a(Ljava/lang/Object;JD)V

    return-void
.end method

.method static a(Ljava/lang/Object;JF)V
    .registers 5

    .line 21
    sget-object v0, Lcom/google/android/libraries/places/internal/ky;->a:Lcom/google/android/libraries/places/internal/ky$d;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/ky$d;->a(Ljava/lang/Object;JF)V

    return-void
.end method

.method static a(Ljava/lang/Object;JI)V
    .registers 5

    .line 12
    sget-object v0, Lcom/google/android/libraries/places/internal/ky;->a:Lcom/google/android/libraries/places/internal/ky$d;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/ky$d;->a(Ljava/lang/Object;JI)V

    return-void
.end method

.method static a(Ljava/lang/Object;JJ)V
    .registers 11

    .line 15
    sget-object v0, Lcom/google/android/libraries/places/internal/ky;->a:Lcom/google/android/libraries/places/internal/ky$d;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/ky$d;->a(Ljava/lang/Object;JJ)V

    return-void
.end method

.method static a(Ljava/lang/Object;JLjava/lang/Object;)V
    .registers 5

    .line 29
    sget-object v0, Lcom/google/android/libraries/places/internal/ky;->a:Lcom/google/android/libraries/places/internal/ky$d;

    .line 30
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/ky$d;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method static a(Ljava/lang/Object;JZ)V
    .registers 5

    .line 18
    sget-object v0, Lcom/google/android/libraries/places/internal/ky;->a:Lcom/google/android/libraries/places/internal/ky$d;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/ky$d;->a(Ljava/lang/Object;JZ)V

    return-void
.end method

.method static a([BJB)V
    .registers 9

    .line 33
    sget-object v0, Lcom/google/android/libraries/places/internal/ky;->a:Lcom/google/android/libraries/places/internal/ky$d;

    sget-wide v1, Lcom/google/android/libraries/places/internal/ky;->j:J

    add-long v3, v1, p1

    invoke-virtual {v0, p0, v3, v4, p3}, Lcom/google/android/libraries/places/internal/ky$d;->a(Ljava/lang/Object;JB)V

    return-void
.end method

.method private static b(Ljava/lang/Class;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 5
    sget-boolean v0, Lcom/google/android/libraries/places/internal/ky;->c:Z

    if-eqz v0, :cond_d

    sget-object v0, Lcom/google/android/libraries/places/internal/ky;->a:Lcom/google/android/libraries/places/internal/ky$d;

    .line 6
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/ky$d;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_d
    const/4 p0, -0x1

    return p0
.end method

.method static b(Ljava/lang/Object;J)J
    .registers 4

    .line 14
    sget-object v0, Lcom/google/android/libraries/places/internal/ky;->a:Lcom/google/android/libraries/places/internal/ky$d;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/libraries/places/internal/ky$d;->f(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method static b(Ljava/lang/Object;JB)V
    .registers 8

    const-wide/16 v0, -0x4

    and-long v2, p1, v0

    .line 120
    invoke-static {p0, v2, v3}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;J)I

    move-result v0

    long-to-int p1, p1

    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x3

    const/16 p2, 0xff

    shl-int v1, p2, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    and-int/2addr p2, p3

    shl-int p1, p2, p1

    or-int/2addr p1, v0

    .line 123
    invoke-static {p0, v2, v3, p1}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;JI)V

    return-void
.end method

.method static b(Ljava/lang/Object;JZ)V
    .registers 4

    int-to-byte p3, p3

    .line 127
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;JB)V

    return-void
.end method

.method private static b()Z
    .registers 8

    .line 41
    sget-object v0, Lcom/google/android/libraries/places/internal/ky;->f:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 43
    :cond_6
    :try_start_6
    sget-object v0, Lcom/google/android/libraries/places/internal/ky;->f:Lsun/misc/Unsafe;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "objectFieldOffset"

    const/4 v3, 0x1

    .line 44
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/reflect/Field;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "arrayBaseOffset"

    .line 45
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "arrayIndexScale"

    .line 46
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "getInt"

    const/4 v4, 0x2

    .line 47
    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "putInt"

    const/4 v5, 0x3

    .line 48
    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "getLong"

    .line 49
    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "putLong"

    .line 50
    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "getObject"

    .line 51
    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "putObject"

    .line 52
    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 53
    invoke-static {}, Lcom/google/android/libraries/places/internal/hn;->a()Z

    move-result v2

    if-eqz v2, :cond_9d

    return v3

    :cond_9d
    const-string v2, "getByte"

    .line 55
    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "putByte"

    .line 56
    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "getBoolean"

    .line 57
    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "putBoolean"

    .line 58
    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "getFloat"

    .line 59
    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "putFloat"

    .line 60
    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "getDouble"

    .line 61
    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "putDouble"

    .line 62
    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v4

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_125
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_125} :catch_126

    return v3

    :catch_126
    move-exception v0

    .line 65
    sget-object v2, Lcom/google/android/libraries/places/internal/ky;->e:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "com.google.protobuf.UnsafeUtil"

    const-string v5, "supportsUnsafeArrayOperations"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x47

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "platform method missing - proto runtime falling back to safer methods: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v4, v5, v0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private static c(Ljava/lang/Class;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 8
    sget-boolean v0, Lcom/google/android/libraries/places/internal/ky;->c:Z

    if-eqz v0, :cond_d

    sget-object v0, Lcom/google/android/libraries/places/internal/ky;->a:Lcom/google/android/libraries/places/internal/ky$d;

    .line 9
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/ky$d;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_d
    const/4 p0, -0x1

    return p0
.end method

.method static c(Ljava/lang/Object;JZ)V
    .registers 4

    int-to-byte p3, p3

    .line 129
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/ky;->b(Ljava/lang/Object;JB)V

    return-void
.end method

.method private static c()Z
    .registers 8

    .line 67
    sget-object v0, Lcom/google/android/libraries/places/internal/ky;->f:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 69
    :cond_6
    :try_start_6
    sget-object v0, Lcom/google/android/libraries/places/internal/ky;->f:Lsun/misc/Unsafe;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "objectFieldOffset"

    const/4 v3, 0x1

    .line 70
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/reflect/Field;

    aput-object v5, v4, v1

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "getLong"

    const/4 v4, 0x2

    .line 71
    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 72
    invoke-static {}, Lcom/google/android/libraries/places/internal/ky;->d()Ljava/lang/reflect/Field;

    move-result-object v2

    if-nez v2, :cond_2f

    return v1

    .line 74
    :cond_2f
    invoke-static {}, Lcom/google/android/libraries/places/internal/hn;->a()Z

    move-result v2

    if-eqz v2, :cond_36

    return v3

    :cond_36
    const-string v2, "getByte"

    .line 76
    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "putByte"

    .line 77
    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "getInt"

    .line 78
    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "putInt"

    .line 79
    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "getLong"

    .line 80
    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "putLong"

    .line 81
    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "copyMemory"

    const/4 v5, 0x3

    .line 82
    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "copyMemory"

    const/4 v6, 0x5

    .line 83
    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    const-class v7, Ljava/lang/Object;

    aput-object v7, v6, v4

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v6, v5

    const/4 v4, 0x4

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v6, v4

    invoke-virtual {v0, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_b5
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_b5} :catch_b6

    return v3

    :catch_b6
    move-exception v0

    .line 86
    sget-object v2, Lcom/google/android/libraries/places/internal/ky;->e:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "com.google.protobuf.UnsafeUtil"

    const-string v5, "supportsUnsafeByteBufferOperations"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x47

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "platform method missing - proto runtime falling back to safer methods: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v4, v5, v0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method static c(Ljava/lang/Object;J)Z
    .registers 4

    .line 17
    sget-object v0, Lcom/google/android/libraries/places/internal/ky;->a:Lcom/google/android/libraries/places/internal/ky$d;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/libraries/places/internal/ky$d;->b(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method static d(Ljava/lang/Object;J)F
    .registers 4

    .line 20
    sget-object v0, Lcom/google/android/libraries/places/internal/ky;->a:Lcom/google/android/libraries/places/internal/ky$d;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/libraries/places/internal/ky$d;->c(Ljava/lang/Object;J)F

    move-result p0

    return p0
.end method

.method private static d()Ljava/lang/reflect/Field;
    .registers 3

    .line 102
    invoke-static {}, Lcom/google/android/libraries/places/internal/hn;->a()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 103
    const-class v0, Ljava/nio/Buffer;

    const-string v1, "effectiveDirectAddress"

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_11

    return-object v0

    .line 106
    :cond_11
    const-class v0, Ljava/nio/Buffer;

    const-string v1, "address"

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 107
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_24

    return-object v0

    :cond_24
    const/4 v0, 0x0

    return-object v0
.end method

.method private static d(Ljava/lang/Class;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 88
    invoke-static {}, Lcom/google/android/libraries/places/internal/hn;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 90
    :cond_8
    :try_start_8
    sget-object v0, Lcom/google/android/libraries/places/internal/ky;->g:Ljava/lang/Class;

    const-string v2, "peekLong"

    const/4 v3, 0x2

    .line 91
    new-array v4, v3, [Ljava/lang/Class;

    aput-object p0, v4, v1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "pokeLong"

    const/4 v4, 0x3

    .line 92
    new-array v5, v4, [Ljava/lang/Class;

    aput-object p0, v5, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v3

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "pokeInt"

    .line 93
    new-array v5, v4, [Ljava/lang/Class;

    aput-object p0, v5, v1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v3

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "peekInt"

    .line 94
    new-array v5, v3, [Ljava/lang/Class;

    aput-object p0, v5, v1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "pokeByte"

    .line 95
    new-array v5, v3, [Ljava/lang/Class;

    aput-object p0, v5, v1

    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "peekByte"

    .line 96
    new-array v5, v6, [Ljava/lang/Class;

    aput-object p0, v5, v1

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "pokeByteArray"

    const/4 v5, 0x4

    .line 97
    new-array v7, v5, [Ljava/lang/Class;

    aput-object p0, v7, v1

    const-class v8, [B

    aput-object v8, v7, v6

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    invoke-virtual {v0, v2, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const-string v2, "peekByteArray"

    .line 98
    new-array v5, v5, [Ljava/lang/Class;

    aput-object p0, v5, v1

    const-class p0, [B

    aput-object p0, v5, v6

    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p0, v5, v3

    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p0, v5, v4

    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_8a
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8a} :catch_8b

    return v6

    :catch_8b
    return v1
.end method

.method static e(Ljava/lang/Object;J)D
    .registers 4

    .line 23
    sget-object v0, Lcom/google/android/libraries/places/internal/ky;->a:Lcom/google/android/libraries/places/internal/ky$d;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/libraries/places/internal/ky$d;->d(Ljava/lang/Object;J)D

    move-result-wide p0

    return-wide p0
.end method

.method static f(Ljava/lang/Object;J)Ljava/lang/Object;
    .registers 4

    .line 26
    sget-object v0, Lcom/google/android/libraries/places/internal/ky;->a:Lcom/google/android/libraries/places/internal/ky$d;

    .line 27
    iget-object v0, v0, Lcom/google/android/libraries/places/internal/ky$d;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static g(Ljava/lang/Object;J)B
    .registers 7

    const-wide/16 v0, -0x4

    and-long v2, p1, v0

    .line 113
    invoke-static {p0, v2, v3}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;J)I

    move-result p0

    const-wide/16 v0, -0x1

    xor-long v2, p1, v0

    const-wide/16 p1, 0x3

    and-long v0, v2, p1

    const/4 p1, 0x3

    shl-long p1, v0, p1

    long-to-int p1, p1

    ushr-int/2addr p0, p1

    int-to-byte p0, p0

    return p0
.end method

.method static h(Ljava/lang/Object;J)B
    .registers 7

    const-wide/16 v0, -0x4

    and-long v2, p1, v0

    .line 114
    invoke-static {p0, v2, v3}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;J)I

    move-result p0

    const-wide/16 v0, 0x3

    and-long v2, p1, v0

    const/4 p1, 0x3

    shl-long p1, v2, p1

    long-to-int p1, p1

    ushr-int/2addr p0, p1

    int-to-byte p0, p0

    return p0
.end method

.method static i(Ljava/lang/Object;J)Z
    .registers 3

    .line 125
    invoke-static {p0, p1, p2}, Lcom/google/android/libraries/places/internal/ky;->g(Ljava/lang/Object;J)B

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method static j(Ljava/lang/Object;J)Z
    .registers 3

    .line 126
    invoke-static {p0, p1, p2}, Lcom/google/android/libraries/places/internal/ky;->h(Ljava/lang/Object;J)B

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method
