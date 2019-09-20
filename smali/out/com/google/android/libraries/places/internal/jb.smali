.class final Lcom/google/android/libraries/places/internal/jb;
.super Lcom/google/android/libraries/places/internal/ja;
.source "PG"


# static fields
.field private static final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 49
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/jb;->c:Ljava/lang/Class;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/ja;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Object;JI)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "JI)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    .line 16
    invoke-static {p0, p1, p2}, Lcom/google/android/libraries/places/internal/jb;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 18
    instance-of v1, v0, Lcom/google/android/libraries/places/internal/iz;

    if-eqz v1, :cond_14

    .line 19
    new-instance v0, Lcom/google/android/libraries/places/internal/iy;

    invoke-direct {v0, p3}, Lcom/google/android/libraries/places/internal/iy;-><init>(I)V

    goto :goto_29

    .line 20
    :cond_14
    instance-of v1, v0, Lcom/google/android/libraries/places/internal/jy;

    if-eqz v1, :cond_24

    instance-of v1, v0, Lcom/google/android/libraries/places/internal/iq;

    if-eqz v1, :cond_24

    .line 21
    check-cast v0, Lcom/google/android/libraries/places/internal/iq;

    invoke-interface {v0, p3}, Lcom/google/android/libraries/places/internal/iq;->b(I)Lcom/google/android/libraries/places/internal/iq;

    move-result-object p3

    move-object v0, p3

    goto :goto_29

    .line 22
    :cond_24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    :goto_29
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7f

    .line 24
    :cond_2d
    sget-object v1, Lcom/google/android/libraries/places/internal/jb;->c:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 26
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 28
    invoke-static {p0, p1, p2, v1}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_49
    move-object v0, v1

    goto :goto_7f

    .line 29
    :cond_4b
    instance-of v1, v0, Lcom/google/android/libraries/places/internal/kv;

    if-eqz v1, :cond_62

    .line 30
    new-instance v1, Lcom/google/android/libraries/places/internal/iy;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p3

    invoke-direct {v1, v2}, Lcom/google/android/libraries/places/internal/iy;-><init>(I)V

    .line 31
    check-cast v0, Lcom/google/android/libraries/places/internal/kv;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/hm;->addAll(Ljava/util/Collection;)Z

    .line 33
    invoke-static {p0, p1, p2, v1}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_49

    .line 34
    :cond_62
    instance-of v1, v0, Lcom/google/android/libraries/places/internal/jy;

    if-eqz v1, :cond_7f

    instance-of v1, v0, Lcom/google/android/libraries/places/internal/iq;

    if-eqz v1, :cond_7f

    move-object v1, v0

    check-cast v1, Lcom/google/android/libraries/places/internal/iq;

    .line 35
    invoke-interface {v1}, Lcom/google/android/libraries/places/internal/iq;->a()Z

    move-result v2

    if-nez v2, :cond_7f

    .line 36
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p3

    invoke-interface {v1, v0}, Lcom/google/android/libraries/places/internal/iq;->b(I)Lcom/google/android/libraries/places/internal/iq;

    move-result-object v0

    .line 37
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_7f
    :goto_7f
    return-object v0
.end method

.method private static b(Ljava/lang/Object;J)Ljava/util/List;
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

    .line 48
    invoke-static {p0, p1, p2}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method final a(Ljava/lang/Object;J)V
    .registers 7

    .line 4
    invoke-static {p1, p2, p3}, Lcom/google/android/libraries/places/internal/ky;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 5
    instance-of v1, v0, Lcom/google/android/libraries/places/internal/iz;

    if-eqz v1, :cond_11

    .line 6
    check-cast v0, Lcom/google/android/libraries/places/internal/iz;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/iz;->e()Lcom/google/android/libraries/places/internal/iz;

    move-result-object v0

    goto :goto_36

    .line 7
    :cond_11
    sget-object v1, Lcom/google/android/libraries/places/internal/jb;->c:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1e

    return-void

    .line 9
    :cond_1e
    instance-of v1, v0, Lcom/google/android/libraries/places/internal/jy;

    if-eqz v1, :cond_32

    instance-of v1, v0, Lcom/google/android/libraries/places/internal/iq;

    if-eqz v1, :cond_32

    .line 10
    check-cast v0, Lcom/google/android/libraries/places/internal/iq;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/iq;->a()Z

    move-result p1

    if-eqz p1, :cond_31

    .line 11
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/iq;->b()V

    :cond_31
    return-void

    .line 13
    :cond_32
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 14
    :goto_36
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method final a(Ljava/lang/Object;Ljava/lang/Object;J)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation

    .line 39
    invoke-static {p2, p3, p4}, Lcom/google/android/libraries/places/internal/jb;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object p2

    .line 40
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, p3, p4, v0}, Lcom/google/android/libraries/places/internal/jb;->a(Ljava/lang/Object;JI)Ljava/util/List;

    move-result-object v0

    .line 41
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 42
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v1, :cond_1b

    if-lez v2, :cond_1b

    .line 44
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1b
    if-lez v1, :cond_1e

    move-object p2, v0

    .line 46
    :cond_1e
    invoke-static {p1, p3, p4, p2}, Lcom/google/android/libraries/places/internal/ky;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method
