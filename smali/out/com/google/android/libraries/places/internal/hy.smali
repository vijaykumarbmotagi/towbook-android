.class public abstract Lcom/google/android/libraries/places/internal/hy;
.super Lcom/google/android/libraries/places/internal/hp;
.source "PG"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/places/internal/hy$a;,
        Lcom/google/android/libraries/places/internal/hy$b;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/logging/Logger;

.field public static final b:Z


# instance fields
.field public c:Lcom/google/android/libraries/places/internal/lh;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 154
    const-class v0, Lcom/google/android/libraries/places/internal/hy;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/hy;->a:Ljava/util/logging/Logger;

    .line 155
    sget-boolean v0, Lcom/google/android/libraries/places/internal/ky;->c:Z

    .line 156
    sput-boolean v0, Lcom/google/android/libraries/places/internal/hy;->b:Z

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/hp;-><init>()V

    return-void
.end method

.method public static a()I
    .registers 1

    const/4 v0, 0x4

    return v0
.end method

.method public static a(ILcom/google/android/libraries/places/internal/ix;)I
    .registers 3

    .line 50
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/hy;->e(I)I

    move-result p0

    .line 52
    iget-object v0, p1, Lcom/google/android/libraries/places/internal/ix;->c:Lcom/google/android/libraries/places/internal/hq;

    if-eqz v0, :cond_f

    .line 53
    iget-object p1, p1, Lcom/google/android/libraries/places/internal/ix;->c:Lcom/google/android/libraries/places/internal/hq;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/hq;->a()I

    move-result p1

    goto :goto_1b

    .line 54
    :cond_f
    iget-object v0, p1, Lcom/google/android/libraries/places/internal/ix;->b:Lcom/google/android/libraries/places/internal/jo;

    if-eqz v0, :cond_1a

    .line 55
    iget-object p1, p1, Lcom/google/android/libraries/places/internal/ix;->b:Lcom/google/android/libraries/places/internal/jo;

    invoke-interface {p1}, Lcom/google/android/libraries/places/internal/jo;->h()I

    move-result p1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    .line 58
    :goto_1b
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/hy;->g(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr p0, v0

    return p0
.end method

.method public static a(Lcom/google/android/libraries/places/internal/ix;)I
    .registers 2

    .line 124
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ix;->c:Lcom/google/android/libraries/places/internal/hq;

    if-eqz v0, :cond_b

    .line 125
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/ix;->c:Lcom/google/android/libraries/places/internal/hq;

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/hq;->a()I

    move-result p0

    goto :goto_17

    .line 126
    :cond_b
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/ix;->b:Lcom/google/android/libraries/places/internal/jo;

    if-eqz v0, :cond_16

    .line 127
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/ix;->b:Lcom/google/android/libraries/places/internal/jo;

    invoke-interface {p0}, Lcom/google/android/libraries/places/internal/jo;->h()I

    move-result p0

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    .line 130
    :goto_17
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/hy;->g(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method static a(Lcom/google/android/libraries/places/internal/jo;Lcom/google/android/libraries/places/internal/kd;)I
    .registers 2

    .line 141
    check-cast p0, Lcom/google/android/libraries/places/internal/hj;

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/hj;->a(Lcom/google/android/libraries/places/internal/kd;)I

    move-result p0

    .line 142
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/hy;->g(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public static a([B)Lcom/google/android/libraries/places/internal/hy;
    .registers 4

    .line 1
    array-length v0, p0

    .line 2
    new-instance v1, Lcom/google/android/libraries/places/internal/hy$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/libraries/places/internal/hy$a;-><init>([BII)V

    return-object v1
.end method

.method public static b()I
    .registers 1

    const/4 v0, 0x4

    return v0
.end method

.method public static b(ID)I
    .registers 3

    .line 40
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/hy;->e(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static b(IF)I
    .registers 2

    .line 39
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/hy;->e(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static b(ILcom/google/android/libraries/places/internal/ix;)I
    .registers 4

    const/4 v0, 0x1

    .line 71
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/hy;->e(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    const/4 v1, 0x2

    .line 72
    invoke-static {v1, p0}, Lcom/google/android/libraries/places/internal/hy;->g(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    .line 73
    invoke-static {p0, p1}, Lcom/google/android/libraries/places/internal/hy;->a(ILcom/google/android/libraries/places/internal/ix;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static b(ILcom/google/android/libraries/places/internal/jo;)I
    .registers 4

    const/4 v0, 0x1

    .line 61
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/hy;->e(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    const/4 v1, 0x2

    .line 62
    invoke-static {v1, p0}, Lcom/google/android/libraries/places/internal/hy;->g(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    .line 64
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/hy;->e(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/hy;->b(Lcom/google/android/libraries/places/internal/jo;)I

    move-result p1

    add-int/2addr p0, p1

    add-int/2addr v0, p0

    return v0
.end method

.method static b(ILcom/google/android/libraries/places/internal/jo;Lcom/google/android/libraries/places/internal/kd;)I
    .registers 3

    .line 60
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/hy;->e(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/android/libraries/places/internal/hy;->a(Lcom/google/android/libraries/places/internal/jo;Lcom/google/android/libraries/places/internal/kd;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static b(ILjava/lang/String;)I
    .registers 2

    .line 45
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/hy;->e(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/hy;->b(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static b(IZ)I
    .registers 2

    .line 41
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/hy;->e(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static b(Lcom/google/android/libraries/places/internal/hq;)I
    .registers 2

    .line 132
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/hq;->a()I

    move-result p0

    .line 133
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/hy;->g(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static b(Lcom/google/android/libraries/places/internal/jo;)I
    .registers 2

    .line 138
    invoke-interface {p0}, Lcom/google/android/libraries/places/internal/jo;->h()I

    move-result p0

    .line 139
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/hy;->g(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static b(Ljava/lang/String;)I
    .registers 2

    .line 115
    :try_start_0
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/la;->a(Ljava/lang/CharSequence;)I

    move-result v0
    :try_end_4
    .catch Lcom/google/android/libraries/places/internal/ld; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_c

    .line 118
    :catch_5
    sget-object v0, Lcom/google/android/libraries/places/internal/il;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 119
    array-length v0, p0

    .line 121
    :goto_c
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/hy;->g(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public static b([B)I
    .registers 2

    .line 135
    array-length p0, p0

    .line 136
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/hy;->g(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static c()I
    .registers 1

    const/16 v0, 0x8

    return v0
.end method

.method public static c(ILcom/google/android/libraries/places/internal/hq;)I
    .registers 3

    .line 46
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/hy;->e(I)I

    move-result p0

    .line 47
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/hq;->a()I

    move-result p1

    .line 48
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/hy;->g(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr p0, v0

    return p0
.end method

.method static c(ILcom/google/android/libraries/places/internal/jo;Lcom/google/android/libraries/places/internal/kd;)I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 149
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/hy;->e(I)I

    move-result p0

    shl-int/lit8 p0, p0, 0x1

    .line 150
    check-cast p1, Lcom/google/android/libraries/places/internal/hj;

    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/hj;->a(Lcom/google/android/libraries/places/internal/kd;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static c(Lcom/google/android/libraries/places/internal/jo;)I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 152
    invoke-interface {p0}, Lcom/google/android/libraries/places/internal/jo;->h()I

    move-result p0

    return p0
.end method

.method public static d()I
    .registers 1

    const/16 v0, 0x8

    return v0
.end method

.method public static d(IJ)I
    .registers 3

    .line 30
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/hy;->e(I)I

    move-result p0

    .line 31
    invoke-static {p1, p2}, Lcom/google/android/libraries/places/internal/hy;->e(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static d(ILcom/google/android/libraries/places/internal/hq;)I
    .registers 4

    const/4 v0, 0x1

    .line 67
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/hy;->e(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    const/4 v1, 0x2

    .line 68
    invoke-static {v1, p0}, Lcom/google/android/libraries/places/internal/hy;->g(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    .line 69
    invoke-static {p0, p1}, Lcom/google/android/libraries/places/internal/hy;->c(ILcom/google/android/libraries/places/internal/hq;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static d(J)I
    .registers 2

    .line 93
    invoke-static {p0, p1}, Lcom/google/android/libraries/places/internal/hy;->e(J)I

    move-result p0

    return p0
.end method

.method public static e()I
    .registers 1

    const/4 v0, 0x4

    return v0
.end method

.method public static e(I)I
    .registers 1

    shl-int/lit8 p0, p0, 0x3

    or-int/lit8 p0, p0, 0x0

    .line 77
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/hy;->g(I)I

    move-result p0

    return p0
.end method

.method public static e(IJ)I
    .registers 3

    .line 33
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/hy;->e(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/android/libraries/places/internal/hy;->e(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static e(J)I
    .registers 9

    const-wide/16 v0, -0x80

    and-long v2, p0, v0

    const-wide/16 v0, 0x0

    cmp-long v4, v2, v0

    if-nez v4, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    cmp-long v2, p0, v0

    if-gez v2, :cond_13

    const/16 p0, 0xa

    return p0

    :cond_13
    const-wide v2, -0x800000000L

    and-long v4, p0, v2

    cmp-long v2, v4, v0

    if-eqz v2, :cond_23

    const/4 v2, 0x6

    const/16 v3, 0x1c

    ushr-long/2addr p0, v3

    goto :goto_24

    :cond_23
    const/4 v2, 0x2

    :goto_24
    const-wide/32 v3, -0x200000

    and-long v5, p0, v3

    cmp-long v3, v5, v0

    if-eqz v3, :cond_32

    add-int/lit8 v2, v2, 0x2

    const/16 v3, 0xe

    ushr-long/2addr p0, v3

    :cond_32
    const-wide/16 v3, -0x4000

    and-long v5, p0, v3

    cmp-long p0, v5, v0

    if-eqz p0, :cond_3c

    add-int/lit8 v2, v2, 0x1

    :cond_3c
    return v2
.end method

.method public static f()I
    .registers 1

    const/16 v0, 0x8

    return v0
.end method

.method public static f(I)I
    .registers 1

    if-ltz p0, :cond_7

    .line 79
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/hy;->g(I)I

    move-result p0

    return p0

    :cond_7
    const/16 p0, 0xa

    return p0
.end method

.method public static f(II)I
    .registers 2

    .line 23
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/hy;->e(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/hy;->f(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static f(IJ)I
    .registers 3

    .line 34
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/hy;->e(I)I

    move-result p0

    .line 35
    invoke-static {p1, p2}, Lcom/google/android/libraries/places/internal/hy;->g(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/google/android/libraries/places/internal/hy;->e(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static f(J)I
    .registers 2

    .line 108
    invoke-static {p0, p1}, Lcom/google/android/libraries/places/internal/hy;->g(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/libraries/places/internal/hy;->e(J)I

    move-result p0

    return p0
.end method

.method public static g()I
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method public static g(I)I
    .registers 2

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_c

    const/4 p0, 0x2

    return p0

    :cond_c
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_13

    const/4 p0, 0x3

    return p0

    :cond_13
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_1a

    const/4 p0, 0x4

    return p0

    :cond_1a
    const/4 p0, 0x5

    return p0
.end method

.method public static g(II)I
    .registers 2

    .line 24
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/hy;->e(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/hy;->g(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static g(IJ)I
    .registers 3

    .line 37
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/hy;->e(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method private static g(J)J
    .registers 6

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long v2, v0, p0

    return-wide v2
.end method

.method public static h(I)I
    .registers 1

    .line 90
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/hy;->k(I)I

    move-result p0

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/hy;->g(I)I

    move-result p0

    return p0
.end method

.method public static h(II)I
    .registers 2

    .line 25
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/hy;->e(I)I

    move-result p0

    .line 26
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/hy;->k(I)I

    move-result p1

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/hy;->g(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static h(IJ)I
    .registers 3

    .line 38
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/hy;->e(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static i(I)I
    .registers 1

    .line 114
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/hy;->f(I)I

    move-result p0

    return p0
.end method

.method public static i(II)I
    .registers 2

    .line 28
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/hy;->e(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static j(I)I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 153
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/hy;->g(I)I

    move-result p0

    return p0
.end method

.method public static j(II)I
    .registers 2

    .line 29
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/hy;->e(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method private static k(I)I
    .registers 2

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method

.method public static k(II)I
    .registers 2

    .line 42
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/hy;->e(I)I

    move-result p0

    .line 43
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/hy;->f(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public abstract a(B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final a(D)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/places/internal/hy;->c(J)V

    return-void
.end method

.method public final a(F)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/hy;->d(I)V

    return-void
.end method

.method public abstract a(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final a(ID)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/hy;->c(IJ)V

    return-void
.end method

.method public final a(IF)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/places/internal/hy;->e(II)V

    return-void
.end method

.method public abstract a(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(ILcom/google/android/libraries/places/internal/hq;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(ILcom/google/android/libraries/places/internal/jo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract a(ILcom/google/android/libraries/places/internal/jo;Lcom/google/android/libraries/places/internal/kd;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(Lcom/google/android/libraries/places/internal/hq;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(Lcom/google/android/libraries/places/internal/jo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final a(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte p1, p1

    .line 21
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/hy;->a(B)V

    return-void
.end method

.method public abstract b(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract b(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final b(IJ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-static {p2, p3}, Lcom/google/android/libraries/places/internal/hy;->g(J)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/hy;->a(IJ)V

    return-void
.end method

.method public abstract b(ILcom/google/android/libraries/places/internal/hq;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final b(J)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    invoke-static {p1, p2}, Lcom/google/android/libraries/places/internal/hy;->g(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/places/internal/hy;->a(J)V

    return-void
.end method

.method abstract b([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final c(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/hy;->k(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/hy;->b(I)V

    return-void
.end method

.method public abstract c(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract c(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract c(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract d(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final d(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-static {p2}, Lcom/google/android/libraries/places/internal/hy;->k(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/places/internal/hy;->c(II)V

    return-void
.end method

.method public abstract e(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract h()I
.end method

.method public final i()V
    .registers 3

    .line 146
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/hy;->h()I

    move-result v0

    if-eqz v0, :cond_e

    .line 147
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    return-void
.end method
