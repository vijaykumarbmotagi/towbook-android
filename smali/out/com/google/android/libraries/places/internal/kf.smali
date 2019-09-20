.class final Lcom/google/android/libraries/places/internal/kf;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lcom/google/android/libraries/places/internal/kt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/kt<",
            "**>;"
        }
    .end annotation
.end field

.field public static final b:Lcom/google/android/libraries/places/internal/kt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/kt<",
            "**>;"
        }
    .end annotation
.end field

.field public static final c:Lcom/google/android/libraries/places/internal/kt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/kt<",
            "**>;"
        }
    .end annotation
.end field

.field private static final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 293
    invoke-static {}, Lcom/google/android/libraries/places/internal/kf;->a()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/kf;->d:Ljava/lang/Class;

    const/4 v0, 0x0

    .line 295
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/kf;->a(Z)Lcom/google/android/libraries/places/internal/kt;

    move-result-object v1

    sput-object v1, Lcom/google/android/libraries/places/internal/kf;->a:Lcom/google/android/libraries/places/internal/kt;

    const/4 v1, 0x1

    .line 297
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/kf;->a(Z)Lcom/google/android/libraries/places/internal/kt;

    move-result-object v1

    sput-object v1, Lcom/google/android/libraries/places/internal/kf;->b:Lcom/google/android/libraries/places/internal/kt;

    .line 298
    new-instance v1, Lcom/google/android/libraries/places/internal/kt;

    invoke-direct {v1, v0}, Lcom/google/android/libraries/places/internal/kt;-><init>(B)V

    sput-object v1, Lcom/google/android/libraries/places/internal/kf;->c:Lcom/google/android/libraries/places/internal/kt;

    return-void
.end method

.method static a(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/kd;)I
    .registers 4

    .line 227
    instance-of v0, p1, Lcom/google/android/libraries/places/internal/ix;

    if-eqz v0, :cond_b

    .line 228
    check-cast p1, Lcom/google/android/libraries/places/internal/ix;

    invoke-static {p0, p1}, Lcom/google/android/libraries/places/internal/hy;->a(ILcom/google/android/libraries/places/internal/ix;)I

    move-result p0

    return p0

    .line 229
    :cond_b
    check-cast p1, Lcom/google/android/libraries/places/internal/jo;

    invoke-static {p0, p1, p2}, Lcom/google/android/libraries/places/internal/hy;->b(ILcom/google/android/libraries/places/internal/jo;Lcom/google/android/libraries/places/internal/kd;)I

    move-result p0

    return p0
.end method

.method static a(ILjava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 207
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 210
    :cond_8
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/hy;->e(I)I

    move-result p0

    mul-int p0, p0, v0

    .line 211
    instance-of v2, p1, Lcom/google/android/libraries/places/internal/iz;

    if-eqz v2, :cond_30

    .line 212
    check-cast p1, Lcom/google/android/libraries/places/internal/iz;

    :goto_14
    if-ge v1, v0, :cond_4c

    .line 214
    invoke-interface {p1, v1}, Lcom/google/android/libraries/places/internal/iz;->a(I)Ljava/lang/Object;

    move-result-object v2

    .line 215
    instance-of v3, v2, Lcom/google/android/libraries/places/internal/hq;

    if-eqz v3, :cond_26

    .line 216
    check-cast v2, Lcom/google/android/libraries/places/internal/hq;

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/hy;->b(Lcom/google/android/libraries/places/internal/hq;)I

    move-result v2

    add-int/2addr p0, v2

    goto :goto_2d

    .line 217
    :cond_26
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/hy;->b(Ljava/lang/String;)I

    move-result v2

    add-int/2addr p0, v2

    :goto_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_30
    :goto_30
    if-ge v1, v0, :cond_4c

    .line 221
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 222
    instance-of v3, v2, Lcom/google/android/libraries/places/internal/hq;

    if-eqz v3, :cond_42

    .line 223
    check-cast v2, Lcom/google/android/libraries/places/internal/hq;

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/hy;->b(Lcom/google/android/libraries/places/internal/hq;)I

    move-result v2

    add-int/2addr p0, v2

    goto :goto_49

    .line 224
    :cond_42
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/hy;->b(Ljava/lang/String;)I

    move-result v2

    add-int/2addr p0, v2

    :goto_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    :cond_4c
    return p0
.end method

.method static a(ILjava/util/List;Lcom/google/android/libraries/places/internal/kd;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/google/android/libraries/places/internal/kd;",
            ")I"
        }
    .end annotation

    .line 230
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 233
    :cond_8
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/hy;->e(I)I

    move-result p0

    mul-int p0, p0, v0

    :goto_e
    if-ge v1, v0, :cond_2a

    .line 235
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 236
    instance-of v3, v2, Lcom/google/android/libraries/places/internal/ix;

    if-eqz v3, :cond_20

    .line 237
    check-cast v2, Lcom/google/android/libraries/places/internal/ix;

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/hy;->a(Lcom/google/android/libraries/places/internal/ix;)I

    move-result v2

    add-int/2addr p0, v2

    goto :goto_27

    .line 238
    :cond_20
    check-cast v2, Lcom/google/android/libraries/places/internal/jo;

    invoke-static {v2, p2}, Lcom/google/android/libraries/places/internal/hy;->a(Lcom/google/android/libraries/places/internal/jo;Lcom/google/android/libraries/places/internal/kd;)I

    move-result v2

    add-int/2addr p0, v2

    :goto_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_2a
    return p0
.end method

.method static a(ILjava/util/List;Z)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)I"
        }
    .end annotation

    .line 73
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_8

    const/4 p0, 0x0

    return p0

    .line 76
    :cond_8
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/kf;->a(Ljava/util/List;)I

    move-result p2

    .line 77
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/hy;->e(I)I

    move-result p0

    mul-int p1, p1, p0

    add-int/2addr p2, p1

    return p2
