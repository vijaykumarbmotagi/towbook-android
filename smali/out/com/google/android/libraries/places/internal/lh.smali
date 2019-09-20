.class Lcom/google/android/libraries/places/internal/lh;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lcom/google/android/libraries/places/internal/hy;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/places/internal/hy;)V
    .registers 3

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "output"

    .line 308
    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/il;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/hy;

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    .line 309
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    iput-object p0, p1, Lcom/google/android/libraries/places/internal/hy;->c:Lcom/google/android/libraries/places/internal/lh;

    return-void
.end method

.method public static a(Lcom/google/android/libraries/places/internal/hy;)Lcom/google/android/libraries/places/internal/lh;
    .registers 2

    .line 304
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/hy;->c:Lcom/google/android/libraries/places/internal/lh;

    if-eqz v0, :cond_7

    .line 305
    iget-object p0, p0, Lcom/google/android/libraries/places/internal/hy;->c:Lcom/google/android/libraries/places/internal/lh;

    return-object p0

    .line 306
    :cond_7
    new-instance v0, Lcom/google/android/libraries/places/internal/lh;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/internal/lh;-><init>(Lcom/google/android/libraries/places/internal/hy;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/android/libraries/places/internal/li;
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/li;->a:Lcom/google/android/libraries/places/internal/li;

    return-object v0
.end method

.method public a(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/google/android/libraries/places/internal/hy;->a(II)V

    return-void
.end method

.method public a(ID)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/hy;->a(ID)V

    return-void
.end method

.method public a(IF)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/hy;->a(IF)V

    return-void
.end method

.method public a(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/hy;->e(II)V

    return-void
.end method

.method public a(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    .line 6
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/hy;->a(IJ)V

    return-void
.end method

.method public a(ILcom/google/android/libraries/places/internal/hq;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/hy;->a(ILcom/google/android/libraries/places/internal/hq;)V

    return-void
.end method

.method public a(ILcom/google/android/libraries/places/internal/ji;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/google/android/libraries/places/internal/ji<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    .line 296
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_a
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 297
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2}, Lcom/google/android/libraries/places/internal/hy;->a(II)V

    .line 298
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    .line 299
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v2, v3}, Lcom/google/android/libraries/places/internal/jh;->a(Lcom/google/android/libraries/places/internal/ji;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 300
    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/hy;->b(I)V

    .line 301
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, p2, v2, v0}, Lcom/google/android/libraries/places/internal/jh;->a(Lcom/google/android/libraries/places/internal/hy;Lcom/google/android/libraries/places/internal/ji;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_a

    :cond_3b
    return-void
.end method

.method public a(ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 290
    instance-of v0, p2, Lcom/google/android/libraries/places/internal/hq;

    if-eqz v0, :cond_c

    .line 291
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    check-cast p2, Lcom/google/android/libraries/places/internal/hq;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/hy;->b(ILcom/google/android/libraries/places/internal/hq;)V

    return-void

    .line 292
    :cond_c
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    check-cast p2, Lcom/google/android/libraries/places/internal/jo;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/hy;->a(ILcom/google/android/libraries/places/internal/jo;)V

    return-void
.end method

.method public a(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/kd;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    check-cast p2, Lcom/google/android/libraries/places/internal/jo;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/hy;->a(ILcom/google/android/libraries/places/internal/jo;Lcom/google/android/libraries/places/internal/kd;)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/hy;->a(ILjava/lang/String;)V

    return-void
.end method

.method public a(ILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    instance-of v0, p2, Lcom/google/android/libraries/places/internal/iz;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 190
    move-object v0, p2

    check-cast v0, Lcom/google/android/libraries/places/internal/iz;

    .line 191
    :goto_8
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_18

    .line 192
    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/iz;->a(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/google/android/libraries/places/internal/lh;->b(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_18
    return-void

    .line 195
    :cond_19
    :goto_19
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2d

    .line 196
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Lcom/google/android/libraries/places/internal/hy;->a(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_2d
    return-void
.end method

.method public a(ILjava/util/List;Lcom/google/android/libraries/places/internal/kd;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/google/android/libraries/places/internal/kd;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 282
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 283
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Lcom/google/android/libraries/places/internal/lh;->a(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/kd;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    return-void
.end method

.method public a(ILjava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_41

    .line 51
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/hy;->a(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 53
    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_23

    .line 54
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/hy;->f(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 56
    :cond_23
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/hy;->b(I)V

    .line 57
    :goto_28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_40

    .line 58
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/hy;->a(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_40
    return-void

    .line 61
    :cond_41
    :goto_41
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_59

    .line 62
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/hy;->b(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_59
    return-void
.end method

.method public a(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/hy;->a(IZ)V

    return-void
.end method

.method public b(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/google/android/libraries/places/internal/hy;->a(II)V

    return-void
.end method

.method public b(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    .line 16
    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/hy;->b(II)V

    return-void
.end method

.method public b(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    .line 9
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/hy;->c(IJ)V

    return-void
.end method

.method b(ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 312
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/hy;->a(ILjava/lang/String;)V

    return-void

    .line 313
    :cond_c
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    check-cast p2, Lcom/google/android/libraries/places/internal/hq;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/hy;->a(ILcom/google/android/libraries/places/internal/hq;)V

    return-void
.end method

.method public b(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/kd;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    check-cast p2, Lcom/google/android/libraries/places/internal/jo;

    const/4 v1, 0x3

    .line 41
    invoke-virtual {v0, p1, v1}, Lcom/google/android/libraries/places/internal/hy;->a(II)V

    .line 43
    iget-object v1, v0, Lcom/google/android/libraries/places/internal/hy;->c:Lcom/google/android/libraries/places/internal/lh;

    invoke-interface {p3, p2, v1}, Lcom/google/android/libraries/places/internal/kd;->a(Ljava/lang/Object;Lcom/google/android/libraries/places/internal/lh;)V

    const/4 p2, 0x4

    .line 44
    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/hy;->a(II)V

    return-void
.end method

.method public b(ILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/internal/hq;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 199
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 200
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/places/internal/hq;

    invoke-virtual {v1, p1, v2}, Lcom/google/android/libraries/places/internal/hy;->a(ILcom/google/android/libraries/places/internal/hq;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    return-void
.end method

.method public b(ILjava/util/List;Lcom/google/android/libraries/places/internal/kd;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;",
            "Lcom/google/android/libraries/places/internal/kd;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 286
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 287
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p3}, Lcom/google/android/libraries/places/internal/lh;->b(ILjava/lang/Object;Lcom/google/android/libraries/places/internal/kd;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    return-void
.end method

.method public b(ILjava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_40

    .line 66
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/hy;->a(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 68
    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_22

    .line 69
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    invoke-static {}, Lcom/google/android/libraries/places/internal/hy;->a()I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 71
    :cond_22
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/hy;->b(I)V

    .line 72
    :goto_27
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_3f

    .line 73
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/hy;->d(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_3f
    return-void

    .line 76
    :cond_40
    :goto_40
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_58

    .line 77
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/hy;->e(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    :cond_58
    return-void
.end method

.method public c(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/hy;->b(II)V

    return-void
.end method

.method public c(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/hy;->a(IJ)V

    return-void
.end method

.method public c(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_41

    .line 81
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/hy;->a(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 83
    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_23

    .line 84
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/hy;->d(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 86
    :cond_23
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/hy;->b(I)V

    .line 87
    :goto_28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_40

    .line 88
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 89
    invoke-virtual {p1, v1, v2}, Lcom/google/android/libraries/places/internal/hy;->a(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_40
    return-void

    .line 92
    :cond_41
    :goto_41
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_59

    .line 93
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 94
    invoke-virtual {p3, p1, v1, v2}, Lcom/google/android/libraries/places/internal/hy;->a(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_59
    return-void
.end method

.method public d(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/hy;->e(II)V

    return-void
.end method

.method public d(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/hy;->c(IJ)V

    return-void
.end method

.method public d(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_41

    .line 98
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/hy;->a(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 100
    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_23

    .line 101
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/hy;->e(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 103
    :cond_23
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/hy;->b(I)V

    .line 104
    :goto_28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_40

    .line 105
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/libraries/places/internal/hy;->a(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_40
    return-void

    .line 108
    :cond_41
    :goto_41
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_59

    .line 109
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/google/android/libraries/places/internal/hy;->a(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_59
    return-void
.end method

.method public e(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/hy;->c(II)V

    return-void
.end method

.method public e(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/hy;->b(IJ)V

    return-void
.end method

.method public e(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_40

    .line 113
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/hy;->a(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 115
    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_22

    .line 116
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    invoke-static {}, Lcom/google/android/libraries/places/internal/hy;->c()I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 118
    :cond_22
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/hy;->b(I)V

    .line 119
    :goto_27
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_3f

    .line 120
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/libraries/places/internal/hy;->c(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_3f
    return-void

    .line 123
    :cond_40
    :goto_40
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_58

    .line 124
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/google/android/libraries/places/internal/hy;->c(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    :cond_58
    return-void
.end method

.method public f(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/hy;->d(II)V

    return-void
.end method

.method public f(ILjava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_40

    .line 128
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/hy;->a(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 130
    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_22

    .line 131
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    invoke-static {}, Lcom/google/android/libraries/places/internal/hy;->e()I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 133
    :cond_22
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/hy;->b(I)V

    .line 134
    :goto_27
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_3f

    .line 135
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/hy;->a(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_3f
    return-void

    .line 138
    :cond_40
    :goto_40
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_58

    .line 139
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/hy;->a(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    :cond_58
    return-void
.end method

.method public g(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_40

    .line 143
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/hy;->a(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 145
    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_22

    .line 146
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    invoke-static {}, Lcom/google/android/libraries/places/internal/hy;->f()I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 148
    :cond_22
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/hy;->b(I)V

    .line 149
    :goto_27
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_3f

    .line 150
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/libraries/places/internal/hy;->a(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_3f
    return-void

    .line 153
    :cond_40
    :goto_40
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_58

    .line 154
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/google/android/libraries/places/internal/hy;->a(ID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    :cond_58
    return-void
.end method

.method public h(ILjava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_41

    .line 158
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/hy;->a(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 160
    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_23

    .line 161
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/hy;->i(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 163
    :cond_23
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/hy;->b(I)V

    .line 164
    :goto_28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_40

    .line 165
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 166
    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/hy;->a(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_40
    return-void

    .line 169
    :cond_41
    :goto_41
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_59

    .line 170
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 171
    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/hy;->b(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_59
    return-void
.end method

.method public i(ILjava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_40

    .line 175
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/hy;->a(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 177
    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_22

    .line 178
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {}, Lcom/google/android/libraries/places/internal/hy;->g()I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 180
    :cond_22
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/hy;->b(I)V

    .line 181
    :goto_27
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_3f

    .line 182
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/hy;->a(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_3f
    return-void

    .line 185
    :cond_40
    :goto_40
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_58

    .line 186
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/hy;->a(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    :cond_58
    return-void
.end method

.method public j(ILjava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_41

    .line 204
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/hy;->a(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 206
    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_23

    .line 207
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/hy;->g(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 209
    :cond_23
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/hy;->b(I)V

    .line 210
    :goto_28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_40

    .line 211
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/hy;->b(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_40
    return-void

    .line 214
    :cond_41
    :goto_41
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_59

    .line 215
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/hy;->c(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_59
    return-void
.end method

.method public k(ILjava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_40

    .line 219
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/hy;->a(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 221
    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_22

    .line 222
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    invoke-static {}, Lcom/google/android/libraries/places/internal/hy;->b()I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 224
    :cond_22
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/hy;->b(I)V

    .line 225
    :goto_27
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_3f

    .line 226
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 227
    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/hy;->d(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_3f
    return-void

    .line 230
    :cond_40
    :goto_40
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_58

    .line 231
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 232
    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/hy;->e(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    :cond_58
    return-void
.end method

.method public l(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_40

    .line 236
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/hy;->a(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 238
    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_22

    .line 239
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    invoke-static {}, Lcom/google/android/libraries/places/internal/hy;->d()I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 241
    :cond_22
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/hy;->b(I)V

    .line 242
    :goto_27
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_3f

    .line 243
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 244
    invoke-virtual {p1, v1, v2}, Lcom/google/android/libraries/places/internal/hy;->c(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_3f
    return-void

    .line 247
    :cond_40
    :goto_40
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_58

    .line 248
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 249
    invoke-virtual {p3, p1, v1, v2}, Lcom/google/android/libraries/places/internal/hy;->c(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    :cond_58
    return-void
.end method

.method public m(ILjava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_41

    .line 253
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/hy;->a(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 255
    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_23

    .line 256
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/hy;->h(I)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 258
    :cond_23
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/hy;->b(I)V

    .line 259
    :goto_28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_40

    .line 260
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/hy;->c(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_40
    return-void

    .line 263
    :cond_41
    :goto_41
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_59

    .line 264
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/hy;->d(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_59
    return-void
.end method

.method public n(ILjava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_41

    .line 268
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    const/4 v1, 0x2

    invoke-virtual {p3, p1, v1}, Lcom/google/android/libraries/places/internal/hy;->a(II)V

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 270
    :goto_b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_23

    .line 271
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/hy;->f(J)I

    move-result v1

    add-int/2addr p3, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    .line 273
    :cond_23
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/hy;->b(I)V

    .line 274
    :goto_28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_40

    .line 275
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/google/android/libraries/places/internal/hy;->b(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_40
    return-void

    .line 278
    :cond_41
    :goto_41
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_59

    .line 279
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/lh;->a:Lcom/google/android/libraries/places/internal/hy;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Lcom/google/android/libraries/places/internal/hy;->b(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    :cond_59
    return-void
.end method
