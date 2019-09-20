.class final Lcom/google/android/libraries/places/internal/js;
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


# instance fields
.field private final a:Lcom/google/android/libraries/places/internal/jo;

.field private final b:Lcom/google/android/libraries/places/internal/kt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/kt<",
            "**>;"
        }
    .end annotation
.end field

.field private final c:Z

.field private final d:Lcom/google/android/libraries/places/internal/ib;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/ib<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/libraries/places/internal/kt;Lcom/google/android/libraries/places/internal/ib;Lcom/google/android/libraries/places/internal/jo;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/internal/kt<",
            "**>;",
            "Lcom/google/android/libraries/places/internal/ib<",
            "*>;",
            "Lcom/google/android/libraries/places/internal/jo;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/js;->b:Lcom/google/android/libraries/places/internal/kt;

    .line 3
    invoke-virtual {p2, p3}, Lcom/google/android/libraries/places/internal/ib;->a(Lcom/google/android/libraries/places/internal/jo;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/libraries/places/internal/js;->c:Z

    .line 4
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/js;->d:Lcom/google/android/libraries/places/internal/ib;

    .line 5
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/js;->a:Lcom/google/android/libraries/places/internal/jo;

    return-void
.end method

.method static a(Lcom/google/android/libraries/places/internal/kt;Lcom/google/android/libraries/places/internal/ib;Lcom/google/android/libraries/places/internal/jo;)Lcom/google/android/libraries/places/internal/js;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/libraries/places/internal/kt<",
            "**>;",
            "Lcom/google/android/libraries/places/internal/ib<",
            "*>;",
            "Lcom/google/android/libraries/places/internal/jo;",
            ")",
            "Lcom/google/android/libraries/places/internal/js<",
            "TT;>;"
        }
    .end annotation

    .line 7
    new-instance v0, Lcom/google/android/libraries/places/internal/js;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/libraries/places/internal/js;-><init>(Lcom/google/android/libraries/places/internal/kt;Lcom/google/android/libraries/places/internal/ib;Lcom/google/android/libraries/places/internal/jo;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/js;->b:Lcom/google/android/libraries/places/internal/kt;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/kt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 18
    iget-boolean v1, p0, Lcom/google/android/libraries/places/internal/js;->c:Z

    if-eqz v1, :cond_1b

    .line 19
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/js;->d:Lcom/google/android/libraries/places/internal/ib;

    invoke-virtual {v1, p1}, Lcom/google/android/libraries/places/internal/ib;->a(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/id;

    move-result-object p1

    mul-int/lit8 v0, v0, 0x35

    .line 20
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/id;->hashCode()I

    move-result p1

    add-int/2addr v0, p1

    :cond_1b
    return v0
.end method

.method public final a(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/lh;)V
    .registers 8
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

    .line 26
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/js;->d:Lcom/google/android/libraries/places/internal/ib;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/ib;->a(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/id;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/id;->b()Ljava/util/Iterator;

    move-result-object v0

    .line 28
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 30
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/places/internal/ie;

    .line 31
    invoke-interface {v2}, Lcom/google/android/libraries/places/internal/ie;->c()Lcom/google/android/libraries/places/internal/lg;

    move-result-object v3

    sget-object v4, Lcom/google/android/libraries/places/internal/lg;->i:Lcom/google/android/libraries/places/internal/lg;

    if-ne v3, v4, :cond_57

    invoke-interface {v2}, Lcom/google/android/libraries/places/internal/ie;->d()Z

    move-result v3

    if-nez v3, :cond_57

    invoke-interface {v2}, Lcom/google/android/libraries/places/internal/ie;->e()Z

    move-result v3

    if-eqz v3, :cond_31

    goto :goto_57

    .line 33
    :cond_31
    instance-of v3, v1, Lcom/google/android/libraries/places/internal/iv;

    if-eqz v3, :cond_4b

    .line 35
    invoke-interface {v2}, Lcom/google/android/libraries/places/internal/ie;->a()I

    move-result v2

    check-cast v1, Lcom/google/android/libraries/places/internal/iv;

    .line 36
    iget-object v1, v1, Lcom/google/android/libraries/places/internal/iv;->a:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/places/internal/iu;

    .line 37
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/ix;->b()Lcom/google/android/libraries/places/internal/hq;

    move-result-object v1

    .line 38
    invoke-virtual {p2, v2, v1}, Lcom/google/android/libraries/places/internal/lh;->a(ILjava/lang/Object;)V

    goto :goto_a

    .line 39
    :cond_4b
    invoke-interface {v2}, Lcom/google/android/libraries/places/internal/ie;->a()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v2, v1}, Lcom/google/android/libraries/places/internal/lh;->a(ILjava/lang/Object;)V

    goto :goto_a

    .line 32
    :cond_57
    :goto_57
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Found invalid MessageSet item."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 41
    :cond_5f
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/js;->b:Lcom/google/android/libraries/places/internal/kt;

    .line 42
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/kt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/kt;->b(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/lh;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/js;->b:Lcom/google/android/libraries/places/internal/kt;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/kt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/js;->b:Lcom/google/android/libraries/places/internal/kt;

    invoke-virtual {v1, p2}, Lcom/google/android/libraries/places/internal/kt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 p1, 0x0

    return p1

    .line 12
    :cond_14
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/js;->c:Z

    if-eqz v0, :cond_29

    .line 13
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/js;->d:Lcom/google/android/libraries/places/internal/ib;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/ib;->a(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/id;

    move-result-object p1

    .line 14
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/js;->d:Lcom/google/android/libraries/places/internal/ib;

    invoke-virtual {v0, p2}, Lcom/google/android/libraries/places/internal/ib;->a(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/id;

    move-result-object p2

    .line 15
    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/id;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_29
    const/4 p1, 0x1

    return p1
.end method

.method public final b(Ljava/lang/Object;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/js;->b:Lcom/google/android/libraries/places/internal/kt;

    .line 50
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/kt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/kt;->c(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v0, v1

    .line 53
    iget-boolean v2, p0, Lcom/google/android/libraries/places/internal/js;->c:Z

    if-eqz v2, :cond_4a

    .line 54
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/js;->d:Lcom/google/android/libraries/places/internal/ib;

    invoke-virtual {v2, p1}, Lcom/google/android/libraries/places/internal/ib;->a(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/id;

    move-result-object p1

    const/4 v2, 0x0

    .line 56
    :goto_17
    iget-object v3, p1, Lcom/google/android/libraries/places/internal/id;->a:Lcom/google/android/libraries/places/internal/kg;

    invoke-virtual {v3}, Lcom/google/android/libraries/places/internal/kg;->b()I

    move-result v3

    if-ge v1, v3, :cond_2d

    .line 57
    iget-object v3, p1, Lcom/google/android/libraries/places/internal/id;->a:Lcom/google/android/libraries/places/internal/kg;

    invoke-virtual {v3, v1}, Lcom/google/android/libraries/places/internal/kg;->b(I)Ljava/util/Map$Entry;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/libraries/places/internal/id;->b(Ljava/util/Map$Entry;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 59
    :cond_2d
    iget-object p1, p1, Lcom/google/android/libraries/places/internal/id;->a:Lcom/google/android/libraries/places/internal/kg;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/kg;->c()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_37
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 60
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/id;->b(Ljava/util/Map$Entry;)I

    move-result v1

    add-int/2addr v2, v1

    goto :goto_37

    :cond_49
    add-int/2addr v0, v2

    :cond_4a
    return v0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/js;->b:Lcom/google/android/libraries/places/internal/kt;

    invoke-static {v0, p1, p2}, Lcom/google/android/libraries/places/internal/kf;->a(Lcom/google/android/libraries/places/internal/kt;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    iget-boolean v0, p0, Lcom/google/android/libraries/places/internal/js;->c:Z

    if-eqz v0, :cond_e

    .line 24
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/js;->d:Lcom/google/android/libraries/places/internal/ib;

    invoke-static {v0, p1, p2}, Lcom/google/android/libraries/places/internal/kf;->a(Lcom/google/android/libraries/places/internal/ib;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_e
    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/js;->b:Lcom/google/android/libraries/places/internal/kt;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/kt;->b(Ljava/lang/Object;)V

    .line 45
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/js;->d:Lcom/google/android/libraries/places/internal/ib;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/ib;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public final d(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/js;->d:Lcom/google/android/libraries/places/internal/ib;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/ib;->a(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/id;

    move-result-object p1

    .line 48
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/id;->c()Z

    move-result p1

    return p1
.end method