.end method

.method static a(Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .line 59
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 63
    :cond_8
    instance-of v2, p0, Lcom/google/android/libraries/places/internal/jd;

    if-eqz v2, :cond_1d

    .line 64
    check-cast p0, Lcom/google/android/libraries/places/internal/jd;

    const/4 v2, 0x0

    :goto_f
    if-ge v1, v0, :cond_32

    .line 66
    invoke-virtual {p0, v1}, Lcom/google/android/libraries/places/internal/jd;->a(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/hy;->d(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    if-ge v1, v0, :cond_32

    .line 70
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/hy;->d(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_32
    return v2
.end method

.method private static a(Z)Lcom/google/android/libraries/places/internal/kt;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/libraries/places/internal/kt<",
            "**>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 257
    :try_start_1
    invoke-static {}, Lcom/google/android/libraries/places/internal/kf;->b()Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_8

    return-object v0

    :cond_8
    const/4 v2, 0x1

    .line 260
    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/internal/kt;
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_22} :catch_23

    return-object p0

    :catch_23
    return-object v0
.end method

.method private static a()Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.google.protobuf.GeneratedMessage"

    .line 263
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public static a(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/libraries/places/internal/lh;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 47
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 48
    invoke-virtual {p2, p0, p1}, Lcom/google/android/libraries/places/internal/lh;->a(ILjava/util/List;)V

    :cond_b
    return-void
.end method

.method public static a(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Lcom/google/android/libraries/places/internal/kd;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/google/android/libraries/places/internal/lh;",
            "Lcom/google/android/libraries/places/internal/kd;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 53
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 54
    invoke-virtual {p2, p0, p1, p3}, Lcom/google/android/libraries/places/internal/lh;->a(ILjava/util/List;Lcom/google/android/libraries/places/internal/kd;)V

    :cond_b
    return-void
.end method

.method public static a(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;",
            "Lcom/google/android/libraries/places/internal/lh;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 6
    invoke-virtual {p2, p0, p1, p3}, Lcom/google/android/libraries/places/internal/lh;->g(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method static a(Lcom/google/android/libraries/places/internal/ib;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "FT::",
            "Lcom/google/android/libraries/places/internal/ie<",
            "TFT;>;>(",
            "Lcom/google/android/libraries/places/internal/ib<",
            "TFT;>;TT;TT;)V"
        }
    .end annotation

    .line 275
    invoke-virtual {p0, p2}, Lcom/google/android/libraries/places/internal/ib;->a(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/id;

    move-result-object p2

    .line 277
    iget-object v0, p2, Lcom/google/android/libraries/places/internal/id;->a:Lcom/google/android/libraries/places/internal/kg;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/kg;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 279
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/ib;->b(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/id;

    move-result-object p0

    const/4 p1, 0x0

    .line 281
    :goto_11
    iget-object v0, p2, Lcom/google/android/libraries/places/internal/id;->a:Lcom/google/android/libraries/places/internal/kg;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/kg;->b()I

    move-result v0

    if-ge p1, v0, :cond_25

    .line 282
    iget-object v0, p2, Lcom/google/android/libraries/places/internal/id;->a:Lcom/google/android/libraries/places/internal/kg;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/kg;->b(I)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/internal/id;->a(Ljava/util/Map$Entry;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_11

    .line 284
    :cond_25
    iget-object p1, p2, Lcom/google/android/libraries/places/internal/id;->a:Lcom/google/android/libraries/places/internal/kg;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/kg;->c()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 285
    invoke-virtual {p0, p2}, Lcom/google/android/libraries/places/internal/id;->a(Ljava/util/Map$Entry;)V

    goto :goto_2f

    :cond_3f
    return-void
.end method

.method static a(Lcom/google/android/libraries/places/internal/jk;Ljava/lang/Object;Ljava/lang/Object;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/libraries/places/internal/jk;",
            "TT;TT;J)V"
        }
    .end annotation

    .line 271
    invoke-static {p1, p3, p4}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, p3, p4}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 272
    invoke-virtual {p0, v0, p2}, Lcom/google/android/libraries/places/internal/jk;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 273
    invoke-static {p1, p3, p4, p0}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method static a(Lcom/google/android/libraries/places/internal/kt;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/libraries/places/internal/kt<",
            "TUT;TUB;>;TT;TT;)V"
        }
    .end annotation

    .line 288
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/kt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 289
    invoke-virtual {p0, p2}, Lcom/google/android/libraries/places/internal/kt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 290
    invoke-virtual {p0, v0, p2}, Lcom/google/android/libraries/places/internal/kt;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 291
    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/places/internal/kt;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/google/android/libraries/places/internal/ij;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1c

    sget-object v0, Lcom/google/android/libraries/places/internal/kf;->d:Ljava/lang/Class;

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/google/android/libraries/places/internal/kf;->d:Ljava/lang/Class;

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-nez p0, :cond_1c

    .line 3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Message classes must extend GeneratedMessage or GeneratedMessageLite"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1c
    return-void
.end method

.method static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2

    if-eq p0, p1, :cond_d

    if-eqz p0, :cond_b

    .line 269
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method static b(ILjava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/internal/hq;",
            ">;)I"
        }
    .end annotation

    .line 241
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 244
    :cond_8
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/hy;->e(I)I

    move-result p0

    mul-int v0, v0, p0

    .line 245
    :goto_e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v1, p0, :cond_22

    .line 246
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/libraries/places/internal/hq;

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/hy;->b(Lcom/google/android/libraries/places/internal/hq;)I

    move-result p0

    add-int/2addr v0, p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_22
    return v0
.end method

.method static b(ILjava/util/List;Lcom/google/android/libraries/places/internal/kd;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/internal/jo;",
            ">;",
            "Lcom/google/android/libraries/places/internal/kd;",
            ")I"
        }
    .end annotation

    .line 249
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const/4 v2, 0x0

    :goto_9
    if-ge v1, v0, :cond_19

    .line 254
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/libraries/places/internal/jo;

    invoke-static {p0, v3, p2}, Lcom/google/android/libraries/places/internal/hy;->c(ILcom/google/android/libraries/places/internal/jo;Lcom/google/android/libraries/places/internal/kd;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_19
    return v2
.end method

.method static b(ILjava/util/List;Z)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)I"
        }
    .end annotation

    .line 92
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_8

    const/4 p0, 0x0

    return p0

    .line 95
    :cond_8
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/kf;->b(Ljava/util/List;)I

    move-result p1

    .line 96
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/hy;->e(I)I

    move-result p0

    mul-int p2, p2, p0

    add-int/2addr p1, p2

    return p1
.end method

.method static b(Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .line 78
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 82
    :cond_8
    instance-of v2, p0, Lcom/google/android/libraries/places/internal/jd;

    if-eqz v2, :cond_1d

    .line 83
    check-cast p0, Lcom/google/android/libraries/places/internal/jd;

    const/4 v2, 0x0

    :goto_f
    if-ge v1, v0, :cond_32

    .line 85
    invoke-virtual {p0, v1}, Lcom/google/android/libraries/places/internal/jd;->a(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/hy;->e(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    if-ge v1, v0, :cond_32

    .line 89
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/hy;->e(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_32
    return v2
.end method

.method private static b()Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    const-string v0, "com.google.protobuf.UnknownFieldSetSchema"

    .line 266
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public static b(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/internal/hq;",
            ">;",
            "Lcom/google/android/libraries/places/internal/lh;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 50
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 51
    invoke-virtual {p2, p0, p1}, Lcom/google/android/libraries/places/internal/lh;->b(ILjava/util/List;)V

    :cond_b
    return-void
.end method

.method public static b(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Lcom/google/android/libraries/places/internal/kd;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/google/android/libraries/places/internal/lh;",
            "Lcom/google/android/libraries/places/internal/kd;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 56
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 57
    invoke-virtual {p2, p0, p1, p3}, Lcom/google/android/libraries/places/internal/lh;->b(ILjava/util/List;Lcom/google/android/libraries/places/internal/kd;)V

    :cond_b
    return-void
.end method

.method public static b(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/google/android/libraries/places/internal/lh;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 8
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 9
    invoke-virtual {p2, p0, p1, p3}, Lcom/google/android/libraries/places/internal/lh;->f(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method static c(ILjava/util/List;Z)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)I"
        }
    .end annotation

    .line 111
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_8

    const/4 p0, 0x0

    return p0

    .line 114
    :cond_8
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/kf;->c(Ljava/util/List;)I

    move-result p1

    .line 115
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/hy;->e(I)I

    move-result p0

    mul-int p2, p2, p0

    add-int/2addr p1, p2

    return p1
.end method

.method static c(Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .line 97
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 101
    :cond_8
    instance-of v2, p0, Lcom/google/android/libraries/places/internal/jd;

    if-eqz v2, :cond_1d

    .line 102
    check-cast p0, Lcom/google/android/libraries/places/internal/jd;

    const/4 v2, 0x0

    :goto_f
    if-ge v1, v0, :cond_32

    .line 104
    invoke-virtual {p0, v1}, Lcom/google/android/libraries/places/internal/jd;->a(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/hy;->f(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    if-ge v1, v0, :cond_32

    .line 108
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/hy;->f(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_32
    return v2
.end method

.method public static c(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/libraries/places/internal/lh;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 11
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 12
    invoke-virtual {p2, p0, p1, p3}, Lcom/google/android/libraries/places/internal/lh;->c(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method static d(ILjava/util/List;Z)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    .line 130
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_8

    const/4 p0, 0x0

    return p0

    .line 133
    :cond_8
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/kf;->d(Ljava/util/List;)I

    move-result p1

    .line 134
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/hy;->e(I)I

    move-result p0

    mul-int p2, p2, p0

    add-int/2addr p1, p2

    return p1
.end method

.method static d(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 116
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 120
    :cond_8
    instance-of v2, p0, Lcom/google/android/libraries/places/internal/ik;

    if-eqz v2, :cond_1d

    .line 121
    check-cast p0, Lcom/google/android/libraries/places/internal/ik;

    const/4 v2, 0x0

    :goto_f
    if-ge v1, v0, :cond_32

    .line 123
    invoke-virtual {p0, v1}, Lcom/google/android/libraries/places/internal/ik;->a(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/libraries/places/internal/hy;->i(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    if-ge v1, v0, :cond_32

    .line 127
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/libraries/places/internal/hy;->i(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_32
    return v2
.end method

.method public static d(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/libraries/places/internal/lh;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 14
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 15
    invoke-virtual {p2, p0, p1, p3}, Lcom/google/android/libraries/places/internal/lh;->d(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method static e(ILjava/util/List;Z)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    .line 149
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_8

    const/4 p0, 0x0

    return p0

    .line 152
    :cond_8
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/kf;->e(Ljava/util/List;)I

    move-result p1

    .line 153
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/hy;->e(I)I

    move-result p0

    mul-int p2, p2, p0

    add-int/2addr p1, p2

    return p1
.end method

.method static e(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 135
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 139
    :cond_8
    instance-of v2, p0, Lcom/google/android/libraries/places/internal/ik;

    if-eqz v2, :cond_1d

    .line 140
    check-cast p0, Lcom/google/android/libraries/places/internal/ik;

    const/4 v2, 0x0

    :goto_f
    if-ge v1, v0, :cond_32

    .line 142
    invoke-virtual {p0, v1}, Lcom/google/android/libraries/places/internal/ik;->a(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/libraries/places/internal/hy;->f(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    if-ge v1, v0, :cond_32

    .line 146
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/libraries/places/internal/hy;->f(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_32
    return v2
.end method

.method public static e(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/libraries/places/internal/lh;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 17
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 18
    invoke-virtual {p2, p0, p1, p3}, Lcom/google/android/libraries/places/internal/lh;->n(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method static f(ILjava/util/List;Z)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    .line 168
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_8

    const/4 p0, 0x0

    return p0

    .line 171
    :cond_8
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/kf;->f(Ljava/util/List;)I

    move-result p1

    .line 172
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/hy;->e(I)I

    move-result p0

    mul-int p2, p2, p0

    add-int/2addr p1, p2

    return p1
.end method

.method static f(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 154
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 158
    :cond_8
    instance-of v2, p0, Lcom/google/android/libraries/places/internal/ik;

    if-eqz v2, :cond_1d

    .line 159
    check-cast p0, Lcom/google/android/libraries/places/internal/ik;

    const/4 v2, 0x0

    :goto_f
    if-ge v1, v0, :cond_32

    .line 161
    invoke-virtual {p0, v1}, Lcom/google/android/libraries/places/internal/ik;->a(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/libraries/places/internal/hy;->g(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    if-ge v1, v0, :cond_32

    .line 165
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/libraries/places/internal/hy;->g(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_32
    return v2
.end method

.method public static f(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/libraries/places/internal/lh;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 20
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 21
    invoke-virtual {p2, p0, p1, p3}, Lcom/google/android/libraries/places/internal/lh;->e(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method static g(ILjava/util/List;Z)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    .line 187
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_8

    const/4 p0, 0x0

    return p0

    .line 190
    :cond_8
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/kf;->g(Ljava/util/List;)I

    move-result p1

    .line 191
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/hy;->e(I)I

    move-result p0

    mul-int p2, p2, p0

    add-int/2addr p1, p2

    return p1
.end method

.method static g(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 173
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 177
    :cond_8
    instance-of v2, p0, Lcom/google/android/libraries/places/internal/ik;

    if-eqz v2, :cond_1d

    .line 178
    check-cast p0, Lcom/google/android/libraries/places/internal/ik;

    const/4 v2, 0x0

    :goto_f
    if-ge v1, v0, :cond_32

    .line 180
    invoke-virtual {p0, v1}, Lcom/google/android/libraries/places/internal/ik;->a(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/libraries/places/internal/hy;->h(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    if-ge v1, v0, :cond_32

    .line 184
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/libraries/places/internal/hy;->h(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_32
    return v2
.end method

.method public static g(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/libraries/places/internal/lh;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 23
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 24
    invoke-virtual {p2, p0, p1, p3}, Lcom/google/android/libraries/places/internal/lh;->l(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method static h(ILjava/util/List;Z)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;Z)I"
        }
    .end annotation

    .line 193
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_8

    return p2

    .line 196
    :cond_8
    invoke-static {p0, p2}, Lcom/google/android/libraries/places/internal/hy;->i(II)I

    move-result p0

    mul-int p1, p1, p0

    return p1
.end method

.method static h(Ljava/util/List;)I
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 192
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    shl-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public static h(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/libraries/places/internal/lh;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 26
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 27
    invoke-virtual {p2, p0, p1, p3}, Lcom/google/android/libraries/places/internal/lh;->a(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method static i(ILjava/util/List;Z)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;Z)I"
        }
    .end annotation

    .line 198
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    const-wide/16 v0, 0x0

    .line 201
    invoke-static {p0, v0, v1}, Lcom/google/android/libraries/places/internal/hy;->g(IJ)I

    move-result p0

    mul-int p1, p1, p0

    return p1
.end method

.method static i(Ljava/util/List;)I
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 197
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    shl-int/lit8 p0, p0, 0x3

    return p0
.end method

.method public static i(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/libraries/places/internal/lh;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 29
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 30
    invoke-virtual {p2, p0, p1, p3}, Lcom/google/android/libraries/places/internal/lh;->j(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method static j(ILjava/util/List;Z)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;Z)I"
        }
    .end annotation

    .line 203
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    const/4 p2, 0x1

    .line 206
    invoke-static {p0, p2}, Lcom/google/android/libraries/places/internal/hy;->b(IZ)I

    move-result p0

    mul-int p1, p1, p0

    return p1
.end method

.method static j(Ljava/util/List;)I
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 202
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public static j(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/libraries/places/internal/lh;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 32
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 33
    invoke-virtual {p2, p0, p1, p3}, Lcom/google/android/libraries/places/internal/lh;->m(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method public static k(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/libraries/places/internal/lh;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 35
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 36
    invoke-virtual {p2, p0, p1, p3}, Lcom/google/android/libraries/places/internal/lh;->b(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method public static l(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/libraries/places/internal/lh;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 38
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 39
    invoke-virtual {p2, p0, p1, p3}, Lcom/google/android/libraries/places/internal/lh;->k(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method public static m(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/libraries/places/internal/lh;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 41
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 42
    invoke-virtual {p2, p0, p1, p3}, Lcom/google/android/libraries/places/internal/lh;->h(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method

.method public static n(ILjava/util/List;Lcom/google/android/libraries/places/internal/lh;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/google/android/libraries/places/internal/lh;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 44
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 45
    invoke-virtual {p2, p0, p1, p3}, Lcom/google/android/libraries/places/internal/lh;->i(ILjava/util/List;Z)V

    :cond_b
    return-void
.end method
